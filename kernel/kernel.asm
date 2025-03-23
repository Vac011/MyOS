
kernel:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 28 89 00 00 	lgdt   0x8928(%rip)        # ffff800000108940 <GDT6464_LIMIT>
ffff800000100018:	0f 01 1d 2b 99 00 00 	lidt   0x992b(%rip)        # ffff80000010994a <IDT64_END>
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
ffff80000010007b:	d7                   	xlat   %ds:(%rbx)
ffff80000010007c:	41 10 00             	adc    %al,(%r8)
ffff80000010007f:	00 80 ff ff 0f 1f    	add    %al,0x1f0fffff(%rax)
ffff800000100085:	44 00 00             	add    %r8b,(%rax)
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
ffff800000104001:	48 8c c0             	mov    %es,%rax
ffff800000104004:	50                   	push   %rax
ffff800000104005:	48 8c d8             	mov    %ds,%rax
ffff800000104008:	50                   	push   %rax
ffff800000104009:	55                   	push   %rbp
ffff80000010400a:	57                   	push   %rdi
ffff80000010400b:	56                   	push   %rsi
ffff80000010400c:	52                   	push   %rdx
ffff80000010400d:	51                   	push   %rcx
ffff80000010400e:	53                   	push   %rbx
ffff80000010400f:	41 50                	push   %r8
ffff800000104011:	41 51                	push   %r9
ffff800000104013:	41 52                	push   %r10
ffff800000104015:	41 53                	push   %r11
ffff800000104017:	41 54                	push   %r12
ffff800000104019:	41 55                	push   %r13
ffff80000010401b:	41 56                	push   %r14
ffff80000010401d:	41 57                	push   %r15
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
ffff800000104047:	41 5f                	pop    %r15
ffff800000104049:	41 5e                	pop    %r14
ffff80000010404b:	41 5d                	pop    %r13
ffff80000010404d:	41 5c                	pop    %r12
ffff80000010404f:	41 5b                	pop    %r11
ffff800000104051:	41 5a                	pop    %r10
ffff800000104053:	41 59                	pop    %r9
ffff800000104055:	41 58                	pop    %r8
ffff800000104057:	5b                   	pop    %rbx
ffff800000104058:	59                   	pop    %rcx
ffff800000104059:	5a                   	pop    %rdx
ffff80000010405a:	5e                   	pop    %rsi
ffff80000010405b:	5f                   	pop    %rdi
ffff80000010405c:	5d                   	pop    %rbp
ffff80000010405d:	58                   	pop    %rax
ffff80000010405e:	48 8e d8             	mov    %rax,%ds
ffff800000104061:	58                   	pop    %rax
ffff800000104062:	48 8e c0             	mov    %rax,%es
ffff800000104065:	58                   	pop    %rax
ffff800000104066:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010406a:	48 cf                	iretq  

ffff80000010406c <divide_error>:
ffff80000010406c:	6a 00                	pushq  $0x0
ffff80000010406e:	50                   	push   %rax
ffff80000010406f:	48 8d 05 90 16 00 00 	lea    0x1690(%rip),%rax        # ffff800000105706 <do_divide_error>
ffff800000104076:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010407a:	eb 84                	jmp    ffff800000104000 <enter_exception>

ffff80000010407c <debug>:
ffff80000010407c:	6a 00                	pushq  $0x0
ffff80000010407e:	50                   	push   %rax
ffff80000010407f:	48 8d 05 fe 16 00 00 	lea    0x16fe(%rip),%rax        # ffff800000105784 <do_debug>
ffff800000104086:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010408a:	e9 71 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010408f <nmi>:
ffff80000010408f:	6a 00                	pushq  $0x0
ffff800000104091:	50                   	push   %rax
ffff800000104092:	48 8d 05 69 17 00 00 	lea    0x1769(%rip),%rax        # ffff800000105802 <do_nmi>
ffff800000104099:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010409d:	e9 5e ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040a2 <int3>:
ffff8000001040a2:	6a 00                	pushq  $0x0
ffff8000001040a4:	50                   	push   %rax
ffff8000001040a5:	48 8d 05 d4 17 00 00 	lea    0x17d4(%rip),%rax        # ffff800000105880 <do_int3>
ffff8000001040ac:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040b0:	e9 4b ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040b5 <overflow>:
ffff8000001040b5:	6a 00                	pushq  $0x0
ffff8000001040b7:	50                   	push   %rax
ffff8000001040b8:	48 8d 05 3f 18 00 00 	lea    0x183f(%rip),%rax        # ffff8000001058fe <do_overflow>
ffff8000001040bf:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040c3:	e9 38 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040c8 <bounds>:
ffff8000001040c8:	6a 00                	pushq  $0x0
ffff8000001040ca:	50                   	push   %rax
ffff8000001040cb:	48 8d 05 aa 18 00 00 	lea    0x18aa(%rip),%rax        # ffff80000010597c <do_bounds>
ffff8000001040d2:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040d6:	e9 25 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040db <undefined_opcode>:
ffff8000001040db:	6a 00                	pushq  $0x0
ffff8000001040dd:	50                   	push   %rax
ffff8000001040de:	48 8d 05 15 19 00 00 	lea    0x1915(%rip),%rax        # ffff8000001059fa <do_undefined_opcode>
ffff8000001040e5:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040e9:	e9 12 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040ee <dev_not_available>:
ffff8000001040ee:	6a 00                	pushq  $0x0
ffff8000001040f0:	50                   	push   %rax
ffff8000001040f1:	48 8d 05 80 19 00 00 	lea    0x1980(%rip),%rax        # ffff800000105a78 <do_dev_not_available>
ffff8000001040f8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040fc:	e9 ff fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104101 <double_fault>:
ffff800000104101:	50                   	push   %rax
ffff800000104102:	48 8d 05 ed 19 00 00 	lea    0x19ed(%rip),%rax        # ffff800000105af6 <do_double_fault>
ffff800000104109:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010410d:	e9 ee fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104112 <coprocessor_segment_overrun>:
ffff800000104112:	6a 00                	pushq  $0x0
ffff800000104114:	50                   	push   %rax
ffff800000104115:	48 8d 05 58 1a 00 00 	lea    0x1a58(%rip),%rax        # ffff800000105b74 <do_coprocessor_segment_overrun>
ffff80000010411c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104120:	e9 db fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104125 <invalid_TSS>:
ffff800000104125:	50                   	push   %rax
ffff800000104126:	48 8d 05 c5 1a 00 00 	lea    0x1ac5(%rip),%rax        # ffff800000105bf2 <do_invalid_TSS>
ffff80000010412d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104131:	e9 ca fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104136 <segment_not_present>:
ffff800000104136:	50                   	push   %rax
ffff800000104137:	48 8d 05 51 1c 00 00 	lea    0x1c51(%rip),%rax        # ffff800000105d8f <do_segment_not_present>
ffff80000010413e:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104142:	e9 b9 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104147 <stack_segment_fault>:
ffff800000104147:	50                   	push   %rax
ffff800000104148:	48 8d 05 dd 1d 00 00 	lea    0x1ddd(%rip),%rax        # ffff800000105f2c <do_stack_segment_fault>
ffff80000010414f:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104153:	e9 a8 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104158 <general_protection>:
ffff800000104158:	50                   	push   %rax
ffff800000104159:	48 8d 05 69 1f 00 00 	lea    0x1f69(%rip),%rax        # ffff8000001060c9 <do_general_protection>
ffff800000104160:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104164:	e9 97 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104169 <page_fault>:
ffff800000104169:	50                   	push   %rax
ffff80000010416a:	48 8d 05 f5 20 00 00 	lea    0x20f5(%rip),%rax        # ffff800000106266 <do_page_fault>
ffff800000104171:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104175:	e9 86 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010417a <x87_FPU_error>:
ffff80000010417a:	6a 00                	pushq  $0x0
ffff80000010417c:	50                   	push   %rax
ffff80000010417d:	48 8d 05 04 23 00 00 	lea    0x2304(%rip),%rax        # ffff800000106488 <do_x87_FPU_error>
ffff800000104184:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104188:	e9 73 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010418d <alignment_check>:
ffff80000010418d:	50                   	push   %rax
ffff80000010418e:	48 8d 05 71 23 00 00 	lea    0x2371(%rip),%rax        # ffff800000106506 <do_alignment_check>
ffff800000104195:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104199:	e9 62 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010419e <machine_check>:
ffff80000010419e:	6a 00                	pushq  $0x0
ffff8000001041a0:	50                   	push   %rax
ffff8000001041a1:	48 8d 05 dc 23 00 00 	lea    0x23dc(%rip),%rax        # ffff800000106584 <do_machine_check>
ffff8000001041a8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041ac:	e9 4f fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001041b1 <SIMD_exception>:
ffff8000001041b1:	6a 00                	pushq  $0x0
ffff8000001041b3:	50                   	push   %rax
ffff8000001041b4:	48 8d 05 47 24 00 00 	lea    0x2447(%rip),%rax        # ffff800000106602 <do_SIMD_exception>
ffff8000001041bb:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041bf:	e9 3c fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001041c4 <virtualization_exception>:
ffff8000001041c4:	6a 00                	pushq  $0x0
ffff8000001041c6:	50                   	push   %rax
ffff8000001041c7:	48 8d 05 b2 24 00 00 	lea    0x24b2(%rip),%rax        # ffff800000106680 <do_virtualization_exception>
ffff8000001041ce:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041d2:	e9 29 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001041d7 <main>:
ffff8000001041d7:	f3 0f 1e fa          	endbr64 
ffff8000001041db:	55                   	push   %rbp
ffff8000001041dc:	48 89 e5             	mov    %rsp,%rbp
ffff8000001041df:	41 57                	push   %r15
ffff8000001041e1:	53                   	push   %rbx
ffff8000001041e2:	f3 0f 1e fa          	endbr64 
ffff8000001041e6:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001041e2 <main+0xb>
ffff8000001041ed:	49 bb a6 58 00 00 00 	movabs $0x58a6,%r11
ffff8000001041f4:	00 00 00 
ffff8000001041f7:	4c 01 db             	add    %r11,%rbx
ffff8000001041fa:	be 08 00 00 00       	mov    $0x8,%esi
ffff8000001041ff:	48 bf 00 7c 00 00 00 	movabs $0xffff800000007c00,%rdi
ffff800000104206:	80 ff ff 
ffff800000104209:	49 89 df             	mov    %rbx,%r15
ffff80000010420c:	48 b8 a2 b1 ff ff ff 	movabs $0xffffffffffffb1a2,%rax
ffff800000104213:	ff ff ff 
ffff800000104216:	48 01 d8             	add    %rbx,%rax
ffff800000104219:	ff d0                	callq  *%rax
ffff80000010421b:	49 89 df             	mov    %rbx,%r15
ffff80000010421e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104223:	48 ba 63 b4 ff ff ff 	movabs $0xffffffffffffb463,%rdx
ffff80000010422a:	ff ff ff 
ffff80000010422d:	48 01 da             	add    %rbx,%rdx
ffff800000104230:	ff d2                	callq  *%rdx
ffff800000104232:	49 89 df             	mov    %rbx,%r15
ffff800000104235:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010423a:	48 ba 76 cc ff ff ff 	movabs $0xffffffffffffcc76,%rdx
ffff800000104241:	ff ff ff 
ffff800000104244:	48 01 da             	add    %rbx,%rdx
ffff800000104247:	ff d2                	callq  *%rdx
ffff800000104249:	eb fe                	jmp    ffff800000104249 <main+0x72>

ffff80000010424b <itoa>:
ffff80000010424b:	f3 0f 1e fa          	endbr64 
ffff80000010424f:	55                   	push   %rbp
ffff800000104250:	48 89 e5             	mov    %rsp,%rbp
ffff800000104253:	f3 0f 1e fa          	endbr64 
ffff800000104257:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000104253 <itoa+0x8>
ffff80000010425e:	49 bb 35 58 00 00 00 	movabs $0x5835,%r11
ffff800000104265:	00 00 00 
ffff800000104268:	4c 01 d8             	add    %r11,%rax
ffff80000010426b:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
ffff80000010426f:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
ffff800000104273:	89 55 ac             	mov    %edx,-0x54(%rbp)
ffff800000104276:	48 b8 30 31 32 33 34 	movabs $0x3736353433323130,%rax
ffff80000010427d:	35 36 37 
ffff800000104280:	48 ba 38 39 41 42 43 	movabs $0x4645444342413938,%rdx
ffff800000104287:	44 45 46 
ffff80000010428a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010428e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000104292:	c6 45 f0 00          	movb   $0x0,-0x10(%rbp)
ffff800000104296:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff80000010429d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001042a4:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
ffff8000001042a9:	79 0d                	jns    ffff8000001042b8 <itoa+0x6d>
ffff8000001042ab:	83 7d ac 0a          	cmpl   $0xa,-0x54(%rbp)
ffff8000001042af:	75 07                	jne    ffff8000001042b8 <itoa+0x6d>
ffff8000001042b1:	b8 01 00 00 00       	mov    $0x1,%eax
ffff8000001042b6:	eb 05                	jmp    ffff8000001042bd <itoa+0x72>
ffff8000001042b8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042bd:	89 45 f4             	mov    %eax,-0xc(%rbp)
ffff8000001042c0:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
ffff8000001042c4:	74 04                	je     ffff8000001042ca <itoa+0x7f>
ffff8000001042c6:	48 f7 5d b8          	negq   -0x48(%rbp)
ffff8000001042ca:	8b 45 ac             	mov    -0x54(%rbp),%eax
ffff8000001042cd:	48 63 c8             	movslq %eax,%rcx
ffff8000001042d0:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001042d4:	48 99                	cqto   
ffff8000001042d6:	48 f7 f9             	idiv   %rcx
ffff8000001042d9:	48 89 d1             	mov    %rdx,%rcx
ffff8000001042dc:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001042df:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001042e2:	89 55 fc             	mov    %edx,-0x4(%rbp)
ffff8000001042e5:	0f b6 54 0d e0       	movzbl -0x20(%rbp,%rcx,1),%edx
ffff8000001042ea:	48 98                	cltq   
ffff8000001042ec:	88 54 05 c0          	mov    %dl,-0x40(%rbp,%rax,1)
ffff8000001042f0:	8b 45 ac             	mov    -0x54(%rbp),%eax
ffff8000001042f3:	48 63 f0             	movslq %eax,%rsi
ffff8000001042f6:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001042fa:	48 99                	cqto   
ffff8000001042fc:	48 f7 fe             	idiv   %rsi
ffff8000001042ff:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff800000104303:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
ffff800000104308:	75 c0                	jne    ffff8000001042ca <itoa+0x7f>
ffff80000010430a:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
ffff80000010430e:	74 35                	je     ffff800000104345 <itoa+0xfa>
ffff800000104310:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104313:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104316:	89 55 fc             	mov    %edx,-0x4(%rbp)
ffff800000104319:	48 98                	cltq   
ffff80000010431b:	c6 44 05 c0 2d       	movb   $0x2d,-0x40(%rbp,%rax,1)
ffff800000104320:	eb 23                	jmp    ffff800000104345 <itoa+0xfa>
ffff800000104322:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
ffff800000104326:	8b 45 f8             	mov    -0x8(%rbp),%eax
ffff800000104329:	8d 50 01             	lea    0x1(%rax),%edx
ffff80000010432c:	89 55 f8             	mov    %edx,-0x8(%rbp)
ffff80000010432f:	48 63 d0             	movslq %eax,%rdx
ffff800000104332:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000104336:	48 01 c2             	add    %rax,%rdx
ffff800000104339:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff80000010433c:	48 98                	cltq   
ffff80000010433e:	0f b6 44 05 c0       	movzbl -0x40(%rbp,%rax,1),%eax
ffff800000104343:	88 02                	mov    %al,(%rdx)
ffff800000104345:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
ffff800000104349:	7f d7                	jg     ffff800000104322 <itoa+0xd7>
ffff80000010434b:	8b 45 f8             	mov    -0x8(%rbp),%eax
ffff80000010434e:	48 63 d0             	movslq %eax,%rdx
ffff800000104351:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000104355:	48 01 d0             	add    %rdx,%rax
ffff800000104358:	c6 00 00             	movb   $0x0,(%rax)
ffff80000010435b:	90                   	nop
ffff80000010435c:	5d                   	pop    %rbp
ffff80000010435d:	c3                   	retq   

ffff80000010435e <vsnprintf>:
ffff80000010435e:	f3 0f 1e fa          	endbr64 
ffff800000104362:	55                   	push   %rbp
ffff800000104363:	48 89 e5             	mov    %rsp,%rbp
ffff800000104366:	53                   	push   %rbx
ffff800000104367:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
ffff80000010436b:	f3 0f 1e fa          	endbr64 
ffff80000010436f:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010436b <vsnprintf+0xd>
ffff800000104376:	49 bb 1d 57 00 00 00 	movabs $0x571d,%r11
ffff80000010437d:	00 00 00 
ffff800000104380:	4c 01 db             	add    %r11,%rbx
ffff800000104383:	48 89 7d 90          	mov    %rdi,-0x70(%rbp)
ffff800000104387:	48 89 75 88          	mov    %rsi,-0x78(%rbp)
ffff80000010438b:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
ffff80000010438f:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
ffff800000104396:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff80000010439d:	00 
ffff80000010439e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001043a5:	00 
ffff8000001043a6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff8000001043ad:	e9 bf 04 00 00       	jmpq   ffff800000104871 <vsnprintf+0x513>
ffff8000001043b2:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff8000001043b6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001043ba:	48 01 d0             	add    %rdx,%rax
ffff8000001043bd:	0f b6 00             	movzbl (%rax),%eax
ffff8000001043c0:	3c 25                	cmp    $0x25,%al
ffff8000001043c2:	0f 85 80 04 00 00    	jne    ffff800000104848 <vsnprintf+0x4ea>
ffff8000001043c8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001043cc:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001043d0:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff8000001043d4:	48 01 d0             	add    %rdx,%rax
ffff8000001043d7:	0f b6 00             	movzbl (%rax),%eax
ffff8000001043da:	84 c0                	test   %al,%al
ffff8000001043dc:	0f 84 66 04 00 00    	je     ffff800000104848 <vsnprintf+0x4ea>
ffff8000001043e2:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff8000001043e7:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff8000001043ee:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff8000001043f2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001043f6:	48 01 d0             	add    %rdx,%rax
ffff8000001043f9:	0f b6 00             	movzbl (%rax),%eax
ffff8000001043fc:	3c 6c                	cmp    $0x6c,%al
ffff8000001043fe:	75 0c                	jne    ffff80000010440c <vsnprintf+0xae>
ffff800000104400:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%rbp)
ffff800000104407:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff80000010440c:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff800000104410:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104414:	48 01 d0             	add    %rdx,%rax
ffff800000104417:	0f b6 00             	movzbl (%rax),%eax
ffff80000010441a:	0f be c0             	movsbl %al,%eax
ffff80000010441d:	83 f8 78             	cmp    $0x78,%eax
ffff800000104420:	0f 84 9a 02 00 00    	je     ffff8000001046c0 <vsnprintf+0x362>
ffff800000104426:	83 f8 78             	cmp    $0x78,%eax
ffff800000104429:	0f 8f d4 03 00 00    	jg     ffff800000104803 <vsnprintf+0x4a5>
ffff80000010442f:	83 f8 73             	cmp    $0x73,%eax
ffff800000104432:	0f 84 97 00 00 00    	je     ffff8000001044cf <vsnprintf+0x171>
ffff800000104438:	83 f8 73             	cmp    $0x73,%eax
ffff80000010443b:	0f 8f c2 03 00 00    	jg     ffff800000104803 <vsnprintf+0x4a5>
ffff800000104441:	83 f8 63             	cmp    $0x63,%eax
ffff800000104444:	74 0e                	je     ffff800000104454 <vsnprintf+0xf6>
ffff800000104446:	83 f8 64             	cmp    $0x64,%eax
ffff800000104449:	0f 84 27 01 00 00    	je     ffff800000104576 <vsnprintf+0x218>
ffff80000010444f:	e9 af 03 00 00       	jmpq   ffff800000104803 <vsnprintf+0x4a5>
ffff800000104454:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010445b:	8b 00                	mov    (%rax),%eax
ffff80000010445d:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104460:	77 30                	ja     ffff800000104492 <vsnprintf+0x134>
ffff800000104462:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104469:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010446d:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104474:	8b 00                	mov    (%rax),%eax
ffff800000104476:	89 c0                	mov    %eax,%eax
ffff800000104478:	48 01 d0             	add    %rdx,%rax
ffff80000010447b:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104482:	8b 12                	mov    (%rdx),%edx
ffff800000104484:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104487:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010448e:	89 0a                	mov    %ecx,(%rdx)
ffff800000104490:	eb 1a                	jmp    ffff8000001044ac <vsnprintf+0x14e>
ffff800000104492:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104499:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010449d:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001044a1:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001044a8:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001044ac:	8b 00                	mov    (%rax),%eax
ffff8000001044ae:	88 45 c7             	mov    %al,-0x39(%rbp)
ffff8000001044b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001044b5:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001044b9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001044bd:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff8000001044c1:	48 01 c2             	add    %rax,%rdx
ffff8000001044c4:	0f b6 45 c7          	movzbl -0x39(%rbp),%eax
ffff8000001044c8:	88 02                	mov    %al,(%rdx)
ffff8000001044ca:	e9 77 03 00 00       	jmpq   ffff800000104846 <vsnprintf+0x4e8>
ffff8000001044cf:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001044d6:	8b 00                	mov    (%rax),%eax
ffff8000001044d8:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001044db:	77 30                	ja     ffff80000010450d <vsnprintf+0x1af>
ffff8000001044dd:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001044e4:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001044e8:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001044ef:	8b 00                	mov    (%rax),%eax
ffff8000001044f1:	89 c0                	mov    %eax,%eax
ffff8000001044f3:	48 01 d0             	add    %rdx,%rax
ffff8000001044f6:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001044fd:	8b 12                	mov    (%rdx),%edx
ffff8000001044ff:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104502:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104509:	89 0a                	mov    %ecx,(%rdx)
ffff80000010450b:	eb 1a                	jmp    ffff800000104527 <vsnprintf+0x1c9>
ffff80000010450d:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104514:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104518:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010451c:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104523:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104527:	48 8b 00             	mov    (%rax),%rax
ffff80000010452a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff80000010452e:	eb 24                	jmp    ffff800000104554 <vsnprintf+0x1f6>
ffff800000104530:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104534:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104538:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff80000010453c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000104540:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
ffff800000104544:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000104548:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
ffff80000010454c:	48 01 ca             	add    %rcx,%rdx
ffff80000010454f:	0f b6 00             	movzbl (%rax),%eax
ffff800000104552:	88 02                	mov    %al,(%rdx)
ffff800000104554:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104558:	0f b6 00             	movzbl (%rax),%eax
ffff80000010455b:	84 c0                	test   %al,%al
ffff80000010455d:	0f 84 dc 02 00 00    	je     ffff80000010483f <vsnprintf+0x4e1>
ffff800000104563:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff800000104567:	48 83 e8 01          	sub    $0x1,%rax
ffff80000010456b:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff80000010456f:	72 bf                	jb     ffff800000104530 <vsnprintf+0x1d2>
ffff800000104571:	e9 c9 02 00 00       	jmpq   ffff80000010483f <vsnprintf+0x4e1>
ffff800000104576:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
ffff80000010457a:	74 7c                	je     ffff8000001045f8 <vsnprintf+0x29a>
ffff80000010457c:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104583:	8b 00                	mov    (%rax),%eax
ffff800000104585:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104588:	77 30                	ja     ffff8000001045ba <vsnprintf+0x25c>
ffff80000010458a:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104591:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104595:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010459c:	8b 00                	mov    (%rax),%eax
ffff80000010459e:	89 c0                	mov    %eax,%eax
ffff8000001045a0:	48 01 d0             	add    %rdx,%rax
ffff8000001045a3:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001045aa:	8b 12                	mov    (%rdx),%edx
ffff8000001045ac:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001045af:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001045b6:	89 0a                	mov    %ecx,(%rdx)
ffff8000001045b8:	eb 1a                	jmp    ffff8000001045d4 <vsnprintf+0x276>
ffff8000001045ba:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001045c1:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001045c5:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001045c9:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001045d0:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001045d4:	48 8b 00             	mov    (%rax),%rax
ffff8000001045d7:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff8000001045db:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001045e0:	48 89 ce             	mov    %rcx,%rsi
ffff8000001045e3:	48 89 c7             	mov    %rax,%rdi
ffff8000001045e6:	48 b8 c3 a7 ff ff ff 	movabs $0xffffffffffffa7c3,%rax
ffff8000001045ed:	ff ff ff 
ffff8000001045f0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001045f4:	ff d0                	callq  *%rax
ffff8000001045f6:	eb 7b                	jmp    ffff800000104673 <vsnprintf+0x315>
ffff8000001045f8:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001045ff:	8b 00                	mov    (%rax),%eax
ffff800000104601:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104604:	77 30                	ja     ffff800000104636 <vsnprintf+0x2d8>
ffff800000104606:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010460d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104611:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104618:	8b 00                	mov    (%rax),%eax
ffff80000010461a:	89 c0                	mov    %eax,%eax
ffff80000010461c:	48 01 d0             	add    %rdx,%rax
ffff80000010461f:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104626:	8b 12                	mov    (%rdx),%edx
ffff800000104628:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010462b:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104632:	89 0a                	mov    %ecx,(%rdx)
ffff800000104634:	eb 1a                	jmp    ffff800000104650 <vsnprintf+0x2f2>
ffff800000104636:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010463d:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104641:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104645:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010464c:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104650:	8b 00                	mov    (%rax),%eax
ffff800000104652:	48 98                	cltq   
ffff800000104654:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff800000104658:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010465d:	48 89 ce             	mov    %rcx,%rsi
ffff800000104660:	48 89 c7             	mov    %rax,%rdi
ffff800000104663:	48 b8 c3 a7 ff ff ff 	movabs $0xffffffffffffa7c3,%rax
ffff80000010466a:	ff ff ff 
ffff80000010466d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104671:	ff d0                	callq  *%rax
ffff800000104673:	48 8d 45 98          	lea    -0x68(%rbp),%rax
ffff800000104677:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff80000010467b:	eb 21                	jmp    ffff80000010469e <vsnprintf+0x340>
ffff80000010467d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104681:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104685:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000104689:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff80000010468d:	48 01 c2             	add    %rax,%rdx
ffff800000104690:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000104694:	0f b6 00             	movzbl (%rax),%eax
ffff800000104697:	88 02                	mov    %al,(%rdx)
ffff800000104699:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
ffff80000010469e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001046a2:	0f b6 00             	movzbl (%rax),%eax
ffff8000001046a5:	84 c0                	test   %al,%al
ffff8000001046a7:	0f 84 95 01 00 00    	je     ffff800000104842 <vsnprintf+0x4e4>
ffff8000001046ad:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff8000001046b1:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001046b5:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff8000001046b9:	72 c2                	jb     ffff80000010467d <vsnprintf+0x31f>
ffff8000001046bb:	e9 82 01 00 00       	jmpq   ffff800000104842 <vsnprintf+0x4e4>
ffff8000001046c0:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
ffff8000001046c4:	74 7c                	je     ffff800000104742 <vsnprintf+0x3e4>
ffff8000001046c6:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001046cd:	8b 00                	mov    (%rax),%eax
ffff8000001046cf:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001046d2:	77 30                	ja     ffff800000104704 <vsnprintf+0x3a6>
ffff8000001046d4:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001046db:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001046df:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001046e6:	8b 00                	mov    (%rax),%eax
ffff8000001046e8:	89 c0                	mov    %eax,%eax
ffff8000001046ea:	48 01 d0             	add    %rdx,%rax
ffff8000001046ed:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001046f4:	8b 12                	mov    (%rdx),%edx
ffff8000001046f6:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001046f9:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104700:	89 0a                	mov    %ecx,(%rdx)
ffff800000104702:	eb 1a                	jmp    ffff80000010471e <vsnprintf+0x3c0>
ffff800000104704:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010470b:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010470f:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104713:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010471a:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010471e:	48 8b 00             	mov    (%rax),%rax
ffff800000104721:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff800000104725:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010472a:	48 89 ce             	mov    %rcx,%rsi
ffff80000010472d:	48 89 c7             	mov    %rax,%rdi
ffff800000104730:	48 b8 c3 a7 ff ff ff 	movabs $0xffffffffffffa7c3,%rax
ffff800000104737:	ff ff ff 
ffff80000010473a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010473e:	ff d0                	callq  *%rax
ffff800000104740:	eb 7b                	jmp    ffff8000001047bd <vsnprintf+0x45f>
ffff800000104742:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104749:	8b 00                	mov    (%rax),%eax
ffff80000010474b:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010474e:	77 30                	ja     ffff800000104780 <vsnprintf+0x422>
ffff800000104750:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104757:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010475b:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104762:	8b 00                	mov    (%rax),%eax
ffff800000104764:	89 c0                	mov    %eax,%eax
ffff800000104766:	48 01 d0             	add    %rdx,%rax
ffff800000104769:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104770:	8b 12                	mov    (%rdx),%edx
ffff800000104772:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104775:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010477c:	89 0a                	mov    %ecx,(%rdx)
ffff80000010477e:	eb 1a                	jmp    ffff80000010479a <vsnprintf+0x43c>
ffff800000104780:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104787:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010478b:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010478f:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104796:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010479a:	8b 00                	mov    (%rax),%eax
ffff80000010479c:	48 98                	cltq   
ffff80000010479e:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff8000001047a2:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001047a7:	48 89 ce             	mov    %rcx,%rsi
ffff8000001047aa:	48 89 c7             	mov    %rax,%rdi
ffff8000001047ad:	48 b8 c3 a7 ff ff ff 	movabs $0xffffffffffffa7c3,%rax
ffff8000001047b4:	ff ff ff 
ffff8000001047b7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001047bb:	ff d0                	callq  *%rax
ffff8000001047bd:	48 8d 45 98          	lea    -0x68(%rbp),%rax
ffff8000001047c1:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff8000001047c5:	eb 21                	jmp    ffff8000001047e8 <vsnprintf+0x48a>
ffff8000001047c7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001047cb:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001047cf:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001047d3:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff8000001047d7:	48 01 c2             	add    %rax,%rdx
ffff8000001047da:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001047de:	0f b6 00             	movzbl (%rax),%eax
ffff8000001047e1:	88 02                	mov    %al,(%rdx)
ffff8000001047e3:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
ffff8000001047e8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001047ec:	0f b6 00             	movzbl (%rax),%eax
ffff8000001047ef:	84 c0                	test   %al,%al
ffff8000001047f1:	74 52                	je     ffff800000104845 <vsnprintf+0x4e7>
ffff8000001047f3:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff8000001047f7:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001047fb:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff8000001047ff:	72 c6                	jb     ffff8000001047c7 <vsnprintf+0x469>
ffff800000104801:	eb 42                	jmp    ffff800000104845 <vsnprintf+0x4e7>
ffff800000104803:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104807:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010480b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010480f:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000104813:	48 01 d0             	add    %rdx,%rax
ffff800000104816:	c6 00 25             	movb   $0x25,(%rax)
ffff800000104819:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff80000010481d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104821:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104825:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104829:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010482d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000104831:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000104835:	48 01 c2             	add    %rax,%rdx
ffff800000104838:	0f b6 01             	movzbl (%rcx),%eax
ffff80000010483b:	88 02                	mov    %al,(%rdx)
ffff80000010483d:	eb 07                	jmp    ffff800000104846 <vsnprintf+0x4e8>
ffff80000010483f:	90                   	nop
ffff800000104840:	eb 2a                	jmp    ffff80000010486c <vsnprintf+0x50e>
ffff800000104842:	90                   	nop
ffff800000104843:	eb 27                	jmp    ffff80000010486c <vsnprintf+0x50e>
ffff800000104845:	90                   	nop
ffff800000104846:	eb 24                	jmp    ffff80000010486c <vsnprintf+0x50e>
ffff800000104848:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff80000010484c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104850:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104854:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104858:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010485c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000104860:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000104864:	48 01 c2             	add    %rax,%rdx
ffff800000104867:	0f b6 01             	movzbl (%rcx),%eax
ffff80000010486a:	88 02                	mov    %al,(%rdx)
ffff80000010486c:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff800000104871:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff800000104875:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104879:	48 01 d0             	add    %rdx,%rax
ffff80000010487c:	0f b6 00             	movzbl (%rax),%eax
ffff80000010487f:	84 c0                	test   %al,%al
ffff800000104881:	74 12                	je     ffff800000104895 <vsnprintf+0x537>
ffff800000104883:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff800000104887:	48 83 e8 01          	sub    $0x1,%rax
ffff80000010488b:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff80000010488f:	0f 82 1d fb ff ff    	jb     ffff8000001043b2 <vsnprintf+0x54>
ffff800000104895:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000104899:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010489d:	48 01 d0             	add    %rdx,%rax
ffff8000001048a0:	c6 00 00             	movb   $0x0,(%rax)
ffff8000001048a3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001048a7:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
ffff8000001048ab:	5b                   	pop    %rbx
ffff8000001048ac:	5d                   	pop    %rbp
ffff8000001048ad:	c3                   	retq   

ffff8000001048ae <printf>:
ffff8000001048ae:	f3 0f 1e fa          	endbr64 
ffff8000001048b2:	55                   	push   %rbp
ffff8000001048b3:	48 89 e5             	mov    %rsp,%rbp
ffff8000001048b6:	41 57                	push   %r15
ffff8000001048b8:	53                   	push   %rbx
ffff8000001048b9:	48 81 ec f0 01 00 00 	sub    $0x1f0,%rsp
ffff8000001048c0:	f3 0f 1e fa          	endbr64 
ffff8000001048c4:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001048c0 <printf+0x12>
ffff8000001048cb:	49 bb c8 51 00 00 00 	movabs $0x51c8,%r11
ffff8000001048d2:	00 00 00 
ffff8000001048d5:	4c 01 db             	add    %r11,%rbx
ffff8000001048d8:	48 89 bd 08 fe ff ff 	mov    %rdi,-0x1f8(%rbp)
ffff8000001048df:	48 89 b5 48 ff ff ff 	mov    %rsi,-0xb8(%rbp)
ffff8000001048e6:	48 89 95 50 ff ff ff 	mov    %rdx,-0xb0(%rbp)
ffff8000001048ed:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff8000001048f4:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff8000001048fb:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff800000104902:	84 c0                	test   %al,%al
ffff800000104904:	74 23                	je     ffff800000104929 <printf+0x7b>
ffff800000104906:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff80000010490d:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff800000104911:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff800000104915:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff800000104919:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff80000010491d:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff800000104921:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff800000104925:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff800000104929:	c7 85 18 fe ff ff 08 	movl   $0x8,-0x1e8(%rbp)
ffff800000104930:	00 00 00 
ffff800000104933:	c7 85 1c fe ff ff 30 	movl   $0x30,-0x1e4(%rbp)
ffff80000010493a:	00 00 00 
ffff80000010493d:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff800000104941:	48 89 85 20 fe ff ff 	mov    %rax,-0x1e0(%rbp)
ffff800000104948:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff80000010494f:	48 89 85 28 fe ff ff 	mov    %rax,-0x1d8(%rbp)
ffff800000104956:	48 8d 8d 18 fe ff ff 	lea    -0x1e8(%rbp),%rcx
ffff80000010495d:	48 8b 95 08 fe ff ff 	mov    -0x1f8(%rbp),%rdx
ffff800000104964:	48 8d 85 30 fe ff ff 	lea    -0x1d0(%rbp),%rax
ffff80000010496b:	be 00 01 00 00       	mov    $0x100,%esi
ffff800000104970:	48 89 c7             	mov    %rax,%rdi
ffff800000104973:	48 b8 d6 a8 ff ff ff 	movabs $0xffffffffffffa8d6,%rax
ffff80000010497a:	ff ff ff 
ffff80000010497d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104981:	ff d0                	callq  *%rax
ffff800000104983:	48 8d 85 30 fe ff ff 	lea    -0x1d0(%rbp),%rax
ffff80000010498a:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
ffff800000104991:	eb 29                	jmp    ffff8000001049bc <printf+0x10e>
ffff800000104993:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
ffff80000010499a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010499d:	0f be c0             	movsbl %al,%eax
ffff8000001049a0:	89 c7                	mov    %eax,%edi
ffff8000001049a2:	49 89 df             	mov    %rbx,%r15
ffff8000001049a5:	48 b8 dd af ff ff ff 	movabs $0xffffffffffffafdd,%rax
ffff8000001049ac:	ff ff ff 
ffff8000001049af:	48 01 d8             	add    %rbx,%rax
ffff8000001049b2:	ff d0                	callq  *%rax
ffff8000001049b4:	48 83 85 38 ff ff ff 	addq   $0x1,-0xc8(%rbp)
ffff8000001049bb:	01 
ffff8000001049bc:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
ffff8000001049c3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001049c6:	84 c0                	test   %al,%al
ffff8000001049c8:	75 c9                	jne    ffff800000104993 <printf+0xe5>
ffff8000001049ca:	90                   	nop
ffff8000001049cb:	90                   	nop
ffff8000001049cc:	48 81 c4 f0 01 00 00 	add    $0x1f0,%rsp
ffff8000001049d3:	5b                   	pop    %rbx
ffff8000001049d4:	41 5f                	pop    %r15
ffff8000001049d6:	5d                   	pop    %rbp
ffff8000001049d7:	c3                   	retq   

ffff8000001049d8 <panic>:
ffff8000001049d8:	f3 0f 1e fa          	endbr64 
ffff8000001049dc:	55                   	push   %rbp
ffff8000001049dd:	48 89 e5             	mov    %rsp,%rbp
ffff8000001049e0:	53                   	push   %rbx
ffff8000001049e1:	48 83 ec 18          	sub    $0x18,%rsp
ffff8000001049e5:	f3 0f 1e fa          	endbr64 
ffff8000001049e9:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001049e5 <panic+0xd>
ffff8000001049f0:	49 bb a3 50 00 00 00 	movabs $0x50a3,%r11
ffff8000001049f7:	00 00 00 
ffff8000001049fa:	4c 01 db             	add    %r11,%rbx
ffff8000001049fd:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104a01:	48 b8 e8 e5 ff ff ff 	movabs $0xffffffffffffe5e8,%rax
ffff800000104a08:	ff ff ff 
ffff800000104a0b:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000104a0f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104a14:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000104a1b:	ff ff ff 
ffff800000104a1e:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000104a22:	ff d2                	callq  *%rdx
ffff800000104a24:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104a28:	48 89 c7             	mov    %rax,%rdi
ffff800000104a2b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104a30:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000104a37:	ff ff ff 
ffff800000104a3a:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000104a3e:	ff d2                	callq  *%rdx
ffff800000104a40:	48 b8 f0 e5 ff ff ff 	movabs $0xffffffffffffe5f0,%rax
ffff800000104a47:	ff ff ff 
ffff800000104a4a:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000104a4e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104a53:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000104a5a:	ff ff ff 
ffff800000104a5d:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000104a61:	ff d2                	callq  *%rdx
ffff800000104a63:	eb fe                	jmp    ffff800000104a63 <panic+0x8b>

ffff800000104a65 <putchar>:
ffff800000104a65:	f3 0f 1e fa          	endbr64 
ffff800000104a69:	55                   	push   %rbp
ffff800000104a6a:	48 89 e5             	mov    %rsp,%rbp
ffff800000104a6d:	f3 0f 1e fa          	endbr64 
ffff800000104a71:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000104a6d <putchar+0x8>
ffff800000104a78:	49 bb 1b 50 00 00 00 	movabs $0x501b,%r11
ffff800000104a7f:	00 00 00 
ffff800000104a82:	4c 01 d8             	add    %r11,%rax
ffff800000104a85:	89 fa                	mov    %edi,%edx
ffff800000104a87:	88 55 ec             	mov    %dl,-0x14(%rbp)
ffff800000104a8a:	48 c7 45 f0 00 80 0b 	movq   $0xb8000,-0x10(%rbp)
ffff800000104a91:	00 
ffff800000104a92:	80 7d ec 0a          	cmpb   $0xa,-0x14(%rbp)
ffff800000104a96:	75 5f                	jne    ffff800000104af7 <putchar+0x92>
ffff800000104a98:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104a9f:	00 00 00 
ffff800000104aa2:	8b 34 10             	mov    (%rax,%rdx,1),%esi
ffff800000104aa5:	48 63 d6             	movslq %esi,%rdx
ffff800000104aa8:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
ffff800000104aaf:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000104ab3:	89 d1                	mov    %edx,%ecx
ffff800000104ab5:	c1 f9 05             	sar    $0x5,%ecx
ffff800000104ab8:	89 f2                	mov    %esi,%edx
ffff800000104aba:	c1 fa 1f             	sar    $0x1f,%edx
ffff800000104abd:	29 d1                	sub    %edx,%ecx
ffff800000104abf:	89 ca                	mov    %ecx,%edx
ffff800000104ac1:	c1 e2 02             	shl    $0x2,%edx
ffff800000104ac4:	01 ca                	add    %ecx,%edx
ffff800000104ac6:	c1 e2 04             	shl    $0x4,%edx
ffff800000104ac9:	29 d6                	sub    %edx,%esi
ffff800000104acb:	89 f1                	mov    %esi,%ecx
ffff800000104acd:	ba 50 00 00 00       	mov    $0x50,%edx
ffff800000104ad2:	29 ca                	sub    %ecx,%edx
ffff800000104ad4:	89 d1                	mov    %edx,%ecx
ffff800000104ad6:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104add:	00 00 00 
ffff800000104ae0:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104ae3:	01 d1                	add    %edx,%ecx
ffff800000104ae5:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104aec:	00 00 00 
ffff800000104aef:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104af2:	e9 8c 00 00 00       	jmpq   ffff800000104b83 <putchar+0x11e>
ffff800000104af7:	80 7d ec 09          	cmpb   $0x9,-0x14(%rbp)
ffff800000104afb:	75 41                	jne    ffff800000104b3e <putchar+0xd9>
ffff800000104afd:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104b04:	00 00 00 
ffff800000104b07:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104b0a:	89 d1                	mov    %edx,%ecx
ffff800000104b0c:	c1 f9 1f             	sar    $0x1f,%ecx
ffff800000104b0f:	c1 e9 1d             	shr    $0x1d,%ecx
ffff800000104b12:	01 ca                	add    %ecx,%edx
ffff800000104b14:	83 e2 07             	and    $0x7,%edx
ffff800000104b17:	29 ca                	sub    %ecx,%edx
ffff800000104b19:	b9 08 00 00 00       	mov    $0x8,%ecx
ffff800000104b1e:	29 d1                	sub    %edx,%ecx
ffff800000104b20:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104b27:	00 00 00 
ffff800000104b2a:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104b2d:	01 d1                	add    %edx,%ecx
ffff800000104b2f:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104b36:	00 00 00 
ffff800000104b39:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104b3c:	eb 45                	jmp    ffff800000104b83 <putchar+0x11e>
ffff800000104b3e:	66 0f be 55 ec       	movsbw -0x14(%rbp),%dx
ffff800000104b43:	89 d1                	mov    %edx,%ecx
ffff800000104b45:	80 cd 07             	or     $0x7,%ch
ffff800000104b48:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104b4f:	00 00 00 
ffff800000104b52:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104b55:	48 63 d2             	movslq %edx,%rdx
ffff800000104b58:	48 8d 34 12          	lea    (%rdx,%rdx,1),%rsi
ffff800000104b5c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000104b60:	48 01 f2             	add    %rsi,%rdx
ffff800000104b63:	66 89 0a             	mov    %cx,(%rdx)
ffff800000104b66:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104b6d:	00 00 00 
ffff800000104b70:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104b73:	8d 4a 01             	lea    0x1(%rdx),%ecx
ffff800000104b76:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104b7d:	00 00 00 
ffff800000104b80:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104b83:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104b8a:	00 00 00 
ffff800000104b8d:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104b90:	81 fa cf 07 00 00    	cmp    $0x7cf,%edx
ffff800000104b96:	0f 8e 8b 00 00 00    	jle    ffff800000104c27 <putchar+0x1c2>
ffff800000104b9c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104ba3:	eb 30                	jmp    ffff800000104bd5 <putchar+0x170>
ffff800000104ba5:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104ba8:	48 63 d2             	movslq %edx,%rdx
ffff800000104bab:	48 83 c2 50          	add    $0x50,%rdx
ffff800000104baf:	48 8d 0c 12          	lea    (%rdx,%rdx,1),%rcx
ffff800000104bb3:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000104bb7:	48 01 ca             	add    %rcx,%rdx
ffff800000104bba:	8b 4d fc             	mov    -0x4(%rbp),%ecx
ffff800000104bbd:	48 63 c9             	movslq %ecx,%rcx
ffff800000104bc0:	48 8d 34 09          	lea    (%rcx,%rcx,1),%rsi
ffff800000104bc4:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000104bc8:	48 01 f1             	add    %rsi,%rcx
ffff800000104bcb:	0f b7 12             	movzwl (%rdx),%edx
ffff800000104bce:	66 89 11             	mov    %dx,(%rcx)
ffff800000104bd1:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000104bd5:	81 7d fc 7f 07 00 00 	cmpl   $0x77f,-0x4(%rbp)
ffff800000104bdc:	7e c7                	jle    ffff800000104ba5 <putchar+0x140>
ffff800000104bde:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%rbp)
ffff800000104be5:	eb 1a                	jmp    ffff800000104c01 <putchar+0x19c>
ffff800000104be7:	8b 55 f8             	mov    -0x8(%rbp),%edx
ffff800000104bea:	48 63 d2             	movslq %edx,%rdx
ffff800000104bed:	48 8d 0c 12          	lea    (%rdx,%rdx,1),%rcx
ffff800000104bf1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000104bf5:	48 01 ca             	add    %rcx,%rdx
ffff800000104bf8:	66 c7 02 20 07       	movw   $0x720,(%rdx)
ffff800000104bfd:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff800000104c01:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%rbp)
ffff800000104c08:	7e dd                	jle    ffff800000104be7 <putchar+0x182>
ffff800000104c0a:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104c11:	00 00 00 
ffff800000104c14:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104c17:	8d 4a b0             	lea    -0x50(%rdx),%ecx
ffff800000104c1a:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104c21:	00 00 00 
ffff800000104c24:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104c27:	90                   	nop
ffff800000104c28:	5d                   	pop    %rbp
ffff800000104c29:	c3                   	retq   

ffff800000104c2a <tssinit>:
ffff800000104c2a:	f3 0f 1e fa          	endbr64 
ffff800000104c2e:	55                   	push   %rbp
ffff800000104c2f:	48 89 e5             	mov    %rsp,%rbp
ffff800000104c32:	f3 0f 1e fa          	endbr64 
ffff800000104c36:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000104c32 <tssinit+0x8>
ffff800000104c3d:	49 bb 56 4e 00 00 00 	movabs $0x4e56,%r11
ffff800000104c44:	00 00 00 
ffff800000104c47:	4c 01 d8             	add    %r11,%rax
ffff800000104c4a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104c4e:	89 f2                	mov    %esi,%edx
ffff800000104c50:	66 89 55 e4          	mov    %dx,-0x1c(%rbp)
ffff800000104c54:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000104c5b:	ff ff ff 
ffff800000104c5e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104c62:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104c66:	48 89 4a 04          	mov    %rcx,0x4(%rdx)
ffff800000104c6a:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000104c71:	ff ff ff 
ffff800000104c74:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104c78:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104c7c:	48 89 4a 0c          	mov    %rcx,0xc(%rdx)
ffff800000104c80:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000104c87:	ff ff ff 
ffff800000104c8a:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104c8e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104c92:	48 89 4a 14          	mov    %rcx,0x14(%rdx)
ffff800000104c96:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000104c9d:	ff ff ff 
ffff800000104ca0:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104ca4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104ca8:	48 89 4a 24          	mov    %rcx,0x24(%rdx)
ffff800000104cac:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000104cb3:	ff ff ff 
ffff800000104cb6:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104cba:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104cbe:	48 89 4a 2c          	mov    %rcx,0x2c(%rdx)
ffff800000104cc2:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000104cc9:	ff ff ff 
ffff800000104ccc:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104cd0:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104cd4:	48 89 4a 34          	mov    %rcx,0x34(%rdx)
ffff800000104cd8:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000104cdf:	ff ff ff 
ffff800000104ce2:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104ce6:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104cea:	48 89 4a 3c          	mov    %rcx,0x3c(%rdx)
ffff800000104cee:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000104cf5:	ff ff ff 
ffff800000104cf8:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104cfc:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104d00:	48 89 4a 44          	mov    %rcx,0x44(%rdx)
ffff800000104d04:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000104d0b:	ff ff ff 
ffff800000104d0e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104d12:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104d16:	48 89 4a 4c          	mov    %rcx,0x4c(%rdx)
ffff800000104d1a:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000104d21:	ff ff ff 
ffff800000104d24:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104d28:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104d2c:	48 89 4a 54          	mov    %rcx,0x54(%rdx)
ffff800000104d30:	0f b7 55 e4          	movzwl -0x1c(%rbp),%edx
ffff800000104d34:	48 b9 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rcx
ffff800000104d3b:	ff ff ff 
ffff800000104d3e:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104d42:	48 63 f2             	movslq %edx,%rsi
ffff800000104d45:	66 c7 04 f1 67 00    	movw   $0x67,(%rcx,%rsi,8)
ffff800000104d4b:	48 b9 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rcx
ffff800000104d52:	ff ff ff 
ffff800000104d55:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104d59:	89 cf                	mov    %ecx,%edi
ffff800000104d5b:	48 b9 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rcx
ffff800000104d62:	ff ff ff 
ffff800000104d65:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104d69:	48 63 f2             	movslq %edx,%rsi
ffff800000104d6c:	66 89 7c f1 02       	mov    %di,0x2(%rcx,%rsi,8)
ffff800000104d71:	48 b9 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rcx
ffff800000104d78:	ff ff ff 
ffff800000104d7b:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104d7f:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000104d83:	89 cf                	mov    %ecx,%edi
ffff800000104d85:	48 b9 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rcx
ffff800000104d8c:	ff ff ff 
ffff800000104d8f:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104d93:	48 63 f2             	movslq %edx,%rsi
ffff800000104d96:	40 88 7c f1 04       	mov    %dil,0x4(%rcx,%rsi,8)
ffff800000104d9b:	48 b9 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rcx
ffff800000104da2:	ff ff ff 
ffff800000104da5:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104da9:	48 63 f2             	movslq %edx,%rsi
ffff800000104dac:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000104db1:	83 e7 f0             	and    $0xfffffff0,%edi
ffff800000104db4:	83 cf 09             	or     $0x9,%edi
ffff800000104db7:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff800000104dbc:	48 b9 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rcx
ffff800000104dc3:	ff ff ff 
ffff800000104dc6:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104dca:	48 63 f2             	movslq %edx,%rsi
ffff800000104dcd:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000104dd2:	83 e7 ef             	and    $0xffffffef,%edi
ffff800000104dd5:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff800000104dda:	48 b9 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rcx
ffff800000104de1:	ff ff ff 
ffff800000104de4:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104de8:	48 63 f2             	movslq %edx,%rsi
ffff800000104deb:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000104df0:	83 e7 9f             	and    $0xffffff9f,%edi
ffff800000104df3:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff800000104df8:	48 b9 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rcx
ffff800000104dff:	ff ff ff 
ffff800000104e02:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104e06:	48 63 f2             	movslq %edx,%rsi
ffff800000104e09:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000104e0e:	83 cf 80             	or     $0xffffff80,%edi
ffff800000104e11:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff800000104e16:	48 b9 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rcx
ffff800000104e1d:	ff ff ff 
ffff800000104e20:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104e24:	48 63 f2             	movslq %edx,%rsi
ffff800000104e27:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104e2c:	83 e7 f0             	and    $0xfffffff0,%edi
ffff800000104e2f:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104e34:	48 b9 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rcx
ffff800000104e3b:	ff ff ff 
ffff800000104e3e:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104e42:	48 63 f2             	movslq %edx,%rsi
ffff800000104e45:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104e4a:	83 e7 ef             	and    $0xffffffef,%edi
ffff800000104e4d:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104e52:	48 b9 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rcx
ffff800000104e59:	ff ff ff 
ffff800000104e5c:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104e60:	48 63 f2             	movslq %edx,%rsi
ffff800000104e63:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104e68:	83 e7 df             	and    $0xffffffdf,%edi
ffff800000104e6b:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104e70:	48 b9 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rcx
ffff800000104e77:	ff ff ff 
ffff800000104e7a:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104e7e:	48 63 f2             	movslq %edx,%rsi
ffff800000104e81:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104e86:	83 e7 bf             	and    $0xffffffbf,%edi
ffff800000104e89:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104e8e:	48 b9 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rcx
ffff800000104e95:	ff ff ff 
ffff800000104e98:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104e9c:	48 63 f2             	movslq %edx,%rsi
ffff800000104e9f:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104ea4:	83 e7 7f             	and    $0x7f,%edi
ffff800000104ea7:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104eac:	48 b9 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rcx
ffff800000104eb3:	ff ff ff 
ffff800000104eb6:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104eba:	48 c1 e9 20          	shr    $0x20,%rcx
ffff800000104ebe:	89 ce                	mov    %ecx,%esi
ffff800000104ec0:	48 b9 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rcx
ffff800000104ec7:	ff ff ff 
ffff800000104eca:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
ffff800000104ece:	48 63 d2             	movslq %edx,%rdx
ffff800000104ed1:	40 88 74 d0 07       	mov    %sil,0x7(%rax,%rdx,8)
ffff800000104ed6:	0f b7 45 e4          	movzwl -0x1c(%rbp),%eax
ffff800000104eda:	c1 e0 03             	shl    $0x3,%eax
ffff800000104edd:	66 89 45 fe          	mov    %ax,-0x2(%rbp)
ffff800000104ee1:	0f b7 45 fe          	movzwl -0x2(%rbp),%eax
ffff800000104ee5:	0f 00 d8             	ltr    %ax
ffff800000104ee8:	90                   	nop
ffff800000104ee9:	5d                   	pop    %rbp
ffff800000104eea:	c3                   	retq   

ffff800000104eeb <trapinit>:
ffff800000104eeb:	f3 0f 1e fa          	endbr64 
ffff800000104eef:	55                   	push   %rbp
ffff800000104ef0:	48 89 e5             	mov    %rsp,%rbp
ffff800000104ef3:	53                   	push   %rbx
ffff800000104ef4:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104ef8:	f3 0f 1e fa          	endbr64 
ffff800000104efc:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000104ef8 <trapinit+0xd>
ffff800000104f03:	49 bb 90 4b 00 00 00 	movabs $0x4b90,%r11
ffff800000104f0a:	00 00 00 
ffff800000104f0d:	4c 01 db             	add    %r11,%rbx
ffff800000104f10:	48 b8 38 ff ff ff ff 	movabs $0xffffffffffffff38,%rax
ffff800000104f17:	ff ff ff 
ffff800000104f1a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104f1e:	48 89 c2             	mov    %rax,%rdx
ffff800000104f21:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104f26:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000104f2d:	ff ff ff 
ffff800000104f30:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104f34:	48 89 c7             	mov    %rax,%rdi
ffff800000104f37:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff800000104f3e:	ff ff ff 
ffff800000104f41:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104f45:	ff d0                	callq  *%rax
ffff800000104f47:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000104f4e:	ff ff ff 
ffff800000104f51:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104f55:	48 8d 40 10          	lea    0x10(%rax),%rax
ffff800000104f59:	48 ba 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rdx
ffff800000104f60:	ff ff ff 
ffff800000104f63:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104f67:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104f6c:	48 89 c7             	mov    %rax,%rdi
ffff800000104f6f:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff800000104f76:	ff ff ff 
ffff800000104f79:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104f7d:	ff d0                	callq  *%rax
ffff800000104f7f:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000104f86:	ff ff ff 
ffff800000104f89:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104f8d:	48 8d 40 20          	lea    0x20(%rax),%rax
ffff800000104f91:	48 ba e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rdx
ffff800000104f98:	ff ff ff 
ffff800000104f9b:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104f9f:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104fa4:	48 89 c7             	mov    %rax,%rdi
ffff800000104fa7:	48 b8 13 b9 ff ff ff 	movabs $0xffffffffffffb913,%rax
ffff800000104fae:	ff ff ff 
ffff800000104fb1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104fb5:	ff d0                	callq  *%rax
ffff800000104fb7:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000104fbe:	ff ff ff 
ffff800000104fc1:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104fc5:	48 8d 40 30          	lea    0x30(%rax),%rax
ffff800000104fc9:	48 ba f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rdx
ffff800000104fd0:	ff ff ff 
ffff800000104fd3:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104fd7:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104fdc:	48 89 c7             	mov    %rax,%rdi
ffff800000104fdf:	48 b8 c3 ba ff ff ff 	movabs $0xffffffffffffbac3,%rax
ffff800000104fe6:	ff ff ff 
ffff800000104fe9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104fed:	ff d0                	callq  *%rax
ffff800000104fef:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000104ff6:	ff ff ff 
ffff800000104ff9:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104ffd:	48 8d 40 40          	lea    0x40(%rax),%rax
ffff800000105001:	48 ba 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rdx
ffff800000105008:	ff ff ff 
ffff80000010500b:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010500f:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105014:	48 89 c7             	mov    %rax,%rdi
ffff800000105017:	48 b8 c3 ba ff ff ff 	movabs $0xffffffffffffbac3,%rax
ffff80000010501e:	ff ff ff 
ffff800000105021:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105025:	ff d0                	callq  *%rax
ffff800000105027:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff80000010502e:	ff ff ff 
ffff800000105031:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105035:	48 8d 40 50          	lea    0x50(%rax),%rax
ffff800000105039:	48 ba 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rdx
ffff800000105040:	ff ff ff 
ffff800000105043:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105047:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010504c:	48 89 c7             	mov    %rax,%rdi
ffff80000010504f:	48 b8 c3 ba ff ff ff 	movabs $0xffffffffffffbac3,%rax
ffff800000105056:	ff ff ff 
ffff800000105059:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010505d:	ff d0                	callq  *%rax
ffff80000010505f:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000105066:	ff ff ff 
ffff800000105069:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010506d:	48 8d 40 60          	lea    0x60(%rax),%rax
ffff800000105071:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105078:	ff ff ff 
ffff80000010507b:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010507f:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105084:	48 89 c7             	mov    %rax,%rdi
ffff800000105087:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff80000010508e:	ff ff ff 
ffff800000105091:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105095:	ff d0                	callq  *%rax
ffff800000105097:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff80000010509e:	ff ff ff 
ffff8000001050a1:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001050a5:	48 8d 40 70          	lea    0x70(%rax),%rax
ffff8000001050a9:	48 ba f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rdx
ffff8000001050b0:	ff ff ff 
ffff8000001050b3:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001050b7:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001050bc:	48 89 c7             	mov    %rax,%rdi
ffff8000001050bf:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff8000001050c6:	ff ff ff 
ffff8000001050c9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001050cd:	ff d0                	callq  *%rax
ffff8000001050cf:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff8000001050d6:	ff ff ff 
ffff8000001050d9:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001050dd:	48 8d 80 80 00 00 00 	lea    0x80(%rax),%rax
ffff8000001050e4:	48 ba a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rdx
ffff8000001050eb:	ff ff ff 
ffff8000001050ee:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001050f2:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001050f7:	48 89 c7             	mov    %rax,%rdi
ffff8000001050fa:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff800000105101:	ff ff ff 
ffff800000105104:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105108:	ff d0                	callq  *%rax
ffff80000010510a:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000105111:	ff ff ff 
ffff800000105114:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105118:	48 8d 80 90 00 00 00 	lea    0x90(%rax),%rax
ffff80000010511f:	48 ba c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rdx
ffff800000105126:	ff ff ff 
ffff800000105129:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010512d:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105132:	48 89 c7             	mov    %rax,%rdi
ffff800000105135:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff80000010513c:	ff ff ff 
ffff80000010513f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105143:	ff d0                	callq  *%rax
ffff800000105145:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff80000010514c:	ff ff ff 
ffff80000010514f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105153:	48 8d 80 a0 00 00 00 	lea    0xa0(%rax),%rax
ffff80000010515a:	48 ba 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rdx
ffff800000105161:	ff ff ff 
ffff800000105164:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105168:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010516d:	48 89 c7             	mov    %rax,%rdi
ffff800000105170:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff800000105177:	ff ff ff 
ffff80000010517a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010517e:	ff d0                	callq  *%rax
ffff800000105180:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000105187:	ff ff ff 
ffff80000010518a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010518e:	48 8d 80 b0 00 00 00 	lea    0xb0(%rax),%rax
ffff800000105195:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff80000010519c:	ff ff ff 
ffff80000010519f:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001051a3:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001051a8:	48 89 c7             	mov    %rax,%rdi
ffff8000001051ab:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff8000001051b2:	ff ff ff 
ffff8000001051b5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001051b9:	ff d0                	callq  *%rax
ffff8000001051bb:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff8000001051c2:	ff ff ff 
ffff8000001051c5:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001051c9:	48 8d 80 c0 00 00 00 	lea    0xc0(%rax),%rax
ffff8000001051d0:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff8000001051d7:	ff ff ff 
ffff8000001051da:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001051de:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001051e3:	48 89 c7             	mov    %rax,%rdi
ffff8000001051e6:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff8000001051ed:	ff ff ff 
ffff8000001051f0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001051f4:	ff d0                	callq  *%rax
ffff8000001051f6:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff8000001051fd:	ff ff ff 
ffff800000105200:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105204:	48 8d 80 d0 00 00 00 	lea    0xd0(%rax),%rax
ffff80000010520b:	48 ba 40 ff ff ff ff 	movabs $0xffffffffffffff40,%rdx
ffff800000105212:	ff ff ff 
ffff800000105215:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105219:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010521e:	48 89 c7             	mov    %rax,%rdi
ffff800000105221:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff800000105228:	ff ff ff 
ffff80000010522b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010522f:	ff d0                	callq  *%rax
ffff800000105231:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000105238:	ff ff ff 
ffff80000010523b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010523f:	48 8d 80 e0 00 00 00 	lea    0xe0(%rax),%rax
ffff800000105246:	48 ba c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rdx
ffff80000010524d:	ff ff ff 
ffff800000105250:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105254:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105259:	48 89 c7             	mov    %rax,%rdi
ffff80000010525c:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff800000105263:	ff ff ff 
ffff800000105266:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010526a:	ff d0                	callq  *%rax
ffff80000010526c:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000105273:	ff ff ff 
ffff800000105276:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010527a:	48 8d 80 00 01 00 00 	lea    0x100(%rax),%rax
ffff800000105281:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105288:	ff ff ff 
ffff80000010528b:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010528f:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105294:	48 89 c7             	mov    %rax,%rdi
ffff800000105297:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff80000010529e:	ff ff ff 
ffff8000001052a1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001052a5:	ff d0                	callq  *%rax
ffff8000001052a7:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff8000001052ae:	ff ff ff 
ffff8000001052b1:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001052b5:	48 8d 80 10 01 00 00 	lea    0x110(%rax),%rax
ffff8000001052bc:	48 ba 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rdx
ffff8000001052c3:	ff ff ff 
ffff8000001052c6:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001052ca:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001052cf:	48 89 c7             	mov    %rax,%rdi
ffff8000001052d2:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff8000001052d9:	ff ff ff 
ffff8000001052dc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001052e0:	ff d0                	callq  *%rax
ffff8000001052e2:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff8000001052e9:	ff ff ff 
ffff8000001052ec:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001052f0:	48 8d 80 20 01 00 00 	lea    0x120(%rax),%rax
ffff8000001052f7:	48 ba d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rdx
ffff8000001052fe:	ff ff ff 
ffff800000105301:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105305:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010530a:	48 89 c7             	mov    %rax,%rdi
ffff80000010530d:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff800000105314:	ff ff ff 
ffff800000105317:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010531b:	ff d0                	callq  *%rax
ffff80000010531d:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000105324:	ff ff ff 
ffff800000105327:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010532b:	48 8d 80 30 01 00 00 	lea    0x130(%rax),%rax
ffff800000105332:	48 ba e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rdx
ffff800000105339:	ff ff ff 
ffff80000010533c:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105340:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105345:	48 89 c7             	mov    %rax,%rdi
ffff800000105348:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff80000010534f:	ff ff ff 
ffff800000105352:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105356:	ff d0                	callq  *%rax
ffff800000105358:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff80000010535f:	ff ff ff 
ffff800000105362:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105366:	48 8d 80 40 01 00 00 	lea    0x140(%rax),%rax
ffff80000010536d:	48 ba b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rdx
ffff800000105374:	ff ff ff 
ffff800000105377:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010537b:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105380:	48 89 c7             	mov    %rax,%rdi
ffff800000105383:	48 b8 ea b9 ff ff ff 	movabs $0xffffffffffffb9ea,%rax
ffff80000010538a:	ff ff ff 
ffff80000010538d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105391:	ff d0                	callq  *%rax
ffff800000105393:	90                   	nop
ffff800000105394:	48 83 c4 08          	add    $0x8,%rsp
ffff800000105398:	5b                   	pop    %rbx
ffff800000105399:	5d                   	pop    %rbp
ffff80000010539a:	c3                   	retq   

ffff80000010539b <set_intr_gate>:
ffff80000010539b:	f3 0f 1e fa          	endbr64 
ffff80000010539f:	55                   	push   %rbp
ffff8000001053a0:	48 89 e5             	mov    %rsp,%rbp
ffff8000001053a3:	f3 0f 1e fa          	endbr64 
ffff8000001053a7:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff8000001053a3 <set_intr_gate+0x8>
ffff8000001053ae:	49 bb e5 46 00 00 00 	movabs $0x46e5,%r11
ffff8000001053b5:	00 00 00 
ffff8000001053b8:	4c 01 d8             	add    %r11,%rax
ffff8000001053bb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff8000001053bf:	89 75 f4             	mov    %esi,-0xc(%rbp)
ffff8000001053c2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001053c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053ca:	89 c2                	mov    %eax,%edx
ffff8000001053cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001053d0:	66 89 10             	mov    %dx,(%rax)
ffff8000001053d3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001053d7:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff8000001053dd:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff8000001053e0:	83 e0 07             	and    $0x7,%eax
ffff8000001053e3:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff8000001053e7:	83 e0 07             	and    $0x7,%eax
ffff8000001053ea:	89 c1                	mov    %eax,%ecx
ffff8000001053ec:	0f b6 42 04          	movzbl 0x4(%rdx),%eax
ffff8000001053f0:	83 e0 f8             	and    $0xfffffff8,%eax
ffff8000001053f3:	09 c8                	or     %ecx,%eax
ffff8000001053f5:	88 42 04             	mov    %al,0x4(%rdx)
ffff8000001053f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001053fc:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105400:	83 e2 07             	and    $0x7,%edx
ffff800000105403:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105406:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010540a:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010540e:	83 e2 f0             	and    $0xfffffff0,%edx
ffff800000105411:	83 ca 0e             	or     $0xe,%edx
ffff800000105414:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105417:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010541b:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010541f:	83 e2 ef             	and    $0xffffffef,%edx
ffff800000105422:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105425:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105429:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010542d:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105430:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105433:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105437:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010543b:	83 ca 80             	or     $0xffffff80,%edx
ffff80000010543e:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105441:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105445:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105449:	89 c2                	mov    %eax,%edx
ffff80000010544b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010544f:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105453:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105457:	48 c1 e8 20          	shr    $0x20,%rax
ffff80000010545b:	89 c2                	mov    %eax,%edx
ffff80000010545d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105461:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105464:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105468:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff80000010546f:	90                   	nop
ffff800000105470:	5d                   	pop    %rbp
ffff800000105471:	c3                   	retq   

ffff800000105472 <set_trap_gate>:
ffff800000105472:	f3 0f 1e fa          	endbr64 
ffff800000105476:	55                   	push   %rbp
ffff800000105477:	48 89 e5             	mov    %rsp,%rbp
ffff80000010547a:	f3 0f 1e fa          	endbr64 
ffff80000010547e:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff80000010547a <set_trap_gate+0x8>
ffff800000105485:	49 bb 0e 46 00 00 00 	movabs $0x460e,%r11
ffff80000010548c:	00 00 00 
ffff80000010548f:	4c 01 d8             	add    %r11,%rax
ffff800000105492:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105496:	89 f0                	mov    %esi,%eax
ffff800000105498:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010549c:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff80000010549f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054a3:	89 c2                	mov    %eax,%edx
ffff8000001054a5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001054a9:	66 89 10             	mov    %dx,(%rax)
ffff8000001054ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001054b0:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff8000001054b6:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff8000001054ba:	83 e0 07             	and    $0x7,%eax
ffff8000001054bd:	89 c2                	mov    %eax,%edx
ffff8000001054bf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001054c3:	89 d1                	mov    %edx,%ecx
ffff8000001054c5:	83 e1 07             	and    $0x7,%ecx
ffff8000001054c8:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff8000001054cc:	83 e2 f8             	and    $0xfffffff8,%edx
ffff8000001054cf:	09 ca                	or     %ecx,%edx
ffff8000001054d1:	88 50 04             	mov    %dl,0x4(%rax)
ffff8000001054d4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001054d8:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff8000001054dc:	83 e2 07             	and    $0x7,%edx
ffff8000001054df:	88 50 04             	mov    %dl,0x4(%rax)
ffff8000001054e2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001054e6:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001054ea:	83 ca 0f             	or     $0xf,%edx
ffff8000001054ed:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001054f0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001054f4:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001054f8:	83 e2 ef             	and    $0xffffffef,%edx
ffff8000001054fb:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001054fe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105502:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105506:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105509:	88 50 05             	mov    %dl,0x5(%rax)
ffff80000010550c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105510:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105514:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105517:	88 50 05             	mov    %dl,0x5(%rax)
ffff80000010551a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010551e:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105522:	89 c2                	mov    %eax,%edx
ffff800000105524:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105528:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff80000010552c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105530:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105534:	89 c2                	mov    %eax,%edx
ffff800000105536:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010553a:	89 50 08             	mov    %edx,0x8(%rax)
ffff80000010553d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105541:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105548:	90                   	nop
ffff800000105549:	5d                   	pop    %rbp
ffff80000010554a:	c3                   	retq   

ffff80000010554b <set_system_gate>:
ffff80000010554b:	f3 0f 1e fa          	endbr64 
ffff80000010554f:	55                   	push   %rbp
ffff800000105550:	48 89 e5             	mov    %rsp,%rbp
ffff800000105553:	f3 0f 1e fa          	endbr64 
ffff800000105557:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000105553 <set_system_gate+0x8>
ffff80000010555e:	49 bb 35 45 00 00 00 	movabs $0x4535,%r11
ffff800000105565:	00 00 00 
ffff800000105568:	4c 01 d8             	add    %r11,%rax
ffff80000010556b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff80000010556f:	89 f0                	mov    %esi,%eax
ffff800000105571:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105575:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff800000105578:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010557c:	89 c2                	mov    %eax,%edx
ffff80000010557e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105582:	66 89 10             	mov    %dx,(%rax)
ffff800000105585:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105589:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff80000010558f:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff800000105593:	83 e0 07             	and    $0x7,%eax
ffff800000105596:	89 c2                	mov    %eax,%edx
ffff800000105598:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010559c:	89 d1                	mov    %edx,%ecx
ffff80000010559e:	83 e1 07             	and    $0x7,%ecx
ffff8000001055a1:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff8000001055a5:	83 e2 f8             	and    $0xfffffff8,%edx
ffff8000001055a8:	09 ca                	or     %ecx,%edx
ffff8000001055aa:	88 50 04             	mov    %dl,0x4(%rax)
ffff8000001055ad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001055b1:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff8000001055b5:	83 e2 07             	and    $0x7,%edx
ffff8000001055b8:	88 50 04             	mov    %dl,0x4(%rax)
ffff8000001055bb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001055bf:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001055c3:	83 ca 0f             	or     $0xf,%edx
ffff8000001055c6:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001055c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001055cd:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001055d1:	83 e2 ef             	and    $0xffffffef,%edx
ffff8000001055d4:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001055d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001055db:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001055df:	83 e2 9f             	and    $0xffffff9f,%edx
ffff8000001055e2:	83 ca 40             	or     $0x40,%edx
ffff8000001055e5:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001055e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001055ec:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001055f0:	83 ca 80             	or     $0xffffff80,%edx
ffff8000001055f3:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001055f6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001055fa:	48 c1 e8 10          	shr    $0x10,%rax
ffff8000001055fe:	89 c2                	mov    %eax,%edx
ffff800000105600:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105604:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105608:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010560c:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105610:	89 c2                	mov    %eax,%edx
ffff800000105612:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105616:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105619:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010561d:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105624:	90                   	nop
ffff800000105625:	5d                   	pop    %rbp
ffff800000105626:	c3                   	retq   

ffff800000105627 <set_system_intr_gate>:
ffff800000105627:	f3 0f 1e fa          	endbr64 
ffff80000010562b:	55                   	push   %rbp
ffff80000010562c:	48 89 e5             	mov    %rsp,%rbp
ffff80000010562f:	f3 0f 1e fa          	endbr64 
ffff800000105633:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff80000010562f <set_system_intr_gate+0x8>
ffff80000010563a:	49 bb 59 44 00 00 00 	movabs $0x4459,%r11
ffff800000105641:	00 00 00 
ffff800000105644:	4c 01 d8             	add    %r11,%rax
ffff800000105647:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff80000010564b:	89 f0                	mov    %esi,%eax
ffff80000010564d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105651:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff800000105654:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105658:	89 c2                	mov    %eax,%edx
ffff80000010565a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010565e:	66 89 10             	mov    %dx,(%rax)
ffff800000105661:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105665:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff80000010566b:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff80000010566f:	83 e0 07             	and    $0x7,%eax
ffff800000105672:	89 c2                	mov    %eax,%edx
ffff800000105674:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105678:	89 d1                	mov    %edx,%ecx
ffff80000010567a:	83 e1 07             	and    $0x7,%ecx
ffff80000010567d:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105681:	83 e2 f8             	and    $0xfffffff8,%edx
ffff800000105684:	09 ca                	or     %ecx,%edx
ffff800000105686:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105689:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010568d:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105691:	83 e2 07             	and    $0x7,%edx
ffff800000105694:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105697:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010569b:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010569f:	83 e2 f0             	and    $0xfffffff0,%edx
ffff8000001056a2:	83 ca 0e             	or     $0xe,%edx
ffff8000001056a5:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001056a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001056ac:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001056b0:	83 e2 ef             	and    $0xffffffef,%edx
ffff8000001056b3:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001056b6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001056ba:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001056be:	83 e2 9f             	and    $0xffffff9f,%edx
ffff8000001056c1:	83 ca 40             	or     $0x40,%edx
ffff8000001056c4:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001056c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001056cb:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001056cf:	83 ca 80             	or     $0xffffff80,%edx
ffff8000001056d2:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001056d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056d9:	48 c1 e8 10          	shr    $0x10,%rax
ffff8000001056dd:	89 c2                	mov    %eax,%edx
ffff8000001056df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001056e3:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff8000001056e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056eb:	48 c1 e8 20          	shr    $0x20,%rax
ffff8000001056ef:	89 c2                	mov    %eax,%edx
ffff8000001056f1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001056f5:	89 50 08             	mov    %edx,0x8(%rax)
ffff8000001056f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001056fc:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105703:	90                   	nop
ffff800000105704:	5d                   	pop    %rbp
ffff800000105705:	c3                   	retq   

ffff800000105706 <do_divide_error>:
ffff800000105706:	f3 0f 1e fa          	endbr64 
ffff80000010570a:	55                   	push   %rbp
ffff80000010570b:	48 89 e5             	mov    %rsp,%rbp
ffff80000010570e:	41 57                	push   %r15
ffff800000105710:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105714:	f3 0f 1e fa          	endbr64 
ffff800000105718:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105714 <do_divide_error+0xe>
ffff80000010571f:	49 bb 74 43 00 00 00 	movabs $0x4374,%r11
ffff800000105726:	00 00 00 
ffff800000105729:	4d 01 d8             	add    %r11,%r8
ffff80000010572c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105730:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105734:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010573b:	00 
ffff80000010573c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105740:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105746:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010574a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010574e:	48 8b 08             	mov    (%rax),%rcx
ffff800000105751:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105755:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105759:	48 89 c6             	mov    %rax,%rsi
ffff80000010575c:	48 b8 f8 e5 ff ff ff 	movabs $0xffffffffffffe5f8,%rax
ffff800000105763:	ff ff ff 
ffff800000105766:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff80000010576a:	4d 89 c7             	mov    %r8,%r15
ffff80000010576d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105772:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff800000105779:	ff ff ff 
ffff80000010577c:	4d 01 c1             	add    %r8,%r9
ffff80000010577f:	41 ff d1             	callq  *%r9
ffff800000105782:	eb fe                	jmp    ffff800000105782 <do_divide_error+0x7c>

ffff800000105784 <do_debug>:
ffff800000105784:	f3 0f 1e fa          	endbr64 
ffff800000105788:	55                   	push   %rbp
ffff800000105789:	48 89 e5             	mov    %rsp,%rbp
ffff80000010578c:	41 57                	push   %r15
ffff80000010578e:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105792:	f3 0f 1e fa          	endbr64 
ffff800000105796:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105792 <do_debug+0xe>
ffff80000010579d:	49 bb f6 42 00 00 00 	movabs $0x42f6,%r11
ffff8000001057a4:	00 00 00 
ffff8000001057a7:	4d 01 d8             	add    %r11,%r8
ffff8000001057aa:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001057ae:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001057b2:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001057b9:	00 
ffff8000001057ba:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001057be:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001057c4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001057c8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001057cc:	48 8b 08             	mov    (%rax),%rcx
ffff8000001057cf:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001057d3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001057d7:	48 89 c6             	mov    %rax,%rsi
ffff8000001057da:	48 b8 38 e6 ff ff ff 	movabs $0xffffffffffffe638,%rax
ffff8000001057e1:	ff ff ff 
ffff8000001057e4:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff8000001057e8:	4d 89 c7             	mov    %r8,%r15
ffff8000001057eb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001057f0:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff8000001057f7:	ff ff ff 
ffff8000001057fa:	4d 01 c1             	add    %r8,%r9
ffff8000001057fd:	41 ff d1             	callq  *%r9
ffff800000105800:	eb fe                	jmp    ffff800000105800 <do_debug+0x7c>

ffff800000105802 <do_nmi>:
ffff800000105802:	f3 0f 1e fa          	endbr64 
ffff800000105806:	55                   	push   %rbp
ffff800000105807:	48 89 e5             	mov    %rsp,%rbp
ffff80000010580a:	41 57                	push   %r15
ffff80000010580c:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105810:	f3 0f 1e fa          	endbr64 
ffff800000105814:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105810 <do_nmi+0xe>
ffff80000010581b:	49 bb 78 42 00 00 00 	movabs $0x4278,%r11
ffff800000105822:	00 00 00 
ffff800000105825:	4d 01 d8             	add    %r11,%r8
ffff800000105828:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010582c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105830:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105837:	00 
ffff800000105838:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010583c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105842:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105846:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010584a:	48 8b 08             	mov    (%rax),%rcx
ffff80000010584d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105851:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105855:	48 89 c6             	mov    %rax,%rsi
ffff800000105858:	48 b8 70 e6 ff ff ff 	movabs $0xffffffffffffe670,%rax
ffff80000010585f:	ff ff ff 
ffff800000105862:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105866:	4d 89 c7             	mov    %r8,%r15
ffff800000105869:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010586e:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff800000105875:	ff ff ff 
ffff800000105878:	4d 01 c1             	add    %r8,%r9
ffff80000010587b:	41 ff d1             	callq  *%r9
ffff80000010587e:	eb fe                	jmp    ffff80000010587e <do_nmi+0x7c>

ffff800000105880 <do_int3>:
ffff800000105880:	f3 0f 1e fa          	endbr64 
ffff800000105884:	55                   	push   %rbp
ffff800000105885:	48 89 e5             	mov    %rsp,%rbp
ffff800000105888:	41 57                	push   %r15
ffff80000010588a:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010588e:	f3 0f 1e fa          	endbr64 
ffff800000105892:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff80000010588e <do_int3+0xe>
ffff800000105899:	49 bb fa 41 00 00 00 	movabs $0x41fa,%r11
ffff8000001058a0:	00 00 00 
ffff8000001058a3:	4d 01 d8             	add    %r11,%r8
ffff8000001058a6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001058aa:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001058ae:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001058b5:	00 
ffff8000001058b6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001058ba:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001058c0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001058c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058c8:	48 8b 08             	mov    (%rax),%rcx
ffff8000001058cb:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001058cf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001058d3:	48 89 c6             	mov    %rax,%rsi
ffff8000001058d6:	48 b8 a8 e6 ff ff ff 	movabs $0xffffffffffffe6a8,%rax
ffff8000001058dd:	ff ff ff 
ffff8000001058e0:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff8000001058e4:	4d 89 c7             	mov    %r8,%r15
ffff8000001058e7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001058ec:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff8000001058f3:	ff ff ff 
ffff8000001058f6:	4d 01 c1             	add    %r8,%r9
ffff8000001058f9:	41 ff d1             	callq  *%r9
ffff8000001058fc:	eb fe                	jmp    ffff8000001058fc <do_int3+0x7c>

ffff8000001058fe <do_overflow>:
ffff8000001058fe:	f3 0f 1e fa          	endbr64 
ffff800000105902:	55                   	push   %rbp
ffff800000105903:	48 89 e5             	mov    %rsp,%rbp
ffff800000105906:	41 57                	push   %r15
ffff800000105908:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010590c:	f3 0f 1e fa          	endbr64 
ffff800000105910:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff80000010590c <do_overflow+0xe>
ffff800000105917:	49 bb 7c 41 00 00 00 	movabs $0x417c,%r11
ffff80000010591e:	00 00 00 
ffff800000105921:	4d 01 d8             	add    %r11,%r8
ffff800000105924:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105928:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010592c:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105933:	00 
ffff800000105934:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105938:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010593e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105942:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105946:	48 8b 08             	mov    (%rax),%rcx
ffff800000105949:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010594d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105951:	48 89 c6             	mov    %rax,%rsi
ffff800000105954:	48 b8 e0 e6 ff ff ff 	movabs $0xffffffffffffe6e0,%rax
ffff80000010595b:	ff ff ff 
ffff80000010595e:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105962:	4d 89 c7             	mov    %r8,%r15
ffff800000105965:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010596a:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff800000105971:	ff ff ff 
ffff800000105974:	4d 01 c1             	add    %r8,%r9
ffff800000105977:	41 ff d1             	callq  *%r9
ffff80000010597a:	eb fe                	jmp    ffff80000010597a <do_overflow+0x7c>

ffff80000010597c <do_bounds>:
ffff80000010597c:	f3 0f 1e fa          	endbr64 
ffff800000105980:	55                   	push   %rbp
ffff800000105981:	48 89 e5             	mov    %rsp,%rbp
ffff800000105984:	41 57                	push   %r15
ffff800000105986:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010598a:	f3 0f 1e fa          	endbr64 
ffff80000010598e:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff80000010598a <do_bounds+0xe>
ffff800000105995:	49 bb fe 40 00 00 00 	movabs $0x40fe,%r11
ffff80000010599c:	00 00 00 
ffff80000010599f:	4d 01 d8             	add    %r11,%r8
ffff8000001059a2:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001059a6:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001059aa:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001059b1:	00 
ffff8000001059b2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001059b6:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001059bc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001059c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001059c4:	48 8b 08             	mov    (%rax),%rcx
ffff8000001059c7:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001059cb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001059cf:	48 89 c6             	mov    %rax,%rsi
ffff8000001059d2:	48 b8 20 e7 ff ff ff 	movabs $0xffffffffffffe720,%rax
ffff8000001059d9:	ff ff ff 
ffff8000001059dc:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff8000001059e0:	4d 89 c7             	mov    %r8,%r15
ffff8000001059e3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001059e8:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff8000001059ef:	ff ff ff 
ffff8000001059f2:	4d 01 c1             	add    %r8,%r9
ffff8000001059f5:	41 ff d1             	callq  *%r9
ffff8000001059f8:	eb fe                	jmp    ffff8000001059f8 <do_bounds+0x7c>

ffff8000001059fa <do_undefined_opcode>:
ffff8000001059fa:	f3 0f 1e fa          	endbr64 
ffff8000001059fe:	55                   	push   %rbp
ffff8000001059ff:	48 89 e5             	mov    %rsp,%rbp
ffff800000105a02:	41 57                	push   %r15
ffff800000105a04:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105a08:	f3 0f 1e fa          	endbr64 
ffff800000105a0c:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105a08 <do_undefined_opcode+0xe>
ffff800000105a13:	49 bb 80 40 00 00 00 	movabs $0x4080,%r11
ffff800000105a1a:	00 00 00 
ffff800000105a1d:	4d 01 d8             	add    %r11,%r8
ffff800000105a20:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105a24:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105a28:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105a2f:	00 
ffff800000105a30:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105a34:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105a3a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105a3e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105a42:	48 8b 08             	mov    (%rax),%rcx
ffff800000105a45:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105a49:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105a4d:	48 89 c6             	mov    %rax,%rsi
ffff800000105a50:	48 b8 60 e7 ff ff ff 	movabs $0xffffffffffffe760,%rax
ffff800000105a57:	ff ff ff 
ffff800000105a5a:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105a5e:	4d 89 c7             	mov    %r8,%r15
ffff800000105a61:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105a66:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff800000105a6d:	ff ff ff 
ffff800000105a70:	4d 01 c1             	add    %r8,%r9
ffff800000105a73:	41 ff d1             	callq  *%r9
ffff800000105a76:	eb fe                	jmp    ffff800000105a76 <do_undefined_opcode+0x7c>

ffff800000105a78 <do_dev_not_available>:
ffff800000105a78:	f3 0f 1e fa          	endbr64 
ffff800000105a7c:	55                   	push   %rbp
ffff800000105a7d:	48 89 e5             	mov    %rsp,%rbp
ffff800000105a80:	41 57                	push   %r15
ffff800000105a82:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105a86:	f3 0f 1e fa          	endbr64 
ffff800000105a8a:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105a86 <do_dev_not_available+0xe>
ffff800000105a91:	49 bb 02 40 00 00 00 	movabs $0x4002,%r11
ffff800000105a98:	00 00 00 
ffff800000105a9b:	4d 01 d8             	add    %r11,%r8
ffff800000105a9e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105aa2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105aa6:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105aad:	00 
ffff800000105aae:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105ab2:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105ab8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105abc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105ac0:	48 8b 08             	mov    (%rax),%rcx
ffff800000105ac3:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105ac7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105acb:	48 89 c6             	mov    %rax,%rsi
ffff800000105ace:	48 b8 a8 e7 ff ff ff 	movabs $0xffffffffffffe7a8,%rax
ffff800000105ad5:	ff ff ff 
ffff800000105ad8:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105adc:	4d 89 c7             	mov    %r8,%r15
ffff800000105adf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ae4:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff800000105aeb:	ff ff ff 
ffff800000105aee:	4d 01 c1             	add    %r8,%r9
ffff800000105af1:	41 ff d1             	callq  *%r9
ffff800000105af4:	eb fe                	jmp    ffff800000105af4 <do_dev_not_available+0x7c>

ffff800000105af6 <do_double_fault>:
ffff800000105af6:	f3 0f 1e fa          	endbr64 
ffff800000105afa:	55                   	push   %rbp
ffff800000105afb:	48 89 e5             	mov    %rsp,%rbp
ffff800000105afe:	41 57                	push   %r15
ffff800000105b00:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105b04:	f3 0f 1e fa          	endbr64 
ffff800000105b08:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105b04 <do_double_fault+0xe>
ffff800000105b0f:	49 bb 84 3f 00 00 00 	movabs $0x3f84,%r11
ffff800000105b16:	00 00 00 
ffff800000105b19:	4d 01 d8             	add    %r11,%r8
ffff800000105b1c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105b20:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105b24:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105b2b:	00 
ffff800000105b2c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105b30:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105b36:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105b3a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105b3e:	48 8b 08             	mov    (%rax),%rcx
ffff800000105b41:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105b45:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105b49:	48 89 c6             	mov    %rax,%rsi
ffff800000105b4c:	48 b8 f0 e7 ff ff ff 	movabs $0xffffffffffffe7f0,%rax
ffff800000105b53:	ff ff ff 
ffff800000105b56:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105b5a:	4d 89 c7             	mov    %r8,%r15
ffff800000105b5d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105b62:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff800000105b69:	ff ff ff 
ffff800000105b6c:	4d 01 c1             	add    %r8,%r9
ffff800000105b6f:	41 ff d1             	callq  *%r9
ffff800000105b72:	eb fe                	jmp    ffff800000105b72 <do_double_fault+0x7c>

ffff800000105b74 <do_coprocessor_segment_overrun>:
ffff800000105b74:	f3 0f 1e fa          	endbr64 
ffff800000105b78:	55                   	push   %rbp
ffff800000105b79:	48 89 e5             	mov    %rsp,%rbp
ffff800000105b7c:	41 57                	push   %r15
ffff800000105b7e:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105b82:	f3 0f 1e fa          	endbr64 
ffff800000105b86:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105b82 <do_coprocessor_segment_overrun+0xe>
ffff800000105b8d:	49 bb 06 3f 00 00 00 	movabs $0x3f06,%r11
ffff800000105b94:	00 00 00 
ffff800000105b97:	4d 01 d8             	add    %r11,%r8
ffff800000105b9a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105b9e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105ba2:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105ba9:	00 
ffff800000105baa:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105bae:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105bb4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105bb8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105bbc:	48 8b 08             	mov    (%rax),%rcx
ffff800000105bbf:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105bc3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105bc7:	48 89 c6             	mov    %rax,%rsi
ffff800000105bca:	48 b8 30 e8 ff ff ff 	movabs $0xffffffffffffe830,%rax
ffff800000105bd1:	ff ff ff 
ffff800000105bd4:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105bd8:	4d 89 c7             	mov    %r8,%r15
ffff800000105bdb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105be0:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff800000105be7:	ff ff ff 
ffff800000105bea:	4d 01 c1             	add    %r8,%r9
ffff800000105bed:	41 ff d1             	callq  *%r9
ffff800000105bf0:	eb fe                	jmp    ffff800000105bf0 <do_coprocessor_segment_overrun+0x7c>

ffff800000105bf2 <do_invalid_TSS>:
ffff800000105bf2:	f3 0f 1e fa          	endbr64 
ffff800000105bf6:	55                   	push   %rbp
ffff800000105bf7:	48 89 e5             	mov    %rsp,%rbp
ffff800000105bfa:	41 57                	push   %r15
ffff800000105bfc:	53                   	push   %rbx
ffff800000105bfd:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000105c01:	f3 0f 1e fa          	endbr64 
ffff800000105c05:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000105c01 <do_invalid_TSS+0xf>
ffff800000105c0c:	49 bb 87 3e 00 00 00 	movabs $0x3e87,%r11
ffff800000105c13:	00 00 00 
ffff800000105c16:	4c 01 db             	add    %r11,%rbx
ffff800000105c19:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105c1d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105c21:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105c28:	00 
ffff800000105c29:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105c2d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105c33:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105c37:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c3b:	48 8b 08             	mov    (%rax),%rcx
ffff800000105c3e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105c42:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105c46:	48 89 c6             	mov    %rax,%rsi
ffff800000105c49:	48 b8 80 e8 ff ff ff 	movabs $0xffffffffffffe880,%rax
ffff800000105c50:	ff ff ff 
ffff800000105c53:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105c57:	49 89 df             	mov    %rbx,%r15
ffff800000105c5a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105c5f:	49 b8 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r8
ffff800000105c66:	ff ff ff 
ffff800000105c69:	49 01 d8             	add    %rbx,%r8
ffff800000105c6c:	41 ff d0             	callq  *%r8
ffff800000105c6f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105c73:	83 e0 01             	and    $0x1,%eax
ffff800000105c76:	48 85 c0             	test   %rax,%rax
ffff800000105c79:	74 25                	je     ffff800000105ca0 <do_invalid_TSS+0xae>
ffff800000105c7b:	48 b8 c0 e8 ff ff ff 	movabs $0xffffffffffffe8c0,%rax
ffff800000105c82:	ff ff ff 
ffff800000105c85:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105c89:	49 89 df             	mov    %rbx,%r15
ffff800000105c8c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105c91:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000105c98:	ff ff ff 
ffff800000105c9b:	48 01 da             	add    %rbx,%rdx
ffff800000105c9e:	ff d2                	callq  *%rdx
ffff800000105ca0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105ca4:	83 e0 02             	and    $0x2,%eax
ffff800000105ca7:	48 85 c0             	test   %rax,%rax
ffff800000105caa:	74 27                	je     ffff800000105cd3 <do_invalid_TSS+0xe1>
ffff800000105cac:	48 b8 40 e9 ff ff ff 	movabs $0xffffffffffffe940,%rax
ffff800000105cb3:	ff ff ff 
ffff800000105cb6:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105cba:	49 89 df             	mov    %rbx,%r15
ffff800000105cbd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105cc2:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000105cc9:	ff ff ff 
ffff800000105ccc:	48 01 da             	add    %rbx,%rdx
ffff800000105ccf:	ff d2                	callq  *%rdx
ffff800000105cd1:	eb 25                	jmp    ffff800000105cf8 <do_invalid_TSS+0x106>
ffff800000105cd3:	48 b8 70 e9 ff ff ff 	movabs $0xffffffffffffe970,%rax
ffff800000105cda:	ff ff ff 
ffff800000105cdd:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105ce1:	49 89 df             	mov    %rbx,%r15
ffff800000105ce4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ce9:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000105cf0:	ff ff ff 
ffff800000105cf3:	48 01 da             	add    %rbx,%rdx
ffff800000105cf6:	ff d2                	callq  *%rdx
ffff800000105cf8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105cfc:	83 e0 02             	and    $0x2,%eax
ffff800000105cff:	48 85 c0             	test   %rax,%rax
ffff800000105d02:	75 58                	jne    ffff800000105d5c <do_invalid_TSS+0x16a>
ffff800000105d04:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d08:	83 e0 04             	and    $0x4,%eax
ffff800000105d0b:	48 85 c0             	test   %rax,%rax
ffff800000105d0e:	74 27                	je     ffff800000105d37 <do_invalid_TSS+0x145>
ffff800000105d10:	48 b8 a8 e9 ff ff ff 	movabs $0xffffffffffffe9a8,%rax
ffff800000105d17:	ff ff ff 
ffff800000105d1a:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105d1e:	49 89 df             	mov    %rbx,%r15
ffff800000105d21:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d26:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000105d2d:	ff ff ff 
ffff800000105d30:	48 01 da             	add    %rbx,%rdx
ffff800000105d33:	ff d2                	callq  *%rdx
ffff800000105d35:	eb 25                	jmp    ffff800000105d5c <do_invalid_TSS+0x16a>
ffff800000105d37:	48 b8 e0 e9 ff ff ff 	movabs $0xffffffffffffe9e0,%rax
ffff800000105d3e:	ff ff ff 
ffff800000105d41:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105d45:	49 89 df             	mov    %rbx,%r15
ffff800000105d48:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d4d:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000105d54:	ff ff ff 
ffff800000105d57:	48 01 da             	add    %rbx,%rdx
ffff800000105d5a:	ff d2                	callq  *%rdx
ffff800000105d5c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d60:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000105d65:	48 89 c6             	mov    %rax,%rsi
ffff800000105d68:	48 b8 10 ea ff ff ff 	movabs $0xffffffffffffea10,%rax
ffff800000105d6f:	ff ff ff 
ffff800000105d72:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105d76:	49 89 df             	mov    %rbx,%r15
ffff800000105d79:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d7e:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000105d85:	ff ff ff 
ffff800000105d88:	48 01 da             	add    %rbx,%rdx
ffff800000105d8b:	ff d2                	callq  *%rdx
ffff800000105d8d:	eb fe                	jmp    ffff800000105d8d <do_invalid_TSS+0x19b>

ffff800000105d8f <do_segment_not_present>:
ffff800000105d8f:	f3 0f 1e fa          	endbr64 
ffff800000105d93:	55                   	push   %rbp
ffff800000105d94:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d97:	41 57                	push   %r15
ffff800000105d99:	53                   	push   %rbx
ffff800000105d9a:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000105d9e:	f3 0f 1e fa          	endbr64 
ffff800000105da2:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000105d9e <do_segment_not_present+0xf>
ffff800000105da9:	49 bb ea 3c 00 00 00 	movabs $0x3cea,%r11
ffff800000105db0:	00 00 00 
ffff800000105db3:	4c 01 db             	add    %r11,%rbx
ffff800000105db6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105dba:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105dbe:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105dc5:	00 
ffff800000105dc6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105dca:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105dd0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105dd4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105dd8:	48 8b 08             	mov    (%rax),%rcx
ffff800000105ddb:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105ddf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105de3:	48 89 c6             	mov    %rax,%rsi
ffff800000105de6:	48 b8 30 ea ff ff ff 	movabs $0xffffffffffffea30,%rax
ffff800000105ded:	ff ff ff 
ffff800000105df0:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105df4:	49 89 df             	mov    %rbx,%r15
ffff800000105df7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105dfc:	49 b8 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r8
ffff800000105e03:	ff ff ff 
ffff800000105e06:	49 01 d8             	add    %rbx,%r8
ffff800000105e09:	41 ff d0             	callq  *%r8
ffff800000105e0c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e10:	83 e0 01             	and    $0x1,%eax
ffff800000105e13:	48 85 c0             	test   %rax,%rax
ffff800000105e16:	74 25                	je     ffff800000105e3d <do_segment_not_present+0xae>
ffff800000105e18:	48 b8 c0 e8 ff ff ff 	movabs $0xffffffffffffe8c0,%rax
ffff800000105e1f:	ff ff ff 
ffff800000105e22:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105e26:	49 89 df             	mov    %rbx,%r15
ffff800000105e29:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e2e:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000105e35:	ff ff ff 
ffff800000105e38:	48 01 da             	add    %rbx,%rdx
ffff800000105e3b:	ff d2                	callq  *%rdx
ffff800000105e3d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e41:	83 e0 02             	and    $0x2,%eax
ffff800000105e44:	48 85 c0             	test   %rax,%rax
ffff800000105e47:	74 27                	je     ffff800000105e70 <do_segment_not_present+0xe1>
ffff800000105e49:	48 b8 40 e9 ff ff ff 	movabs $0xffffffffffffe940,%rax
ffff800000105e50:	ff ff ff 
ffff800000105e53:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105e57:	49 89 df             	mov    %rbx,%r15
ffff800000105e5a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e5f:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000105e66:	ff ff ff 
ffff800000105e69:	48 01 da             	add    %rbx,%rdx
ffff800000105e6c:	ff d2                	callq  *%rdx
ffff800000105e6e:	eb 25                	jmp    ffff800000105e95 <do_segment_not_present+0x106>
ffff800000105e70:	48 b8 70 e9 ff ff ff 	movabs $0xffffffffffffe970,%rax
ffff800000105e77:	ff ff ff 
ffff800000105e7a:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105e7e:	49 89 df             	mov    %rbx,%r15
ffff800000105e81:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e86:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000105e8d:	ff ff ff 
ffff800000105e90:	48 01 da             	add    %rbx,%rdx
ffff800000105e93:	ff d2                	callq  *%rdx
ffff800000105e95:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e99:	83 e0 02             	and    $0x2,%eax
ffff800000105e9c:	48 85 c0             	test   %rax,%rax
ffff800000105e9f:	75 58                	jne    ffff800000105ef9 <do_segment_not_present+0x16a>
ffff800000105ea1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105ea5:	83 e0 04             	and    $0x4,%eax
ffff800000105ea8:	48 85 c0             	test   %rax,%rax
ffff800000105eab:	74 27                	je     ffff800000105ed4 <do_segment_not_present+0x145>
ffff800000105ead:	48 b8 a8 e9 ff ff ff 	movabs $0xffffffffffffe9a8,%rax
ffff800000105eb4:	ff ff ff 
ffff800000105eb7:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105ebb:	49 89 df             	mov    %rbx,%r15
ffff800000105ebe:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ec3:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000105eca:	ff ff ff 
ffff800000105ecd:	48 01 da             	add    %rbx,%rdx
ffff800000105ed0:	ff d2                	callq  *%rdx
ffff800000105ed2:	eb 25                	jmp    ffff800000105ef9 <do_segment_not_present+0x16a>
ffff800000105ed4:	48 b8 e0 e9 ff ff ff 	movabs $0xffffffffffffe9e0,%rax
ffff800000105edb:	ff ff ff 
ffff800000105ede:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105ee2:	49 89 df             	mov    %rbx,%r15
ffff800000105ee5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105eea:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000105ef1:	ff ff ff 
ffff800000105ef4:	48 01 da             	add    %rbx,%rdx
ffff800000105ef7:	ff d2                	callq  *%rdx
ffff800000105ef9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105efd:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000105f02:	48 89 c6             	mov    %rax,%rsi
ffff800000105f05:	48 b8 10 ea ff ff ff 	movabs $0xffffffffffffea10,%rax
ffff800000105f0c:	ff ff ff 
ffff800000105f0f:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105f13:	49 89 df             	mov    %rbx,%r15
ffff800000105f16:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f1b:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000105f22:	ff ff ff 
ffff800000105f25:	48 01 da             	add    %rbx,%rdx
ffff800000105f28:	ff d2                	callq  *%rdx
ffff800000105f2a:	eb fe                	jmp    ffff800000105f2a <do_segment_not_present+0x19b>

ffff800000105f2c <do_stack_segment_fault>:
ffff800000105f2c:	f3 0f 1e fa          	endbr64 
ffff800000105f30:	55                   	push   %rbp
ffff800000105f31:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f34:	41 57                	push   %r15
ffff800000105f36:	53                   	push   %rbx
ffff800000105f37:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000105f3b:	f3 0f 1e fa          	endbr64 
ffff800000105f3f:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000105f3b <do_stack_segment_fault+0xf>
ffff800000105f46:	49 bb 4d 3b 00 00 00 	movabs $0x3b4d,%r11
ffff800000105f4d:	00 00 00 
ffff800000105f50:	4c 01 db             	add    %r11,%rbx
ffff800000105f53:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105f57:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105f5b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105f62:	00 
ffff800000105f63:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105f67:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105f6d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105f71:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f75:	48 8b 08             	mov    (%rax),%rcx
ffff800000105f78:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105f7c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f80:	48 89 c6             	mov    %rax,%rsi
ffff800000105f83:	48 b8 78 ea ff ff ff 	movabs $0xffffffffffffea78,%rax
ffff800000105f8a:	ff ff ff 
ffff800000105f8d:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105f91:	49 89 df             	mov    %rbx,%r15
ffff800000105f94:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f99:	49 b8 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r8
ffff800000105fa0:	ff ff ff 
ffff800000105fa3:	49 01 d8             	add    %rbx,%r8
ffff800000105fa6:	41 ff d0             	callq  *%r8
ffff800000105fa9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105fad:	83 e0 01             	and    $0x1,%eax
ffff800000105fb0:	48 85 c0             	test   %rax,%rax
ffff800000105fb3:	74 25                	je     ffff800000105fda <do_stack_segment_fault+0xae>
ffff800000105fb5:	48 b8 c0 e8 ff ff ff 	movabs $0xffffffffffffe8c0,%rax
ffff800000105fbc:	ff ff ff 
ffff800000105fbf:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105fc3:	49 89 df             	mov    %rbx,%r15
ffff800000105fc6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105fcb:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000105fd2:	ff ff ff 
ffff800000105fd5:	48 01 da             	add    %rbx,%rdx
ffff800000105fd8:	ff d2                	callq  *%rdx
ffff800000105fda:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105fde:	83 e0 02             	and    $0x2,%eax
ffff800000105fe1:	48 85 c0             	test   %rax,%rax
ffff800000105fe4:	74 27                	je     ffff80000010600d <do_stack_segment_fault+0xe1>
ffff800000105fe6:	48 b8 40 e9 ff ff ff 	movabs $0xffffffffffffe940,%rax
ffff800000105fed:	ff ff ff 
ffff800000105ff0:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105ff4:	49 89 df             	mov    %rbx,%r15
ffff800000105ff7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ffc:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000106003:	ff ff ff 
ffff800000106006:	48 01 da             	add    %rbx,%rdx
ffff800000106009:	ff d2                	callq  *%rdx
ffff80000010600b:	eb 25                	jmp    ffff800000106032 <do_stack_segment_fault+0x106>
ffff80000010600d:	48 b8 70 e9 ff ff ff 	movabs $0xffffffffffffe970,%rax
ffff800000106014:	ff ff ff 
ffff800000106017:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010601b:	49 89 df             	mov    %rbx,%r15
ffff80000010601e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106023:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff80000010602a:	ff ff ff 
ffff80000010602d:	48 01 da             	add    %rbx,%rdx
ffff800000106030:	ff d2                	callq  *%rdx
ffff800000106032:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106036:	83 e0 02             	and    $0x2,%eax
ffff800000106039:	48 85 c0             	test   %rax,%rax
ffff80000010603c:	75 58                	jne    ffff800000106096 <do_stack_segment_fault+0x16a>
ffff80000010603e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106042:	83 e0 04             	and    $0x4,%eax
ffff800000106045:	48 85 c0             	test   %rax,%rax
ffff800000106048:	74 27                	je     ffff800000106071 <do_stack_segment_fault+0x145>
ffff80000010604a:	48 b8 a8 e9 ff ff ff 	movabs $0xffffffffffffe9a8,%rax
ffff800000106051:	ff ff ff 
ffff800000106054:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106058:	49 89 df             	mov    %rbx,%r15
ffff80000010605b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106060:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000106067:	ff ff ff 
ffff80000010606a:	48 01 da             	add    %rbx,%rdx
ffff80000010606d:	ff d2                	callq  *%rdx
ffff80000010606f:	eb 25                	jmp    ffff800000106096 <do_stack_segment_fault+0x16a>
ffff800000106071:	48 b8 e0 e9 ff ff ff 	movabs $0xffffffffffffe9e0,%rax
ffff800000106078:	ff ff ff 
ffff80000010607b:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010607f:	49 89 df             	mov    %rbx,%r15
ffff800000106082:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106087:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff80000010608e:	ff ff ff 
ffff800000106091:	48 01 da             	add    %rbx,%rdx
ffff800000106094:	ff d2                	callq  *%rdx
ffff800000106096:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010609a:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff80000010609f:	48 89 c6             	mov    %rax,%rsi
ffff8000001060a2:	48 b8 10 ea ff ff ff 	movabs $0xffffffffffffea10,%rax
ffff8000001060a9:	ff ff ff 
ffff8000001060ac:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001060b0:	49 89 df             	mov    %rbx,%r15
ffff8000001060b3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060b8:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff8000001060bf:	ff ff ff 
ffff8000001060c2:	48 01 da             	add    %rbx,%rdx
ffff8000001060c5:	ff d2                	callq  *%rdx
ffff8000001060c7:	eb fe                	jmp    ffff8000001060c7 <do_stack_segment_fault+0x19b>

ffff8000001060c9 <do_general_protection>:
ffff8000001060c9:	f3 0f 1e fa          	endbr64 
ffff8000001060cd:	55                   	push   %rbp
ffff8000001060ce:	48 89 e5             	mov    %rsp,%rbp
ffff8000001060d1:	41 57                	push   %r15
ffff8000001060d3:	53                   	push   %rbx
ffff8000001060d4:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001060d8:	f3 0f 1e fa          	endbr64 
ffff8000001060dc:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001060d8 <do_general_protection+0xf>
ffff8000001060e3:	49 bb b0 39 00 00 00 	movabs $0x39b0,%r11
ffff8000001060ea:	00 00 00 
ffff8000001060ed:	4c 01 db             	add    %r11,%rbx
ffff8000001060f0:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001060f4:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001060f8:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001060ff:	00 
ffff800000106100:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106104:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010610a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010610e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106112:	48 8b 08             	mov    (%rax),%rcx
ffff800000106115:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106119:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010611d:	48 89 c6             	mov    %rax,%rsi
ffff800000106120:	48 b8 c0 ea ff ff ff 	movabs $0xffffffffffffeac0,%rax
ffff800000106127:	ff ff ff 
ffff80000010612a:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010612e:	49 89 df             	mov    %rbx,%r15
ffff800000106131:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106136:	49 b8 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r8
ffff80000010613d:	ff ff ff 
ffff800000106140:	49 01 d8             	add    %rbx,%r8
ffff800000106143:	41 ff d0             	callq  *%r8
ffff800000106146:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010614a:	83 e0 01             	and    $0x1,%eax
ffff80000010614d:	48 85 c0             	test   %rax,%rax
ffff800000106150:	74 25                	je     ffff800000106177 <do_general_protection+0xae>
ffff800000106152:	48 b8 c0 e8 ff ff ff 	movabs $0xffffffffffffe8c0,%rax
ffff800000106159:	ff ff ff 
ffff80000010615c:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106160:	49 89 df             	mov    %rbx,%r15
ffff800000106163:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106168:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff80000010616f:	ff ff ff 
ffff800000106172:	48 01 da             	add    %rbx,%rdx
ffff800000106175:	ff d2                	callq  *%rdx
ffff800000106177:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010617b:	83 e0 02             	and    $0x2,%eax
ffff80000010617e:	48 85 c0             	test   %rax,%rax
ffff800000106181:	74 27                	je     ffff8000001061aa <do_general_protection+0xe1>
ffff800000106183:	48 b8 40 e9 ff ff ff 	movabs $0xffffffffffffe940,%rax
ffff80000010618a:	ff ff ff 
ffff80000010618d:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106191:	49 89 df             	mov    %rbx,%r15
ffff800000106194:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106199:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff8000001061a0:	ff ff ff 
ffff8000001061a3:	48 01 da             	add    %rbx,%rdx
ffff8000001061a6:	ff d2                	callq  *%rdx
ffff8000001061a8:	eb 25                	jmp    ffff8000001061cf <do_general_protection+0x106>
ffff8000001061aa:	48 b8 70 e9 ff ff ff 	movabs $0xffffffffffffe970,%rax
ffff8000001061b1:	ff ff ff 
ffff8000001061b4:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001061b8:	49 89 df             	mov    %rbx,%r15
ffff8000001061bb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061c0:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff8000001061c7:	ff ff ff 
ffff8000001061ca:	48 01 da             	add    %rbx,%rdx
ffff8000001061cd:	ff d2                	callq  *%rdx
ffff8000001061cf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001061d3:	83 e0 02             	and    $0x2,%eax
ffff8000001061d6:	48 85 c0             	test   %rax,%rax
ffff8000001061d9:	75 58                	jne    ffff800000106233 <do_general_protection+0x16a>
ffff8000001061db:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001061df:	83 e0 04             	and    $0x4,%eax
ffff8000001061e2:	48 85 c0             	test   %rax,%rax
ffff8000001061e5:	74 27                	je     ffff80000010620e <do_general_protection+0x145>
ffff8000001061e7:	48 b8 a8 e9 ff ff ff 	movabs $0xffffffffffffe9a8,%rax
ffff8000001061ee:	ff ff ff 
ffff8000001061f1:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001061f5:	49 89 df             	mov    %rbx,%r15
ffff8000001061f8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061fd:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000106204:	ff ff ff 
ffff800000106207:	48 01 da             	add    %rbx,%rdx
ffff80000010620a:	ff d2                	callq  *%rdx
ffff80000010620c:	eb 25                	jmp    ffff800000106233 <do_general_protection+0x16a>
ffff80000010620e:	48 b8 e0 e9 ff ff ff 	movabs $0xffffffffffffe9e0,%rax
ffff800000106215:	ff ff ff 
ffff800000106218:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010621c:	49 89 df             	mov    %rbx,%r15
ffff80000010621f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106224:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff80000010622b:	ff ff ff 
ffff80000010622e:	48 01 da             	add    %rbx,%rdx
ffff800000106231:	ff d2                	callq  *%rdx
ffff800000106233:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106237:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff80000010623c:	48 89 c6             	mov    %rax,%rsi
ffff80000010623f:	48 b8 10 ea ff ff ff 	movabs $0xffffffffffffea10,%rax
ffff800000106246:	ff ff ff 
ffff800000106249:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010624d:	49 89 df             	mov    %rbx,%r15
ffff800000106250:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106255:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff80000010625c:	ff ff ff 
ffff80000010625f:	48 01 da             	add    %rbx,%rdx
ffff800000106262:	ff d2                	callq  *%rdx
ffff800000106264:	eb fe                	jmp    ffff800000106264 <do_general_protection+0x19b>

ffff800000106266 <do_page_fault>:
ffff800000106266:	f3 0f 1e fa          	endbr64 
ffff80000010626a:	55                   	push   %rbp
ffff80000010626b:	48 89 e5             	mov    %rsp,%rbp
ffff80000010626e:	41 57                	push   %r15
ffff800000106270:	53                   	push   %rbx
ffff800000106271:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106275:	f3 0f 1e fa          	endbr64 
ffff800000106279:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106275 <do_page_fault+0xf>
ffff800000106280:	49 bb 13 38 00 00 00 	movabs $0x3813,%r11
ffff800000106287:	00 00 00 
ffff80000010628a:	4c 01 db             	add    %r11,%rbx
ffff80000010628d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106291:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106295:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010629c:	00 
ffff80000010629d:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff8000001062a4:	00 
ffff8000001062a5:	0f 20 d0             	mov    %cr2,%rax
ffff8000001062a8:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001062ac:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001062b0:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001062b6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001062ba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001062be:	48 8b 08             	mov    (%rax),%rcx
ffff8000001062c1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001062c5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062c9:	48 89 c6             	mov    %rax,%rsi
ffff8000001062cc:	48 b8 08 eb ff ff ff 	movabs $0xffffffffffffeb08,%rax
ffff8000001062d3:	ff ff ff 
ffff8000001062d6:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001062da:	49 89 df             	mov    %rbx,%r15
ffff8000001062dd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062e2:	49 b8 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r8
ffff8000001062e9:	ff ff ff 
ffff8000001062ec:	49 01 d8             	add    %rbx,%r8
ffff8000001062ef:	41 ff d0             	callq  *%r8
ffff8000001062f2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062f6:	83 e0 01             	and    $0x1,%eax
ffff8000001062f9:	48 85 c0             	test   %rax,%rax
ffff8000001062fc:	75 25                	jne    ffff800000106323 <do_page_fault+0xbd>
ffff8000001062fe:	48 b8 46 eb ff ff ff 	movabs $0xffffffffffffeb46,%rax
ffff800000106305:	ff ff ff 
ffff800000106308:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010630c:	49 89 df             	mov    %rbx,%r15
ffff80000010630f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106314:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff80000010631b:	ff ff ff 
ffff80000010631e:	48 01 da             	add    %rbx,%rdx
ffff800000106321:	ff d2                	callq  *%rdx
ffff800000106323:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106327:	83 e0 02             	and    $0x2,%eax
ffff80000010632a:	48 85 c0             	test   %rax,%rax
ffff80000010632d:	74 27                	je     ffff800000106356 <do_page_fault+0xf0>
ffff80000010632f:	48 b8 59 eb ff ff ff 	movabs $0xffffffffffffeb59,%rax
ffff800000106336:	ff ff ff 
ffff800000106339:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010633d:	49 89 df             	mov    %rbx,%r15
ffff800000106340:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106345:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff80000010634c:	ff ff ff 
ffff80000010634f:	48 01 da             	add    %rbx,%rdx
ffff800000106352:	ff d2                	callq  *%rdx
ffff800000106354:	eb 25                	jmp    ffff80000010637b <do_page_fault+0x115>
ffff800000106356:	48 b8 6d eb ff ff ff 	movabs $0xffffffffffffeb6d,%rax
ffff80000010635d:	ff ff ff 
ffff800000106360:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106364:	49 89 df             	mov    %rbx,%r15
ffff800000106367:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010636c:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000106373:	ff ff ff 
ffff800000106376:	48 01 da             	add    %rbx,%rdx
ffff800000106379:	ff d2                	callq  *%rdx
ffff80000010637b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010637f:	83 e0 04             	and    $0x4,%eax
ffff800000106382:	48 85 c0             	test   %rax,%rax
ffff800000106385:	74 27                	je     ffff8000001063ae <do_page_fault+0x148>
ffff800000106387:	48 b8 80 eb ff ff ff 	movabs $0xffffffffffffeb80,%rax
ffff80000010638e:	ff ff ff 
ffff800000106391:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106395:	49 89 df             	mov    %rbx,%r15
ffff800000106398:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010639d:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff8000001063a4:	ff ff ff 
ffff8000001063a7:	48 01 da             	add    %rbx,%rdx
ffff8000001063aa:	ff d2                	callq  *%rdx
ffff8000001063ac:	eb 25                	jmp    ffff8000001063d3 <do_page_fault+0x16d>
ffff8000001063ae:	48 b8 92 eb ff ff ff 	movabs $0xffffffffffffeb92,%rax
ffff8000001063b5:	ff ff ff 
ffff8000001063b8:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001063bc:	49 89 df             	mov    %rbx,%r15
ffff8000001063bf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063c4:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff8000001063cb:	ff ff ff 
ffff8000001063ce:	48 01 da             	add    %rbx,%rdx
ffff8000001063d1:	ff d2                	callq  *%rdx
ffff8000001063d3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063d7:	83 e0 08             	and    $0x8,%eax
ffff8000001063da:	48 85 c0             	test   %rax,%rax
ffff8000001063dd:	74 25                	je     ffff800000106404 <do_page_fault+0x19e>
ffff8000001063df:	48 b8 ae eb ff ff ff 	movabs $0xffffffffffffebae,%rax
ffff8000001063e6:	ff ff ff 
ffff8000001063e9:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001063ed:	49 89 df             	mov    %rbx,%r15
ffff8000001063f0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063f5:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff8000001063fc:	ff ff ff 
ffff8000001063ff:	48 01 da             	add    %rbx,%rdx
ffff800000106402:	ff d2                	callq  *%rdx
ffff800000106404:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106408:	83 e0 10             	and    $0x10,%eax
ffff80000010640b:	48 85 c0             	test   %rax,%rax
ffff80000010640e:	74 25                	je     ffff800000106435 <do_page_fault+0x1cf>
ffff800000106410:	48 b8 d0 eb ff ff ff 	movabs $0xffffffffffffebd0,%rax
ffff800000106417:	ff ff ff 
ffff80000010641a:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010641e:	49 89 df             	mov    %rbx,%r15
ffff800000106421:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106426:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff80000010642d:	ff ff ff 
ffff800000106430:	48 01 da             	add    %rbx,%rdx
ffff800000106433:	ff d2                	callq  *%rdx
ffff800000106435:	48 b8 ef eb ff ff ff 	movabs $0xffffffffffffebef,%rax
ffff80000010643c:	ff ff ff 
ffff80000010643f:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106443:	49 89 df             	mov    %rbx,%r15
ffff800000106446:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010644b:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000106452:	ff ff ff 
ffff800000106455:	48 01 da             	add    %rbx,%rdx
ffff800000106458:	ff d2                	callq  *%rdx
ffff80000010645a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010645e:	48 89 c6             	mov    %rax,%rsi
ffff800000106461:	48 b8 f1 eb ff ff ff 	movabs $0xffffffffffffebf1,%rax
ffff800000106468:	ff ff ff 
ffff80000010646b:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010646f:	49 89 df             	mov    %rbx,%r15
ffff800000106472:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106477:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff80000010647e:	ff ff ff 
ffff800000106481:	48 01 da             	add    %rbx,%rdx
ffff800000106484:	ff d2                	callq  *%rdx
ffff800000106486:	eb fe                	jmp    ffff800000106486 <do_page_fault+0x220>

ffff800000106488 <do_x87_FPU_error>:
ffff800000106488:	f3 0f 1e fa          	endbr64 
ffff80000010648c:	55                   	push   %rbp
ffff80000010648d:	48 89 e5             	mov    %rsp,%rbp
ffff800000106490:	41 57                	push   %r15
ffff800000106492:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106496:	f3 0f 1e fa          	endbr64 
ffff80000010649a:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106496 <do_x87_FPU_error+0xe>
ffff8000001064a1:	49 bb f2 35 00 00 00 	movabs $0x35f2,%r11
ffff8000001064a8:	00 00 00 
ffff8000001064ab:	4d 01 d8             	add    %r11,%r8
ffff8000001064ae:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001064b2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001064b6:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001064bd:	00 
ffff8000001064be:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001064c2:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001064c8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001064cc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001064d0:	48 8b 08             	mov    (%rax),%rcx
ffff8000001064d3:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001064d7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064db:	48 89 c6             	mov    %rax,%rsi
ffff8000001064de:	48 b8 00 ec ff ff ff 	movabs $0xffffffffffffec00,%rax
ffff8000001064e5:	ff ff ff 
ffff8000001064e8:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff8000001064ec:	4d 89 c7             	mov    %r8,%r15
ffff8000001064ef:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064f4:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff8000001064fb:	ff ff ff 
ffff8000001064fe:	4d 01 c1             	add    %r8,%r9
ffff800000106501:	41 ff d1             	callq  *%r9
ffff800000106504:	eb fe                	jmp    ffff800000106504 <do_x87_FPU_error+0x7c>

ffff800000106506 <do_alignment_check>:
ffff800000106506:	f3 0f 1e fa          	endbr64 
ffff80000010650a:	55                   	push   %rbp
ffff80000010650b:	48 89 e5             	mov    %rsp,%rbp
ffff80000010650e:	41 57                	push   %r15
ffff800000106510:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106514:	f3 0f 1e fa          	endbr64 
ffff800000106518:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106514 <do_alignment_check+0xe>
ffff80000010651f:	49 bb 74 35 00 00 00 	movabs $0x3574,%r11
ffff800000106526:	00 00 00 
ffff800000106529:	4d 01 d8             	add    %r11,%r8
ffff80000010652c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106530:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106534:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010653b:	00 
ffff80000010653c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106540:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106546:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010654a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010654e:	48 8b 08             	mov    (%rax),%rcx
ffff800000106551:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106555:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106559:	48 89 c6             	mov    %rax,%rsi
ffff80000010655c:	48 b8 48 ec ff ff ff 	movabs $0xffffffffffffec48,%rax
ffff800000106563:	ff ff ff 
ffff800000106566:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff80000010656a:	4d 89 c7             	mov    %r8,%r15
ffff80000010656d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106572:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff800000106579:	ff ff ff 
ffff80000010657c:	4d 01 c1             	add    %r8,%r9
ffff80000010657f:	41 ff d1             	callq  *%r9
ffff800000106582:	eb fe                	jmp    ffff800000106582 <do_alignment_check+0x7c>

ffff800000106584 <do_machine_check>:
ffff800000106584:	f3 0f 1e fa          	endbr64 
ffff800000106588:	55                   	push   %rbp
ffff800000106589:	48 89 e5             	mov    %rsp,%rbp
ffff80000010658c:	41 57                	push   %r15
ffff80000010658e:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106592:	f3 0f 1e fa          	endbr64 
ffff800000106596:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106592 <do_machine_check+0xe>
ffff80000010659d:	49 bb f6 34 00 00 00 	movabs $0x34f6,%r11
ffff8000001065a4:	00 00 00 
ffff8000001065a7:	4d 01 d8             	add    %r11,%r8
ffff8000001065aa:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001065ae:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001065b2:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001065b9:	00 
ffff8000001065ba:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001065be:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001065c4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001065c8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001065cc:	48 8b 08             	mov    (%rax),%rcx
ffff8000001065cf:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001065d3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065d7:	48 89 c6             	mov    %rax,%rsi
ffff8000001065da:	48 b8 90 ec ff ff ff 	movabs $0xffffffffffffec90,%rax
ffff8000001065e1:	ff ff ff 
ffff8000001065e4:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff8000001065e8:	4d 89 c7             	mov    %r8,%r15
ffff8000001065eb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065f0:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff8000001065f7:	ff ff ff 
ffff8000001065fa:	4d 01 c1             	add    %r8,%r9
ffff8000001065fd:	41 ff d1             	callq  *%r9
ffff800000106600:	eb fe                	jmp    ffff800000106600 <do_machine_check+0x7c>

ffff800000106602 <do_SIMD_exception>:
ffff800000106602:	f3 0f 1e fa          	endbr64 
ffff800000106606:	55                   	push   %rbp
ffff800000106607:	48 89 e5             	mov    %rsp,%rbp
ffff80000010660a:	41 57                	push   %r15
ffff80000010660c:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106610:	f3 0f 1e fa          	endbr64 
ffff800000106614:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106610 <do_SIMD_exception+0xe>
ffff80000010661b:	49 bb 78 34 00 00 00 	movabs $0x3478,%r11
ffff800000106622:	00 00 00 
ffff800000106625:	4d 01 d8             	add    %r11,%r8
ffff800000106628:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010662c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106630:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106637:	00 
ffff800000106638:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010663c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106642:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106646:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010664a:	48 8b 08             	mov    (%rax),%rcx
ffff80000010664d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106651:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106655:	48 89 c6             	mov    %rax,%rsi
ffff800000106658:	48 b8 d8 ec ff ff ff 	movabs $0xffffffffffffecd8,%rax
ffff80000010665f:	ff ff ff 
ffff800000106662:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106666:	4d 89 c7             	mov    %r8,%r15
ffff800000106669:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010666e:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff800000106675:	ff ff ff 
ffff800000106678:	4d 01 c1             	add    %r8,%r9
ffff80000010667b:	41 ff d1             	callq  *%r9
ffff80000010667e:	eb fe                	jmp    ffff80000010667e <do_SIMD_exception+0x7c>

ffff800000106680 <do_virtualization_exception>:
ffff800000106680:	f3 0f 1e fa          	endbr64 
ffff800000106684:	55                   	push   %rbp
ffff800000106685:	48 89 e5             	mov    %rsp,%rbp
ffff800000106688:	41 57                	push   %r15
ffff80000010668a:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010668e:	f3 0f 1e fa          	endbr64 
ffff800000106692:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff80000010668e <do_virtualization_exception+0xe>
ffff800000106699:	49 bb fa 33 00 00 00 	movabs $0x33fa,%r11
ffff8000001066a0:	00 00 00 
ffff8000001066a3:	4d 01 d8             	add    %r11,%r8
ffff8000001066a6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001066aa:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001066ae:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001066b5:	00 
ffff8000001066b6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001066ba:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001066c0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001066c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001066c8:	48 8b 08             	mov    (%rax),%rcx
ffff8000001066cb:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001066cf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001066d3:	48 89 c6             	mov    %rax,%rsi
ffff8000001066d6:	48 b8 20 ed ff ff ff 	movabs $0xffffffffffffed20,%rax
ffff8000001066dd:	ff ff ff 
ffff8000001066e0:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff8000001066e4:	4d 89 c7             	mov    %r8,%r15
ffff8000001066e7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066ec:	49 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r9
ffff8000001066f3:	ff ff ff 
ffff8000001066f6:	4d 01 c1             	add    %r8,%r9
ffff8000001066f9:	41 ff d1             	callq  *%r9
ffff8000001066fc:	eb fe                	jmp    ffff8000001066fc <do_virtualization_exception+0x7c>

ffff8000001066fe <memoryinit>:
ffff8000001066fe:	f3 0f 1e fa          	endbr64 
ffff800000106702:	55                   	push   %rbp
ffff800000106703:	48 89 e5             	mov    %rsp,%rbp
ffff800000106706:	41 57                	push   %r15
ffff800000106708:	53                   	push   %rbx
ffff800000106709:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010670d:	f3 0f 1e fa          	endbr64 
ffff800000106711:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010670d <memoryinit+0xf>
ffff800000106718:	49 bb 7b 33 00 00 00 	movabs $0x337b,%r11
ffff80000010671f:	00 00 00 
ffff800000106722:	4c 01 db             	add    %r11,%rbx
ffff800000106725:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010672c:	00 
ffff80000010672d:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
ffff800000106734:	80 ff ff 
ffff800000106737:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010673b:	e9 d1 00 00 00       	jmpq   ffff800000106811 <memoryinit+0x113>
ffff800000106740:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106744:	8b 50 10             	mov    0x10(%rax),%edx
ffff800000106747:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010674b:	48 8b 08             	mov    (%rax),%rcx
ffff80000010674e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106752:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000106756:	48 8d 34 01          	lea    (%rcx,%rax,1),%rsi
ffff80000010675a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010675e:	48 8b 00             	mov    (%rax),%rax
ffff800000106761:	89 d1                	mov    %edx,%ecx
ffff800000106763:	48 89 f2             	mov    %rsi,%rdx
ffff800000106766:	48 89 c6             	mov    %rax,%rsi
ffff800000106769:	48 b8 70 ed ff ff ff 	movabs $0xffffffffffffed70,%rax
ffff800000106770:	ff ff ff 
ffff800000106773:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106777:	49 89 df             	mov    %rbx,%r15
ffff80000010677a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010677f:	49 b8 26 ae ff ff ff 	movabs $0xffffffffffffae26,%r8
ffff800000106786:	ff ff ff 
ffff800000106789:	49 01 d8             	add    %rbx,%r8
ffff80000010678c:	41 ff d0             	callq  *%r8
ffff80000010678f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106793:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000106796:	83 f8 01             	cmp    $0x1,%eax
ffff800000106799:	75 71                	jne    ffff80000010680c <memoryinit+0x10e>
ffff80000010679b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010679f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001067a3:	48 01 45 e8          	add    %rax,-0x18(%rbp)
ffff8000001067a7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001067ab:	48 8b 00             	mov    (%rax),%rax
ffff8000001067ae:	48 ba d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rdx
ffff8000001067b5:	ff ff ff 
ffff8000001067b8:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001067bc:	48 89 d1             	mov    %rdx,%rcx
ffff8000001067bf:	48 ba d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rdx
ffff8000001067c6:	ff ff ff 
ffff8000001067c9:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001067cd:	48 39 c8             	cmp    %rcx,%rax
ffff8000001067d0:	48 0f 42 c2          	cmovb  %rdx,%rax
ffff8000001067d4:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff8000001067d8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001067dc:	48 8b 10             	mov    (%rax),%rdx
ffff8000001067df:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001067e3:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001067e7:	48 01 d0             	add    %rdx,%rax
ffff8000001067ea:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff8000001067ee:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff8000001067f2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001067f6:	48 89 d6             	mov    %rdx,%rsi
ffff8000001067f9:	48 89 c7             	mov    %rax,%rdi
ffff8000001067fc:	48 b8 ff cd ff ff ff 	movabs $0xffffffffffffcdff,%rax
ffff800000106803:	ff ff ff 
ffff800000106806:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010680a:	ff d0                	callq  *%rax
ffff80000010680c:	48 83 45 e0 14       	addq   $0x14,-0x20(%rbp)
ffff800000106811:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106815:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000106818:	85 c0                	test   %eax,%eax
ffff80000010681a:	74 10                	je     ffff80000010682c <memoryinit+0x12e>
ffff80000010681c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106820:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000106823:	83 f8 04             	cmp    $0x4,%eax
ffff800000106826:	0f 86 14 ff ff ff    	jbe    ffff800000106740 <memoryinit+0x42>
ffff80000010682c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106830:	48 c1 e8 14          	shr    $0x14,%rax
ffff800000106834:	48 89 c6             	mov    %rax,%rsi
ffff800000106837:	48 b8 90 ed ff ff ff 	movabs $0xffffffffffffed90,%rax
ffff80000010683e:	ff ff ff 
ffff800000106841:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106845:	49 89 df             	mov    %rbx,%r15
ffff800000106848:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010684d:	48 ba 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rdx
ffff800000106854:	ff ff ff 
ffff800000106857:	48 01 da             	add    %rbx,%rdx
ffff80000010685a:	ff d2                	callq  *%rdx
ffff80000010685c:	ba 00 04 00 00       	mov    $0x400,%edx
ffff800000106861:	be 08 00 00 00       	mov    $0x8,%esi
ffff800000106866:	bf 02 00 00 00       	mov    $0x2,%edi
ffff80000010686b:	49 89 df             	mov    %rbx,%r15
ffff80000010686e:	48 b8 f5 d1 ff ff ff 	movabs $0xffffffffffffd1f5,%rax
ffff800000106875:	ff ff ff 
ffff800000106878:	48 01 d8             	add    %rbx,%rax
ffff80000010687b:	ff d0                	callq  *%rax
ffff80000010687d:	90                   	nop
ffff80000010687e:	48 83 c4 20          	add    $0x20,%rsp
ffff800000106882:	5b                   	pop    %rbx
ffff800000106883:	41 5f                	pop    %r15
ffff800000106885:	5d                   	pop    %rbp
ffff800000106886:	c3                   	retq   

ffff800000106887 <freerange>:
ffff800000106887:	f3 0f 1e fa          	endbr64 
ffff80000010688b:	55                   	push   %rbp
ffff80000010688c:	48 89 e5             	mov    %rsp,%rbp
ffff80000010688f:	41 57                	push   %r15
ffff800000106891:	53                   	push   %rbx
ffff800000106892:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106896:	f3 0f 1e fa          	endbr64 
ffff80000010689a:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106896 <freerange+0xf>
ffff8000001068a1:	49 bb f2 31 00 00 00 	movabs $0x31f2,%r11
ffff8000001068a8:	00 00 00 
ffff8000001068ab:	4c 01 db             	add    %r11,%rbx
ffff8000001068ae:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001068b2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001068b6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001068ba:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff8000001068c0:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff8000001068c6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001068ca:	eb 1f                	jmp    ffff8000001068eb <freerange+0x64>
ffff8000001068cc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001068d0:	48 89 c7             	mov    %rax,%rdi
ffff8000001068d3:	48 b8 ad ce ff ff ff 	movabs $0xffffffffffffcead,%rax
ffff8000001068da:	ff ff ff 
ffff8000001068dd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068e1:	ff d0                	callq  *%rax
ffff8000001068e3:	48 81 45 e8 00 10 00 	addq   $0x1000,-0x18(%rbp)
ffff8000001068ea:	00 
ffff8000001068eb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001068ef:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff8000001068f5:	48 39 45 d0          	cmp    %rax,-0x30(%rbp)
ffff8000001068f9:	73 d1                	jae    ffff8000001068cc <freerange+0x45>
ffff8000001068fb:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff8000001068ff:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106903:	48 89 c6             	mov    %rax,%rsi
ffff800000106906:	48 b8 a4 ed ff ff ff 	movabs $0xffffffffffffeda4,%rax
ffff80000010690d:	ff ff ff 
ffff800000106910:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106914:	49 89 df             	mov    %rbx,%r15
ffff800000106917:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010691c:	48 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rcx
ffff800000106923:	ff ff ff 
ffff800000106926:	48 01 d9             	add    %rbx,%rcx
ffff800000106929:	ff d1                	callq  *%rcx
ffff80000010692b:	90                   	nop
ffff80000010692c:	48 83 c4 20          	add    $0x20,%rsp
ffff800000106930:	5b                   	pop    %rbx
ffff800000106931:	41 5f                	pop    %r15
ffff800000106933:	5d                   	pop    %rbp
ffff800000106934:	c3                   	retq   

ffff800000106935 <kfree>:
ffff800000106935:	f3 0f 1e fa          	endbr64 
ffff800000106939:	55                   	push   %rbp
ffff80000010693a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010693d:	41 57                	push   %r15
ffff80000010693f:	53                   	push   %rbx
ffff800000106940:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106944:	f3 0f 1e fa          	endbr64 
ffff800000106948:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106944 <kfree+0xf>
ffff80000010694f:	49 bb 44 31 00 00 00 	movabs $0x3144,%r11
ffff800000106956:	00 00 00 
ffff800000106959:	4c 01 db             	add    %r11,%rbx
ffff80000010695c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106960:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106964:	25 ff 0f 00 00       	and    $0xfff,%eax
ffff800000106969:	48 85 c0             	test   %rax,%rax
ffff80000010696c:	75 22                	jne    ffff800000106990 <kfree+0x5b>
ffff80000010696e:	48 b8 d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rax
ffff800000106975:	ff ff ff 
ffff800000106978:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010697c:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
ffff800000106980:	72 0e                	jb     ffff800000106990 <kfree+0x5b>
ffff800000106982:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106986:	ba ff ff 7f 87       	mov    $0x877fffff,%edx
ffff80000010698b:	48 39 d0             	cmp    %rdx,%rax
ffff80000010698e:	76 20                	jbe    ffff8000001069b0 <kfree+0x7b>
ffff800000106990:	48 b8 c2 ed ff ff ff 	movabs $0xffffffffffffedc2,%rax
ffff800000106997:	ff ff ff 
ffff80000010699a:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010699e:	49 89 df             	mov    %rbx,%r15
ffff8000001069a1:	48 b8 50 af ff ff ff 	movabs $0xffffffffffffaf50,%rax
ffff8000001069a8:	ff ff ff 
ffff8000001069ab:	48 01 d8             	add    %rbx,%rax
ffff8000001069ae:	ff d0                	callq  *%rax
ffff8000001069b0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001069b4:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff8000001069b9:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001069be:	48 89 c7             	mov    %rax,%rdi
ffff8000001069c1:	49 89 df             	mov    %rbx,%r15
ffff8000001069c4:	48 b8 5f db ff ff ff 	movabs $0xffffffffffffdb5f,%rax
ffff8000001069cb:	ff ff ff 
ffff8000001069ce:	48 01 d8             	add    %rbx,%rax
ffff8000001069d1:	ff d0                	callq  *%rax
ffff8000001069d3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001069d7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001069db:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001069e2:	00 00 00 
ffff8000001069e5:	48 8b 14 03          	mov    (%rbx,%rax,1),%rdx
ffff8000001069e9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001069ed:	48 89 10             	mov    %rdx,(%rax)
ffff8000001069f0:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001069f7:	00 00 00 
ffff8000001069fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001069fe:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff800000106a02:	90                   	nop
ffff800000106a03:	48 83 c4 20          	add    $0x20,%rsp
ffff800000106a07:	5b                   	pop    %rbx
ffff800000106a08:	41 5f                	pop    %r15
ffff800000106a0a:	5d                   	pop    %rbp
ffff800000106a0b:	c3                   	retq   

ffff800000106a0c <kalloc>:
ffff800000106a0c:	f3 0f 1e fa          	endbr64 
ffff800000106a10:	55                   	push   %rbp
ffff800000106a11:	48 89 e5             	mov    %rsp,%rbp
ffff800000106a14:	41 57                	push   %r15
ffff800000106a16:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000106a1a:	f3 0f 1e fa          	endbr64 
ffff800000106a1e:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000106a1a <kalloc+0xe>
ffff800000106a25:	49 bb 6e 30 00 00 00 	movabs $0x306e,%r11
ffff800000106a2c:	00 00 00 
ffff800000106a2f:	4c 01 d8             	add    %r11,%rax
ffff800000106a32:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000106a39:	00 00 00 
ffff800000106a3c:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000106a40:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000106a44:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000106a49:	74 15                	je     ffff800000106a60 <kalloc+0x54>
ffff800000106a4b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000106a4f:	48 8b 12             	mov    (%rdx),%rdx
ffff800000106a52:	48 b9 30 00 00 00 00 	movabs $0x30,%rcx
ffff800000106a59:	00 00 00 
ffff800000106a5c:	48 89 14 08          	mov    %rdx,(%rax,%rcx,1)
ffff800000106a60:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000106a65:	74 23                	je     ffff800000106a8a <kalloc+0x7e>
ffff800000106a67:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000106a6b:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff800000106a70:	be 05 00 00 00       	mov    $0x5,%esi
ffff800000106a75:	48 89 cf             	mov    %rcx,%rdi
ffff800000106a78:	49 89 c7             	mov    %rax,%r15
ffff800000106a7b:	48 b9 5f db ff ff ff 	movabs $0xffffffffffffdb5f,%rcx
ffff800000106a82:	ff ff ff 
ffff800000106a85:	48 01 c1             	add    %rax,%rcx
ffff800000106a88:	ff d1                	callq  *%rcx
ffff800000106a8a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106a8e:	48 83 c4 18          	add    $0x18,%rsp
ffff800000106a92:	41 5f                	pop    %r15
ffff800000106a94:	5d                   	pop    %rbp
ffff800000106a95:	c3                   	retq   

ffff800000106a96 <mfree>:
ffff800000106a96:	f3 0f 1e fa          	endbr64 
ffff800000106a9a:	55                   	push   %rbp
ffff800000106a9b:	48 89 e5             	mov    %rsp,%rbp
ffff800000106a9e:	41 57                	push   %r15
ffff800000106aa0:	53                   	push   %rbx
ffff800000106aa1:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106aa5:	f3 0f 1e fa          	endbr64 
ffff800000106aa9:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106aa5 <mfree+0xf>
ffff800000106ab0:	49 bb e3 2f 00 00 00 	movabs $0x2fe3,%r11
ffff800000106ab7:	00 00 00 
ffff800000106aba:	4c 01 db             	add    %r11,%rbx
ffff800000106abd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106ac1:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000106ac4:	81 7d d4 00 04 00 00 	cmpl   $0x400,-0x2c(%rbp)
ffff800000106acb:	7e 1c                	jle    ffff800000106ae9 <mfree+0x53>
ffff800000106acd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106ad1:	48 89 c7             	mov    %rax,%rdi
ffff800000106ad4:	48 b8 ad ce ff ff ff 	movabs $0xffffffffffffcead,%rax
ffff800000106adb:	ff ff ff 
ffff800000106ade:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ae2:	ff d0                	callq  *%rax
ffff800000106ae4:	e9 90 00 00 00       	jmpq   ffff800000106b79 <mfree+0xe3>
ffff800000106ae9:	48 b8 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rax
ffff800000106af0:	ff ff ff 
ffff800000106af3:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106af7:	48 8b 00             	mov    (%rax),%rax
ffff800000106afa:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106afe:	eb 72                	jmp    ffff800000106b72 <mfree+0xdc>
ffff800000106b00:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106b04:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000106b07:	39 45 d4             	cmp    %eax,-0x2c(%rbp)
ffff800000106b0a:	7e 5a                	jle    ffff800000106b66 <mfree+0xd0>
ffff800000106b0c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106b10:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000106b14:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000106b17:	39 45 d4             	cmp    %eax,-0x2c(%rbp)
ffff800000106b1a:	7f 4a                	jg     ffff800000106b66 <mfree+0xd0>
ffff800000106b1c:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000106b1f:	48 63 d0             	movslq %eax,%rdx
ffff800000106b22:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106b26:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b2b:	48 89 c7             	mov    %rax,%rdi
ffff800000106b2e:	49 89 df             	mov    %rbx,%r15
ffff800000106b31:	48 b8 5f db ff ff ff 	movabs $0xffffffffffffdb5f,%rax
ffff800000106b38:	ff ff ff 
ffff800000106b3b:	48 01 d8             	add    %rbx,%rax
ffff800000106b3e:	ff d0                	callq  *%rax
ffff800000106b40:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106b44:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000106b48:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106b4c:	48 89 d6             	mov    %rdx,%rsi
ffff800000106b4f:	48 89 c7             	mov    %rax,%rdi
ffff800000106b52:	49 89 df             	mov    %rbx,%r15
ffff800000106b55:	48 b8 5d d8 ff ff ff 	movabs $0xffffffffffffd85d,%rax
ffff800000106b5c:	ff ff ff 
ffff800000106b5f:	48 01 d8             	add    %rbx,%rax
ffff800000106b62:	ff d0                	callq  *%rax
ffff800000106b64:	eb 13                	jmp    ffff800000106b79 <mfree+0xe3>
ffff800000106b66:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106b6a:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000106b6e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106b72:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000106b77:	75 87                	jne    ffff800000106b00 <mfree+0x6a>
ffff800000106b79:	48 83 c4 20          	add    $0x20,%rsp
ffff800000106b7d:	5b                   	pop    %rbx
ffff800000106b7e:	41 5f                	pop    %r15
ffff800000106b80:	5d                   	pop    %rbp
ffff800000106b81:	c3                   	retq   

ffff800000106b82 <malloc>:
ffff800000106b82:	f3 0f 1e fa          	endbr64 
ffff800000106b86:	55                   	push   %rbp
ffff800000106b87:	48 89 e5             	mov    %rsp,%rbp
ffff800000106b8a:	41 57                	push   %r15
ffff800000106b8c:	53                   	push   %rbx
ffff800000106b8d:	48 83 ec 30          	sub    $0x30,%rsp
ffff800000106b91:	f3 0f 1e fa          	endbr64 
ffff800000106b95:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106b91 <malloc+0xf>
ffff800000106b9c:	49 bb f7 2e 00 00 00 	movabs $0x2ef7,%r11
ffff800000106ba3:	00 00 00 
ffff800000106ba6:	4c 01 db             	add    %r11,%rbx
ffff800000106ba9:	89 7d cc             	mov    %edi,-0x34(%rbp)
ffff800000106bac:	81 7d cc 00 04 00 00 	cmpl   $0x400,-0x34(%rbp)
ffff800000106bb3:	7e 1d                	jle    ffff800000106bd2 <malloc+0x50>
ffff800000106bb5:	48 b8 84 cf ff ff ff 	movabs $0xffffffffffffcf84,%rax
ffff800000106bbc:	ff ff ff 
ffff800000106bbf:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bc3:	ff d0                	callq  *%rax
ffff800000106bc5:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000106bc9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106bcd:	e9 a2 00 00 00       	jmpq   ffff800000106c74 <malloc+0xf2>
ffff800000106bd2:	48 b8 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rax
ffff800000106bd9:	ff ff ff 
ffff800000106bdc:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106be0:	48 8b 00             	mov    (%rax),%rax
ffff800000106be3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106be7:	eb 7b                	jmp    ffff800000106c64 <malloc+0xe2>
ffff800000106be9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106bed:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000106bf0:	39 45 cc             	cmp    %eax,-0x34(%rbp)
ffff800000106bf3:	7e 63                	jle    ffff800000106c58 <malloc+0xd6>
ffff800000106bf5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106bf9:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000106bfd:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000106c00:	39 45 cc             	cmp    %eax,-0x34(%rbp)
ffff800000106c03:	7f 53                	jg     ffff800000106c58 <malloc+0xd6>
ffff800000106c05:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106c09:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000106c0d:	48 89 c7             	mov    %rax,%rdi
ffff800000106c10:	49 89 df             	mov    %rbx,%r15
ffff800000106c13:	48 b8 59 d6 ff ff ff 	movabs $0xffffffffffffd659,%rax
ffff800000106c1a:	ff ff ff 
ffff800000106c1d:	48 01 d8             	add    %rbx,%rax
ffff800000106c20:	ff d0                	callq  *%rax
ffff800000106c22:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106c26:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106c2a:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000106c2e:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000106c31:	48 63 d0             	movslq %eax,%rdx
ffff800000106c34:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106c38:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c3d:	48 89 c7             	mov    %rax,%rdi
ffff800000106c40:	49 89 df             	mov    %rbx,%r15
ffff800000106c43:	48 b8 5f db ff ff ff 	movabs $0xffffffffffffdb5f,%rax
ffff800000106c4a:	ff ff ff 
ffff800000106c4d:	48 01 d8             	add    %rbx,%rax
ffff800000106c50:	ff d0                	callq  *%rax
ffff800000106c52:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106c56:	eb 1c                	jmp    ffff800000106c74 <malloc+0xf2>
ffff800000106c58:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106c5c:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000106c60:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106c64:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000106c69:	0f 85 7a ff ff ff    	jne    ffff800000106be9 <malloc+0x67>
ffff800000106c6f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c74:	48 83 c4 30          	add    $0x30,%rsp
ffff800000106c78:	5b                   	pop    %rbx
ffff800000106c79:	41 5f                	pop    %r15
ffff800000106c7b:	5d                   	pop    %rbp
ffff800000106c7c:	c3                   	retq   

ffff800000106c7d <kmem_cache_init>:
ffff800000106c7d:	f3 0f 1e fa          	endbr64 
ffff800000106c81:	55                   	push   %rbp
ffff800000106c82:	48 89 e5             	mov    %rsp,%rbp
ffff800000106c85:	53                   	push   %rbx
ffff800000106c86:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106c8a:	f3 0f 1e fa          	endbr64 
ffff800000106c8e:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106c8a <kmem_cache_init+0xd>
ffff800000106c95:	49 bb fe 2d 00 00 00 	movabs $0x2dfe,%r11
ffff800000106c9c:	00 00 00 
ffff800000106c9f:	4c 01 db             	add    %r11,%rbx
ffff800000106ca2:	89 7d dc             	mov    %edi,-0x24(%rbp)
ffff800000106ca5:	89 75 d8             	mov    %esi,-0x28(%rbp)
ffff800000106ca8:	89 55 d4             	mov    %edx,-0x2c(%rbp)
ffff800000106cab:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff800000106cae:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000106cb1:	eb 47                	jmp    ffff800000106cfa <kmem_cache_init+0x7d>
ffff800000106cb3:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000106cb6:	ba 01 00 00 00       	mov    $0x1,%edx
ffff800000106cbb:	89 c6                	mov    %eax,%esi
ffff800000106cbd:	48 b8 c8 ed ff ff ff 	movabs $0xffffffffffffedc8,%rax
ffff800000106cc4:	ff ff ff 
ffff800000106cc7:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106ccb:	48 b8 18 d3 ff ff ff 	movabs $0xffffffffffffd318,%rax
ffff800000106cd2:	ff ff ff 
ffff800000106cd5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106cd9:	ff d0                	callq  *%rax
ffff800000106cdb:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106cdf:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000106ce4:	75 0a                	jne    ffff800000106cf0 <kmem_cache_init+0x73>
ffff800000106ce6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
ffff800000106ceb:	e9 a9 00 00 00       	jmpq   ffff800000106d99 <kmem_cache_init+0x11c>
ffff800000106cf0:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000106cf3:	0f af 45 dc          	imul   -0x24(%rbp),%eax
ffff800000106cf7:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000106cfa:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000106cfd:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff800000106d00:	7e b1                	jle    ffff800000106cb3 <kmem_cache_init+0x36>
ffff800000106d02:	83 7d d8 5f          	cmpl   $0x5f,-0x28(%rbp)
ffff800000106d06:	7f 40                	jg     ffff800000106d48 <kmem_cache_init+0xcb>
ffff800000106d08:	83 7d d4 60          	cmpl   $0x60,-0x2c(%rbp)
ffff800000106d0c:	7e 3a                	jle    ffff800000106d48 <kmem_cache_init+0xcb>
ffff800000106d0e:	ba 01 00 00 00       	mov    $0x1,%edx
ffff800000106d13:	be 60 00 00 00       	mov    $0x60,%esi
ffff800000106d18:	48 b8 c8 ed ff ff ff 	movabs $0xffffffffffffedc8,%rax
ffff800000106d1f:	ff ff ff 
ffff800000106d22:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106d26:	48 b8 18 d3 ff ff ff 	movabs $0xffffffffffffd318,%rax
ffff800000106d2d:	ff ff ff 
ffff800000106d30:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106d34:	ff d0                	callq  *%rax
ffff800000106d36:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106d3a:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000106d3f:	75 07                	jne    ffff800000106d48 <kmem_cache_init+0xcb>
ffff800000106d41:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
ffff800000106d46:	eb 51                	jmp    ffff800000106d99 <kmem_cache_init+0x11c>
ffff800000106d48:	81 7d d8 bf 00 00 00 	cmpl   $0xbf,-0x28(%rbp)
ffff800000106d4f:	7f 43                	jg     ffff800000106d94 <kmem_cache_init+0x117>
ffff800000106d51:	81 7d d4 c0 00 00 00 	cmpl   $0xc0,-0x2c(%rbp)
ffff800000106d58:	7e 3a                	jle    ffff800000106d94 <kmem_cache_init+0x117>
ffff800000106d5a:	ba 01 00 00 00       	mov    $0x1,%edx
ffff800000106d5f:	be c0 00 00 00       	mov    $0xc0,%esi
ffff800000106d64:	48 b8 c8 ed ff ff ff 	movabs $0xffffffffffffedc8,%rax
ffff800000106d6b:	ff ff ff 
ffff800000106d6e:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106d72:	48 b8 18 d3 ff ff ff 	movabs $0xffffffffffffd318,%rax
ffff800000106d79:	ff ff ff 
ffff800000106d7c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106d80:	ff d0                	callq  *%rax
ffff800000106d82:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106d86:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000106d8b:	75 07                	jne    ffff800000106d94 <kmem_cache_init+0x117>
ffff800000106d8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
ffff800000106d92:	eb 05                	jmp    ffff800000106d99 <kmem_cache_init+0x11c>
ffff800000106d94:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d99:	48 83 c4 28          	add    $0x28,%rsp
ffff800000106d9d:	5b                   	pop    %rbx
ffff800000106d9e:	5d                   	pop    %rbp
ffff800000106d9f:	c3                   	retq   

ffff800000106da0 <kmem_cache_create>:
ffff800000106da0:	f3 0f 1e fa          	endbr64 
ffff800000106da4:	55                   	push   %rbp
ffff800000106da5:	48 89 e5             	mov    %rsp,%rbp
ffff800000106da8:	41 57                	push   %r15
ffff800000106daa:	53                   	push   %rbx
ffff800000106dab:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106daf:	f3 0f 1e fa          	endbr64 
ffff800000106db3:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106daf <kmem_cache_create+0xf>
ffff800000106dba:	49 bb d9 2c 00 00 00 	movabs $0x2cd9,%r11
ffff800000106dc1:	00 00 00 
ffff800000106dc4:	4c 01 db             	add    %r11,%rbx
ffff800000106dc7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106dcb:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000106dce:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff800000106dd1:	49 89 df             	mov    %rbx,%r15
ffff800000106dd4:	48 b8 84 cf ff ff ff 	movabs $0xffffffffffffcf84,%rax
ffff800000106ddb:	ff ff ff 
ffff800000106dde:	48 01 d8             	add    %rbx,%rax
ffff800000106de1:	ff d0                	callq  *%rax
ffff800000106de3:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106de7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106deb:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff800000106df0:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106df5:	48 89 c7             	mov    %rax,%rdi
ffff800000106df8:	49 89 df             	mov    %rbx,%r15
ffff800000106dfb:	48 b8 5f db ff ff ff 	movabs $0xffffffffffffdb5f,%rax
ffff800000106e02:	ff ff ff 
ffff800000106e05:	48 01 d8             	add    %rbx,%rax
ffff800000106e08:	ff d0                	callq  *%rax
ffff800000106e0a:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000106e0f:	75 0a                	jne    ffff800000106e1b <kmem_cache_create+0x7b>
ffff800000106e11:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e16:	e9 cf 00 00 00       	jmpq   ffff800000106eea <kmem_cache_create+0x14a>
ffff800000106e1b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106e1f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106e23:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000106e27:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106e2b:	8b 55 d4             	mov    -0x2c(%rbp),%edx
ffff800000106e2e:	89 50 20             	mov    %edx,0x20(%rax)
ffff800000106e31:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106e35:	8b 55 d0             	mov    -0x30(%rbp),%edx
ffff800000106e38:	89 50 24             	mov    %edx,0x24(%rax)
ffff800000106e3b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106e3f:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
ffff800000106e46:	00 
ffff800000106e47:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106e4b:	48 89 c7             	mov    %rax,%rdi
ffff800000106e4e:	48 b8 6b d4 ff ff ff 	movabs $0xffffffffffffd46b,%rax
ffff800000106e55:	ff ff ff 
ffff800000106e58:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106e5c:	ff d0                	callq  *%rax
ffff800000106e5e:	48 b8 48 00 00 00 00 	movabs $0x48,%rax
ffff800000106e65:	00 00 00 
ffff800000106e68:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106e6c:	48 85 c0             	test   %rax,%rax
ffff800000106e6f:	75 14                	jne    ffff800000106e85 <kmem_cache_create+0xe5>
ffff800000106e71:	48 ba 48 00 00 00 00 	movabs $0x48,%rdx
ffff800000106e78:	00 00 00 
ffff800000106e7b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106e7f:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff800000106e83:	eb 61                	jmp    ffff800000106ee6 <kmem_cache_create+0x146>
ffff800000106e85:	48 b8 48 00 00 00 00 	movabs $0x48,%rax
ffff800000106e8c:	00 00 00 
ffff800000106e8f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106e93:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106e97:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e9b:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000106e9f:	48 85 c0             	test   %rax,%rax
ffff800000106ea2:	74 16                	je     ffff800000106eba <kmem_cache_create+0x11a>
ffff800000106ea4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106ea8:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000106eac:	8b 50 20             	mov    0x20(%rax),%edx
ffff800000106eaf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106eb3:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000106eb6:	39 c2                	cmp    %eax,%edx
ffff800000106eb8:	7e 1e                	jle    ffff800000106ed8 <kmem_cache_create+0x138>
ffff800000106eba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106ebe:	48 8b 50 38          	mov    0x38(%rax),%rdx
ffff800000106ec2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106ec6:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff800000106eca:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106ece:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000106ed2:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff800000106ed6:	eb 0e                	jmp    ffff800000106ee6 <kmem_cache_create+0x146>
ffff800000106ed8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106edc:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000106ee0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106ee4:	eb b1                	jmp    ffff800000106e97 <kmem_cache_create+0xf7>
ffff800000106ee6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106eea:	48 83 c4 20          	add    $0x20,%rsp
ffff800000106eee:	5b                   	pop    %rbx
ffff800000106eef:	41 5f                	pop    %r15
ffff800000106ef1:	5d                   	pop    %rbp
ffff800000106ef2:	c3                   	retq   

ffff800000106ef3 <slab_alloc>:
ffff800000106ef3:	f3 0f 1e fa          	endbr64 
ffff800000106ef7:	55                   	push   %rbp
ffff800000106ef8:	48 89 e5             	mov    %rsp,%rbp
ffff800000106efb:	41 57                	push   %r15
ffff800000106efd:	53                   	push   %rbx
ffff800000106efe:	48 83 ec 40          	sub    $0x40,%rsp
ffff800000106f02:	f3 0f 1e fa          	endbr64 
ffff800000106f06:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106f02 <slab_alloc+0xf>
ffff800000106f0d:	49 bb 86 2b 00 00 00 	movabs $0x2b86,%r11
ffff800000106f14:	00 00 00 
ffff800000106f17:	4c 01 db             	add    %r11,%rbx
ffff800000106f1a:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
ffff800000106f1e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000106f22:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000106f25:	89 45 e0             	mov    %eax,-0x20(%rbp)
ffff800000106f28:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000106f2c:	8b 40 24             	mov    0x24(%rax),%eax
ffff800000106f2f:	89 45 dc             	mov    %eax,-0x24(%rbp)
ffff800000106f32:	49 89 df             	mov    %rbx,%r15
ffff800000106f35:	48 b8 84 cf ff ff ff 	movabs $0xffffffffffffcf84,%rax
ffff800000106f3c:	ff ff ff 
ffff800000106f3f:	48 01 d8             	add    %rbx,%rax
ffff800000106f42:	ff d0                	callq  *%rax
ffff800000106f44:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000106f48:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106f4c:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff800000106f51:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f56:	48 89 c7             	mov    %rax,%rdi
ffff800000106f59:	49 89 df             	mov    %rbx,%r15
ffff800000106f5c:	48 b8 5f db ff ff ff 	movabs $0xffffffffffffdb5f,%rax
ffff800000106f63:	ff ff ff 
ffff800000106f66:	48 01 d8             	add    %rbx,%rax
ffff800000106f69:	ff d0                	callq  *%rax
ffff800000106f6b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000106f6f:	48 8b 50 30          	mov    0x30(%rax),%rdx
ffff800000106f73:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106f77:	48 89 10             	mov    %rdx,(%rax)
ffff800000106f7a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000106f7e:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000106f82:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000106f86:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000106f8a:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000106f8d:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000106f90:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000106f94:	89 50 28             	mov    %edx,0x28(%rax)
ffff800000106f97:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106f9b:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff800000106f9f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106fa6:	00 
ffff800000106fa7:	c7 45 e4 18 00 00 00 	movl   $0x18,-0x1c(%rbp)
ffff800000106fae:	e9 9a 00 00 00       	jmpq   ffff80000010704d <slab_alloc+0x15a>
ffff800000106fb3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106fb7:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000106fba:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000106fbd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106fc1:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000106fc4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106fc8:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000106fcb:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000106fce:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106fd2:	89 50 0c             	mov    %edx,0xc(%rax)
ffff800000106fd5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106fd9:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000106fdd:	48 85 c0             	test   %rax,%rax
ffff800000106fe0:	75 2a                	jne    ffff80000010700c <slab_alloc+0x119>
ffff800000106fe2:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000106fe5:	48 63 d0             	movslq %eax,%rdx
ffff800000106fe8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000106fec:	48 01 d0             	add    %rdx,%rax
ffff800000106fef:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106ff3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106ff7:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000106ffe:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107002:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000107006:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff80000010700a:	eb 2a                	jmp    ffff800000107036 <slab_alloc+0x143>
ffff80000010700c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff80000010700f:	48 63 d0             	movslq %eax,%rdx
ffff800000107012:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107016:	48 01 c2             	add    %rax,%rdx
ffff800000107019:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010701d:	48 89 10             	mov    %rdx,(%rax)
ffff800000107020:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107024:	48 8b 00             	mov    (%rax),%rax
ffff800000107027:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010702b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010702f:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000107036:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff80000010703a:	74 0b                	je     ffff800000107047 <slab_alloc+0x154>
ffff80000010703c:	8b 45 e0             	mov    -0x20(%rbp),%eax
ffff80000010703f:	83 c0 07             	add    $0x7,%eax
ffff800000107042:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000107045:	eb 03                	jmp    ffff80000010704a <slab_alloc+0x157>
ffff800000107047:	8b 45 e0             	mov    -0x20(%rbp),%eax
ffff80000010704a:	01 45 e4             	add    %eax,-0x1c(%rbp)
ffff80000010704d:	81 7d e4 ff 0f 00 00 	cmpl   $0xfff,-0x1c(%rbp)
ffff800000107054:	0f 8e 59 ff ff ff    	jle    ffff800000106fb3 <slab_alloc+0xc0>
ffff80000010705a:	90                   	nop
ffff80000010705b:	90                   	nop
ffff80000010705c:	48 83 c4 40          	add    $0x40,%rsp
ffff800000107060:	5b                   	pop    %rbx
ffff800000107061:	41 5f                	pop    %r15
ffff800000107063:	5d                   	pop    %rbp
ffff800000107064:	c3                   	retq   

ffff800000107065 <slab_free>:
ffff800000107065:	f3 0f 1e fa          	endbr64 
ffff800000107069:	55                   	push   %rbp
ffff80000010706a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010706d:	41 57                	push   %r15
ffff80000010706f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000107073:	f3 0f 1e fa          	endbr64 
ffff800000107077:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107073 <slab_free+0xe>
ffff80000010707e:	49 bb 15 2a 00 00 00 	movabs $0x2a15,%r11
ffff800000107085:	00 00 00 
ffff800000107088:	4c 01 d8             	add    %r11,%rax
ffff80000010708b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010708f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107093:	48 8b 52 30          	mov    0x30(%rdx),%rdx
ffff800000107097:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010709b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010709f:	48 8b 52 30          	mov    0x30(%rdx),%rdx
ffff8000001070a3:	48 8b 0a             	mov    (%rdx),%rcx
ffff8000001070a6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001070aa:	48 89 4a 30          	mov    %rcx,0x30(%rdx)
ffff8000001070ae:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff8000001070b2:	48 89 d7             	mov    %rdx,%rdi
ffff8000001070b5:	49 89 c7             	mov    %rax,%r15
ffff8000001070b8:	48 ba ad ce ff ff ff 	movabs $0xffffffffffffcead,%rdx
ffff8000001070bf:	ff ff ff 
ffff8000001070c2:	48 01 c2             	add    %rax,%rdx
ffff8000001070c5:	ff d2                	callq  *%rdx
ffff8000001070c7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001070cb:	8b 40 28             	mov    0x28(%rax),%eax
ffff8000001070ce:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001070d1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001070d5:	89 50 28             	mov    %edx,0x28(%rax)
ffff8000001070d8:	90                   	nop
ffff8000001070d9:	48 83 c4 28          	add    $0x28,%rsp
ffff8000001070dd:	41 5f                	pop    %r15
ffff8000001070df:	5d                   	pop    %rbp
ffff8000001070e0:	c3                   	retq   

ffff8000001070e1 <kmem_cache_alloc>:
ffff8000001070e1:	f3 0f 1e fa          	endbr64 
ffff8000001070e5:	55                   	push   %rbp
ffff8000001070e6:	48 89 e5             	mov    %rsp,%rbp
ffff8000001070e9:	41 57                	push   %r15
ffff8000001070eb:	53                   	push   %rbx
ffff8000001070ec:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001070f0:	f3 0f 1e fa          	endbr64 
ffff8000001070f4:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001070f0 <kmem_cache_alloc+0xf>
ffff8000001070fb:	49 bb 98 29 00 00 00 	movabs $0x2998,%r11
ffff800000107102:	00 00 00 
ffff800000107105:	4c 01 db             	add    %r11,%rbx
ffff800000107108:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010710c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107110:	48 8b 00             	mov    (%rax),%rax
ffff800000107113:	48 85 c0             	test   %rax,%rax
ffff800000107116:	0f 85 19 01 00 00    	jne    ffff800000107235 <kmem_cache_alloc+0x154>
ffff80000010711c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107120:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107123:	85 c0                	test   %eax,%eax
ffff800000107125:	75 67                	jne    ffff80000010718e <kmem_cache_alloc+0xad>
ffff800000107127:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010712b:	8b 40 28             	mov    0x28(%rax),%eax
ffff80000010712e:	85 c0                	test   %eax,%eax
ffff800000107130:	75 17                	jne    ffff800000107149 <kmem_cache_alloc+0x68>
ffff800000107132:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107136:	48 89 c7             	mov    %rax,%rdi
ffff800000107139:	48 b8 6b d4 ff ff ff 	movabs $0xffffffffffffd46b,%rax
ffff800000107140:	ff ff ff 
ffff800000107143:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107147:	ff d0                	callq  *%rax
ffff800000107149:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010714d:	48 8b 50 30          	mov    0x30(%rax),%rdx
ffff800000107151:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107155:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107159:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010715d:	48 8b 40 30          	mov    0x30(%rax),%rax
ffff800000107161:	48 8b 10             	mov    (%rax),%rdx
ffff800000107164:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107168:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff80000010716c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107170:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000107173:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107176:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010717a:	89 50 28             	mov    %edx,0x28(%rax)
ffff80000010717d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107181:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107184:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107187:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010718b:	89 50 08             	mov    %edx,0x8(%rax)
ffff80000010718e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107192:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107196:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010719a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010719e:	8b 40 0c             	mov    0xc(%rax),%eax
ffff8000001071a1:	85 c0                	test   %eax,%eax
ffff8000001071a3:	0f 84 80 00 00 00    	je     ffff800000107229 <kmem_cache_alloc+0x148>
ffff8000001071a9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001071ad:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001071b1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001071b5:	48 89 10             	mov    %rdx,(%rax)
ffff8000001071b8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001071bc:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff8000001071c0:	48 8b 10             	mov    (%rax),%rdx
ffff8000001071c3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001071c7:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff8000001071cb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001071cf:	8b 40 08             	mov    0x8(%rax),%eax
ffff8000001071d2:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001071d5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001071d9:	89 50 08             	mov    %edx,0x8(%rax)
ffff8000001071dc:	eb 57                	jmp    ffff800000107235 <kmem_cache_alloc+0x154>
ffff8000001071de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001071e2:	48 8b 00             	mov    (%rax),%rax
ffff8000001071e5:	8b 40 0c             	mov    0xc(%rax),%eax
ffff8000001071e8:	85 c0                	test   %eax,%eax
ffff8000001071ea:	7e 32                	jle    ffff80000010721e <kmem_cache_alloc+0x13d>
ffff8000001071ec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001071f0:	48 8b 10             	mov    (%rax),%rdx
ffff8000001071f3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001071f7:	48 89 10             	mov    %rdx,(%rax)
ffff8000001071fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001071fe:	48 8b 00             	mov    (%rax),%rax
ffff800000107201:	48 8b 10             	mov    (%rax),%rdx
ffff800000107204:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107208:	48 89 10             	mov    %rdx,(%rax)
ffff80000010720b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010720f:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107212:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107215:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107219:	89 50 08             	mov    %edx,0x8(%rax)
ffff80000010721c:	eb 17                	jmp    ffff800000107235 <kmem_cache_alloc+0x154>
ffff80000010721e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107222:	48 8b 00             	mov    (%rax),%rax
ffff800000107225:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107229:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010722d:	48 8b 00             	mov    (%rax),%rax
ffff800000107230:	48 85 c0             	test   %rax,%rax
ffff800000107233:	75 a9                	jne    ffff8000001071de <kmem_cache_alloc+0xfd>
ffff800000107235:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107239:	48 8b 00             	mov    (%rax),%rax
ffff80000010723c:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107240:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107244:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107248:	48 8b 00             	mov    (%rax),%rax
ffff80000010724b:	8b 50 0c             	mov    0xc(%rax),%edx
ffff80000010724e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107252:	48 8b 00             	mov    (%rax),%rax
ffff800000107255:	83 ea 01             	sub    $0x1,%edx
ffff800000107258:	89 50 0c             	mov    %edx,0xc(%rax)
ffff80000010725b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010725f:	48 8b 00             	mov    (%rax),%rax
ffff800000107262:	8b 50 0c             	mov    0xc(%rax),%edx
ffff800000107265:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107269:	48 8b 00             	mov    (%rax),%rax
ffff80000010726c:	83 ea 01             	sub    $0x1,%edx
ffff80000010726f:	89 50 0c             	mov    %edx,0xc(%rax)
ffff800000107272:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000107275:	85 c0                	test   %eax,%eax
ffff800000107277:	75 2c                	jne    ffff8000001072a5 <kmem_cache_alloc+0x1c4>
ffff800000107279:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010727d:	48 8b 00             	mov    (%rax),%rax
ffff800000107280:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107284:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff800000107288:	48 89 10             	mov    %rdx,(%rax)
ffff80000010728b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010728f:	48 8b 10             	mov    (%rax),%rdx
ffff800000107292:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107296:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff80000010729a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010729e:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff8000001072a5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001072a9:	8b 50 20             	mov    0x20(%rax),%edx
ffff8000001072ac:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001072b0:	48 89 c6             	mov    %rax,%rsi
ffff8000001072b3:	48 b8 d0 ed ff ff ff 	movabs $0xffffffffffffedd0,%rax
ffff8000001072ba:	ff ff ff 
ffff8000001072bd:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001072c1:	49 89 df             	mov    %rbx,%r15
ffff8000001072c4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001072c9:	48 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rcx
ffff8000001072d0:	ff ff ff 
ffff8000001072d3:	48 01 d9             	add    %rbx,%rcx
ffff8000001072d6:	ff d1                	callq  *%rcx
ffff8000001072d8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001072dc:	48 83 c4 20          	add    $0x20,%rsp
ffff8000001072e0:	5b                   	pop    %rbx
ffff8000001072e1:	41 5f                	pop    %r15
ffff8000001072e3:	5d                   	pop    %rbp
ffff8000001072e4:	c3                   	retq   

ffff8000001072e5 <kmem_cache_free>:
ffff8000001072e5:	f3 0f 1e fa          	endbr64 
ffff8000001072e9:	55                   	push   %rbp
ffff8000001072ea:	48 89 e5             	mov    %rsp,%rbp
ffff8000001072ed:	41 57                	push   %r15
ffff8000001072ef:	53                   	push   %rbx
ffff8000001072f0:	48 83 ec 30          	sub    $0x30,%rsp
ffff8000001072f4:	f3 0f 1e fa          	endbr64 
ffff8000001072f8:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001072f4 <kmem_cache_free+0xf>
ffff8000001072ff:	49 bb 94 27 00 00 00 	movabs $0x2794,%r11
ffff800000107306:	00 00 00 
ffff800000107309:	4c 01 db             	add    %r11,%rbx
ffff80000010730c:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
ffff800000107310:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
ffff800000107314:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107318:	48 8b 00             	mov    (%rax),%rax
ffff80000010731b:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff80000010731f:	0f 86 c6 00 00 00    	jbe    ffff8000001073eb <kmem_cache_free+0x106>
ffff800000107325:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107329:	48 8b 00             	mov    (%rax),%rax
ffff80000010732c:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff800000107332:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff800000107336:	0f 87 af 00 00 00    	ja     ffff8000001073eb <kmem_cache_free+0x106>
ffff80000010733c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107340:	48 8b 00             	mov    (%rax),%rax
ffff800000107343:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107347:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010734b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff80000010734f:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
ffff800000107353:	73 73                	jae    ffff8000001073c8 <kmem_cache_free+0xe3>
ffff800000107355:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107359:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff80000010735d:	48 89 10             	mov    %rdx,(%rax)
ffff800000107360:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107364:	48 8b 00             	mov    (%rax),%rax
ffff800000107367:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff80000010736b:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff80000010736f:	eb 5e                	jmp    ffff8000001073cf <kmem_cache_free+0xea>
ffff800000107371:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107375:	48 8b 00             	mov    (%rax),%rax
ffff800000107378:	48 85 c0             	test   %rax,%rax
ffff80000010737b:	75 18                	jne    ffff800000107395 <kmem_cache_free+0xb0>
ffff80000010737d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107381:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000107385:	48 89 10             	mov    %rdx,(%rax)
ffff800000107388:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff80000010738c:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000107393:	eb 3a                	jmp    ffff8000001073cf <kmem_cache_free+0xea>
ffff800000107395:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107399:	48 8b 00             	mov    (%rax),%rax
ffff80000010739c:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff8000001073a0:	73 1b                	jae    ffff8000001073bd <kmem_cache_free+0xd8>
ffff8000001073a2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001073a6:	48 8b 10             	mov    (%rax),%rdx
ffff8000001073a9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001073ad:	48 89 10             	mov    %rdx,(%rax)
ffff8000001073b0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001073b4:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff8000001073b8:	48 89 10             	mov    %rdx,(%rax)
ffff8000001073bb:	eb 12                	jmp    ffff8000001073cf <kmem_cache_free+0xea>
ffff8000001073bd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001073c1:	48 8b 00             	mov    (%rax),%rax
ffff8000001073c4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001073c8:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff8000001073cd:	75 a2                	jne    ffff800000107371 <kmem_cache_free+0x8c>
ffff8000001073cf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001073d3:	48 8b 00             	mov    (%rax),%rax
ffff8000001073d6:	8b 50 0c             	mov    0xc(%rax),%edx
ffff8000001073d9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001073dd:	48 8b 00             	mov    (%rax),%rax
ffff8000001073e0:	83 c2 01             	add    $0x1,%edx
ffff8000001073e3:	89 50 0c             	mov    %edx,0xc(%rax)
ffff8000001073e6:	e9 bf 01 00 00       	jmpq   ffff8000001075aa <kmem_cache_free+0x2c5>
ffff8000001073eb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001073ef:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff8000001073f3:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001073f7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001073fb:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff8000001073ff:	e9 98 01 00 00       	jmpq   ffff80000010759c <kmem_cache_free+0x2b7>
ffff800000107404:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107408:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
ffff80000010740c:	0f 86 77 01 00 00    	jbe    ffff800000107589 <kmem_cache_free+0x2a4>
ffff800000107412:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107416:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff80000010741c:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff800000107420:	0f 87 63 01 00 00    	ja     ffff800000107589 <kmem_cache_free+0x2a4>
ffff800000107426:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010742a:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff80000010742e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000107432:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107436:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
ffff80000010743a:	73 70                	jae    ffff8000001074ac <kmem_cache_free+0x1c7>
ffff80000010743c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107440:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000107444:	48 89 10             	mov    %rdx,(%rax)
ffff800000107447:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010744b:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff80000010744f:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107453:	eb 5e                	jmp    ffff8000001074b3 <kmem_cache_free+0x1ce>
ffff800000107455:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107459:	48 8b 00             	mov    (%rax),%rax
ffff80000010745c:	48 85 c0             	test   %rax,%rax
ffff80000010745f:	75 18                	jne    ffff800000107479 <kmem_cache_free+0x194>
ffff800000107461:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107465:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000107469:	48 89 10             	mov    %rdx,(%rax)
ffff80000010746c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107470:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000107477:	eb 3a                	jmp    ffff8000001074b3 <kmem_cache_free+0x1ce>
ffff800000107479:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010747d:	48 8b 00             	mov    (%rax),%rax
ffff800000107480:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff800000107484:	73 1b                	jae    ffff8000001074a1 <kmem_cache_free+0x1bc>
ffff800000107486:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010748a:	48 8b 10             	mov    (%rax),%rdx
ffff80000010748d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107491:	48 89 10             	mov    %rdx,(%rax)
ffff800000107494:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107498:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff80000010749c:	48 89 10             	mov    %rdx,(%rax)
ffff80000010749f:	eb 12                	jmp    ffff8000001074b3 <kmem_cache_free+0x1ce>
ffff8000001074a1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001074a5:	48 8b 00             	mov    (%rax),%rax
ffff8000001074a8:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff8000001074ac:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
ffff8000001074b1:	75 a2                	jne    ffff800000107455 <kmem_cache_free+0x170>
ffff8000001074b3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001074b7:	8b 40 0c             	mov    0xc(%rax),%eax
ffff8000001074ba:	85 c0                	test   %eax,%eax
ffff8000001074bc:	75 11                	jne    ffff8000001074cf <kmem_cache_free+0x1ea>
ffff8000001074be:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001074c2:	8b 40 08             	mov    0x8(%rax),%eax
ffff8000001074c5:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001074c8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001074cc:	89 50 08             	mov    %edx,0x8(%rax)
ffff8000001074cf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001074d3:	8b 40 0c             	mov    0xc(%rax),%eax
ffff8000001074d6:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001074d9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001074dd:	89 50 0c             	mov    %edx,0xc(%rax)
ffff8000001074e0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001074e4:	8b 50 0c             	mov    0xc(%rax),%edx
ffff8000001074e7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001074eb:	8b 40 08             	mov    0x8(%rax),%eax
ffff8000001074ee:	39 c2                	cmp    %eax,%edx
ffff8000001074f0:	0f 85 b3 00 00 00    	jne    ffff8000001075a9 <kmem_cache_free+0x2c4>
ffff8000001074f6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001074fa:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff8000001074fe:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
ffff800000107502:	75 11                	jne    ffff800000107515 <kmem_cache_free+0x230>
ffff800000107504:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107508:	48 8b 10             	mov    (%rax),%rdx
ffff80000010750b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010750f:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000107513:	eb 0e                	jmp    ffff800000107523 <kmem_cache_free+0x23e>
ffff800000107515:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107519:	48 8b 10             	mov    (%rax),%rdx
ffff80000010751c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107520:	48 89 10             	mov    %rdx,(%rax)
ffff800000107523:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107527:	8b 40 08             	mov    0x8(%rax),%eax
ffff80000010752a:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010752d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107531:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000107534:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107538:	8b 40 28             	mov    0x28(%rax),%eax
ffff80000010753b:	83 f8 10             	cmp    $0x10,%eax
ffff80000010753e:	75 1b                	jne    ffff80000010755b <kmem_cache_free+0x276>
ffff800000107540:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107544:	48 89 c7             	mov    %rax,%rdi
ffff800000107547:	49 89 df             	mov    %rbx,%r15
ffff80000010754a:	48 b8 ad ce ff ff ff 	movabs $0xffffffffffffcead,%rax
ffff800000107551:	ff ff ff 
ffff800000107554:	48 01 d8             	add    %rbx,%rax
ffff800000107557:	ff d0                	callq  *%rax
ffff800000107559:	eb 4e                	jmp    ffff8000001075a9 <kmem_cache_free+0x2c4>
ffff80000010755b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010755f:	48 8b 50 30          	mov    0x30(%rax),%rdx
ffff800000107563:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107567:	48 89 10             	mov    %rdx,(%rax)
ffff80000010756a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010756e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107572:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000107576:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010757a:	8b 40 28             	mov    0x28(%rax),%eax
ffff80000010757d:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107580:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107584:	89 50 28             	mov    %edx,0x28(%rax)
ffff800000107587:	eb 20                	jmp    ffff8000001075a9 <kmem_cache_free+0x2c4>
ffff800000107589:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010758d:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000107591:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107595:	48 8b 00             	mov    (%rax),%rax
ffff800000107598:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010759c:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff8000001075a1:	0f 85 5d fe ff ff    	jne    ffff800000107404 <kmem_cache_free+0x11f>
ffff8000001075a7:	eb 01                	jmp    ffff8000001075aa <kmem_cache_free+0x2c5>
ffff8000001075a9:	90                   	nop
ffff8000001075aa:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001075ae:	8b 50 20             	mov    0x20(%rax),%edx
ffff8000001075b1:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001075b5:	48 89 c6             	mov    %rax,%rsi
ffff8000001075b8:	48 b8 00 ee ff ff ff 	movabs $0xffffffffffffee00,%rax
ffff8000001075bf:	ff ff ff 
ffff8000001075c2:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001075c6:	49 89 df             	mov    %rbx,%r15
ffff8000001075c9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001075ce:	48 b9 26 ae ff ff ff 	movabs $0xffffffffffffae26,%rcx
ffff8000001075d5:	ff ff ff 
ffff8000001075d8:	48 01 d9             	add    %rbx,%rcx
ffff8000001075db:	ff d1                	callq  *%rcx
ffff8000001075dd:	90                   	nop
ffff8000001075de:	48 83 c4 30          	add    $0x30,%rsp
ffff8000001075e2:	5b                   	pop    %rbx
ffff8000001075e3:	41 5f                	pop    %r15
ffff8000001075e5:	5d                   	pop    %rbp
ffff8000001075e6:	c3                   	retq   

ffff8000001075e7 <memset>:
ffff8000001075e7:	f3 0f 1e fa          	endbr64 
ffff8000001075eb:	55                   	push   %rbp
ffff8000001075ec:	48 89 e5             	mov    %rsp,%rbp
ffff8000001075ef:	f3 0f 1e fa          	endbr64 
ffff8000001075f3:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff8000001075ef <memset+0x8>
ffff8000001075fa:	49 bb 99 24 00 00 00 	movabs $0x2499,%r11
ffff800000107601:	00 00 00 
ffff800000107604:	4c 01 d8             	add    %r11,%rax
ffff800000107607:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff80000010760b:	89 75 e4             	mov    %esi,-0x1c(%rbp)
ffff80000010760e:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000107612:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107616:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff80000010761a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000107621:	eb 16                	jmp    ffff800000107639 <memset+0x52>
ffff800000107623:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000107626:	48 63 d0             	movslq %eax,%rdx
ffff800000107629:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010762d:	48 01 d0             	add    %rdx,%rax
ffff800000107630:	8b 55 e4             	mov    -0x1c(%rbp),%edx
ffff800000107633:	88 10                	mov    %dl,(%rax)
ffff800000107635:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000107639:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff80000010763c:	48 98                	cltq   
ffff80000010763e:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
ffff800000107642:	77 df                	ja     ffff800000107623 <memset+0x3c>
ffff800000107644:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107648:	5d                   	pop    %rbp
ffff800000107649:	c3                   	retq   

ffff80000010764a <memcmp>:
ffff80000010764a:	f3 0f 1e fa          	endbr64 
ffff80000010764e:	55                   	push   %rbp
ffff80000010764f:	48 89 e5             	mov    %rsp,%rbp
ffff800000107652:	f3 0f 1e fa          	endbr64 
ffff800000107656:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107652 <memcmp+0x8>
ffff80000010765d:	49 bb 36 24 00 00 00 	movabs $0x2436,%r11
ffff800000107664:	00 00 00 
ffff800000107667:	4c 01 d8             	add    %r11,%rax
ffff80000010766a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff80000010766e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000107672:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000107676:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010767a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff80000010767e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107682:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000107686:	eb 36                	jmp    ffff8000001076be <memcmp+0x74>
ffff800000107688:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010768c:	0f b6 10             	movzbl (%rax),%edx
ffff80000010768f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107693:	0f b6 00             	movzbl (%rax),%eax
ffff800000107696:	38 c2                	cmp    %al,%dl
ffff800000107698:	74 1a                	je     ffff8000001076b4 <memcmp+0x6a>
ffff80000010769a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010769e:	0f b6 00             	movzbl (%rax),%eax
ffff8000001076a1:	0f be d0             	movsbl %al,%edx
ffff8000001076a4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001076a8:	0f b6 00             	movzbl (%rax),%eax
ffff8000001076ab:	0f be c0             	movsbl %al,%eax
ffff8000001076ae:	29 c2                	sub    %eax,%edx
ffff8000001076b0:	89 d0                	mov    %edx,%eax
ffff8000001076b2:	eb 20                	jmp    ffff8000001076d4 <memcmp+0x8a>
ffff8000001076b4:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff8000001076b9:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff8000001076be:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076c2:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
ffff8000001076c6:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff8000001076ca:	48 85 c0             	test   %rax,%rax
ffff8000001076cd:	75 b9                	jne    ffff800000107688 <memcmp+0x3e>
ffff8000001076cf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001076d4:	5d                   	pop    %rbp
ffff8000001076d5:	c3                   	retq   

ffff8000001076d6 <memmove>:
ffff8000001076d6:	f3 0f 1e fa          	endbr64 
ffff8000001076da:	55                   	push   %rbp
ffff8000001076db:	48 89 e5             	mov    %rsp,%rbp
ffff8000001076de:	f3 0f 1e fa          	endbr64 
ffff8000001076e2:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff8000001076de <memmove+0x8>
ffff8000001076e9:	49 bb aa 23 00 00 00 	movabs $0x23aa,%r11
ffff8000001076f0:	00 00 00 
ffff8000001076f3:	4c 01 d8             	add    %r11,%rax
ffff8000001076f6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff8000001076fa:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff8000001076fe:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000107702:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
ffff800000107707:	75 09                	jne    ffff800000107712 <memmove+0x3c>
ffff800000107709:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010770d:	e9 99 00 00 00       	jmpq   ffff8000001077ab <memmove+0xd5>
ffff800000107712:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107716:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff80000010771a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010771e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000107722:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107726:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
ffff80000010772a:	73 6a                	jae    ffff800000107796 <memmove+0xc0>
ffff80000010772c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107730:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107734:	48 01 d0             	add    %rdx,%rax
ffff800000107737:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
ffff80000010773b:	73 59                	jae    ffff800000107796 <memmove+0xc0>
ffff80000010773d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107741:	48 01 45 f8          	add    %rax,-0x8(%rbp)
ffff800000107745:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107749:	48 01 45 f0          	add    %rax,-0x10(%rbp)
ffff80000010774d:	eb 17                	jmp    ffff800000107766 <memmove+0x90>
ffff80000010774f:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
ffff800000107754:	48 83 6d f0 01       	subq   $0x1,-0x10(%rbp)
ffff800000107759:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010775d:	0f b6 10             	movzbl (%rax),%edx
ffff800000107760:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107764:	88 10                	mov    %dl,(%rax)
ffff800000107766:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010776a:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
ffff80000010776e:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000107772:	48 85 c0             	test   %rax,%rax
ffff800000107775:	75 d8                	jne    ffff80000010774f <memmove+0x79>
ffff800000107777:	eb 2e                	jmp    ffff8000001077a7 <memmove+0xd1>
ffff800000107779:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff80000010777d:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff800000107781:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000107785:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107789:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff80000010778d:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
ffff800000107791:	0f b6 12             	movzbl (%rdx),%edx
ffff800000107794:	88 10                	mov    %dl,(%rax)
ffff800000107796:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010779a:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
ffff80000010779e:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff8000001077a2:	48 85 c0             	test   %rax,%rax
ffff8000001077a5:	75 d2                	jne    ffff800000107779 <memmove+0xa3>
ffff8000001077a7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001077ab:	5d                   	pop    %rbp
ffff8000001077ac:	c3                   	retq   

ffff8000001077ad <memcpy>:
ffff8000001077ad:	f3 0f 1e fa          	endbr64 
ffff8000001077b1:	55                   	push   %rbp
ffff8000001077b2:	48 89 e5             	mov    %rsp,%rbp
ffff8000001077b5:	48 83 ec 18          	sub    $0x18,%rsp
ffff8000001077b9:	f3 0f 1e fa          	endbr64 
ffff8000001077bd:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff8000001077b9 <memcpy+0xc>
ffff8000001077c4:	49 bb cf 22 00 00 00 	movabs $0x22cf,%r11
ffff8000001077cb:	00 00 00 
ffff8000001077ce:	4c 01 d8             	add    %r11,%rax
ffff8000001077d1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff8000001077d5:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff8000001077d9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001077dd:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff8000001077e1:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
ffff8000001077e5:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff8000001077e9:	48 89 cf             	mov    %rcx,%rdi
ffff8000001077ec:	48 b9 4e dc ff ff ff 	movabs $0xffffffffffffdc4e,%rcx
ffff8000001077f3:	ff ff ff 
ffff8000001077f6:	48 8d 04 08          	lea    (%rax,%rcx,1),%rax
ffff8000001077fa:	ff d0                	callq  *%rax
ffff8000001077fc:	c9                   	leaveq 
ffff8000001077fd:	c3                   	retq   

ffff8000001077fe <strncmp>:
ffff8000001077fe:	f3 0f 1e fa          	endbr64 
ffff800000107802:	55                   	push   %rbp
ffff800000107803:	48 89 e5             	mov    %rsp,%rbp
ffff800000107806:	f3 0f 1e fa          	endbr64 
ffff80000010780a:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107806 <strncmp+0x8>
ffff800000107811:	49 bb 82 22 00 00 00 	movabs $0x2282,%r11
ffff800000107818:	00 00 00 
ffff80000010781b:	4c 01 d8             	add    %r11,%rax
ffff80000010781e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000107822:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000107826:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010782a:	eb 0f                	jmp    ffff80000010783b <strncmp+0x3d>
ffff80000010782c:	48 83 6d e8 01       	subq   $0x1,-0x18(%rbp)
ffff800000107831:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff800000107836:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff80000010783b:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000107840:	74 1d                	je     ffff80000010785f <strncmp+0x61>
ffff800000107842:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107846:	0f b6 00             	movzbl (%rax),%eax
ffff800000107849:	84 c0                	test   %al,%al
ffff80000010784b:	74 12                	je     ffff80000010785f <strncmp+0x61>
ffff80000010784d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107851:	0f b6 10             	movzbl (%rax),%edx
ffff800000107854:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107858:	0f b6 00             	movzbl (%rax),%eax
ffff80000010785b:	38 c2                	cmp    %al,%dl
ffff80000010785d:	74 cd                	je     ffff80000010782c <strncmp+0x2e>
ffff80000010785f:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000107864:	75 07                	jne    ffff80000010786d <strncmp+0x6f>
ffff800000107866:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010786b:	eb 18                	jmp    ffff800000107885 <strncmp+0x87>
ffff80000010786d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107871:	0f b6 00             	movzbl (%rax),%eax
ffff800000107874:	0f be d0             	movsbl %al,%edx
ffff800000107877:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010787b:	0f b6 00             	movzbl (%rax),%eax
ffff80000010787e:	0f be c0             	movsbl %al,%eax
ffff800000107881:	29 c2                	sub    %eax,%edx
ffff800000107883:	89 d0                	mov    %edx,%eax
ffff800000107885:	5d                   	pop    %rbp
ffff800000107886:	c3                   	retq   

ffff800000107887 <strncpy>:
ffff800000107887:	f3 0f 1e fa          	endbr64 
ffff80000010788b:	55                   	push   %rbp
ffff80000010788c:	48 89 e5             	mov    %rsp,%rbp
ffff80000010788f:	f3 0f 1e fa          	endbr64 
ffff800000107893:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff80000010788f <strncpy+0x8>
ffff80000010789a:	49 bb f9 21 00 00 00 	movabs $0x21f9,%r11
ffff8000001078a1:	00 00 00 
ffff8000001078a4:	4c 01 d8             	add    %r11,%rax
ffff8000001078a7:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff8000001078ab:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff8000001078af:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff8000001078b2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001078b6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001078ba:	90                   	nop
ffff8000001078bb:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001078be:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001078c1:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff8000001078c4:	85 c0                	test   %eax,%eax
ffff8000001078c6:	7e 35                	jle    ffff8000001078fd <strncpy+0x76>
ffff8000001078c8:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001078cc:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff8000001078d0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001078d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001078d8:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001078dc:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001078e0:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001078e3:	88 10                	mov    %dl,(%rax)
ffff8000001078e5:	0f b6 00             	movzbl (%rax),%eax
ffff8000001078e8:	84 c0                	test   %al,%al
ffff8000001078ea:	75 cf                	jne    ffff8000001078bb <strncpy+0x34>
ffff8000001078ec:	eb 0f                	jmp    ffff8000001078fd <strncpy+0x76>
ffff8000001078ee:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001078f2:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001078f6:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001078fa:	c6 00 00             	movb   $0x0,(%rax)
ffff8000001078fd:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000107900:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107903:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff800000107906:	85 c0                	test   %eax,%eax
ffff800000107908:	7f e4                	jg     ffff8000001078ee <strncpy+0x67>
ffff80000010790a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010790e:	5d                   	pop    %rbp
ffff80000010790f:	c3                   	retq   

ffff800000107910 <safestrcpy>:
ffff800000107910:	f3 0f 1e fa          	endbr64 
ffff800000107914:	55                   	push   %rbp
ffff800000107915:	48 89 e5             	mov    %rsp,%rbp
ffff800000107918:	f3 0f 1e fa          	endbr64 
ffff80000010791c:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107918 <safestrcpy+0x8>
ffff800000107923:	49 bb 70 21 00 00 00 	movabs $0x2170,%r11
ffff80000010792a:	00 00 00 
ffff80000010792d:	4c 01 d8             	add    %r11,%rax
ffff800000107930:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000107934:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000107938:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff80000010793b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010793f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000107943:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff800000107947:	7f 06                	jg     ffff80000010794f <safestrcpy+0x3f>
ffff800000107949:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010794d:	eb 39                	jmp    ffff800000107988 <safestrcpy+0x78>
ffff80000010794f:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
ffff800000107953:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff800000107957:	7e 24                	jle    ffff80000010797d <safestrcpy+0x6d>
ffff800000107959:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff80000010795d:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff800000107961:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107965:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107969:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff80000010796d:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000107971:	0f b6 12             	movzbl (%rdx),%edx
ffff800000107974:	88 10                	mov    %dl,(%rax)
ffff800000107976:	0f b6 00             	movzbl (%rax),%eax
ffff800000107979:	84 c0                	test   %al,%al
ffff80000010797b:	75 d2                	jne    ffff80000010794f <safestrcpy+0x3f>
ffff80000010797d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107981:	c6 00 00             	movb   $0x0,(%rax)
ffff800000107984:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107988:	5d                   	pop    %rbp
ffff800000107989:	c3                   	retq   

ffff80000010798a <strlen>:
ffff80000010798a:	f3 0f 1e fa          	endbr64 
ffff80000010798e:	55                   	push   %rbp
ffff80000010798f:	48 89 e5             	mov    %rsp,%rbp
ffff800000107992:	f3 0f 1e fa          	endbr64 
ffff800000107996:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107992 <strlen+0x8>
ffff80000010799d:	49 bb f6 20 00 00 00 	movabs $0x20f6,%r11
ffff8000001079a4:	00 00 00 
ffff8000001079a7:	4c 01 d8             	add    %r11,%rax
ffff8000001079aa:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff8000001079ae:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001079b5:	eb 04                	jmp    ffff8000001079bb <strlen+0x31>
ffff8000001079b7:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff8000001079bb:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001079be:	48 63 d0             	movslq %eax,%rdx
ffff8000001079c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001079c5:	48 01 d0             	add    %rdx,%rax
ffff8000001079c8:	0f b6 00             	movzbl (%rax),%eax
ffff8000001079cb:	84 c0                	test   %al,%al
ffff8000001079cd:	75 e8                	jne    ffff8000001079b7 <strlen+0x2d>
ffff8000001079cf:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001079d2:	5d                   	pop    %rbp
ffff8000001079d3:	c3                   	retq   

Disassembly of section .eh_frame:

ffff8000001079d8 <.eh_frame>:
ffff8000001079d8:	14 00                	adc    $0x0,%al
ffff8000001079da:	00 00                	add    %al,(%rax)
ffff8000001079dc:	00 00                	add    %al,(%rax)
ffff8000001079de:	00 00                	add    %al,(%rax)
ffff8000001079e0:	01 7a 52             	add    %edi,0x52(%rdx)
ffff8000001079e3:	00 01                	add    %al,(%rcx)
ffff8000001079e5:	78 10                	js     ffff8000001079f7 <_etext+0x23>
ffff8000001079e7:	01 1b                	add    %ebx,(%rbx)
ffff8000001079e9:	0c 07                	or     $0x7,%al
ffff8000001079eb:	08 90 01 00 00 1c    	or     %dl,0x1c000001(%rax)
ffff8000001079f1:	00 00                	add    %al,(%rax)
ffff8000001079f3:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff8000001079f6:	00 00                	add    %al,(%rax)
ffff8000001079f8:	df c7                	ffreep %st(7)
ffff8000001079fa:	ff                   	(bad)  
ffff8000001079fb:	ff 74 00 00          	pushq  0x0(%rax,%rax,1)
ffff8000001079ff:	00 00                	add    %al,(%rax)
ffff800000107a01:	45 0e                	rex.RB (bad) 
ffff800000107a03:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107a09:	43 8f 03             	rex.XB popq (%r11)
ffff800000107a0c:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000107a10:	1c 00                	sbb    $0x0,%al
ffff800000107a12:	00 00                	add    %al,(%rax)
ffff800000107a14:	3c 00                	cmp    $0x0,%al
ffff800000107a16:	00 00                	add    %al,(%rax)
ffff800000107a18:	33 c8                	xor    %eax,%ecx
ffff800000107a1a:	ff                   	(bad)  
ffff800000107a1b:	ff 13                	callq  *(%rbx)
ffff800000107a1d:	01 00                	add    %eax,(%rax)
ffff800000107a1f:	00 00                	add    %al,(%rax)
ffff800000107a21:	45 0e                	rex.RB (bad) 
ffff800000107a23:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107a29:	03 0a                	add    (%rdx),%ecx
ffff800000107a2b:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000107a2e:	08 00                	or     %al,(%rax)
ffff800000107a30:	20 00                	and    %al,(%rax)
ffff800000107a32:	00 00                	add    %al,(%rax)
ffff800000107a34:	5c                   	pop    %rsp
ffff800000107a35:	00 00                	add    %al,(%rax)
ffff800000107a37:	00 26                	add    %ah,(%rsi)
ffff800000107a39:	c9                   	leaveq 
ffff800000107a3a:	ff                   	(bad)  
ffff800000107a3b:	ff 50 05             	callq  *0x5(%rax)
ffff800000107a3e:	00 00                	add    %al,(%rax)
ffff800000107a40:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107a43:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107a49:	45 83 03 03          	rex.RB addl $0x3,(%r11)
ffff800000107a4d:	42 05 0c 07 08 00    	rex.X add $0x8070c,%eax
ffff800000107a53:	00 20                	add    %ah,(%rax)
ffff800000107a55:	00 00                	add    %al,(%rax)
ffff800000107a57:	00 80 00 00 00 52    	add    %al,0x52000000(%rax)
ffff800000107a5d:	ce                   	(bad)  
ffff800000107a5e:	ff                   	(bad)  
ffff800000107a5f:	ff 2a                	ljmp   *(%rdx)
ffff800000107a61:	01 00                	add    %eax,(%rax)
ffff800000107a63:	00 00                	add    %al,(%rax)
ffff800000107a65:	45 0e                	rex.RB (bad) 
ffff800000107a67:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107a6d:	4a 8f 03             	rex.WX popq (%rbx)
ffff800000107a70:	83 04 03 17          	addl   $0x17,(%rbx,%rax,1)
ffff800000107a74:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000107a77:	08 1c 00             	or     %bl,(%rax,%rax,1)
ffff800000107a7a:	00 00                	add    %al,(%rax)
ffff800000107a7c:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
ffff800000107a7d:	00 00                	add    %al,(%rax)
ffff800000107a7f:	00 58 cf             	add    %bl,-0x31(%rax)
ffff800000107a82:	ff                   	(bad)  
ffff800000107a83:	ff 8d 00 00 00 00    	decl   0x0(%rbp)
ffff800000107a89:	45 0e                	rex.RB (bad) 
ffff800000107a8b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107a91:	45 83 03 00          	rex.RB addl $0x0,(%r11)
ffff800000107a95:	00 00                	add    %al,(%rax)
ffff800000107a97:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000107a9a:	00 00                	add    %al,(%rax)
ffff800000107a9c:	c4                   	(bad)  
ffff800000107a9d:	00 00                	add    %al,(%rax)
ffff800000107a9f:	00 c5                	add    %al,%ch
ffff800000107aa1:	cf                   	iret   
ffff800000107aa2:	ff                   	(bad)  
ffff800000107aa3:	ff c5                	inc    %ebp
ffff800000107aa5:	01 00                	add    %eax,(%rax)
ffff800000107aa7:	00 00                	add    %al,(%rax)
ffff800000107aa9:	45 0e                	rex.RB (bad) 
ffff800000107aab:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107ab1:	03 bc 01 0c 07 08 00 	add    0x8070c(%rcx,%rax,1),%edi
ffff800000107ab8:	1c 00                	sbb    $0x0,%al
ffff800000107aba:	00 00                	add    %al,(%rax)
ffff800000107abc:	e4 00                	in     $0x0,%al
ffff800000107abe:	00 00                	add    %al,(%rax)
ffff800000107ac0:	6a d1                	pushq  $0xffffffffffffffd1
ffff800000107ac2:	ff                   	(bad)  
ffff800000107ac3:	ff c1                	inc    %ecx
ffff800000107ac5:	02 00                	add    (%rax),%al
ffff800000107ac7:	00 00                	add    %al,(%rax)
ffff800000107ac9:	45 0e                	rex.RB (bad) 
ffff800000107acb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107ad1:	03 b8 02 0c 07 08    	add    0x8070c02(%rax),%edi
ffff800000107ad7:	00 20                	add    %ah,(%rax)
ffff800000107ad9:	00 00                	add    %al,(%rax)
ffff800000107adb:	00 04 01             	add    %al,(%rcx,%rax,1)
ffff800000107ade:	00 00                	add    %al,(%rax)
ffff800000107ae0:	0b d4                	or     %esp,%edx
ffff800000107ae2:	ff                   	(bad)  
ffff800000107ae3:	ff b0 04 00 00 00    	pushq  0x4(%rax)
ffff800000107ae9:	45 0e                	rex.RB (bad) 
ffff800000107aeb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107af1:	45 83 03 03          	rex.RB addl $0x3,(%r11)
ffff800000107af5:	a2 04 0c 07 08 00 00 	movabs %al,0x1c000008070c04
ffff800000107afc:	1c 00 
ffff800000107afe:	00 00                	add    %al,(%rax)
ffff800000107b00:	28 01                	sub    %al,(%rcx)
ffff800000107b02:	00 00                	add    %al,(%rax)
ffff800000107b04:	97                   	xchg   %eax,%edi
ffff800000107b05:	d8 ff                	fdivr  %st(7),%st
ffff800000107b07:	ff d7                	callq  *%rdi
ffff800000107b09:	00 00                	add    %al,(%rax)
ffff800000107b0b:	00 00                	add    %al,(%rax)
ffff800000107b0d:	45 0e                	rex.RB (bad) 
ffff800000107b0f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107b15:	02 ce                	add    %dh,%cl
ffff800000107b17:	0c 07                	or     $0x7,%al
ffff800000107b19:	08 00                	or     %al,(%rax)
ffff800000107b1b:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000107b1e:	00 00                	add    %al,(%rax)
ffff800000107b20:	48 01 00             	add    %rax,(%rax)
ffff800000107b23:	00 4e d9             	add    %cl,-0x27(%rsi)
ffff800000107b26:	ff                   	(bad)  
ffff800000107b27:	ff                   	(bad)  
ffff800000107b28:	d9 00                	flds   (%rax)
ffff800000107b2a:	00 00                	add    %al,(%rax)
ffff800000107b2c:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107b2f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107b35:	02 d0                	add    %al,%dl
ffff800000107b37:	0c 07                	or     $0x7,%al
ffff800000107b39:	08 00                	or     %al,(%rax)
ffff800000107b3b:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000107b3e:	00 00                	add    %al,(%rax)
ffff800000107b40:	68 01 00 00 07       	pushq  $0x7000001
ffff800000107b45:	da ff                	(bad)  
ffff800000107b47:	ff                   	(bad)  
ffff800000107b48:	dc 00                	faddl  (%rax)
ffff800000107b4a:	00 00                	add    %al,(%rax)
ffff800000107b4c:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107b4f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107b55:	02 d3                	add    %bl,%dl
ffff800000107b57:	0c 07                	or     $0x7,%al
ffff800000107b59:	08 00                	or     %al,(%rax)
ffff800000107b5b:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000107b5e:	00 00                	add    %al,(%rax)
ffff800000107b60:	88 01                	mov    %al,(%rcx)
ffff800000107b62:	00 00                	add    %al,(%rax)
ffff800000107b64:	c3                   	retq   
ffff800000107b65:	da ff                	(bad)  
ffff800000107b67:	ff                   	(bad)  
ffff800000107b68:	df 00                	filds  (%rax)
ffff800000107b6a:	00 00                	add    %al,(%rax)
ffff800000107b6c:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107b6f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107b75:	02 d6                	add    %dh,%dl
ffff800000107b77:	0c 07                	or     $0x7,%al
ffff800000107b79:	08 00                	or     %al,(%rax)
ffff800000107b7b:	00 18                	add    %bl,(%rax)
ffff800000107b7d:	00 00                	add    %al,(%rax)
ffff800000107b7f:	00 a8 01 00 00 82    	add    %ch,-0x7dffffff(%rax)
ffff800000107b85:	db ff                	(bad)  
ffff800000107b87:	ff                   	(bad)  
ffff800000107b88:	7e 00                	jle    ffff800000107b8a <_etext+0x1b6>
ffff800000107b8a:	00 00                	add    %al,(%rax)
ffff800000107b8c:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107b8f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107b95:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107b98:	18 00                	sbb    %al,(%rax)
ffff800000107b9a:	00 00                	add    %al,(%rax)
ffff800000107b9c:	c4 01 00 00          	(bad)
ffff800000107ba0:	e4 db                	in     $0xdb,%al
ffff800000107ba2:	ff                   	(bad)  
ffff800000107ba3:	ff                   	(bad)  
ffff800000107ba4:	7e 00                	jle    ffff800000107ba6 <_etext+0x1d2>
ffff800000107ba6:	00 00                	add    %al,(%rax)
ffff800000107ba8:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107bab:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107bb1:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107bb4:	18 00                	sbb    %al,(%rax)
ffff800000107bb6:	00 00                	add    %al,(%rax)
ffff800000107bb8:	e0 01                	loopne ffff800000107bbb <_etext+0x1e7>
ffff800000107bba:	00 00                	add    %al,(%rax)
ffff800000107bbc:	46 dc ff             	rex.RX fdivr %st,%st(7)
ffff800000107bbf:	ff                   	(bad)  
ffff800000107bc0:	7e 00                	jle    ffff800000107bc2 <_etext+0x1ee>
ffff800000107bc2:	00 00                	add    %al,(%rax)
ffff800000107bc4:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107bc7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107bcd:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107bd0:	18 00                	sbb    %al,(%rax)
ffff800000107bd2:	00 00                	add    %al,(%rax)
ffff800000107bd4:	fc                   	cld    
ffff800000107bd5:	01 00                	add    %eax,(%rax)
ffff800000107bd7:	00 a8 dc ff ff 7e    	add    %ch,0x7effffdc(%rax)
ffff800000107bdd:	00 00                	add    %al,(%rax)
ffff800000107bdf:	00 00                	add    %al,(%rax)
ffff800000107be1:	45 0e                	rex.RB (bad) 
ffff800000107be3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107be9:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107bec:	18 00                	sbb    %al,(%rax)
ffff800000107bee:	00 00                	add    %al,(%rax)
ffff800000107bf0:	18 02                	sbb    %al,(%rdx)
ffff800000107bf2:	00 00                	add    %al,(%rax)
ffff800000107bf4:	0a dd                	or     %ch,%bl
ffff800000107bf6:	ff                   	(bad)  
ffff800000107bf7:	ff                   	(bad)  
ffff800000107bf8:	7e 00                	jle    ffff800000107bfa <_etext+0x226>
ffff800000107bfa:	00 00                	add    %al,(%rax)
ffff800000107bfc:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107bff:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107c05:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107c08:	18 00                	sbb    %al,(%rax)
ffff800000107c0a:	00 00                	add    %al,(%rax)
ffff800000107c0c:	34 02                	xor    $0x2,%al
ffff800000107c0e:	00 00                	add    %al,(%rax)
ffff800000107c10:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000107c11:	dd ff                	(bad)  
ffff800000107c13:	ff                   	(bad)  
ffff800000107c14:	7e 00                	jle    ffff800000107c16 <_etext+0x242>
ffff800000107c16:	00 00                	add    %al,(%rax)
ffff800000107c18:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107c1b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107c21:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107c24:	18 00                	sbb    %al,(%rax)
ffff800000107c26:	00 00                	add    %al,(%rax)
ffff800000107c28:	50                   	push   %rax
ffff800000107c29:	02 00                	add    (%rax),%al
ffff800000107c2b:	00 ce                	add    %cl,%dh
ffff800000107c2d:	dd ff                	(bad)  
ffff800000107c2f:	ff                   	(bad)  
ffff800000107c30:	7e 00                	jle    ffff800000107c32 <_etext+0x25e>
ffff800000107c32:	00 00                	add    %al,(%rax)
ffff800000107c34:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107c37:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107c3d:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107c40:	18 00                	sbb    %al,(%rax)
ffff800000107c42:	00 00                	add    %al,(%rax)
ffff800000107c44:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000107c45:	02 00                	add    (%rax),%al
ffff800000107c47:	00 30                	add    %dh,(%rax)
ffff800000107c49:	de ff                	fdivrp %st,%st(7)
ffff800000107c4b:	ff                   	(bad)  
ffff800000107c4c:	7e 00                	jle    ffff800000107c4e <_etext+0x27a>
ffff800000107c4e:	00 00                	add    %al,(%rax)
ffff800000107c50:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107c53:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107c59:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107c5c:	18 00                	sbb    %al,(%rax)
ffff800000107c5e:	00 00                	add    %al,(%rax)
ffff800000107c60:	88 02                	mov    %al,(%rdx)
ffff800000107c62:	00 00                	add    %al,(%rax)
ffff800000107c64:	92                   	xchg   %eax,%edx
ffff800000107c65:	de ff                	fdivrp %st,%st(7)
ffff800000107c67:	ff                   	(bad)  
ffff800000107c68:	7e 00                	jle    ffff800000107c6a <_etext+0x296>
ffff800000107c6a:	00 00                	add    %al,(%rax)
ffff800000107c6c:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107c6f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107c75:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107c78:	18 00                	sbb    %al,(%rax)
ffff800000107c7a:	00 00                	add    %al,(%rax)
ffff800000107c7c:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
ffff800000107c7d:	02 00                	add    (%rax),%al
ffff800000107c7f:	00 f4                	add    %dh,%ah
ffff800000107c81:	de ff                	fdivrp %st,%st(7)
ffff800000107c83:	ff                   	(bad)  
ffff800000107c84:	7e 00                	jle    ffff800000107c86 <_etext+0x2b2>
ffff800000107c86:	00 00                	add    %al,(%rax)
ffff800000107c88:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107c8b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107c91:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107c94:	1c 00                	sbb    $0x0,%al
ffff800000107c96:	00 00                	add    %al,(%rax)
ffff800000107c98:	c0 02 00             	rolb   $0x0,(%rdx)
ffff800000107c9b:	00 56 df             	add    %dl,-0x21(%rsi)
ffff800000107c9e:	ff                   	(bad)  
ffff800000107c9f:	ff 9d 01 00 00 00    	lcall  *0x1(%rbp)
ffff800000107ca5:	45 0e                	rex.RB (bad) 
ffff800000107ca7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107cad:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107cb0:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000107cb4:	1c 00                	sbb    $0x0,%al
ffff800000107cb6:	00 00                	add    %al,(%rax)
ffff800000107cb8:	e0 02                	loopne ffff800000107cbc <_etext+0x2e8>
ffff800000107cba:	00 00                	add    %al,(%rax)
ffff800000107cbc:	d3 e0                	shl    %cl,%eax
ffff800000107cbe:	ff                   	(bad)  
ffff800000107cbf:	ff 9d 01 00 00 00    	lcall  *0x1(%rbp)
ffff800000107cc5:	45 0e                	rex.RB (bad) 
ffff800000107cc7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107ccd:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107cd0:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000107cd4:	1c 00                	sbb    $0x0,%al
ffff800000107cd6:	00 00                	add    %al,(%rax)
ffff800000107cd8:	00 03                	add    %al,(%rbx)
ffff800000107cda:	00 00                	add    %al,(%rax)
ffff800000107cdc:	50                   	push   %rax
ffff800000107cdd:	e2 ff                	loop   ffff800000107cde <_etext+0x30a>
ffff800000107cdf:	ff 9d 01 00 00 00    	lcall  *0x1(%rbp)
ffff800000107ce5:	45 0e                	rex.RB (bad) 
ffff800000107ce7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107ced:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107cf0:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000107cf4:	1c 00                	sbb    $0x0,%al
ffff800000107cf6:	00 00                	add    %al,(%rax)
ffff800000107cf8:	20 03                	and    %al,(%rbx)
ffff800000107cfa:	00 00                	add    %al,(%rax)
ffff800000107cfc:	cd e3                	int    $0xe3
ffff800000107cfe:	ff                   	(bad)  
ffff800000107cff:	ff 9d 01 00 00 00    	lcall  *0x1(%rbp)
ffff800000107d05:	45 0e                	rex.RB (bad) 
ffff800000107d07:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107d0d:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107d10:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000107d14:	1c 00                	sbb    $0x0,%al
ffff800000107d16:	00 00                	add    %al,(%rax)
ffff800000107d18:	40 03 00             	rex add (%rax),%eax
ffff800000107d1b:	00 4a e5             	add    %cl,-0x1b(%rdx)
ffff800000107d1e:	ff                   	(bad)  
ffff800000107d1f:	ff 22                	jmpq   *(%rdx)
ffff800000107d21:	02 00                	add    (%rax),%al
ffff800000107d23:	00 00                	add    %al,(%rax)
ffff800000107d25:	45 0e                	rex.RB (bad) 
ffff800000107d27:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107d2d:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107d30:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000107d34:	18 00                	sbb    %al,(%rax)
ffff800000107d36:	00 00                	add    %al,(%rax)
ffff800000107d38:	60                   	(bad)  
ffff800000107d39:	03 00                	add    (%rax),%eax
ffff800000107d3b:	00 4c e7 ff          	add    %cl,-0x1(%rdi,%riz,8)
ffff800000107d3f:	ff                   	(bad)  
ffff800000107d40:	7e 00                	jle    ffff800000107d42 <_etext+0x36e>
ffff800000107d42:	00 00                	add    %al,(%rax)
ffff800000107d44:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107d47:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107d4d:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107d50:	18 00                	sbb    %al,(%rax)
ffff800000107d52:	00 00                	add    %al,(%rax)
ffff800000107d54:	7c 03                	jl     ffff800000107d59 <_etext+0x385>
ffff800000107d56:	00 00                	add    %al,(%rax)
ffff800000107d58:	ae                   	scas   %es:(%rdi),%al
ffff800000107d59:	e7 ff                	out    %eax,$0xff
ffff800000107d5b:	ff                   	(bad)  
ffff800000107d5c:	7e 00                	jle    ffff800000107d5e <_etext+0x38a>
ffff800000107d5e:	00 00                	add    %al,(%rax)
ffff800000107d60:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107d63:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107d69:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107d6c:	18 00                	sbb    %al,(%rax)
ffff800000107d6e:	00 00                	add    %al,(%rax)
ffff800000107d70:	98                   	cwtl   
ffff800000107d71:	03 00                	add    (%rax),%eax
ffff800000107d73:	00 10                	add    %dl,(%rax)
ffff800000107d75:	e8 ff ff 7e 00       	callq  ffff8000008f7d79 <_end+0x7ee2a1>
ffff800000107d7a:	00 00                	add    %al,(%rax)
ffff800000107d7c:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107d7f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107d85:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107d88:	18 00                	sbb    %al,(%rax)
ffff800000107d8a:	00 00                	add    %al,(%rax)
ffff800000107d8c:	b4 03                	mov    $0x3,%ah
ffff800000107d8e:	00 00                	add    %al,(%rax)
ffff800000107d90:	72 e8                	jb     ffff800000107d7a <_etext+0x3a6>
ffff800000107d92:	ff                   	(bad)  
ffff800000107d93:	ff                   	(bad)  
ffff800000107d94:	7e 00                	jle    ffff800000107d96 <_etext+0x3c2>
ffff800000107d96:	00 00                	add    %al,(%rax)
ffff800000107d98:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107d9b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107da1:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107da4:	18 00                	sbb    %al,(%rax)
ffff800000107da6:	00 00                	add    %al,(%rax)
ffff800000107da8:	d0 03                	rolb   (%rbx)
ffff800000107daa:	00 00                	add    %al,(%rax)
ffff800000107dac:	d4                   	(bad)  
ffff800000107dad:	e8 ff ff 7e 00       	callq  ffff8000008f7db1 <_end+0x7ee2d9>
ffff800000107db2:	00 00                	add    %al,(%rax)
ffff800000107db4:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107db7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107dbd:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107dc0:	20 00                	and    %al,(%rax)
ffff800000107dc2:	00 00                	add    %al,(%rax)
ffff800000107dc4:	ec                   	in     (%dx),%al
ffff800000107dc5:	03 00                	add    (%rax),%eax
ffff800000107dc7:	00 36                	add    %dh,(%rsi)
ffff800000107dc9:	e9 ff ff 89 01       	jmpq   ffff8000019a7dcd <_end+0x189e2f5>
ffff800000107dce:	00 00                	add    %al,(%rax)
ffff800000107dd0:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107dd3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107dd9:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107ddc:	83 04 03 79          	addl   $0x79,(%rbx,%rax,1)
ffff800000107de0:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000107de3:	08 20                	or     %ah,(%rax)
ffff800000107de5:	00 00                	add    %al,(%rax)
ffff800000107de7:	00 10                	add    %dl,(%rax)
ffff800000107de9:	04 00                	add    $0x0,%al
ffff800000107deb:	00 9b ea ff ff ae    	add    %bl,-0x51000016(%rbx)
ffff800000107df1:	00 00                	add    %al,(%rax)
ffff800000107df3:	00 00                	add    %al,(%rax)
ffff800000107df5:	45 0e                	rex.RB (bad) 
ffff800000107df7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107dfd:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107e00:	83 04 02 9e          	addl   $0xffffff9e,(%rdx,%rax,1)
ffff800000107e04:	0c 07                	or     $0x7,%al
ffff800000107e06:	08 00                	or     %al,(%rax)
ffff800000107e08:	20 00                	and    %al,(%rax)
ffff800000107e0a:	00 00                	add    %al,(%rax)
ffff800000107e0c:	34 04                	xor    $0x4,%al
ffff800000107e0e:	00 00                	add    %al,(%rax)
ffff800000107e10:	25 eb ff ff d7       	and    $0xd7ffffeb,%eax
ffff800000107e15:	00 00                	add    %al,(%rax)
ffff800000107e17:	00 00                	add    %al,(%rax)
ffff800000107e19:	45 0e                	rex.RB (bad) 
ffff800000107e1b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107e21:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107e24:	83 04 02 c7          	addl   $0xffffffc7,(%rdx,%rax,1)
ffff800000107e28:	0c 07                	or     $0x7,%al
ffff800000107e2a:	08 00                	or     %al,(%rax)
ffff800000107e2c:	20 00                	and    %al,(%rax)
ffff800000107e2e:	00 00                	add    %al,(%rax)
ffff800000107e30:	58                   	pop    %rax
ffff800000107e31:	04 00                	add    $0x0,%al
ffff800000107e33:	00 d8                	add    %bl,%al
ffff800000107e35:	eb ff                	jmp    ffff800000107e36 <_etext+0x462>
ffff800000107e37:	ff 8a 00 00 00 00    	decl   0x0(%rdx)
ffff800000107e3d:	45 0e                	rex.RB (bad) 
ffff800000107e3f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107e45:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107e48:	02 7b 0c             	add    0xc(%rbx),%bh
ffff800000107e4b:	07                   	(bad)  
ffff800000107e4c:	08 00                	or     %al,(%rax)
ffff800000107e4e:	00 00                	add    %al,(%rax)
ffff800000107e50:	20 00                	and    %al,(%rax)
ffff800000107e52:	00 00                	add    %al,(%rax)
ffff800000107e54:	7c 04                	jl     ffff800000107e5a <_etext+0x486>
ffff800000107e56:	00 00                	add    %al,(%rax)
ffff800000107e58:	3e ec                	ds in  (%dx),%al
ffff800000107e5a:	ff                   	(bad)  
ffff800000107e5b:	ff                   	(bad)  
ffff800000107e5c:	ec                   	in     (%dx),%al
ffff800000107e5d:	00 00                	add    %al,(%rax)
ffff800000107e5f:	00 00                	add    %al,(%rax)
ffff800000107e61:	45 0e                	rex.RB (bad) 
ffff800000107e63:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107e69:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107e6c:	83 04 02 dc          	addl   $0xffffffdc,(%rdx,%rax,1)
ffff800000107e70:	0c 07                	or     $0x7,%al
ffff800000107e72:	08 00                	or     %al,(%rax)
ffff800000107e74:	20 00                	and    %al,(%rax)
ffff800000107e76:	00 00                	add    %al,(%rax)
ffff800000107e78:	a0 04 00 00 06 ed ff 	movabs 0xfbffffed06000004,%al
ffff800000107e7f:	ff fb 
ffff800000107e81:	00 00                	add    %al,(%rax)
ffff800000107e83:	00 00                	add    %al,(%rax)
ffff800000107e85:	45 0e                	rex.RB (bad) 
ffff800000107e87:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107e8d:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107e90:	83 04 02 eb          	addl   $0xffffffeb,(%rdx,%rax,1)
ffff800000107e94:	0c 07                	or     $0x7,%al
ffff800000107e96:	08 00                	or     %al,(%rax)
ffff800000107e98:	20 00                	and    %al,(%rax)
ffff800000107e9a:	00 00                	add    %al,(%rax)
ffff800000107e9c:	c4                   	(bad)  
ffff800000107e9d:	04 00                	add    $0x0,%al
ffff800000107e9f:	00 dd                	add    %bl,%ch
ffff800000107ea1:	ed                   	in     (%dx),%eax
ffff800000107ea2:	ff                   	(bad)  
ffff800000107ea3:	ff 23                	jmpq   *(%rbx)
ffff800000107ea5:	01 00                	add    %eax,(%rax)
ffff800000107ea7:	00 00                	add    %al,(%rax)
ffff800000107ea9:	45 0e                	rex.RB (bad) 
ffff800000107eab:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107eb1:	45 83 03 03          	rex.RB addl $0x3,(%r11)
ffff800000107eb5:	15 01 0c 07 08       	adc    $0x8070c01,%eax
ffff800000107eba:	00 00                	add    %al,(%rax)
ffff800000107ebc:	20 00                	and    %al,(%rax)
ffff800000107ebe:	00 00                	add    %al,(%rax)
ffff800000107ec0:	e8 04 00 00 dc       	callq  ffff7fffdc107ec9 <OLDSS+0xffff7fffdc107e11>
ffff800000107ec5:	ee                   	out    %al,(%dx)
ffff800000107ec6:	ff                   	(bad)  
ffff800000107ec7:	ff 53 01             	callq  *0x1(%rbx)
ffff800000107eca:	00 00                	add    %al,(%rax)
ffff800000107ecc:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107ecf:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107ed5:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107ed8:	83 04 03 43          	addl   $0x43,(%rbx,%rax,1)
ffff800000107edc:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000107edf:	08 20                	or     %ah,(%rax)
ffff800000107ee1:	00 00                	add    %al,(%rax)
ffff800000107ee3:	00 0c 05 00 00 0b f0 	add    %cl,-0xff50000(,%rax,1)
ffff800000107eea:	ff                   	(bad)  
ffff800000107eeb:	ff 72 01             	pushq  0x1(%rdx)
ffff800000107eee:	00 00                	add    %al,(%rax)
ffff800000107ef0:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107ef3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107ef9:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107efc:	83 04 03 62          	addl   $0x62,(%rbx,%rax,1)
ffff800000107f00:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000107f03:	08 20                	or     %ah,(%rax)
ffff800000107f05:	00 00                	add    %al,(%rax)
ffff800000107f07:	00 30                	add    %dh,(%rax)
ffff800000107f09:	05 00 00 59 f1       	add    $0xf1590000,%eax
ffff800000107f0e:	ff                   	(bad)  
ffff800000107f0f:	ff                   	(bad)  
ffff800000107f10:	7c 00                	jl     ffff800000107f12 <_etext+0x53e>
ffff800000107f12:	00 00                	add    %al,(%rax)
ffff800000107f14:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107f17:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107f1d:	46 8f 03             	rex.RX popq (%rbx)
ffff800000107f20:	02 6d 0c             	add    0xc(%rbp),%ch
ffff800000107f23:	07                   	(bad)  
ffff800000107f24:	08 00                	or     %al,(%rax)
ffff800000107f26:	00 00                	add    %al,(%rax)
ffff800000107f28:	20 00                	and    %al,(%rax)
ffff800000107f2a:	00 00                	add    %al,(%rax)
ffff800000107f2c:	54                   	push   %rsp
ffff800000107f2d:	05 00 00 b1 f1       	add    $0xf1b10000,%eax
ffff800000107f32:	ff                   	(bad)  
ffff800000107f33:	ff 04 02             	incl   (%rdx,%rax,1)
ffff800000107f36:	00 00                	add    %al,(%rax)
ffff800000107f38:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107f3b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107f41:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107f44:	83 04 03 f4          	addl   $0xfffffff4,(%rbx,%rax,1)
ffff800000107f48:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000107f4b:	08 20                	or     %ah,(%rax)
ffff800000107f4d:	00 00                	add    %al,(%rax)
ffff800000107f4f:	00 78 05             	add    %bh,0x5(%rax)
ffff800000107f52:	00 00                	add    %al,(%rax)
ffff800000107f54:	91                   	xchg   %eax,%ecx
ffff800000107f55:	f3 ff                	repz (bad) 
ffff800000107f57:	ff 02                	incl   (%rdx)
ffff800000107f59:	03 00                	add    (%rax),%eax
ffff800000107f5b:	00 00                	add    %al,(%rax)
ffff800000107f5d:	45 0e                	rex.RB (bad) 
ffff800000107f5f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107f65:	47 8f 03             	rex.RXB popq (%r11)
ffff800000107f68:	83 04 03 f2          	addl   $0xfffffff2,(%rbx,%rax,1)
ffff800000107f6c:	02 0c 07             	add    (%rdi,%rax,1),%cl
ffff800000107f6f:	08 1c 00             	or     %bl,(%rax,%rax,1)
ffff800000107f72:	00 00                	add    %al,(%rax)
ffff800000107f74:	9c                   	pushfq 
ffff800000107f75:	05 00 00 6f f6       	add    $0xf66f0000,%eax
ffff800000107f7a:	ff                   	(bad)  
ffff800000107f7b:	ff 63 00             	jmpq   *0x0(%rbx)
ffff800000107f7e:	00 00                	add    %al,(%rax)
ffff800000107f80:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107f83:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107f89:	02 5a 0c             	add    0xc(%rdx),%bl
ffff800000107f8c:	07                   	(bad)  
ffff800000107f8d:	08 00                	or     %al,(%rax)
ffff800000107f8f:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000107f92:	00 00                	add    %al,(%rax)
ffff800000107f94:	bc 05 00 00 b2       	mov    $0xb2000005,%esp
ffff800000107f99:	f6 ff                	idiv   %bh
ffff800000107f9b:	ff 8c 00 00 00 00 45 	decl   0x45000000(%rax,%rax,1)
ffff800000107fa2:	0e                   	(bad)  
ffff800000107fa3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107fa9:	02 83 0c 07 08 00    	add    0x8070c(%rbx),%al
ffff800000107faf:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000107fb2:	00 00                	add    %al,(%rax)
ffff800000107fb4:	dc 05 00 00 1e f7    	faddl  -0x8e20000(%rip)        # ffff7ffff72e7fba <OLDSS+0xffff7ffff72e7f02>
ffff800000107fba:	ff                   	(bad)  
ffff800000107fbb:	ff d7                	callq  *%rdi
ffff800000107fbd:	00 00                	add    %al,(%rax)
ffff800000107fbf:	00 00                	add    %al,(%rax)
ffff800000107fc1:	45 0e                	rex.RB (bad) 
ffff800000107fc3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107fc9:	02 ce                	add    %dh,%cl
ffff800000107fcb:	0c 07                	or     $0x7,%al
ffff800000107fcd:	08 00                	or     %al,(%rax)
ffff800000107fcf:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000107fd2:	00 00                	add    %al,(%rax)
ffff800000107fd4:	fc                   	cld    
ffff800000107fd5:	05 00 00 d5 f7       	add    $0xf7d50000,%eax
ffff800000107fda:	ff                   	(bad)  
ffff800000107fdb:	ff 51 00             	callq  *0x0(%rcx)
ffff800000107fde:	00 00                	add    %al,(%rax)
ffff800000107fe0:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107fe3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107fe9:	02 48 0c             	add    0xc(%rax),%cl
ffff800000107fec:	07                   	(bad)  
ffff800000107fed:	08 00                	or     %al,(%rax)
ffff800000107fef:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000107ff2:	00 00                	add    %al,(%rax)
ffff800000107ff4:	1c 06                	sbb    $0x6,%al
ffff800000107ff6:	00 00                	add    %al,(%rax)
ffff800000107ff8:	06                   	(bad)  
ffff800000107ff9:	f8                   	clc    
ffff800000107ffa:	ff                   	(bad)  
ffff800000107ffb:	ff 89 00 00 00 00    	decl   0x0(%rcx)
ffff800000108001:	45 0e                	rex.RB (bad) 
ffff800000108003:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108009:	02 80 0c 07 08 00    	add    0x8070c(%rax),%al
ffff80000010800f:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108012:	00 00                	add    %al,(%rax)
ffff800000108014:	3c 06                	cmp    $0x6,%al
ffff800000108016:	00 00                	add    %al,(%rax)
ffff800000108018:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108019:	f8                   	clc    
ffff80000010801a:	ff                   	(bad)  
ffff80000010801b:	ff 89 00 00 00 00    	decl   0x0(%rcx)
ffff800000108021:	45 0e                	rex.RB (bad) 
ffff800000108023:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108029:	02 80 0c 07 08 00    	add    0x8070c(%rax),%al
ffff80000010802f:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108032:	00 00                	add    %al,(%rax)
ffff800000108034:	5c                   	pop    %rsp
ffff800000108035:	06                   	(bad)  
ffff800000108036:	00 00                	add    %al,(%rax)
ffff800000108038:	d8 f8                	fdivr  %st(0),%st
ffff80000010803a:	ff                   	(bad)  
ffff80000010803b:	ff                   	(bad)  
ffff80000010803c:	7a 00                	jp     ffff80000010803e <_etext+0x66a>
ffff80000010803e:	00 00                	add    %al,(%rax)
ffff800000108040:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108043:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108049:	02 71 0c             	add    0xc(%rcx),%dh
ffff80000010804c:	07                   	(bad)  
ffff80000010804d:	08 00                	or     %al,(%rax)
ffff80000010804f:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108052:	00 00                	add    %al,(%rax)
ffff800000108054:	7c 06                	jl     ffff80000010805c <_etext+0x688>
ffff800000108056:	00 00                	add    %al,(%rax)
ffff800000108058:	32 f9                	xor    %cl,%bh
ffff80000010805a:	ff                   	(bad)  
ffff80000010805b:	ff 4a 00             	decl   0x0(%rdx)
ffff80000010805e:	00 00                	add    %al,(%rax)
ffff800000108060:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108063:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108069:	02 41 0c             	add    0xc(%rcx),%al
ffff80000010806c:	07                   	(bad)  
ffff80000010806d:	08 00                	or     %al,(%rax)
	...

Disassembly of section .rodata:

ffff800000108070 <.LC0>:
ffff800000108070:	70 61                	jo     ffff8000001080d3 <.LC1+0x13>
ffff800000108072:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108073:	69 63 3a 20 00   	imul   $0xa0020,0x3a(%rbx),%esp

ffff800000108078 <.LC1>:
ffff800000108078:	0a 00                	or     (%rax),%al
ffff80000010807a:	00 00                	add    %al,(%rax)
ffff80000010807c:	00 00                	add    %al,(%rax)
	...

ffff800000108080 <.LC0>:
ffff800000108080:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108082:	5f                   	pop    %rdi
ffff800000108083:	64 69 76 69 64 65 5f 	imul   $0x655f6564,%fs:0x69(%rsi),%esi
ffff80000010808a:	65 
ffff80000010808b:	72 72                	jb     ffff8000001080ff <.LC2+0x7>
ffff80000010808d:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010808e:	72 28                	jb     ffff8000001080b8 <.LC0+0x38>
ffff800000108090:	30 29                	xor    %ch,(%rcx)
ffff800000108092:	2c 45                	sub    $0x45,%al
ffff800000108094:	52                   	push   %rdx
ffff800000108095:	52                   	push   %rdx
ffff800000108096:	4f 52                	rex.WRXB push %r10
ffff800000108098:	5f                   	pop    %rdi
ffff800000108099:	43                   	rex.XB
ffff80000010809a:	4f                   	rex.WRXB
ffff80000010809b:	44                   	rex.R
ffff80000010809c:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b0c6 <_end+0x383115ee>
ffff8000001080a3:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001080a4:	78 2c                	js     ffff8000001080d2 <.LC1+0x12>
ffff8000001080a6:	52                   	push   %rdx
ffff8000001080a7:	53                   	push   %rbx
ffff8000001080a8:	50                   	push   %rax
ffff8000001080a9:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b0d2 <_end+0x383115fa>
ffff8000001080af:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001080b0:	78 2c                	js     ffff8000001080de <.LC1+0x1e>
ffff8000001080b2:	52                   	push   %rdx
ffff8000001080b3:	49 50                	rex.WB push %r8
ffff8000001080b5:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b0de <_end+0x38311606>
ffff8000001080bb:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001080bc:	78 0a                	js     ffff8000001080c8 <.LC1+0x8>
	...

ffff8000001080c0 <.LC1>:
ffff8000001080c0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001080c2:	5f                   	pop    %rdi
ffff8000001080c3:	64 65 62             	fs gs (bad) 
ffff8000001080c6:	75 67                	jne    ffff80000010812f <.LC2+0x37>
ffff8000001080c8:	28 31                	sub    %dh,(%rcx)
ffff8000001080ca:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff8000001080d1:	5f                   	pop    %rdi
ffff8000001080d2:	43                   	rex.XB
ffff8000001080d3:	4f                   	rex.WRXB
ffff8000001080d4:	44                   	rex.R
ffff8000001080d5:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b0ff <_end+0x38311627>
ffff8000001080dc:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001080dd:	78 2c                	js     ffff80000010810b <.LC2+0x13>
ffff8000001080df:	52                   	push   %rdx
ffff8000001080e0:	53                   	push   %rbx
ffff8000001080e1:	50                   	push   %rax
ffff8000001080e2:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b10b <_end+0x38311633>
ffff8000001080e8:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001080e9:	78 2c                	js     ffff800000108117 <.LC2+0x1f>
ffff8000001080eb:	52                   	push   %rdx
ffff8000001080ec:	49 50                	rex.WB push %r8
ffff8000001080ee:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b117 <_end+0x3831163f>
ffff8000001080f4:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001080f5:	78 0a                	js     ffff800000108101 <.LC2+0x9>
	...

ffff8000001080f8 <.LC2>:
ffff8000001080f8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001080fa:	5f                   	pop    %rdi
ffff8000001080fb:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001080fc:	6d                   	insl   (%dx),%es:(%rdi)
ffff8000001080fd:	69 28 32 29 2c 45    	imul   $0x452c2932,(%rax),%ebp
ffff800000108103:	52                   	push   %rdx
ffff800000108104:	52                   	push   %rdx
ffff800000108105:	4f 52                	rex.WRXB push %r10
ffff800000108107:	5f                   	pop    %rdi
ffff800000108108:	43                   	rex.XB
ffff800000108109:	4f                   	rex.WRXB
ffff80000010810a:	44                   	rex.R
ffff80000010810b:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b135 <_end+0x3831165d>
ffff800000108112:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108113:	78 2c                	js     ffff800000108141 <.LC3+0x11>
ffff800000108115:	52                   	push   %rdx
ffff800000108116:	53                   	push   %rbx
ffff800000108117:	50                   	push   %rax
ffff800000108118:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b141 <_end+0x38311669>
ffff80000010811e:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010811f:	78 2c                	js     ffff80000010814d <.LC3+0x1d>
ffff800000108121:	52                   	push   %rdx
ffff800000108122:	49 50                	rex.WB push %r8
ffff800000108124:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b14d <_end+0x38311675>
ffff80000010812a:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010812b:	78 0a                	js     ffff800000108137 <.LC3+0x7>
ffff80000010812d:	00 00                	add    %al,(%rax)
	...

ffff800000108130 <.LC3>:
ffff800000108130:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108132:	5f                   	pop    %rdi
ffff800000108133:	69 6e 74 33 28 33 29 	imul   $0x29332833,0x74(%rsi),%ebp
ffff80000010813a:	2c 45                	sub    $0x45,%al
ffff80000010813c:	52                   	push   %rdx
ffff80000010813d:	52                   	push   %rdx
ffff80000010813e:	4f 52                	rex.WRXB push %r10
ffff800000108140:	5f                   	pop    %rdi
ffff800000108141:	43                   	rex.XB
ffff800000108142:	4f                   	rex.WRXB
ffff800000108143:	44                   	rex.R
ffff800000108144:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b16e <_end+0x38311696>
ffff80000010814b:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010814c:	78 2c                	js     ffff80000010817a <.LC4+0x12>
ffff80000010814e:	52                   	push   %rdx
ffff80000010814f:	53                   	push   %rbx
ffff800000108150:	50                   	push   %rax
ffff800000108151:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b17a <_end+0x383116a2>
ffff800000108157:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108158:	78 2c                	js     ffff800000108186 <.LC4+0x1e>
ffff80000010815a:	52                   	push   %rdx
ffff80000010815b:	49 50                	rex.WB push %r8
ffff80000010815d:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b186 <_end+0x383116ae>
ffff800000108163:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108164:	78 0a                	js     ffff800000108170 <.LC4+0x8>
	...

ffff800000108168 <.LC4>:
ffff800000108168:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010816a:	5f                   	pop    %rdi
ffff80000010816b:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010816c:	76 65                	jbe    ffff8000001081d3 <.LC5+0x2b>
ffff80000010816e:	72 66                	jb     ffff8000001081d6 <.LC5+0x2e>
ffff800000108170:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108171:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108172:	77 28                	ja     ffff80000010819c <.LC4+0x34>
ffff800000108174:	34 29                	xor    $0x29,%al
ffff800000108176:	2c 45                	sub    $0x45,%al
ffff800000108178:	52                   	push   %rdx
ffff800000108179:	52                   	push   %rdx
ffff80000010817a:	4f 52                	rex.WRXB push %r10
ffff80000010817c:	5f                   	pop    %rdi
ffff80000010817d:	43                   	rex.XB
ffff80000010817e:	4f                   	rex.WRXB
ffff80000010817f:	44                   	rex.R
ffff800000108180:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b1aa <_end+0x383116d2>
ffff800000108187:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108188:	78 2c                	js     ffff8000001081b6 <.LC5+0xe>
ffff80000010818a:	52                   	push   %rdx
ffff80000010818b:	53                   	push   %rbx
ffff80000010818c:	50                   	push   %rax
ffff80000010818d:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b1b6 <_end+0x383116de>
ffff800000108193:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108194:	78 2c                	js     ffff8000001081c2 <.LC5+0x1a>
ffff800000108196:	52                   	push   %rdx
ffff800000108197:	49 50                	rex.WB push %r8
ffff800000108199:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b1c2 <_end+0x383116ea>
ffff80000010819f:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001081a0:	78 0a                	js     ffff8000001081ac <.LC5+0x4>
ffff8000001081a2:	00 00                	add    %al,(%rax)
ffff8000001081a4:	00 00                	add    %al,(%rax)
	...

ffff8000001081a8 <.LC5>:
ffff8000001081a8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001081aa:	5f                   	pop    %rdi
ffff8000001081ab:	62                   	(bad)  
ffff8000001081ac:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001081ad:	75 6e                	jne    ffff80000010821d <.LC6+0x35>
ffff8000001081af:	64 73 28             	fs jae ffff8000001081da <.LC5+0x32>
ffff8000001081b2:	35 29 2c 45 52       	xor    $0x52452c29,%eax
ffff8000001081b7:	52                   	push   %rdx
ffff8000001081b8:	4f 52                	rex.WRXB push %r10
ffff8000001081ba:	5f                   	pop    %rdi
ffff8000001081bb:	43                   	rex.XB
ffff8000001081bc:	4f                   	rex.WRXB
ffff8000001081bd:	44                   	rex.R
ffff8000001081be:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b1e8 <_end+0x38311710>
ffff8000001081c5:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001081c6:	78 2c                	js     ffff8000001081f4 <.LC6+0xc>
ffff8000001081c8:	52                   	push   %rdx
ffff8000001081c9:	53                   	push   %rbx
ffff8000001081ca:	50                   	push   %rax
ffff8000001081cb:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b1f4 <_end+0x3831171c>
ffff8000001081d1:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001081d2:	78 2c                	js     ffff800000108200 <.LC6+0x18>
ffff8000001081d4:	52                   	push   %rdx
ffff8000001081d5:	49 50                	rex.WB push %r8
ffff8000001081d7:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b200 <_end+0x38311728>
ffff8000001081dd:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001081de:	78 0a                	js     ffff8000001081ea <.LC6+0x2>
	...

ffff8000001081e8 <.LC6>:
ffff8000001081e8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001081ea:	5f                   	pop    %rdi
ffff8000001081eb:	75 6e                	jne    ffff80000010825b <.LC7+0x2b>
ffff8000001081ed:	64 65 66 69 6e 65 64 	fs imul $0x5f64,%gs:0x65(%rsi),%bp
ffff8000001081f4:	5f 
ffff8000001081f5:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001081f6:	70 63                	jo     ffff80000010825b <.LC7+0x2b>
ffff8000001081f8:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001081f9:	64 65 28 36          	fs sub %dh,%gs:(%rsi)
ffff8000001081fd:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000108204:	5f                   	pop    %rdi
ffff800000108205:	43                   	rex.XB
ffff800000108206:	4f                   	rex.WRXB
ffff800000108207:	44                   	rex.R
ffff800000108208:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b232 <_end+0x3831175a>
ffff80000010820f:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108210:	78 2c                	js     ffff80000010823e <.LC7+0xe>
ffff800000108212:	52                   	push   %rdx
ffff800000108213:	53                   	push   %rbx
ffff800000108214:	50                   	push   %rax
ffff800000108215:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b23e <_end+0x38311766>
ffff80000010821b:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010821c:	78 2c                	js     ffff80000010824a <.LC7+0x1a>
ffff80000010821e:	52                   	push   %rdx
ffff80000010821f:	49 50                	rex.WB push %r8
ffff800000108221:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b24a <_end+0x38311772>
ffff800000108227:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108228:	78 0a                	js     ffff800000108234 <.LC7+0x4>
ffff80000010822a:	00 00                	add    %al,(%rax)
ffff80000010822c:	00 00                	add    %al,(%rax)
	...

ffff800000108230 <.LC7>:
ffff800000108230:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108232:	5f                   	pop    %rdi
ffff800000108233:	64 65 76 5f          	fs gs jbe ffff800000108296 <.LC8+0x1e>
ffff800000108237:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108238:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108239:	74 5f                	je     ffff80000010829a <.LC8+0x22>
ffff80000010823b:	61                   	(bad)  
ffff80000010823c:	76 61                	jbe    ffff80000010829f <.LC8+0x27>
ffff80000010823e:	69 6c 61 62 6c 65 28 	imul   $0x3728656c,0x62(%rcx,%riz,2),%ebp
ffff800000108245:	37 
ffff800000108246:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff80000010824d:	5f                   	pop    %rdi
ffff80000010824e:	43                   	rex.XB
ffff80000010824f:	4f                   	rex.WRXB
ffff800000108250:	44                   	rex.R
ffff800000108251:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b27b <_end+0x383117a3>
ffff800000108258:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108259:	78 2c                	js     ffff800000108287 <.LC8+0xf>
ffff80000010825b:	52                   	push   %rdx
ffff80000010825c:	53                   	push   %rbx
ffff80000010825d:	50                   	push   %rax
ffff80000010825e:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b287 <_end+0x383117af>
ffff800000108264:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108265:	78 2c                	js     ffff800000108293 <.LC8+0x1b>
ffff800000108267:	52                   	push   %rdx
ffff800000108268:	49 50                	rex.WB push %r8
ffff80000010826a:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b293 <_end+0x383117bb>
ffff800000108270:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108271:	78 0a                	js     ffff80000010827d <.LC8+0x5>
ffff800000108273:	00 00                	add    %al,(%rax)
ffff800000108275:	00 00                	add    %al,(%rax)
	...

ffff800000108278 <.LC8>:
ffff800000108278:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010827a:	5f                   	pop    %rdi
ffff80000010827b:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010827d:	75 62                	jne    ffff8000001082e1 <.LC9+0x29>
ffff80000010827f:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108280:	65 5f                	gs pop %rdi
ffff800000108282:	66 61                	data16 (bad) 
ffff800000108284:	75 6c                	jne    ffff8000001082f2 <.LC9+0x3a>
ffff800000108286:	74 28                	je     ffff8000001082b0 <.LC8+0x38>
ffff800000108288:	38 29                	cmp    %ch,(%rcx)
ffff80000010828a:	2c 45                	sub    $0x45,%al
ffff80000010828c:	52                   	push   %rdx
ffff80000010828d:	52                   	push   %rdx
ffff80000010828e:	4f 52                	rex.WRXB push %r10
ffff800000108290:	5f                   	pop    %rdi
ffff800000108291:	43                   	rex.XB
ffff800000108292:	4f                   	rex.WRXB
ffff800000108293:	44                   	rex.R
ffff800000108294:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b2be <_end+0x383117e6>
ffff80000010829b:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010829c:	78 2c                	js     ffff8000001082ca <.LC9+0x12>
ffff80000010829e:	52                   	push   %rdx
ffff80000010829f:	53                   	push   %rbx
ffff8000001082a0:	50                   	push   %rax
ffff8000001082a1:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b2ca <_end+0x383117f2>
ffff8000001082a7:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001082a8:	78 2c                	js     ffff8000001082d6 <.LC9+0x1e>
ffff8000001082aa:	52                   	push   %rdx
ffff8000001082ab:	49 50                	rex.WB push %r8
ffff8000001082ad:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b2d6 <_end+0x383117fe>
ffff8000001082b3:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001082b4:	78 0a                	js     ffff8000001082c0 <.LC9+0x8>
	...

ffff8000001082b8 <.LC9>:
ffff8000001082b8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001082ba:	5f                   	pop    %rdi
ffff8000001082bb:	63 6f 70             	movslq 0x70(%rdi),%ebp
ffff8000001082be:	72 6f                	jb     ffff80000010832f <.LC10+0x27>
ffff8000001082c0:	63 65 73             	movslq 0x73(%rbp),%esp
ffff8000001082c3:	73 6f                	jae    ffff800000108334 <.LC10+0x2c>
ffff8000001082c5:	72 5f                	jb     ffff800000108326 <.LC10+0x1e>
ffff8000001082c7:	73 65                	jae    ffff80000010832e <.LC10+0x26>
ffff8000001082c9:	67 6d                	insl   (%dx),%es:(%edi)
ffff8000001082cb:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff8000001082cd:	74 5f                	je     ffff80000010832e <.LC10+0x26>
ffff8000001082cf:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001082d0:	76 65                	jbe    ffff800000108337 <.LC10+0x2f>
ffff8000001082d2:	72 72                	jb     ffff800000108346 <.LC10+0x3e>
ffff8000001082d4:	75 6e                	jne    ffff800000108344 <.LC10+0x3c>
ffff8000001082d6:	28 39                	sub    %bh,(%rcx)
ffff8000001082d8:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff8000001082df:	5f                   	pop    %rdi
ffff8000001082e0:	43                   	rex.XB
ffff8000001082e1:	4f                   	rex.WRXB
ffff8000001082e2:	44                   	rex.R
ffff8000001082e3:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b30d <_end+0x38311835>
ffff8000001082ea:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001082eb:	78 2c                	js     ffff800000108319 <.LC10+0x11>
ffff8000001082ed:	52                   	push   %rdx
ffff8000001082ee:	53                   	push   %rbx
ffff8000001082ef:	50                   	push   %rax
ffff8000001082f0:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b319 <_end+0x38311841>
ffff8000001082f6:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001082f7:	78 2c                	js     ffff800000108325 <.LC10+0x1d>
ffff8000001082f9:	52                   	push   %rdx
ffff8000001082fa:	49 50                	rex.WB push %r8
ffff8000001082fc:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b325 <_end+0x3831184d>
ffff800000108302:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108303:	78 0a                	js     ffff80000010830f <.LC10+0x7>
ffff800000108305:	00 00                	add    %al,(%rax)
	...

ffff800000108308 <.LC10>:
ffff800000108308:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010830a:	5f                   	pop    %rdi
ffff80000010830b:	69 6e 76 61 6c 69 64 	imul   $0x64696c61,0x76(%rsi),%ebp
ffff800000108312:	5f                   	pop    %rdi
ffff800000108313:	54                   	push   %rsp
ffff800000108314:	53                   	push   %rbx
ffff800000108315:	53                   	push   %rbx
ffff800000108316:	28 31                	sub    %dh,(%rcx)
ffff800000108318:	30 29                	xor    %ch,(%rcx)
ffff80000010831a:	2c 45                	sub    $0x45,%al
ffff80000010831c:	52                   	push   %rdx
ffff80000010831d:	52                   	push   %rdx
ffff80000010831e:	4f 52                	rex.WRXB push %r10
ffff800000108320:	5f                   	pop    %rdi
ffff800000108321:	43                   	rex.XB
ffff800000108322:	4f                   	rex.WRXB
ffff800000108323:	44                   	rex.R
ffff800000108324:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b34e <_end+0x38311876>
ffff80000010832b:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010832c:	78 2c                	js     ffff80000010835a <.LC11+0x12>
ffff80000010832e:	52                   	push   %rdx
ffff80000010832f:	53                   	push   %rbx
ffff800000108330:	50                   	push   %rax
ffff800000108331:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b35a <_end+0x38311882>
ffff800000108337:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108338:	78 2c                	js     ffff800000108366 <.LC11+0x1e>
ffff80000010833a:	52                   	push   %rdx
ffff80000010833b:	49 50                	rex.WB push %r8
ffff80000010833d:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b366 <_end+0x3831188e>
ffff800000108343:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108344:	78 0a                	js     ffff800000108350 <.LC11+0x8>
	...

ffff800000108348 <.LC11>:
ffff800000108348:	54                   	push   %rsp
ffff800000108349:	68 65 20 65 78       	pushq  $0x78652065
ffff80000010834e:	63 65 70             	movslq 0x70(%rbp),%esp
ffff800000108351:	74 69                	je     ffff8000001083bc <.LC11+0x74>
ffff800000108353:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108354:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108355:	20 6f 63             	and    %ch,0x63(%rdi)
ffff800000108358:	63 75 72             	movslq 0x72(%rbp),%esi
ffff80000010835b:	72 65                	jb     ffff8000001083c2 <.LC11+0x7a>
ffff80000010835d:	64 20 64 75 72       	and    %ah,%fs:0x72(%rbp,%rsi,2)
ffff800000108362:	69 6e 67 20 64 65 6c 	imul   $0x6c656420,0x67(%rsi),%ebp
ffff800000108369:	69 76 65 72 79 20 6f 	imul   $0x6f207972,0x65(%rsi),%esi
ffff800000108370:	66 20 61 6e          	data16 and %ah,0x6e(%rcx)
ffff800000108374:	20 65 76             	and    %ah,0x76(%rbp)
ffff800000108377:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000108379:	74 20                	je     ffff80000010839b <.LC11+0x53>
ffff80000010837b:	65 78 74             	gs js  ffff8000001083f2 <.LC12+0x2a>
ffff80000010837e:	65 72 6e             	gs jb  ffff8000001083ef <.LC12+0x27>
ffff800000108381:	61                   	(bad)  
ffff800000108382:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108383:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff800000108387:	74 68                	je     ffff8000001083f1 <.LC12+0x29>
ffff800000108389:	65 20 70 72          	and    %dh,%gs:0x72(%rax)
ffff80000010838d:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010838e:	67 72 61             	addr32 jb ffff8000001083f2 <.LC12+0x2a>
ffff800000108391:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108392:	2c 73                	sub    $0x73,%al
ffff800000108394:	75 63                	jne    ffff8000001083f9 <.LC13+0x1>
ffff800000108396:	68 20 61 73 20       	pushq  $0x20736120
ffff80000010839b:	61                   	(bad)  
ffff80000010839c:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff80000010839d:	20 69 6e             	and    %ch,0x6e(%rcx)
ffff8000001083a0:	74 65                	je     ffff800000108407 <.LC13+0xf>
ffff8000001083a2:	72 72                	jb     ffff800000108416 <.LC13+0x1e>
ffff8000001083a4:	75 70                	jne    ffff800000108416 <.LC13+0x1e>
ffff8000001083a6:	74 20                	je     ffff8000001083c8 <.LC12>
ffff8000001083a8:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001083a9:	72 20                	jb     ffff8000001083cb <.LC12+0x3>
ffff8000001083ab:	61                   	(bad)  
ffff8000001083ac:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001083ad:	20 65 61             	and    %ah,0x61(%rbp)
ffff8000001083b0:	72 6c                	jb     ffff80000010841e <.LC13+0x26>
ffff8000001083b2:	69 65 72 20 65 78 63 	imul   $0x63786520,0x72(%rbp),%esp
ffff8000001083b9:	65 70 74             	gs jo  ffff800000108430 <.LC14>
ffff8000001083bc:	69 6f 6e 2e 0a 00 00 	imul   $0xa2e,0x6e(%rdi),%ebp
ffff8000001083c3:	00 00                	add    %al,(%rax)
ffff8000001083c5:	00 00                	add    %al,(%rax)
	...

ffff8000001083c8 <.LC12>:
ffff8000001083c8:	52                   	push   %rdx
ffff8000001083c9:	65 66 65 72 73       	gs data16 gs jb ffff800000108441 <.LC14+0x11>
ffff8000001083ce:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff8000001083d2:	61                   	(bad)  
ffff8000001083d3:	20 67 61             	and    %ah,0x61(%rdi)
ffff8000001083d6:	74 65                	je     ffff80000010843d <.LC14+0xd>
ffff8000001083d8:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff8000001083dc:	63 72 69             	movslq 0x69(%rdx),%esi
ffff8000001083df:	70 74                	jo     ffff800000108455 <.LC14+0x25>
ffff8000001083e1:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001083e2:	72 20                	jb     ffff800000108404 <.LC13+0xc>
ffff8000001083e4:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff8000001083eb:	49                   	rex.WB
ffff8000001083ec:	44 54                	rex.R push %rsp
ffff8000001083ee:	3b 0a                	cmp    (%rdx),%ecx
	...

ffff8000001083f8 <.LC13>:
ffff8000001083f8:	52                   	push   %rdx
ffff8000001083f9:	65 66 65 72 73       	gs data16 gs jb ffff800000108471 <.LC15+0x9>
ffff8000001083fe:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff800000108402:	61                   	(bad)  
ffff800000108403:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff800000108407:	63 72 69             	movslq 0x69(%rdx),%esi
ffff80000010840a:	70 74                	jo     ffff800000108480 <.LC15+0x18>
ffff80000010840c:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010840d:	72 20                	jb     ffff80000010842f <.LC13+0x37>
ffff80000010840f:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff800000108416:	47                   	rex.RXB
ffff800000108417:	44 54                	rex.R push %rsp
ffff800000108419:	20 6f 72             	and    %ch,0x72(%rdi)
ffff80000010841c:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
ffff800000108420:	20 63 75             	and    %ah,0x75(%rbx)
ffff800000108423:	72 72                	jb     ffff800000108497 <.LC15+0x2f>
ffff800000108425:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000108427:	74 20                	je     ffff800000108449 <.LC14+0x19>
ffff800000108429:	4c                   	rex.WR
ffff80000010842a:	44 54                	rex.R push %rsp
ffff80000010842c:	3b 0a                	cmp    (%rdx),%ecx
	...

ffff800000108430 <.LC14>:
ffff800000108430:	52                   	push   %rdx
ffff800000108431:	65 66 65 72 73       	gs data16 gs jb ffff8000001084a9 <.LC16+0x11>
ffff800000108436:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff80000010843a:	61                   	(bad)  
ffff80000010843b:	20 73 65             	and    %dh,0x65(%rbx)
ffff80000010843e:	67 6d                	insl   (%dx),%es:(%edi)
ffff800000108440:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000108442:	74 20                	je     ffff800000108464 <.LC14+0x34>
ffff800000108444:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108445:	72 20                	jb     ffff800000108467 <.LC14+0x37>
ffff800000108447:	67 61                	addr32 (bad) 
ffff800000108449:	74 65                	je     ffff8000001084b0 <.LC16+0x18>
ffff80000010844b:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff80000010844f:	63 72 69             	movslq 0x69(%rdx),%esi
ffff800000108452:	70 74                	jo     ffff8000001084c8 <.LC17+0x10>
ffff800000108454:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108455:	72 20                	jb     ffff800000108477 <.LC15+0xf>
ffff800000108457:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff80000010845e:	4c                   	rex.WR
ffff80000010845f:	44 54                	rex.R push %rsp
ffff800000108461:	3b 0a                	cmp    (%rdx),%ecx
ffff800000108463:	00 00                	add    %al,(%rax)
ffff800000108465:	00 00                	add    %al,(%rax)
	...

ffff800000108468 <.LC15>:
ffff800000108468:	52                   	push   %rdx
ffff800000108469:	65 66 65 72 73       	gs data16 gs jb ffff8000001084e1 <.LC17+0x29>
ffff80000010846e:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff800000108472:	61                   	(bad)  
ffff800000108473:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff800000108477:	63 72 69             	movslq 0x69(%rdx),%esi
ffff80000010847a:	70 74                	jo     ffff8000001084f0 <.LC17+0x38>
ffff80000010847c:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010847d:	72 20                	jb     ffff80000010849f <.LC16+0x7>
ffff80000010847f:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff800000108486:	63 75 72             	movslq 0x72(%rbp),%esi
ffff800000108489:	72 65                	jb     ffff8000001084f0 <.LC17+0x38>
ffff80000010848b:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff80000010848c:	74 20                	je     ffff8000001084ae <.LC16+0x16>
ffff80000010848e:	47                   	rex.RXB
ffff80000010848f:	44 54                	rex.R push %rsp
ffff800000108491:	3b 0a                	cmp    (%rdx),%ecx
ffff800000108493:	00 00                	add    %al,(%rax)
ffff800000108495:	00 00                	add    %al,(%rax)
	...

ffff800000108498 <.LC16>:
ffff800000108498:	53                   	push   %rbx
ffff800000108499:	65 67 6d             	gs insl (%dx),%es:(%edi)
ffff80000010849c:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff80000010849e:	74 20                	je     ffff8000001084c0 <.LC17+0x8>
ffff8000001084a0:	53                   	push   %rbx
ffff8000001084a1:	65 6c                	gs insb (%dx),%es:(%rdi)
ffff8000001084a3:	65 63 74 6f 72       	movslq %gs:0x72(%rdi,%rbp,2),%esi
ffff8000001084a8:	20 49 6e             	and    %cl,0x6e(%rcx)
ffff8000001084ab:	64 65 78 3a          	fs gs js ffff8000001084e9 <.LC17+0x31>
ffff8000001084af:	25 23 30 31 30       	and    $0x30313023,%eax
ffff8000001084b4:	78 0a                	js     ffff8000001084c0 <.LC17+0x8>
	...

ffff8000001084b8 <.LC17>:
ffff8000001084b8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001084ba:	5f                   	pop    %rdi
ffff8000001084bb:	73 65                	jae    ffff800000108522 <.LC18+0x22>
ffff8000001084bd:	67 6d                	insl   (%dx),%es:(%edi)
ffff8000001084bf:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff8000001084c1:	74 5f                	je     ffff800000108522 <.LC18+0x22>
ffff8000001084c3:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001084c4:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001084c5:	74 5f                	je     ffff800000108526 <.LC18+0x26>
ffff8000001084c7:	70 72                	jo     ffff80000010853b <.LC18+0x3b>
ffff8000001084c9:	65 73 65             	gs jae ffff800000108531 <.LC18+0x31>
ffff8000001084cc:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001084cd:	74 28                	je     ffff8000001084f7 <.LC17+0x3f>
ffff8000001084cf:	31 31                	xor    %esi,(%rcx)
ffff8000001084d1:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff8000001084d8:	5f                   	pop    %rdi
ffff8000001084d9:	43                   	rex.XB
ffff8000001084da:	4f                   	rex.WRXB
ffff8000001084db:	44                   	rex.R
ffff8000001084dc:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b506 <_end+0x38311a2e>
ffff8000001084e3:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001084e4:	78 2c                	js     ffff800000108512 <.LC18+0x12>
ffff8000001084e6:	52                   	push   %rdx
ffff8000001084e7:	53                   	push   %rbx
ffff8000001084e8:	50                   	push   %rax
ffff8000001084e9:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b512 <_end+0x38311a3a>
ffff8000001084ef:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001084f0:	78 2c                	js     ffff80000010851e <.LC18+0x1e>
ffff8000001084f2:	52                   	push   %rdx
ffff8000001084f3:	49 50                	rex.WB push %r8
ffff8000001084f5:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b51e <_end+0x38311a46>
ffff8000001084fb:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001084fc:	78 0a                	js     ffff800000108508 <.LC18+0x8>
	...

ffff800000108500 <.LC18>:
ffff800000108500:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108502:	5f                   	pop    %rdi
ffff800000108503:	73 74                	jae    ffff800000108579 <.LC19+0x31>
ffff800000108505:	61                   	(bad)  
ffff800000108506:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
ffff800000108509:	73 65                	jae    ffff800000108570 <.LC19+0x28>
ffff80000010850b:	67 6d                	insl   (%dx),%es:(%edi)
ffff80000010850d:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff80000010850f:	74 5f                	je     ffff800000108570 <.LC19+0x28>
ffff800000108511:	66 61                	data16 (bad) 
ffff800000108513:	75 6c                	jne    ffff800000108581 <.LC19+0x39>
ffff800000108515:	74 28                	je     ffff80000010853f <.LC18+0x3f>
ffff800000108517:	31 32                	xor    %esi,(%rdx)
ffff800000108519:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000108520:	5f                   	pop    %rdi
ffff800000108521:	43                   	rex.XB
ffff800000108522:	4f                   	rex.WRXB
ffff800000108523:	44                   	rex.R
ffff800000108524:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b54e <_end+0x38311a76>
ffff80000010852b:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010852c:	78 2c                	js     ffff80000010855a <.LC19+0x12>
ffff80000010852e:	52                   	push   %rdx
ffff80000010852f:	53                   	push   %rbx
ffff800000108530:	50                   	push   %rax
ffff800000108531:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b55a <_end+0x38311a82>
ffff800000108537:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108538:	78 2c                	js     ffff800000108566 <.LC19+0x1e>
ffff80000010853a:	52                   	push   %rdx
ffff80000010853b:	49 50                	rex.WB push %r8
ffff80000010853d:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b566 <_end+0x38311a8e>
ffff800000108543:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108544:	78 0a                	js     ffff800000108550 <.LC19+0x8>
	...

ffff800000108548 <.LC19>:
ffff800000108548:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010854a:	5f                   	pop    %rdi
ffff80000010854b:	67 65 6e             	outsb  %gs:(%esi),(%dx)
ffff80000010854e:	65 72 61             	gs jb  ffff8000001085b2 <.LC20+0x22>
ffff800000108551:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108552:	5f                   	pop    %rdi
ffff800000108553:	70 72                	jo     ffff8000001085c7 <.LC20+0x37>
ffff800000108555:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108556:	74 65                	je     ffff8000001085bd <.LC20+0x2d>
ffff800000108558:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
ffff80000010855c:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff80000010855d:	28 31                	sub    %dh,(%rcx)
ffff80000010855f:	33 29                	xor    (%rcx),%ebp
ffff800000108561:	2c 45                	sub    $0x45,%al
ffff800000108563:	52                   	push   %rdx
ffff800000108564:	52                   	push   %rdx
ffff800000108565:	4f 52                	rex.WRXB push %r10
ffff800000108567:	5f                   	pop    %rdi
ffff800000108568:	43                   	rex.XB
ffff800000108569:	4f                   	rex.WRXB
ffff80000010856a:	44                   	rex.R
ffff80000010856b:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b595 <_end+0x38311abd>
ffff800000108572:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108573:	78 2c                	js     ffff8000001085a1 <.LC20+0x11>
ffff800000108575:	52                   	push   %rdx
ffff800000108576:	53                   	push   %rbx
ffff800000108577:	50                   	push   %rax
ffff800000108578:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b5a1 <_end+0x38311ac9>
ffff80000010857e:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010857f:	78 2c                	js     ffff8000001085ad <.LC20+0x1d>
ffff800000108581:	52                   	push   %rdx
ffff800000108582:	49 50                	rex.WB push %r8
ffff800000108584:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b5ad <_end+0x38311ad5>
ffff80000010858a:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010858b:	78 0a                	js     ffff800000108597 <.LC20+0x7>
ffff80000010858d:	00 00                	add    %al,(%rax)
	...

ffff800000108590 <.LC20>:
ffff800000108590:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108592:	5f                   	pop    %rdi
ffff800000108593:	70 61                	jo     ffff8000001085f6 <.LC23+0x1>
ffff800000108595:	67 65 5f             	addr32 gs pop %rdi
ffff800000108598:	66 61                	data16 (bad) 
ffff80000010859a:	75 6c                	jne    ffff800000108608 <.LC24>
ffff80000010859c:	74 28                	je     ffff8000001085c6 <.LC20+0x36>
ffff80000010859e:	31 34 29             	xor    %esi,(%rcx,%rbp,1)
ffff8000001085a1:	2c 45                	sub    $0x45,%al
ffff8000001085a3:	52                   	push   %rdx
ffff8000001085a4:	52                   	push   %rdx
ffff8000001085a5:	4f 52                	rex.WRXB push %r10
ffff8000001085a7:	5f                   	pop    %rdi
ffff8000001085a8:	43                   	rex.XB
ffff8000001085a9:	4f                   	rex.WRXB
ffff8000001085aa:	44                   	rex.R
ffff8000001085ab:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b5d5 <_end+0x38311afd>
ffff8000001085b2:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001085b3:	78 2c                	js     ffff8000001085e1 <.LC22>
ffff8000001085b5:	52                   	push   %rdx
ffff8000001085b6:	53                   	push   %rbx
ffff8000001085b7:	50                   	push   %rax
ffff8000001085b8:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b5e1 <_end+0x38311b09>
ffff8000001085be:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001085bf:	78 2c                	js     ffff8000001085ed <.LC22+0xc>
ffff8000001085c1:	52                   	push   %rdx
ffff8000001085c2:	49 50                	rex.WB push %r8
ffff8000001085c4:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b5ed <_end+0x38311b15>
ffff8000001085ca:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001085cb:	78 0a                	js     ffff8000001085d7 <.LC21+0x9>
	...

ffff8000001085ce <.LC21>:
ffff8000001085ce:	50                   	push   %rax
ffff8000001085cf:	61                   	(bad)  
ffff8000001085d0:	67 65 20 4e 6f       	and    %cl,%gs:0x6f(%esi)
ffff8000001085d5:	74 2d                	je     ffff800000108604 <.LC23+0xf>
ffff8000001085d7:	50                   	push   %rax
ffff8000001085d8:	72 65                	jb     ffff80000010863f <.LC26+0x9>
ffff8000001085da:	73 65                	jae    ffff800000108641 <.LC26+0xb>
ffff8000001085dc:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001085dd:	74 2c                	je     ffff80000010860b <.LC24+0x3>
ffff8000001085df:	09 00                	or     %eax,(%rax)

ffff8000001085e1 <.LC22>:
ffff8000001085e1:	57                   	push   %rdi
ffff8000001085e2:	72 69                	jb     ffff80000010864d <.LC26+0x17>
ffff8000001085e4:	74 65                	je     ffff80000010864b <.LC26+0x15>
ffff8000001085e6:	20 43 61             	and    %al,0x61(%rbx)
ffff8000001085e9:	75 73                	jne    ffff80000010865e <.LC27+0x6>
ffff8000001085eb:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff8000001085ef:	75 6c                	jne    ffff80000010865d <.LC27+0x5>
ffff8000001085f1:	74 2c                	je     ffff80000010861f <.LC25+0x5>
ffff8000001085f3:	09 00                	or     %eax,(%rax)

ffff8000001085f5 <.LC23>:
ffff8000001085f5:	52                   	push   %rdx
ffff8000001085f6:	65 61                	gs (bad) 
ffff8000001085f8:	64 20 43 61          	and    %al,%fs:0x61(%rbx)
ffff8000001085fc:	75 73                	jne    ffff800000108671 <.LC27+0x19>
ffff8000001085fe:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff800000108602:	75 6c                	jne    ffff800000108670 <.LC27+0x18>
ffff800000108604:	74 2c                	je     ffff800000108632 <.LC25+0x18>
ffff800000108606:	09 00                	or     %eax,(%rax)

ffff800000108608 <.LC24>:
ffff800000108608:	46 61                	rex.RX (bad) 
ffff80000010860a:	75 6c                	jne    ffff800000108678 <.LC28+0x1>
ffff80000010860c:	74 20                	je     ffff80000010862e <.LC25+0x14>
ffff80000010860e:	69 6e 20 75 73 65 72 	imul   $0x72657375,0x20(%rsi),%ebp
ffff800000108615:	28 33                	sub    %dh,(%rbx)
ffff800000108617:	29 09                	sub    %ecx,(%rcx)
	...

ffff80000010861a <.LC25>:
ffff80000010861a:	46 61                	rex.RX (bad) 
ffff80000010861c:	75 6c                	jne    ffff80000010868a <.LC30+0x2>
ffff80000010861e:	74 20                	je     ffff800000108640 <.LC26+0xa>
ffff800000108620:	69 6e 20 73 75 70 65 	imul   $0x65707573,0x20(%rsi),%ebp
ffff800000108627:	72 76                	jb     ffff80000010869f <.LC30+0x17>
ffff800000108629:	69 73 6f 72 28 30 2c 	imul   $0x2c302872,0x6f(%rbx),%esi
ffff800000108630:	31 2c 32             	xor    %ebp,(%rdx,%rsi,1)
ffff800000108633:	29 09                	sub    %ecx,(%rcx)
	...

ffff800000108636 <.LC26>:
ffff800000108636:	2c 52                	sub    $0x52,%al
ffff800000108638:	65 73 65             	gs jae ffff8000001086a0 <.LC30+0x18>
ffff80000010863b:	72 76                	jb     ffff8000001086b3 <.LC30+0x2b>
ffff80000010863d:	65 64 20 42 69       	gs and %al,%fs:0x69(%rdx)
ffff800000108642:	74 20                	je     ffff800000108664 <.LC27+0xc>
ffff800000108644:	43 61                	rex.XB (bad) 
ffff800000108646:	75 73                	jne    ffff8000001086bb <.LC30+0x33>
ffff800000108648:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff80000010864c:	75 6c                	jne    ffff8000001086ba <.LC30+0x32>
ffff80000010864e:	74 09                	je     ffff800000108659 <.LC27+0x1>
	...

ffff800000108658 <.LC27>:
ffff800000108658:	2c 49                	sub    $0x49,%al
ffff80000010865a:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff80000010865b:	73 74                	jae    ffff8000001086d1 <.LC31+0x1>
ffff80000010865d:	72 75                	jb     ffff8000001086d4 <.LC31+0x4>
ffff80000010865f:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
ffff800000108663:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108664:	20 66 65             	and    %ah,0x65(%rsi)
ffff800000108667:	74 63                	je     ffff8000001086cc <.LC30+0x44>
ffff800000108669:	68 20 43 61 75       	pushq  $0x75614320
ffff80000010866e:	73 65                	jae    ffff8000001086d5 <.LC31+0x5>
ffff800000108670:	20 46 61             	and    %al,0x61(%rsi)
ffff800000108673:	75 6c                	jne    ffff8000001086e1 <.LC31+0x11>
ffff800000108675:	74 00                	je     ffff800000108677 <.LC28>

ffff800000108677 <.LC28>:
ffff800000108677:	0a 00                	or     (%rax),%al

ffff800000108679 <.LC29>:
ffff800000108679:	43 52                	rex.XB push %r10
ffff80000010867b:	32 3a                	xor    (%rdx),%bh
ffff80000010867d:	25 23 30 31 38       	and    $0x38313023,%eax
ffff800000108682:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108683:	78 0a                	js     ffff80000010868f <.LC30+0x7>
ffff800000108685:	00 00                	add    %al,(%rax)
	...

ffff800000108688 <.LC30>:
ffff800000108688:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010868a:	5f                   	pop    %rdi
ffff80000010868b:	78 38                	js     ffff8000001086c5 <.LC30+0x3d>
ffff80000010868d:	37                   	(bad)  
ffff80000010868e:	5f                   	pop    %rdi
ffff80000010868f:	46 50                	rex.RX push %rax
ffff800000108691:	55                   	push   %rbp
ffff800000108692:	5f                   	pop    %rdi
ffff800000108693:	65 72 72             	gs jb  ffff800000108708 <.LC31+0x38>
ffff800000108696:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108697:	72 28                	jb     ffff8000001086c1 <.LC30+0x39>
ffff800000108699:	31 36                	xor    %esi,(%rsi)
ffff80000010869b:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff8000001086a2:	5f                   	pop    %rdi
ffff8000001086a3:	43                   	rex.XB
ffff8000001086a4:	4f                   	rex.WRXB
ffff8000001086a5:	44                   	rex.R
ffff8000001086a6:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b6d0 <_end+0x38311bf8>
ffff8000001086ad:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001086ae:	78 2c                	js     ffff8000001086dc <.LC31+0xc>
ffff8000001086b0:	52                   	push   %rdx
ffff8000001086b1:	53                   	push   %rbx
ffff8000001086b2:	50                   	push   %rax
ffff8000001086b3:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b6dc <_end+0x38311c04>
ffff8000001086b9:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001086ba:	78 2c                	js     ffff8000001086e8 <.LC31+0x18>
ffff8000001086bc:	52                   	push   %rdx
ffff8000001086bd:	49 50                	rex.WB push %r8
ffff8000001086bf:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b6e8 <_end+0x38311c10>
ffff8000001086c5:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001086c6:	78 0a                	js     ffff8000001086d2 <.LC31+0x2>
	...

ffff8000001086d0 <.LC31>:
ffff8000001086d0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001086d2:	5f                   	pop    %rdi
ffff8000001086d3:	61                   	(bad)  
ffff8000001086d4:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001086d5:	69 67 6e 6d 65 6e 74 	imul   $0x746e656d,0x6e(%rdi),%esp
ffff8000001086dc:	5f                   	pop    %rdi
ffff8000001086dd:	63 68 65             	movslq 0x65(%rax),%ebp
ffff8000001086e0:	63 6b 28             	movslq 0x28(%rbx),%ebp
ffff8000001086e3:	31 37                	xor    %esi,(%rdi)
ffff8000001086e5:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff8000001086ec:	5f                   	pop    %rdi
ffff8000001086ed:	43                   	rex.XB
ffff8000001086ee:	4f                   	rex.WRXB
ffff8000001086ef:	44                   	rex.R
ffff8000001086f0:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b71a <_end+0x38311c42>
ffff8000001086f7:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001086f8:	78 2c                	js     ffff800000108726 <.LC32+0xe>
ffff8000001086fa:	52                   	push   %rdx
ffff8000001086fb:	53                   	push   %rbx
ffff8000001086fc:	50                   	push   %rax
ffff8000001086fd:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b726 <_end+0x38311c4e>
ffff800000108703:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108704:	78 2c                	js     ffff800000108732 <.LC32+0x1a>
ffff800000108706:	52                   	push   %rdx
ffff800000108707:	49 50                	rex.WB push %r8
ffff800000108709:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b732 <_end+0x38311c5a>
ffff80000010870f:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108710:	78 0a                	js     ffff80000010871c <.LC32+0x4>
ffff800000108712:	00 00                	add    %al,(%rax)
ffff800000108714:	00 00                	add    %al,(%rax)
	...

ffff800000108718 <.LC32>:
ffff800000108718:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010871a:	5f                   	pop    %rdi
ffff80000010871b:	6d                   	insl   (%dx),%es:(%rdi)
ffff80000010871c:	61                   	(bad)  
ffff80000010871d:	63 68 69             	movslq 0x69(%rax),%ebp
ffff800000108720:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108721:	65 5f                	gs pop %rdi
ffff800000108723:	63 68 65             	movslq 0x65(%rax),%ebp
ffff800000108726:	63 6b 28             	movslq 0x28(%rbx),%ebp
ffff800000108729:	31 38                	xor    %edi,(%rax)
ffff80000010872b:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000108732:	5f                   	pop    %rdi
ffff800000108733:	43                   	rex.XB
ffff800000108734:	4f                   	rex.WRXB
ffff800000108735:	44                   	rex.R
ffff800000108736:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b760 <_end+0x38311c88>
ffff80000010873d:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010873e:	78 2c                	js     ffff80000010876c <.LC33+0xc>
ffff800000108740:	52                   	push   %rdx
ffff800000108741:	53                   	push   %rbx
ffff800000108742:	50                   	push   %rax
ffff800000108743:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b76c <_end+0x38311c94>
ffff800000108749:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010874a:	78 2c                	js     ffff800000108778 <.LC33+0x18>
ffff80000010874c:	52                   	push   %rdx
ffff80000010874d:	49 50                	rex.WB push %r8
ffff80000010874f:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b778 <_end+0x38311ca0>
ffff800000108755:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108756:	78 0a                	js     ffff800000108762 <.LC33+0x2>
	...

ffff800000108760 <.LC33>:
ffff800000108760:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108762:	5f                   	pop    %rdi
ffff800000108763:	53                   	push   %rbx
ffff800000108764:	49                   	rex.WB
ffff800000108765:	4d                   	rex.WRB
ffff800000108766:	44 5f                	rex.R pop %rdi
ffff800000108768:	65 78 63             	gs js  ffff8000001087ce <.LC34+0x26>
ffff80000010876b:	65 70 74             	gs jo  ffff8000001087e2 <.LC34+0x3a>
ffff80000010876e:	69 6f 6e 28 31 39 29 	imul   $0x29393128,0x6e(%rdi),%ebp
ffff800000108775:	2c 45                	sub    $0x45,%al
ffff800000108777:	52                   	push   %rdx
ffff800000108778:	52                   	push   %rdx
ffff800000108779:	4f 52                	rex.WRXB push %r10
ffff80000010877b:	5f                   	pop    %rdi
ffff80000010877c:	43                   	rex.XB
ffff80000010877d:	4f                   	rex.WRXB
ffff80000010877e:	44                   	rex.R
ffff80000010877f:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b7a9 <_end+0x38311cd1>
ffff800000108786:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108787:	78 2c                	js     ffff8000001087b5 <.LC34+0xd>
ffff800000108789:	52                   	push   %rdx
ffff80000010878a:	53                   	push   %rbx
ffff80000010878b:	50                   	push   %rax
ffff80000010878c:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b7b5 <_end+0x38311cdd>
ffff800000108792:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108793:	78 2c                	js     ffff8000001087c1 <.LC34+0x19>
ffff800000108795:	52                   	push   %rdx
ffff800000108796:	49 50                	rex.WB push %r8
ffff800000108798:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b7c1 <_end+0x38311ce9>
ffff80000010879e:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010879f:	78 0a                	js     ffff8000001087ab <.LC34+0x3>
ffff8000001087a1:	00 00                	add    %al,(%rax)
ffff8000001087a3:	00 00                	add    %al,(%rax)
ffff8000001087a5:	00 00                	add    %al,(%rax)
	...

ffff8000001087a8 <.LC34>:
ffff8000001087a8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001087aa:	5f                   	pop    %rdi
ffff8000001087ab:	76 69                	jbe    ffff800000108816 <.LC0+0x1e>
ffff8000001087ad:	72 74                	jb     ffff800000108823 <.LC1+0xb>
ffff8000001087af:	75 61                	jne    ffff800000108812 <.LC0+0x1a>
ffff8000001087b1:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001087b2:	69 7a 61 74 69 6f 6e 	imul   $0x6e6f6974,0x61(%rdx),%edi
ffff8000001087b9:	5f                   	pop    %rdi
ffff8000001087ba:	65 78 63             	gs js  ffff800000108820 <.LC1+0x8>
ffff8000001087bd:	65 70 74             	gs jo  ffff800000108834 <.LC2+0x8>
ffff8000001087c0:	69 6f 6e 28 32 30 29 	imul   $0x29303228,0x6e(%rdi),%ebp
ffff8000001087c7:	2c 45                	sub    $0x45,%al
ffff8000001087c9:	52                   	push   %rdx
ffff8000001087ca:	52                   	push   %rdx
ffff8000001087cb:	4f 52                	rex.WRXB push %r10
ffff8000001087cd:	5f                   	pop    %rdi
ffff8000001087ce:	43                   	rex.XB
ffff8000001087cf:	4f                   	rex.WRXB
ffff8000001087d0:	44                   	rex.R
ffff8000001087d1:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841b7fb <_end+0x38311d23>
ffff8000001087d8:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001087d9:	78 2c                	js     ffff800000108807 <.LC0+0xf>
ffff8000001087db:	52                   	push   %rdx
ffff8000001087dc:	53                   	push   %rbx
ffff8000001087dd:	50                   	push   %rax
ffff8000001087de:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b807 <_end+0x38311d2f>
ffff8000001087e4:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001087e5:	78 2c                	js     ffff800000108813 <.LC0+0x1b>
ffff8000001087e7:	52                   	push   %rdx
ffff8000001087e8:	49 50                	rex.WB push %r8
ffff8000001087ea:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841b813 <_end+0x38311d3b>
ffff8000001087f0:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001087f1:	78 0a                	js     ffff8000001087fd <.LC0+0x5>
ffff8000001087f3:	00 00                	add    %al,(%rax)
ffff8000001087f5:	00 00                	add    %al,(%rax)
	...

ffff8000001087f8 <.LC0>:
ffff8000001087f8:	4d                   	rex.WRB
ffff8000001087f9:	65 6d                	gs insl (%dx),%es:(%rdi)
ffff8000001087fb:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001087fc:	72 79                	jb     ffff800000108877 <.LC1+0x1f>
ffff8000001087fe:	3a 20                	cmp    (%rax),%ah
ffff800000108800:	25 6c 78 09 20       	and    $0x2009786c,%eax
ffff800000108805:	2d 20 25 6c 78       	sub    $0x786c2520,%eax
ffff80000010880a:	09 2c 20             	or     %ebp,(%rax,%riz,1)
ffff80000010880d:	74 79                	je     ffff800000108888 <.LC2>
ffff80000010880f:	70 65                	jo     ffff800000108876 <.LC1+0x1e>
ffff800000108811:	20 3d 20 25 64 0a    	and    %bh,0xa642520(%rip)        # ffff80000a74ad37 <_end+0xa64125f>
	...

ffff800000108818 <.LC1>:
ffff800000108818:	54                   	push   %rsp
ffff800000108819:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010881a:	74 61                	je     ffff80000010887d <.LC1+0x25>
ffff80000010881c:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010881d:	20 6d 65             	and    %ch,0x65(%rbp)
ffff800000108820:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108821:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108822:	72 79                	jb     ffff80000010889d <.LC2+0x15>
ffff800000108824:	3a 20                	cmp    (%rax),%ah
ffff800000108826:	25 64 4d 42 0a       	and    $0xa424d64,%eax
	...

ffff80000010882c <.LC2>:
ffff80000010882c:	46 72 65             	rex.RX jb ffff800000108894 <.LC2+0xc>
ffff80000010882f:	65 20 6d 65          	and    %ch,%gs:0x65(%rbp)
ffff800000108833:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108834:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108835:	72 79                	jb     ffff8000001088b0 <.LC2+0x28>
ffff800000108837:	20 72 61             	and    %dh,0x61(%rdx)
ffff80000010883a:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff80000010883b:	67 65 3a 20          	cmp    %gs:(%eax),%ah
ffff80000010883f:	25 6c 78 20 2d       	and    $0x2d20786c,%eax
ffff800000108844:	20 25 6c 78 0a 00    	and    %ah,0xa786c(%rip)        # ffff8000001b00b6 <_end+0xa65de>

ffff80000010884a <.LC3>:
ffff80000010884a:	6b 66 72 65          	imul   $0x65,0x72(%rsi),%esp
ffff80000010884e:	65 00              	add    %al,%gs:(%rax)

ffff800000108850 <.LC0>:
	...

ffff800000108858 <.LC1>:
ffff800000108858:	4e                   	rex.WRX
ffff800000108859:	65 77 20             	gs ja  ffff80000010887c <.LC1+0x24>
ffff80000010885c:	61                   	(bad)  
ffff80000010885d:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010885e:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010885f:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108860:	63 61 74             	movslq 0x74(%rcx),%esp
ffff800000108863:	65 20 6d 65          	and    %ch,%gs:0x65(%rbp)
ffff800000108867:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108868:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108869:	72 79                	jb     ffff8000001088e4 <GDT64_Table+0x2c>
ffff80000010886b:	20 62 65             	and    %ah,0x65(%rdx)
ffff80000010886e:	67 69 6e 20 61 74 3a 	imul   $0x203a7461,0x20(%esi),%ebp
ffff800000108875:	20 
ffff800000108876:	25 70 2c 20 73       	and    $0x73202c70,%eax
ffff80000010887b:	69 7a 65 3a 20 25 64 	imul   $0x6425203a,0x65(%rdx),%edi
ffff800000108882:	0a 00                	or     (%rax),%al
ffff800000108884:	00 00                	add    %al,(%rax)
	...

ffff800000108888 <.LC2>:
ffff800000108888:	54                   	push   %rsp
ffff800000108889:	68 65 20 6e 65       	pushq  $0x656e2065
ffff80000010888e:	77 20                	ja     ffff8000001088b0 <.LC2+0x28>
ffff800000108890:	66 72 65             	data16 jb ffff8000001088f8 <GDT64_Table+0x40>
ffff800000108893:	65 20 6d 65          	and    %ch,%gs:0x65(%rbp)
ffff800000108897:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108898:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108899:	72 79                	jb     ffff800000108914 <GDT64_Table+0x5c>
ffff80000010889b:	20 62 65             	and    %ah,0x65(%rdx)
ffff80000010889e:	67 69 6e 20 61 74 3a 	imul   $0x203a7461,0x20(%esi),%ebp
ffff8000001088a5:	20 
ffff8000001088a6:	25 70 2c 20 73       	and    $0x73202c70,%eax
ffff8000001088ab:	69 7a 65 3a 20 25 64 	imul   $0x6425203a,0x65(%rdx),%edi
ffff8000001088b2:	0a 00                	or     (%rax),%al

Disassembly of section .data:

ffff8000001088b8 <GDT64_Table>:
	...
ffff8000001088c4:	00 98 20 00 00 00    	add    %bl,0x20(%rax)
ffff8000001088ca:	00 00                	add    %al,(%rax)
ffff8000001088cc:	00 92 00 00 00 00    	add    %dl,0x0(%rdx)
ffff8000001088d2:	00 00                	add    %al,(%rax)
ffff8000001088d4:	00 f8                	add    %bh,%al
ffff8000001088d6:	20 00                	and    %al,(%rax)
ffff8000001088d8:	00 00                	add    %al,(%rax)
ffff8000001088da:	00 00                	add    %al,(%rax)
ffff8000001088dc:	00 f2                	add    %dh,%dl
ffff8000001088de:	00 00                	add    %al,(%rax)
ffff8000001088e0:	ff                   	(bad)  
ffff8000001088e1:	ff 00                	incl   (%rax)
ffff8000001088e3:	00 00                	add    %al,(%rax)
ffff8000001088e5:	9a                   	(bad)  
ffff8000001088e6:	cf                   	iret   
ffff8000001088e7:	00 ff                	add    %bh,%bh
ffff8000001088e9:	ff 00                	incl   (%rax)
ffff8000001088eb:	00 00                	add    %al,(%rax)
ffff8000001088ed:	92                   	xchg   %eax,%edx
ffff8000001088ee:	cf                   	iret   
	...

ffff800000108940 <GDT6464_LIMIT>:
ffff800000108940:	87 00                	xchg   %eax,(%rax)

ffff800000108942 <GDT64_BASE>:
ffff800000108942:	b8 88 10 00 00       	mov    $0x1088,%eax
ffff800000108947:	80 ff ff             	cmp    $0xff,%bh

ffff80000010894a <IDT64_Table>:
	...

ffff80000010994a <IDT64_END>:
ffff80000010994a:	ff 0f                	decl   (%rdi)

ffff80000010994c <IDT64_BASE>:
ffff80000010994c:	4a 89 10             	rex.WX mov %rdx,(%rax)
ffff80000010994f:	00 00                	add    %al,(%rax)
ffff800000109951:	80 ff ff             	cmp    $0xff,%bh

ffff800000109954 <TSS64_Table>:
	...

Disassembly of section .got:

ffff8000001099c0 <.got>:
ffff8000001099c0:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001099c1:	40 10 00             	adc    %al,(%rax)
ffff8000001099c4:	00 80 ff ff 58 41    	add    %al,0x4158ffff(%rax)
ffff8000001099ca:	10 00                	adc    %al,(%rax)
ffff8000001099cc:	00 80 ff ff b5 40    	add    %al,0x40b5ffff(%rax)
ffff8000001099d2:	10 00                	adc    %al,(%rax)
ffff8000001099d4:	00 80 ff ff 7c 40    	add    %al,0x407cffff(%rax)
ffff8000001099da:	10 00                	adc    %al,(%rax)
ffff8000001099dc:	00 80 ff ff c8 40    	add    %al,0x40c8ffff(%rax)
ffff8000001099e2:	10 00                	adc    %al,(%rax)
ffff8000001099e4:	00 80 ff ff 25 41    	add    %al,0x4125ffff(%rax)
ffff8000001099ea:	10 00                	adc    %al,(%rax)
ffff8000001099ec:	00 80 ff ff 4a 89    	add    %al,-0x76b50001(%rax)
ffff8000001099f2:	10 00                	adc    %al,(%rax)
ffff8000001099f4:	00 80 ff ff 36 41    	add    %al,0x4136ffff(%rax)
ffff8000001099fa:	10 00                	adc    %al,(%rax)
ffff8000001099fc:	00 80 ff ff 47 41    	add    %al,0x4147ffff(%rax)
ffff800000109a02:	10 00                	adc    %al,(%rax)
ffff800000109a04:	00 80 ff ff d0 9a    	add    %al,-0x652f0001(%rax)
ffff800000109a0a:	10 00                	adc    %al,(%rax)
ffff800000109a0c:	00 80 ff ff db 40    	add    %al,0x40dbffff(%rax)
ffff800000109a12:	10 00                	adc    %al,(%rax)
ffff800000109a14:	00 80 ff ff 54 99    	add    %al,-0x66ab0001(%rax)
ffff800000109a1a:	10 00                	adc    %al,(%rax)
ffff800000109a1c:	00 80 ff ff 8d 41    	add    %al,0x418dffff(%rax)
ffff800000109a22:	10 00                	adc    %al,(%rax)
ffff800000109a24:	00 80 ff ff 7a 41    	add    %al,0x417affff(%rax)
ffff800000109a2a:	10 00                	adc    %al,(%rax)
ffff800000109a2c:	00 80 ff ff 01 41    	add    %al,0x4101ffff(%rax)
ffff800000109a32:	10 00                	adc    %al,(%rax)
ffff800000109a34:	00 80 ff ff b8 88    	add    %al,-0x77470001(%rax)
ffff800000109a3a:	10 00                	adc    %al,(%rax)
ffff800000109a3c:	00 80 ff ff c4 41    	add    %al,0x41c4ffff(%rax)
ffff800000109a42:	10 00                	adc    %al,(%rax)
ffff800000109a44:	00 80 ff ff 12 41    	add    %al,0x4112ffff(%rax)
ffff800000109a4a:	10 00                	adc    %al,(%rax)
ffff800000109a4c:	00 80 ff ff 69 41    	add    %al,0x4169ffff(%rax)
ffff800000109a52:	10 00                	adc    %al,(%rax)
ffff800000109a54:	00 80 ff ff d8 9a    	add    %al,-0x65270001(%rax)
ffff800000109a5a:	10 00                	adc    %al,(%rax)
ffff800000109a5c:	00 80 ff ff 9e 41    	add    %al,0x419effff(%rax)
ffff800000109a62:	10 00                	adc    %al,(%rax)
ffff800000109a64:	00 80 ff ff b1 41    	add    %al,0x41b1ffff(%rax)
ffff800000109a6a:	10 00                	adc    %al,(%rax)
ffff800000109a6c:	00 80 ff ff 8f 40    	add    %al,0x408fffff(%rax)
ffff800000109a72:	10 00                	adc    %al,(%rax)
ffff800000109a74:	00 80 ff ff ee 40    	add    %al,0x40eeffff(%rax)
ffff800000109a7a:	10 00                	adc    %al,(%rax)
ffff800000109a7c:	00 80 ff ff a2 40    	add    %al,0x40a2ffff(%rax)
ffff800000109a82:	10 00                	adc    %al,(%rax)
ffff800000109a84:	00                   	.byte 0x0
ffff800000109a85:	80 ff ff             	cmp    $0xff,%bh

Disassembly of section .got.plt:

ffff800000109a88 <_GLOBAL_OFFSET_TABLE_>:
	...

Disassembly of section .bss:

ffff800000109aa0 <pos>:
	...

ffff800000109aa8 <free>:
	...

ffff800000109ab0 <total>:
	...

ffff800000109ab8 <kmem>:
	...

ffff800000109ac0 <heap_start>:
	...

ffff800000109ac8 <hmem>:
	...

ffff800000109ad0 <cache_chain>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <ES>
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
