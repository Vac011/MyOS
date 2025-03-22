
kernel:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 e8 6f 00 00 	lgdt   0x6fe8(%rip)        # ffff800000107000 <GDT6464_LIMIT>
ffff800000100018:	0f 01 1d eb 7f 00 00 	lidt   0x7feb(%rip)        # ffff80000010800a <IDT64_END>
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
ffff80000010406f:	48 8d 05 c9 13 00 00 	lea    0x13c9(%rip),%rax        # ffff80000010543f <do_divide_error>
ffff800000104076:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010407a:	eb 84                	jmp    ffff800000104000 <enter_exception>

ffff80000010407c <debug>:
ffff80000010407c:	6a 00                	pushq  $0x0
ffff80000010407e:	50                   	push   %rax
ffff80000010407f:	48 8d 05 37 14 00 00 	lea    0x1437(%rip),%rax        # ffff8000001054bd <do_debug>
ffff800000104086:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010408a:	e9 71 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010408f <nmi>:
ffff80000010408f:	6a 00                	pushq  $0x0
ffff800000104091:	50                   	push   %rax
ffff800000104092:	48 8d 05 a2 14 00 00 	lea    0x14a2(%rip),%rax        # ffff80000010553b <do_nmi>
ffff800000104099:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010409d:	e9 5e ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040a2 <int3>:
ffff8000001040a2:	6a 00                	pushq  $0x0
ffff8000001040a4:	50                   	push   %rax
ffff8000001040a5:	48 8d 05 0d 15 00 00 	lea    0x150d(%rip),%rax        # ffff8000001055b9 <do_int3>
ffff8000001040ac:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040b0:	e9 4b ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040b5 <overflow>:
ffff8000001040b5:	6a 00                	pushq  $0x0
ffff8000001040b7:	50                   	push   %rax
ffff8000001040b8:	48 8d 05 78 15 00 00 	lea    0x1578(%rip),%rax        # ffff800000105637 <do_overflow>
ffff8000001040bf:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040c3:	e9 38 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040c8 <bounds>:
ffff8000001040c8:	6a 00                	pushq  $0x0
ffff8000001040ca:	50                   	push   %rax
ffff8000001040cb:	48 8d 05 e3 15 00 00 	lea    0x15e3(%rip),%rax        # ffff8000001056b5 <do_bounds>
ffff8000001040d2:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040d6:	e9 25 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040db <undefined_opcode>:
ffff8000001040db:	6a 00                	pushq  $0x0
ffff8000001040dd:	50                   	push   %rax
ffff8000001040de:	48 8d 05 4e 16 00 00 	lea    0x164e(%rip),%rax        # ffff800000105733 <do_undefined_opcode>
ffff8000001040e5:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040e9:	e9 12 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040ee <dev_not_available>:
ffff8000001040ee:	6a 00                	pushq  $0x0
ffff8000001040f0:	50                   	push   %rax
ffff8000001040f1:	48 8d 05 b9 16 00 00 	lea    0x16b9(%rip),%rax        # ffff8000001057b1 <do_dev_not_available>
ffff8000001040f8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040fc:	e9 ff fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104101 <double_fault>:
ffff800000104101:	50                   	push   %rax
ffff800000104102:	48 8d 05 26 17 00 00 	lea    0x1726(%rip),%rax        # ffff80000010582f <do_double_fault>
ffff800000104109:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010410d:	e9 ee fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104112 <coprocessor_segment_overrun>:
ffff800000104112:	6a 00                	pushq  $0x0
ffff800000104114:	50                   	push   %rax
ffff800000104115:	48 8d 05 91 17 00 00 	lea    0x1791(%rip),%rax        # ffff8000001058ad <do_coprocessor_segment_overrun>
ffff80000010411c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104120:	e9 db fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104125 <invalid_TSS>:
ffff800000104125:	50                   	push   %rax
ffff800000104126:	48 8d 05 fe 17 00 00 	lea    0x17fe(%rip),%rax        # ffff80000010592b <do_invalid_TSS>
ffff80000010412d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104131:	e9 ca fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104136 <segment_not_present>:
ffff800000104136:	50                   	push   %rax
ffff800000104137:	48 8d 05 8a 19 00 00 	lea    0x198a(%rip),%rax        # ffff800000105ac8 <do_segment_not_present>
ffff80000010413e:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104142:	e9 b9 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104147 <stack_segment_fault>:
ffff800000104147:	50                   	push   %rax
ffff800000104148:	48 8d 05 16 1b 00 00 	lea    0x1b16(%rip),%rax        # ffff800000105c65 <do_stack_segment_fault>
ffff80000010414f:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104153:	e9 a8 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104158 <general_protection>:
ffff800000104158:	50                   	push   %rax
ffff800000104159:	48 8d 05 a2 1c 00 00 	lea    0x1ca2(%rip),%rax        # ffff800000105e02 <do_general_protection>
ffff800000104160:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104164:	e9 97 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104169 <page_fault>:
ffff800000104169:	50                   	push   %rax
ffff80000010416a:	48 8d 05 2e 1e 00 00 	lea    0x1e2e(%rip),%rax        # ffff800000105f9f <do_page_fault>
ffff800000104171:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104175:	e9 86 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010417a <x87_FPU_error>:
ffff80000010417a:	6a 00                	pushq  $0x0
ffff80000010417c:	50                   	push   %rax
ffff80000010417d:	48 8d 05 3d 20 00 00 	lea    0x203d(%rip),%rax        # ffff8000001061c1 <do_x87_FPU_error>
ffff800000104184:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104188:	e9 73 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010418d <alignment_check>:
ffff80000010418d:	50                   	push   %rax
ffff80000010418e:	48 8d 05 aa 20 00 00 	lea    0x20aa(%rip),%rax        # ffff80000010623f <do_alignment_check>
ffff800000104195:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104199:	e9 62 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010419e <machine_check>:
ffff80000010419e:	6a 00                	pushq  $0x0
ffff8000001041a0:	50                   	push   %rax
ffff8000001041a1:	48 8d 05 15 21 00 00 	lea    0x2115(%rip),%rax        # ffff8000001062bd <do_machine_check>
ffff8000001041a8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041ac:	e9 4f fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001041b1 <SIMD_exception>:
ffff8000001041b1:	6a 00                	pushq  $0x0
ffff8000001041b3:	50                   	push   %rax
ffff8000001041b4:	48 8d 05 80 21 00 00 	lea    0x2180(%rip),%rax        # ffff80000010633b <do_SIMD_exception>
ffff8000001041bb:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041bf:	e9 3c fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001041c4 <virtualization_exception>:
ffff8000001041c4:	6a 00                	pushq  $0x0
ffff8000001041c6:	50                   	push   %rax
ffff8000001041c7:	48 8d 05 eb 21 00 00 	lea    0x21eb(%rip),%rax        # ffff8000001063b9 <do_virtualization_exception>
ffff8000001041ce:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041d2:	e9 29 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001041d7 <main>:
ffff8000001041d7:	f3 0f 1e fa          	endbr64 
ffff8000001041db:	55                   	push   %rbp
ffff8000001041dc:	48 89 e5             	mov    %rsp,%rbp
ffff8000001041df:	41 57                	push   %r15
ffff8000001041e1:	53                   	push   %rbx
ffff8000001041e2:	48 83 ec 10          	sub    $0x10,%rsp
ffff8000001041e6:	f3 0f 1e fa          	endbr64 
ffff8000001041ea:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001041e6 <main+0xf>
ffff8000001041f1:	49 bb 52 3f 00 00 00 	movabs $0x3f52,%r11
ffff8000001041f8:	00 00 00 
ffff8000001041fb:	4c 01 db             	add    %r11,%rbx
ffff8000001041fe:	be 08 00 00 00       	mov    $0x8,%esi
ffff800000104203:	48 bf 00 7c 00 00 00 	movabs $0xffff800000007c00,%rdi
ffff80000010420a:	80 ff ff 
ffff80000010420d:	49 89 df             	mov    %rbx,%r15
ffff800000104210:	48 b8 db c8 ff ff ff 	movabs $0xffffffffffffc8db,%rax
ffff800000104217:	ff ff ff 
ffff80000010421a:	48 01 d8             	add    %rbx,%rax
ffff80000010421d:	ff d0                	callq  *%rax
ffff80000010421f:	49 89 df             	mov    %rbx,%r15
ffff800000104222:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104227:	48 ba ec ca ff ff ff 	movabs $0xffffffffffffcaec,%rdx
ffff80000010422e:	ff ff ff 
ffff800000104231:	48 01 da             	add    %rbx,%rdx
ffff800000104234:	ff d2                	callq  *%rdx
ffff800000104236:	b8 01 00 00 00       	mov    $0x1,%eax
ffff80000010423b:	b9 00 00 00 00       	mov    $0x0,%ecx
ffff800000104240:	99                   	cltd   
ffff800000104241:	f7 f9                	idiv   %ecx
ffff800000104243:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104246:	eb fe                	jmp    ffff800000104246 <main+0x6f>

ffff800000104248 <itoa>:
ffff800000104248:	f3 0f 1e fa          	endbr64 
ffff80000010424c:	55                   	push   %rbp
ffff80000010424d:	48 89 e5             	mov    %rsp,%rbp
ffff800000104250:	f3 0f 1e fa          	endbr64 
ffff800000104254:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000104250 <itoa+0x8>
ffff80000010425b:	49 bb e8 3e 00 00 00 	movabs $0x3ee8,%r11
ffff800000104262:	00 00 00 
ffff800000104265:	4c 01 d8             	add    %r11,%rax
ffff800000104268:	89 7d bc             	mov    %edi,-0x44(%rbp)
ffff80000010426b:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
ffff80000010426f:	89 55 b8             	mov    %edx,-0x48(%rbp)
ffff800000104272:	48 b8 30 31 32 33 34 	movabs $0x3736353433323130,%rax
ffff800000104279:	35 36 37 
ffff80000010427c:	48 ba 38 39 41 42 43 	movabs $0x4645444342413938,%rdx
ffff800000104283:	44 45 46 
ffff800000104286:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010428a:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010428e:	c6 45 f0 00          	movb   $0x0,-0x10(%rbp)
ffff800000104292:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104299:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001042a0:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
ffff8000001042a4:	79 0d                	jns    ffff8000001042b3 <itoa+0x6b>
ffff8000001042a6:	83 7d b8 0a          	cmpl   $0xa,-0x48(%rbp)
ffff8000001042aa:	75 07                	jne    ffff8000001042b3 <itoa+0x6b>
ffff8000001042ac:	b8 01 00 00 00       	mov    $0x1,%eax
ffff8000001042b1:	eb 05                	jmp    ffff8000001042b8 <itoa+0x70>
ffff8000001042b3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042b8:	89 45 f4             	mov    %eax,-0xc(%rbp)
ffff8000001042bb:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
ffff8000001042bf:	74 03                	je     ffff8000001042c4 <itoa+0x7c>
ffff8000001042c1:	f7 5d bc             	negl   -0x44(%rbp)
ffff8000001042c4:	8b 45 bc             	mov    -0x44(%rbp),%eax
ffff8000001042c7:	99                   	cltd   
ffff8000001042c8:	f7 7d b8             	idivl  -0x48(%rbp)
ffff8000001042cb:	89 d1                	mov    %edx,%ecx
ffff8000001042cd:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001042d0:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001042d3:	89 55 fc             	mov    %edx,-0x4(%rbp)
ffff8000001042d6:	48 63 d1             	movslq %ecx,%rdx
ffff8000001042d9:	0f b6 54 15 e0       	movzbl -0x20(%rbp,%rdx,1),%edx
ffff8000001042de:	48 98                	cltq   
ffff8000001042e0:	88 54 05 c0          	mov    %dl,-0x40(%rbp,%rax,1)
ffff8000001042e4:	8b 45 bc             	mov    -0x44(%rbp),%eax
ffff8000001042e7:	99                   	cltd   
ffff8000001042e8:	f7 7d b8             	idivl  -0x48(%rbp)
ffff8000001042eb:	89 45 bc             	mov    %eax,-0x44(%rbp)
ffff8000001042ee:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
ffff8000001042f2:	75 d0                	jne    ffff8000001042c4 <itoa+0x7c>
ffff8000001042f4:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
ffff8000001042f8:	74 35                	je     ffff80000010432f <itoa+0xe7>
ffff8000001042fa:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001042fd:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104300:	89 55 fc             	mov    %edx,-0x4(%rbp)
ffff800000104303:	48 98                	cltq   
ffff800000104305:	c6 44 05 c0 2d       	movb   $0x2d,-0x40(%rbp,%rax,1)
ffff80000010430a:	eb 23                	jmp    ffff80000010432f <itoa+0xe7>
ffff80000010430c:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
ffff800000104310:	8b 45 f8             	mov    -0x8(%rbp),%eax
ffff800000104313:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104316:	89 55 f8             	mov    %edx,-0x8(%rbp)
ffff800000104319:	48 63 d0             	movslq %eax,%rdx
ffff80000010431c:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000104320:	48 01 c2             	add    %rax,%rdx
ffff800000104323:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104326:	48 98                	cltq   
ffff800000104328:	0f b6 44 05 c0       	movzbl -0x40(%rbp,%rax,1),%eax
ffff80000010432d:	88 02                	mov    %al,(%rdx)
ffff80000010432f:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
ffff800000104333:	7f d7                	jg     ffff80000010430c <itoa+0xc4>
ffff800000104335:	8b 45 f8             	mov    -0x8(%rbp),%eax
ffff800000104338:	48 63 d0             	movslq %eax,%rdx
ffff80000010433b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff80000010433f:	48 01 d0             	add    %rdx,%rax
ffff800000104342:	c6 00 00             	movb   $0x0,(%rax)
ffff800000104345:	90                   	nop
ffff800000104346:	5d                   	pop    %rbp
ffff800000104347:	c3                   	retq   

ffff800000104348 <vsnprintf>:
ffff800000104348:	f3 0f 1e fa          	endbr64 
ffff80000010434c:	55                   	push   %rbp
ffff80000010434d:	48 89 e5             	mov    %rsp,%rbp
ffff800000104350:	53                   	push   %rbx
ffff800000104351:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
ffff800000104355:	f3 0f 1e fa          	endbr64 
ffff800000104359:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000104355 <vsnprintf+0xd>
ffff800000104360:	49 bb e3 3d 00 00 00 	movabs $0x3de3,%r11
ffff800000104367:	00 00 00 
ffff80000010436a:	4c 01 db             	add    %r11,%rbx
ffff80000010436d:	48 89 7d 90          	mov    %rdi,-0x70(%rbp)
ffff800000104371:	48 89 75 88          	mov    %rsi,-0x78(%rbp)
ffff800000104375:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
ffff800000104379:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
ffff800000104380:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff800000104387:	00 
ffff800000104388:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010438f:	00 
ffff800000104390:	e9 9c 03 00 00       	jmpq   ffff800000104731 <vsnprintf+0x3e9>
ffff800000104395:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff800000104399:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010439d:	48 01 d0             	add    %rdx,%rax
ffff8000001043a0:	0f b6 00             	movzbl (%rax),%eax
ffff8000001043a3:	3c 25                	cmp    $0x25,%al
ffff8000001043a5:	0f 85 5d 03 00 00    	jne    ffff800000104708 <vsnprintf+0x3c0>
ffff8000001043ab:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001043af:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001043b3:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff8000001043b7:	48 01 d0             	add    %rdx,%rax
ffff8000001043ba:	0f b6 00             	movzbl (%rax),%eax
ffff8000001043bd:	84 c0                	test   %al,%al
ffff8000001043bf:	0f 84 43 03 00 00    	je     ffff800000104708 <vsnprintf+0x3c0>
ffff8000001043c5:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff8000001043ca:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff8000001043ce:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001043d2:	48 01 d0             	add    %rdx,%rax
ffff8000001043d5:	0f b6 00             	movzbl (%rax),%eax
ffff8000001043d8:	0f be c0             	movsbl %al,%eax
ffff8000001043db:	83 f8 78             	cmp    $0x78,%eax
ffff8000001043de:	0f 84 1b 02 00 00    	je     ffff8000001045ff <vsnprintf+0x2b7>
ffff8000001043e4:	83 f8 78             	cmp    $0x78,%eax
ffff8000001043e7:	0f 8f d6 02 00 00    	jg     ffff8000001046c3 <vsnprintf+0x37b>
ffff8000001043ed:	83 f8 73             	cmp    $0x73,%eax
ffff8000001043f0:	0f 84 97 00 00 00    	je     ffff80000010448d <vsnprintf+0x145>
ffff8000001043f6:	83 f8 73             	cmp    $0x73,%eax
ffff8000001043f9:	0f 8f c4 02 00 00    	jg     ffff8000001046c3 <vsnprintf+0x37b>
ffff8000001043ff:	83 f8 63             	cmp    $0x63,%eax
ffff800000104402:	74 0e                	je     ffff800000104412 <vsnprintf+0xca>
ffff800000104404:	83 f8 64             	cmp    $0x64,%eax
ffff800000104407:	0f 84 27 01 00 00    	je     ffff800000104534 <vsnprintf+0x1ec>
ffff80000010440d:	e9 b1 02 00 00       	jmpq   ffff8000001046c3 <vsnprintf+0x37b>
ffff800000104412:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104419:	8b 00                	mov    (%rax),%eax
ffff80000010441b:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010441e:	77 30                	ja     ffff800000104450 <vsnprintf+0x108>
ffff800000104420:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104427:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010442b:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104432:	8b 00                	mov    (%rax),%eax
ffff800000104434:	89 c0                	mov    %eax,%eax
ffff800000104436:	48 01 d0             	add    %rdx,%rax
ffff800000104439:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104440:	8b 12                	mov    (%rdx),%edx
ffff800000104442:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104445:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010444c:	89 0a                	mov    %ecx,(%rdx)
ffff80000010444e:	eb 1a                	jmp    ffff80000010446a <vsnprintf+0x122>
ffff800000104450:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104457:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010445b:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010445f:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104466:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010446a:	8b 00                	mov    (%rax),%eax
ffff80000010446c:	88 45 c7             	mov    %al,-0x39(%rbp)
ffff80000010446f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104473:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104477:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010447b:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff80000010447f:	48 01 c2             	add    %rax,%rdx
ffff800000104482:	0f b6 45 c7          	movzbl -0x39(%rbp),%eax
ffff800000104486:	88 02                	mov    %al,(%rdx)
ffff800000104488:	e9 79 02 00 00       	jmpq   ffff800000104706 <vsnprintf+0x3be>
ffff80000010448d:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104494:	8b 00                	mov    (%rax),%eax
ffff800000104496:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104499:	77 30                	ja     ffff8000001044cb <vsnprintf+0x183>
ffff80000010449b:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001044a2:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001044a6:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001044ad:	8b 00                	mov    (%rax),%eax
ffff8000001044af:	89 c0                	mov    %eax,%eax
ffff8000001044b1:	48 01 d0             	add    %rdx,%rax
ffff8000001044b4:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001044bb:	8b 12                	mov    (%rdx),%edx
ffff8000001044bd:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001044c0:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001044c7:	89 0a                	mov    %ecx,(%rdx)
ffff8000001044c9:	eb 1a                	jmp    ffff8000001044e5 <vsnprintf+0x19d>
ffff8000001044cb:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001044d2:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001044d6:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001044da:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001044e1:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001044e5:	48 8b 00             	mov    (%rax),%rax
ffff8000001044e8:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001044ec:	eb 24                	jmp    ffff800000104512 <vsnprintf+0x1ca>
ffff8000001044ee:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001044f2:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001044f6:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff8000001044fa:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff8000001044fe:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
ffff800000104502:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000104506:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
ffff80000010450a:	48 01 ca             	add    %rcx,%rdx
ffff80000010450d:	0f b6 00             	movzbl (%rax),%eax
ffff800000104510:	88 02                	mov    %al,(%rdx)
ffff800000104512:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000104516:	0f b6 00             	movzbl (%rax),%eax
ffff800000104519:	84 c0                	test   %al,%al
ffff80000010451b:	0f 84 de 01 00 00    	je     ffff8000001046ff <vsnprintf+0x3b7>
ffff800000104521:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff800000104525:	48 83 e8 01          	sub    $0x1,%rax
ffff800000104529:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff80000010452d:	72 bf                	jb     ffff8000001044ee <vsnprintf+0x1a6>
ffff80000010452f:	e9 cb 01 00 00       	jmpq   ffff8000001046ff <vsnprintf+0x3b7>
ffff800000104534:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010453b:	8b 00                	mov    (%rax),%eax
ffff80000010453d:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104540:	77 30                	ja     ffff800000104572 <vsnprintf+0x22a>
ffff800000104542:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104549:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010454d:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104554:	8b 00                	mov    (%rax),%eax
ffff800000104556:	89 c0                	mov    %eax,%eax
ffff800000104558:	48 01 d0             	add    %rdx,%rax
ffff80000010455b:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104562:	8b 12                	mov    (%rdx),%edx
ffff800000104564:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104567:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010456e:	89 0a                	mov    %ecx,(%rdx)
ffff800000104570:	eb 1a                	jmp    ffff80000010458c <vsnprintf+0x244>
ffff800000104572:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104579:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010457d:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104581:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104588:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010458c:	8b 00                	mov    (%rax),%eax
ffff80000010458e:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff800000104591:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff800000104595:	8b 45 c8             	mov    -0x38(%rbp),%eax
ffff800000104598:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010459d:	48 89 ce             	mov    %rcx,%rsi
ffff8000001045a0:	89 c7                	mov    %eax,%edi
ffff8000001045a2:	48 b8 10 c1 ff ff ff 	movabs $0xffffffffffffc110,%rax
ffff8000001045a9:	ff ff ff 
ffff8000001045ac:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001045b0:	ff d0                	callq  *%rax
ffff8000001045b2:	48 8d 45 98          	lea    -0x68(%rbp),%rax
ffff8000001045b6:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff8000001045ba:	eb 21                	jmp    ffff8000001045dd <vsnprintf+0x295>
ffff8000001045bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001045c0:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001045c4:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001045c8:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff8000001045cc:	48 01 c2             	add    %rax,%rdx
ffff8000001045cf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001045d3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001045d6:	88 02                	mov    %al,(%rdx)
ffff8000001045d8:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
ffff8000001045dd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001045e1:	0f b6 00             	movzbl (%rax),%eax
ffff8000001045e4:	84 c0                	test   %al,%al
ffff8000001045e6:	0f 84 16 01 00 00    	je     ffff800000104702 <vsnprintf+0x3ba>
ffff8000001045ec:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff8000001045f0:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001045f4:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff8000001045f8:	72 c2                	jb     ffff8000001045bc <vsnprintf+0x274>
ffff8000001045fa:	e9 03 01 00 00       	jmpq   ffff800000104702 <vsnprintf+0x3ba>
ffff8000001045ff:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104606:	8b 00                	mov    (%rax),%eax
ffff800000104608:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010460b:	77 30                	ja     ffff80000010463d <vsnprintf+0x2f5>
ffff80000010460d:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104614:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104618:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010461f:	8b 00                	mov    (%rax),%eax
ffff800000104621:	89 c0                	mov    %eax,%eax
ffff800000104623:	48 01 d0             	add    %rdx,%rax
ffff800000104626:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010462d:	8b 12                	mov    (%rdx),%edx
ffff80000010462f:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104632:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104639:	89 0a                	mov    %ecx,(%rdx)
ffff80000010463b:	eb 1a                	jmp    ffff800000104657 <vsnprintf+0x30f>
ffff80000010463d:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104644:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104648:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010464c:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104653:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104657:	8b 00                	mov    (%rax),%eax
ffff800000104659:	89 45 cc             	mov    %eax,-0x34(%rbp)
ffff80000010465c:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff800000104660:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff800000104663:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104668:	48 89 ce             	mov    %rcx,%rsi
ffff80000010466b:	89 c7                	mov    %eax,%edi
ffff80000010466d:	48 b8 10 c1 ff ff ff 	movabs $0xffffffffffffc110,%rax
ffff800000104674:	ff ff ff 
ffff800000104677:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010467b:	ff d0                	callq  *%rax
ffff80000010467d:	48 8d 45 98          	lea    -0x68(%rbp),%rax
ffff800000104681:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000104685:	eb 21                	jmp    ffff8000001046a8 <vsnprintf+0x360>
ffff800000104687:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010468b:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010468f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000104693:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000104697:	48 01 c2             	add    %rax,%rdx
ffff80000010469a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010469e:	0f b6 00             	movzbl (%rax),%eax
ffff8000001046a1:	88 02                	mov    %al,(%rdx)
ffff8000001046a3:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
ffff8000001046a8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001046ac:	0f b6 00             	movzbl (%rax),%eax
ffff8000001046af:	84 c0                	test   %al,%al
ffff8000001046b1:	74 52                	je     ffff800000104705 <vsnprintf+0x3bd>
ffff8000001046b3:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff8000001046b7:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001046bb:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff8000001046bf:	72 c6                	jb     ffff800000104687 <vsnprintf+0x33f>
ffff8000001046c1:	eb 42                	jmp    ffff800000104705 <vsnprintf+0x3bd>
ffff8000001046c3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001046c7:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001046cb:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001046cf:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff8000001046d3:	48 01 d0             	add    %rdx,%rax
ffff8000001046d6:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001046d9:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff8000001046dd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001046e1:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff8000001046e5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001046e9:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001046ed:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001046f1:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff8000001046f5:	48 01 c2             	add    %rax,%rdx
ffff8000001046f8:	0f b6 01             	movzbl (%rcx),%eax
ffff8000001046fb:	88 02                	mov    %al,(%rdx)
ffff8000001046fd:	eb 07                	jmp    ffff800000104706 <vsnprintf+0x3be>
ffff8000001046ff:	90                   	nop
ffff800000104700:	eb 2a                	jmp    ffff80000010472c <vsnprintf+0x3e4>
ffff800000104702:	90                   	nop
ffff800000104703:	eb 27                	jmp    ffff80000010472c <vsnprintf+0x3e4>
ffff800000104705:	90                   	nop
ffff800000104706:	eb 24                	jmp    ffff80000010472c <vsnprintf+0x3e4>
ffff800000104708:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff80000010470c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104710:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104714:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104718:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010471c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000104720:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000104724:	48 01 c2             	add    %rax,%rdx
ffff800000104727:	0f b6 01             	movzbl (%rcx),%eax
ffff80000010472a:	88 02                	mov    %al,(%rdx)
ffff80000010472c:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff800000104731:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff800000104735:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104739:	48 01 d0             	add    %rdx,%rax
ffff80000010473c:	0f b6 00             	movzbl (%rax),%eax
ffff80000010473f:	84 c0                	test   %al,%al
ffff800000104741:	74 12                	je     ffff800000104755 <vsnprintf+0x40d>
ffff800000104743:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff800000104747:	48 83 e8 01          	sub    $0x1,%rax
ffff80000010474b:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff80000010474f:	0f 82 40 fc ff ff    	jb     ffff800000104395 <vsnprintf+0x4d>
ffff800000104755:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000104759:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010475d:	48 01 d0             	add    %rdx,%rax
ffff800000104760:	c6 00 00             	movb   $0x0,(%rax)
ffff800000104763:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104767:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
ffff80000010476b:	5b                   	pop    %rbx
ffff80000010476c:	5d                   	pop    %rbp
ffff80000010476d:	c3                   	retq   

ffff80000010476e <printf>:
ffff80000010476e:	f3 0f 1e fa          	endbr64 
ffff800000104772:	55                   	push   %rbp
ffff800000104773:	48 89 e5             	mov    %rsp,%rbp
ffff800000104776:	41 57                	push   %r15
ffff800000104778:	53                   	push   %rbx
ffff800000104779:	48 81 ec f0 01 00 00 	sub    $0x1f0,%rsp
ffff800000104780:	f3 0f 1e fa          	endbr64 
ffff800000104784:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000104780 <printf+0x12>
ffff80000010478b:	49 bb b8 39 00 00 00 	movabs $0x39b8,%r11
ffff800000104792:	00 00 00 
ffff800000104795:	4c 01 db             	add    %r11,%rbx
ffff800000104798:	48 89 bd 08 fe ff ff 	mov    %rdi,-0x1f8(%rbp)
ffff80000010479f:	48 89 b5 48 ff ff ff 	mov    %rsi,-0xb8(%rbp)
ffff8000001047a6:	48 89 95 50 ff ff ff 	mov    %rdx,-0xb0(%rbp)
ffff8000001047ad:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff8000001047b4:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff8000001047bb:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff8000001047c2:	84 c0                	test   %al,%al
ffff8000001047c4:	74 23                	je     ffff8000001047e9 <printf+0x7b>
ffff8000001047c6:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff8000001047cd:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff8000001047d1:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff8000001047d5:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff8000001047d9:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff8000001047dd:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001047e1:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001047e5:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001047e9:	c7 85 18 fe ff ff 08 	movl   $0x8,-0x1e8(%rbp)
ffff8000001047f0:	00 00 00 
ffff8000001047f3:	c7 85 1c fe ff ff 30 	movl   $0x30,-0x1e4(%rbp)
ffff8000001047fa:	00 00 00 
ffff8000001047fd:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff800000104801:	48 89 85 20 fe ff ff 	mov    %rax,-0x1e0(%rbp)
ffff800000104808:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff80000010480f:	48 89 85 28 fe ff ff 	mov    %rax,-0x1d8(%rbp)
ffff800000104816:	48 8d 8d 18 fe ff ff 	lea    -0x1e8(%rbp),%rcx
ffff80000010481d:	48 8b 95 08 fe ff ff 	mov    -0x1f8(%rbp),%rdx
ffff800000104824:	48 8d 85 30 fe ff ff 	lea    -0x1d0(%rbp),%rax
ffff80000010482b:	be 00 01 00 00       	mov    $0x100,%esi
ffff800000104830:	48 89 c7             	mov    %rax,%rdi
ffff800000104833:	48 b8 10 c2 ff ff ff 	movabs $0xffffffffffffc210,%rax
ffff80000010483a:	ff ff ff 
ffff80000010483d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104841:	ff d0                	callq  *%rax
ffff800000104843:	48 8d 85 30 fe ff ff 	lea    -0x1d0(%rbp),%rax
ffff80000010484a:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
ffff800000104851:	eb 29                	jmp    ffff80000010487c <printf+0x10e>
ffff800000104853:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
ffff80000010485a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010485d:	0f be c0             	movsbl %al,%eax
ffff800000104860:	89 c7                	mov    %eax,%edi
ffff800000104862:	49 89 df             	mov    %rbx,%r15
ffff800000104865:	48 b8 60 c7 ff ff ff 	movabs $0xffffffffffffc760,%rax
ffff80000010486c:	ff ff ff 
ffff80000010486f:	48 01 d8             	add    %rbx,%rax
ffff800000104872:	ff d0                	callq  *%rax
ffff800000104874:	48 83 85 38 ff ff ff 	addq   $0x1,-0xc8(%rbp)
ffff80000010487b:	01 
ffff80000010487c:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
ffff800000104883:	0f b6 00             	movzbl (%rax),%eax
ffff800000104886:	84 c0                	test   %al,%al
ffff800000104888:	75 c9                	jne    ffff800000104853 <printf+0xe5>
ffff80000010488a:	90                   	nop
ffff80000010488b:	90                   	nop
ffff80000010488c:	48 81 c4 f0 01 00 00 	add    $0x1f0,%rsp
ffff800000104893:	5b                   	pop    %rbx
ffff800000104894:	41 5f                	pop    %r15
ffff800000104896:	5d                   	pop    %rbp
ffff800000104897:	c3                   	retq   

ffff800000104898 <putchar>:
ffff800000104898:	f3 0f 1e fa          	endbr64 
ffff80000010489c:	55                   	push   %rbp
ffff80000010489d:	48 89 e5             	mov    %rsp,%rbp
ffff8000001048a0:	f3 0f 1e fa          	endbr64 
ffff8000001048a4:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff8000001048a0 <putchar+0x8>
ffff8000001048ab:	49 bb 98 38 00 00 00 	movabs $0x3898,%r11
ffff8000001048b2:	00 00 00 
ffff8000001048b5:	4c 01 d8             	add    %r11,%rax
ffff8000001048b8:	89 fa                	mov    %edi,%edx
ffff8000001048ba:	88 55 ec             	mov    %dl,-0x14(%rbp)
ffff8000001048bd:	48 c7 45 f0 00 80 0b 	movq   $0xb8000,-0x10(%rbp)
ffff8000001048c4:	00 
ffff8000001048c5:	80 7d ec 0a          	cmpb   $0xa,-0x14(%rbp)
ffff8000001048c9:	75 5c                	jne    ffff800000104927 <putchar+0x8f>
ffff8000001048cb:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff8000001048d2:	00 00 00 
ffff8000001048d5:	8b 34 10             	mov    (%rax,%rdx,1),%esi
ffff8000001048d8:	48 63 d6             	movslq %esi,%rdx
ffff8000001048db:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
ffff8000001048e2:	48 c1 ea 20          	shr    $0x20,%rdx
ffff8000001048e6:	89 d1                	mov    %edx,%ecx
ffff8000001048e8:	c1 f9 05             	sar    $0x5,%ecx
ffff8000001048eb:	89 f2                	mov    %esi,%edx
ffff8000001048ed:	c1 fa 1f             	sar    $0x1f,%edx
ffff8000001048f0:	29 d1                	sub    %edx,%ecx
ffff8000001048f2:	89 ca                	mov    %ecx,%edx
ffff8000001048f4:	c1 e2 02             	shl    $0x2,%edx
ffff8000001048f7:	01 ca                	add    %ecx,%edx
ffff8000001048f9:	c1 e2 04             	shl    $0x4,%edx
ffff8000001048fc:	29 d6                	sub    %edx,%esi
ffff8000001048fe:	89 f1                	mov    %esi,%ecx
ffff800000104900:	ba 50 00 00 00       	mov    $0x50,%edx
ffff800000104905:	29 ca                	sub    %ecx,%edx
ffff800000104907:	89 d1                	mov    %edx,%ecx
ffff800000104909:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104910:	00 00 00 
ffff800000104913:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104916:	01 d1                	add    %edx,%ecx
ffff800000104918:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff80000010491f:	00 00 00 
ffff800000104922:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104925:	eb 45                	jmp    ffff80000010496c <putchar+0xd4>
ffff800000104927:	66 0f be 55 ec       	movsbw -0x14(%rbp),%dx
ffff80000010492c:	89 d1                	mov    %edx,%ecx
ffff80000010492e:	80 cd 07             	or     $0x7,%ch
ffff800000104931:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104938:	00 00 00 
ffff80000010493b:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff80000010493e:	48 63 d2             	movslq %edx,%rdx
ffff800000104941:	48 8d 34 12          	lea    (%rdx,%rdx,1),%rsi
ffff800000104945:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000104949:	48 01 f2             	add    %rsi,%rdx
ffff80000010494c:	66 89 0a             	mov    %cx,(%rdx)
ffff80000010494f:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104956:	00 00 00 
ffff800000104959:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff80000010495c:	8d 4a 01             	lea    0x1(%rdx),%ecx
ffff80000010495f:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104966:	00 00 00 
ffff800000104969:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff80000010496c:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104973:	00 00 00 
ffff800000104976:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104979:	81 fa cf 07 00 00    	cmp    $0x7cf,%edx
ffff80000010497f:	0f 8e 8b 00 00 00    	jle    ffff800000104a10 <putchar+0x178>
ffff800000104985:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff80000010498c:	eb 30                	jmp    ffff8000001049be <putchar+0x126>
ffff80000010498e:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104991:	48 63 d2             	movslq %edx,%rdx
ffff800000104994:	48 83 c2 50          	add    $0x50,%rdx
ffff800000104998:	48 8d 0c 12          	lea    (%rdx,%rdx,1),%rcx
ffff80000010499c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff8000001049a0:	48 01 ca             	add    %rcx,%rdx
ffff8000001049a3:	8b 4d fc             	mov    -0x4(%rbp),%ecx
ffff8000001049a6:	48 63 c9             	movslq %ecx,%rcx
ffff8000001049a9:	48 8d 34 09          	lea    (%rcx,%rcx,1),%rsi
ffff8000001049ad:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff8000001049b1:	48 01 f1             	add    %rsi,%rcx
ffff8000001049b4:	0f b7 12             	movzwl (%rdx),%edx
ffff8000001049b7:	66 89 11             	mov    %dx,(%rcx)
ffff8000001049ba:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff8000001049be:	81 7d fc 7f 07 00 00 	cmpl   $0x77f,-0x4(%rbp)
ffff8000001049c5:	7e c7                	jle    ffff80000010498e <putchar+0xf6>
ffff8000001049c7:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%rbp)
ffff8000001049ce:	eb 1a                	jmp    ffff8000001049ea <putchar+0x152>
ffff8000001049d0:	8b 55 f8             	mov    -0x8(%rbp),%edx
ffff8000001049d3:	48 63 d2             	movslq %edx,%rdx
ffff8000001049d6:	48 8d 0c 12          	lea    (%rdx,%rdx,1),%rcx
ffff8000001049da:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff8000001049de:	48 01 ca             	add    %rcx,%rdx
ffff8000001049e1:	66 c7 02 20 07       	movw   $0x720,(%rdx)
ffff8000001049e6:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff8000001049ea:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%rbp)
ffff8000001049f1:	7e dd                	jle    ffff8000001049d0 <putchar+0x138>
ffff8000001049f3:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff8000001049fa:	00 00 00 
ffff8000001049fd:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104a00:	8d 4a b0             	lea    -0x50(%rdx),%ecx
ffff800000104a03:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104a0a:	00 00 00 
ffff800000104a0d:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104a10:	90                   	nop
ffff800000104a11:	5d                   	pop    %rbp
ffff800000104a12:	c3                   	retq   

ffff800000104a13 <tssinit>:
ffff800000104a13:	f3 0f 1e fa          	endbr64 
ffff800000104a17:	55                   	push   %rbp
ffff800000104a18:	48 89 e5             	mov    %rsp,%rbp
ffff800000104a1b:	f3 0f 1e fa          	endbr64 
ffff800000104a1f:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000104a1b <tssinit+0x8>
ffff800000104a26:	49 bb 1d 37 00 00 00 	movabs $0x371d,%r11
ffff800000104a2d:	00 00 00 
ffff800000104a30:	4c 01 d8             	add    %r11,%rax
ffff800000104a33:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104a37:	89 f2                	mov    %esi,%edx
ffff800000104a39:	66 89 55 e4          	mov    %dx,-0x1c(%rbp)
ffff800000104a3d:	48 ba 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rdx
ffff800000104a44:	ff ff ff 
ffff800000104a47:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104a4b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104a4f:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104a53:	48 ba 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rdx
ffff800000104a5a:	ff ff ff 
ffff800000104a5d:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104a61:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104a65:	48 89 4a 28          	mov    %rcx,0x28(%rdx)
ffff800000104a69:	0f b7 55 e4          	movzwl -0x1c(%rbp),%edx
ffff800000104a6d:	48 b9 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rcx
ffff800000104a74:	ff ff ff 
ffff800000104a77:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104a7b:	48 63 f2             	movslq %edx,%rsi
ffff800000104a7e:	66 c7 04 f1 6f 00    	movw   $0x6f,(%rcx,%rsi,8)
ffff800000104a84:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000104a8b:	ff ff ff 
ffff800000104a8e:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104a92:	89 cf                	mov    %ecx,%edi
ffff800000104a94:	48 b9 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rcx
ffff800000104a9b:	ff ff ff 
ffff800000104a9e:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104aa2:	48 63 f2             	movslq %edx,%rsi
ffff800000104aa5:	66 89 7c f1 02       	mov    %di,0x2(%rcx,%rsi,8)
ffff800000104aaa:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000104ab1:	ff ff ff 
ffff800000104ab4:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104ab8:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000104abc:	89 cf                	mov    %ecx,%edi
ffff800000104abe:	48 b9 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rcx
ffff800000104ac5:	ff ff ff 
ffff800000104ac8:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104acc:	48 63 f2             	movslq %edx,%rsi
ffff800000104acf:	40 88 7c f1 04       	mov    %dil,0x4(%rcx,%rsi,8)
ffff800000104ad4:	48 b9 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rcx
ffff800000104adb:	ff ff ff 
ffff800000104ade:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104ae2:	48 63 f2             	movslq %edx,%rsi
ffff800000104ae5:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000104aea:	83 e7 f0             	and    $0xfffffff0,%edi
ffff800000104aed:	83 cf 09             	or     $0x9,%edi
ffff800000104af0:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff800000104af5:	48 b9 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rcx
ffff800000104afc:	ff ff ff 
ffff800000104aff:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104b03:	48 63 f2             	movslq %edx,%rsi
ffff800000104b06:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000104b0b:	83 e7 ef             	and    $0xffffffef,%edi
ffff800000104b0e:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff800000104b13:	48 b9 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rcx
ffff800000104b1a:	ff ff ff 
ffff800000104b1d:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104b21:	48 63 f2             	movslq %edx,%rsi
ffff800000104b24:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000104b29:	83 e7 9f             	and    $0xffffff9f,%edi
ffff800000104b2c:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff800000104b31:	48 b9 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rcx
ffff800000104b38:	ff ff ff 
ffff800000104b3b:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104b3f:	48 63 f2             	movslq %edx,%rsi
ffff800000104b42:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000104b47:	83 cf 80             	or     $0xffffff80,%edi
ffff800000104b4a:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff800000104b4f:	48 b9 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rcx
ffff800000104b56:	ff ff ff 
ffff800000104b59:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104b5d:	48 63 f2             	movslq %edx,%rsi
ffff800000104b60:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104b65:	83 e7 f0             	and    $0xfffffff0,%edi
ffff800000104b68:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104b6d:	48 b9 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rcx
ffff800000104b74:	ff ff ff 
ffff800000104b77:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104b7b:	48 63 f2             	movslq %edx,%rsi
ffff800000104b7e:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104b83:	83 e7 ef             	and    $0xffffffef,%edi
ffff800000104b86:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104b8b:	48 b9 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rcx
ffff800000104b92:	ff ff ff 
ffff800000104b95:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104b99:	48 63 f2             	movslq %edx,%rsi
ffff800000104b9c:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104ba1:	83 e7 df             	and    $0xffffffdf,%edi
ffff800000104ba4:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104ba9:	48 b9 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rcx
ffff800000104bb0:	ff ff ff 
ffff800000104bb3:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104bb7:	48 63 f2             	movslq %edx,%rsi
ffff800000104bba:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104bbf:	83 e7 bf             	and    $0xffffffbf,%edi
ffff800000104bc2:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104bc7:	48 b9 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rcx
ffff800000104bce:	ff ff ff 
ffff800000104bd1:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104bd5:	48 63 f2             	movslq %edx,%rsi
ffff800000104bd8:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104bdd:	83 e7 7f             	and    $0x7f,%edi
ffff800000104be0:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104be5:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000104bec:	ff ff ff 
ffff800000104bef:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104bf3:	48 c1 e9 20          	shr    $0x20,%rcx
ffff800000104bf7:	89 ce                	mov    %ecx,%esi
ffff800000104bf9:	48 b9 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rcx
ffff800000104c00:	ff ff ff 
ffff800000104c03:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
ffff800000104c07:	48 63 d2             	movslq %edx,%rdx
ffff800000104c0a:	40 88 74 d0 07       	mov    %sil,0x7(%rax,%rdx,8)
ffff800000104c0f:	0f b7 45 e4          	movzwl -0x1c(%rbp),%eax
ffff800000104c13:	c1 e0 03             	shl    $0x3,%eax
ffff800000104c16:	66 89 45 fe          	mov    %ax,-0x2(%rbp)
ffff800000104c1a:	0f b7 45 fe          	movzwl -0x2(%rbp),%eax
ffff800000104c1e:	0f 00 d8             	ltr    %ax
ffff800000104c21:	90                   	nop
ffff800000104c22:	5d                   	pop    %rbp
ffff800000104c23:	c3                   	retq   

ffff800000104c24 <trapinit>:
ffff800000104c24:	f3 0f 1e fa          	endbr64 
ffff800000104c28:	55                   	push   %rbp
ffff800000104c29:	48 89 e5             	mov    %rsp,%rbp
ffff800000104c2c:	53                   	push   %rbx
ffff800000104c2d:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104c31:	f3 0f 1e fa          	endbr64 
ffff800000104c35:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000104c31 <trapinit+0xd>
ffff800000104c3c:	49 bb 07 35 00 00 00 	movabs $0x3507,%r11
ffff800000104c43:	00 00 00 
ffff800000104c46:	4c 01 db             	add    %r11,%rbx
ffff800000104c49:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000104c50:	ff ff ff 
ffff800000104c53:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104c57:	48 89 c2             	mov    %rax,%rdx
ffff800000104c5a:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104c5f:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104c66:	ff ff ff 
ffff800000104c69:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104c6d:	48 89 c7             	mov    %rax,%rdi
ffff800000104c70:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000104c77:	ff ff ff 
ffff800000104c7a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104c7e:	ff d0                	callq  *%rax
ffff800000104c80:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104c87:	ff ff ff 
ffff800000104c8a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104c8e:	48 8d 40 10          	lea    0x10(%rax),%rax
ffff800000104c92:	48 ba 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rdx
ffff800000104c99:	ff ff ff 
ffff800000104c9c:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104ca0:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104ca5:	48 89 c7             	mov    %rax,%rdi
ffff800000104ca8:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000104caf:	ff ff ff 
ffff800000104cb2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104cb6:	ff d0                	callq  *%rax
ffff800000104cb8:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104cbf:	ff ff ff 
ffff800000104cc2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104cc6:	48 8d 40 20          	lea    0x20(%rax),%rax
ffff800000104cca:	48 ba e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rdx
ffff800000104cd1:	ff ff ff 
ffff800000104cd4:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104cd8:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104cdd:	48 89 c7             	mov    %rax,%rdi
ffff800000104ce0:	48 b8 9c cf ff ff ff 	movabs $0xffffffffffffcf9c,%rax
ffff800000104ce7:	ff ff ff 
ffff800000104cea:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104cee:	ff d0                	callq  *%rax
ffff800000104cf0:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104cf7:	ff ff ff 
ffff800000104cfa:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104cfe:	48 8d 40 30          	lea    0x30(%rax),%rax
ffff800000104d02:	48 ba f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rdx
ffff800000104d09:	ff ff ff 
ffff800000104d0c:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104d10:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104d15:	48 89 c7             	mov    %rax,%rdi
ffff800000104d18:	48 b8 4c d1 ff ff ff 	movabs $0xffffffffffffd14c,%rax
ffff800000104d1f:	ff ff ff 
ffff800000104d22:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104d26:	ff d0                	callq  *%rax
ffff800000104d28:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104d2f:	ff ff ff 
ffff800000104d32:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104d36:	48 8d 40 40          	lea    0x40(%rax),%rax
ffff800000104d3a:	48 ba 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rdx
ffff800000104d41:	ff ff ff 
ffff800000104d44:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104d48:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104d4d:	48 89 c7             	mov    %rax,%rdi
ffff800000104d50:	48 b8 4c d1 ff ff ff 	movabs $0xffffffffffffd14c,%rax
ffff800000104d57:	ff ff ff 
ffff800000104d5a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104d5e:	ff d0                	callq  *%rax
ffff800000104d60:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104d67:	ff ff ff 
ffff800000104d6a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104d6e:	48 8d 40 50          	lea    0x50(%rax),%rax
ffff800000104d72:	48 ba 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rdx
ffff800000104d79:	ff ff ff 
ffff800000104d7c:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104d80:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104d85:	48 89 c7             	mov    %rax,%rdi
ffff800000104d88:	48 b8 4c d1 ff ff ff 	movabs $0xffffffffffffd14c,%rax
ffff800000104d8f:	ff ff ff 
ffff800000104d92:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104d96:	ff d0                	callq  *%rax
ffff800000104d98:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104d9f:	ff ff ff 
ffff800000104da2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104da6:	48 8d 40 60          	lea    0x60(%rax),%rax
ffff800000104daa:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000104db1:	ff ff ff 
ffff800000104db4:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104db8:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104dbd:	48 89 c7             	mov    %rax,%rdi
ffff800000104dc0:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000104dc7:	ff ff ff 
ffff800000104dca:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104dce:	ff d0                	callq  *%rax
ffff800000104dd0:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104dd7:	ff ff ff 
ffff800000104dda:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104dde:	48 8d 40 70          	lea    0x70(%rax),%rax
ffff800000104de2:	48 ba f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rdx
ffff800000104de9:	ff ff ff 
ffff800000104dec:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104df0:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104df5:	48 89 c7             	mov    %rax,%rdi
ffff800000104df8:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000104dff:	ff ff ff 
ffff800000104e02:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104e06:	ff d0                	callq  *%rax
ffff800000104e08:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104e0f:	ff ff ff 
ffff800000104e12:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104e16:	48 8d 80 80 00 00 00 	lea    0x80(%rax),%rax
ffff800000104e1d:	48 ba b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rdx
ffff800000104e24:	ff ff ff 
ffff800000104e27:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104e2b:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104e30:	48 89 c7             	mov    %rax,%rdi
ffff800000104e33:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000104e3a:	ff ff ff 
ffff800000104e3d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104e41:	ff d0                	callq  *%rax
ffff800000104e43:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104e4a:	ff ff ff 
ffff800000104e4d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104e51:	48 8d 80 90 00 00 00 	lea    0x90(%rax),%rax
ffff800000104e58:	48 ba c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rdx
ffff800000104e5f:	ff ff ff 
ffff800000104e62:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104e66:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104e6b:	48 89 c7             	mov    %rax,%rdi
ffff800000104e6e:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000104e75:	ff ff ff 
ffff800000104e78:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104e7c:	ff d0                	callq  *%rax
ffff800000104e7e:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104e85:	ff ff ff 
ffff800000104e88:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104e8c:	48 8d 80 a0 00 00 00 	lea    0xa0(%rax),%rax
ffff800000104e93:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff800000104e9a:	ff ff ff 
ffff800000104e9d:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104ea1:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104ea6:	48 89 c7             	mov    %rax,%rdi
ffff800000104ea9:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000104eb0:	ff ff ff 
ffff800000104eb3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104eb7:	ff d0                	callq  *%rax
ffff800000104eb9:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104ec0:	ff ff ff 
ffff800000104ec3:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104ec7:	48 8d 80 b0 00 00 00 	lea    0xb0(%rax),%rax
ffff800000104ece:	48 ba 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rdx
ffff800000104ed5:	ff ff ff 
ffff800000104ed8:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104edc:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104ee1:	48 89 c7             	mov    %rax,%rdi
ffff800000104ee4:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000104eeb:	ff ff ff 
ffff800000104eee:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104ef2:	ff d0                	callq  *%rax
ffff800000104ef4:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104efb:	ff ff ff 
ffff800000104efe:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104f02:	48 8d 80 c0 00 00 00 	lea    0xc0(%rax),%rax
ffff800000104f09:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000104f10:	ff ff ff 
ffff800000104f13:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104f17:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104f1c:	48 89 c7             	mov    %rax,%rdi
ffff800000104f1f:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000104f26:	ff ff ff 
ffff800000104f29:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104f2d:	ff d0                	callq  *%rax
ffff800000104f2f:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104f36:	ff ff ff 
ffff800000104f39:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104f3d:	48 8d 80 d0 00 00 00 	lea    0xd0(%rax),%rax
ffff800000104f44:	48 ba 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rdx
ffff800000104f4b:	ff ff ff 
ffff800000104f4e:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104f52:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104f57:	48 89 c7             	mov    %rax,%rdi
ffff800000104f5a:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000104f61:	ff ff ff 
ffff800000104f64:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104f68:	ff d0                	callq  *%rax
ffff800000104f6a:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104f71:	ff ff ff 
ffff800000104f74:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104f78:	48 8d 80 e0 00 00 00 	lea    0xe0(%rax),%rax
ffff800000104f7f:	48 ba d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rdx
ffff800000104f86:	ff ff ff 
ffff800000104f89:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104f8d:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104f92:	48 89 c7             	mov    %rax,%rdi
ffff800000104f95:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000104f9c:	ff ff ff 
ffff800000104f9f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104fa3:	ff d0                	callq  *%rax
ffff800000104fa5:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104fac:	ff ff ff 
ffff800000104faf:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104fb3:	48 8d 80 00 01 00 00 	lea    0x100(%rax),%rax
ffff800000104fba:	48 ba a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rdx
ffff800000104fc1:	ff ff ff 
ffff800000104fc4:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000104fc8:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104fcd:	48 89 c7             	mov    %rax,%rdi
ffff800000104fd0:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000104fd7:	ff ff ff 
ffff800000104fda:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104fde:	ff d0                	callq  *%rax
ffff800000104fe0:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000104fe7:	ff ff ff 
ffff800000104fea:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104fee:	48 8d 80 10 01 00 00 	lea    0x110(%rax),%rax
ffff800000104ff5:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000104ffc:	ff ff ff 
ffff800000104fff:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105003:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105008:	48 89 c7             	mov    %rax,%rdi
ffff80000010500b:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000105012:	ff ff ff 
ffff800000105015:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105019:	ff d0                	callq  *%rax
ffff80000010501b:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000105022:	ff ff ff 
ffff800000105025:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105029:	48 8d 80 20 01 00 00 	lea    0x120(%rax),%rax
ffff800000105030:	48 ba d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rdx
ffff800000105037:	ff ff ff 
ffff80000010503a:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010503e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105043:	48 89 c7             	mov    %rax,%rdi
ffff800000105046:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff80000010504d:	ff ff ff 
ffff800000105050:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105054:	ff d0                	callq  *%rax
ffff800000105056:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff80000010505d:	ff ff ff 
ffff800000105060:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105064:	48 8d 80 30 01 00 00 	lea    0x130(%rax),%rax
ffff80000010506b:	48 ba e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rdx
ffff800000105072:	ff ff ff 
ffff800000105075:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105079:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010507e:	48 89 c7             	mov    %rax,%rdi
ffff800000105081:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff800000105088:	ff ff ff 
ffff80000010508b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010508f:	ff d0                	callq  *%rax
ffff800000105091:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000105098:	ff ff ff 
ffff80000010509b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010509f:	48 8d 80 40 01 00 00 	lea    0x140(%rax),%rax
ffff8000001050a6:	48 ba c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rdx
ffff8000001050ad:	ff ff ff 
ffff8000001050b0:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001050b4:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001050b9:	48 89 c7             	mov    %rax,%rdi
ffff8000001050bc:	48 b8 73 d0 ff ff ff 	movabs $0xffffffffffffd073,%rax
ffff8000001050c3:	ff ff ff 
ffff8000001050c6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001050ca:	ff d0                	callq  *%rax
ffff8000001050cc:	90                   	nop
ffff8000001050cd:	48 83 c4 08          	add    $0x8,%rsp
ffff8000001050d1:	5b                   	pop    %rbx
ffff8000001050d2:	5d                   	pop    %rbp
ffff8000001050d3:	c3                   	retq   

ffff8000001050d4 <set_intr_gate>:
ffff8000001050d4:	f3 0f 1e fa          	endbr64 
ffff8000001050d8:	55                   	push   %rbp
ffff8000001050d9:	48 89 e5             	mov    %rsp,%rbp
ffff8000001050dc:	f3 0f 1e fa          	endbr64 
ffff8000001050e0:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff8000001050dc <set_intr_gate+0x8>
ffff8000001050e7:	49 bb 5c 30 00 00 00 	movabs $0x305c,%r11
ffff8000001050ee:	00 00 00 
ffff8000001050f1:	4c 01 d8             	add    %r11,%rax
ffff8000001050f4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff8000001050f8:	89 75 f4             	mov    %esi,-0xc(%rbp)
ffff8000001050fb:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001050ff:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105103:	89 c2                	mov    %eax,%edx
ffff800000105105:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105109:	66 89 10             	mov    %dx,(%rax)
ffff80000010510c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105110:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff800000105116:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000105119:	83 e0 07             	and    $0x7,%eax
ffff80000010511c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000105120:	83 e0 07             	and    $0x7,%eax
ffff800000105123:	89 c1                	mov    %eax,%ecx
ffff800000105125:	0f b6 42 04          	movzbl 0x4(%rdx),%eax
ffff800000105129:	83 e0 f8             	and    $0xfffffff8,%eax
ffff80000010512c:	09 c8                	or     %ecx,%eax
ffff80000010512e:	88 42 04             	mov    %al,0x4(%rdx)
ffff800000105131:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105135:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105139:	83 e2 07             	and    $0x7,%edx
ffff80000010513c:	88 50 04             	mov    %dl,0x4(%rax)
ffff80000010513f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105143:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105147:	83 e2 f0             	and    $0xfffffff0,%edx
ffff80000010514a:	83 ca 0e             	or     $0xe,%edx
ffff80000010514d:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105150:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105154:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105158:	83 e2 ef             	and    $0xffffffef,%edx
ffff80000010515b:	88 50 05             	mov    %dl,0x5(%rax)
ffff80000010515e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105162:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105166:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105169:	88 50 05             	mov    %dl,0x5(%rax)
ffff80000010516c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105170:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105174:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105177:	88 50 05             	mov    %dl,0x5(%rax)
ffff80000010517a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010517e:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105182:	89 c2                	mov    %eax,%edx
ffff800000105184:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105188:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff80000010518c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105190:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105194:	89 c2                	mov    %eax,%edx
ffff800000105196:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010519a:	89 50 08             	mov    %edx,0x8(%rax)
ffff80000010519d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001051a1:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff8000001051a8:	90                   	nop
ffff8000001051a9:	5d                   	pop    %rbp
ffff8000001051aa:	c3                   	retq   

ffff8000001051ab <set_trap_gate>:
ffff8000001051ab:	f3 0f 1e fa          	endbr64 
ffff8000001051af:	55                   	push   %rbp
ffff8000001051b0:	48 89 e5             	mov    %rsp,%rbp
ffff8000001051b3:	f3 0f 1e fa          	endbr64 
ffff8000001051b7:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff8000001051b3 <set_trap_gate+0x8>
ffff8000001051be:	49 bb 85 2f 00 00 00 	movabs $0x2f85,%r11
ffff8000001051c5:	00 00 00 
ffff8000001051c8:	4c 01 d8             	add    %r11,%rax
ffff8000001051cb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff8000001051cf:	89 f0                	mov    %esi,%eax
ffff8000001051d1:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001051d5:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff8000001051d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001051dc:	89 c2                	mov    %eax,%edx
ffff8000001051de:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001051e2:	66 89 10             	mov    %dx,(%rax)
ffff8000001051e5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001051e9:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff8000001051ef:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff8000001051f3:	83 e0 07             	and    $0x7,%eax
ffff8000001051f6:	89 c2                	mov    %eax,%edx
ffff8000001051f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001051fc:	89 d1                	mov    %edx,%ecx
ffff8000001051fe:	83 e1 07             	and    $0x7,%ecx
ffff800000105201:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105205:	83 e2 f8             	and    $0xfffffff8,%edx
ffff800000105208:	09 ca                	or     %ecx,%edx
ffff80000010520a:	88 50 04             	mov    %dl,0x4(%rax)
ffff80000010520d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105211:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105215:	83 e2 07             	and    $0x7,%edx
ffff800000105218:	88 50 04             	mov    %dl,0x4(%rax)
ffff80000010521b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010521f:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105223:	83 ca 0f             	or     $0xf,%edx
ffff800000105226:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105229:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010522d:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105231:	83 e2 ef             	and    $0xffffffef,%edx
ffff800000105234:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105237:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010523b:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010523f:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105242:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105245:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105249:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010524d:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105250:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105253:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105257:	48 c1 e8 10          	shr    $0x10,%rax
ffff80000010525b:	89 c2                	mov    %eax,%edx
ffff80000010525d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105261:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105265:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105269:	48 c1 e8 20          	shr    $0x20,%rax
ffff80000010526d:	89 c2                	mov    %eax,%edx
ffff80000010526f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105273:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105276:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010527a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105281:	90                   	nop
ffff800000105282:	5d                   	pop    %rbp
ffff800000105283:	c3                   	retq   

ffff800000105284 <set_system_gate>:
ffff800000105284:	f3 0f 1e fa          	endbr64 
ffff800000105288:	55                   	push   %rbp
ffff800000105289:	48 89 e5             	mov    %rsp,%rbp
ffff80000010528c:	f3 0f 1e fa          	endbr64 
ffff800000105290:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff80000010528c <set_system_gate+0x8>
ffff800000105297:	49 bb ac 2e 00 00 00 	movabs $0x2eac,%r11
ffff80000010529e:	00 00 00 
ffff8000001052a1:	4c 01 d8             	add    %r11,%rax
ffff8000001052a4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff8000001052a8:	89 f0                	mov    %esi,%eax
ffff8000001052aa:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001052ae:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff8000001052b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001052b5:	89 c2                	mov    %eax,%edx
ffff8000001052b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001052bb:	66 89 10             	mov    %dx,(%rax)
ffff8000001052be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001052c2:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff8000001052c8:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff8000001052cc:	83 e0 07             	and    $0x7,%eax
ffff8000001052cf:	89 c2                	mov    %eax,%edx
ffff8000001052d1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001052d5:	89 d1                	mov    %edx,%ecx
ffff8000001052d7:	83 e1 07             	and    $0x7,%ecx
ffff8000001052da:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff8000001052de:	83 e2 f8             	and    $0xfffffff8,%edx
ffff8000001052e1:	09 ca                	or     %ecx,%edx
ffff8000001052e3:	88 50 04             	mov    %dl,0x4(%rax)
ffff8000001052e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001052ea:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff8000001052ee:	83 e2 07             	and    $0x7,%edx
ffff8000001052f1:	88 50 04             	mov    %dl,0x4(%rax)
ffff8000001052f4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001052f8:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001052fc:	83 ca 0f             	or     $0xf,%edx
ffff8000001052ff:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105302:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105306:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010530a:	83 e2 ef             	and    $0xffffffef,%edx
ffff80000010530d:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105310:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105314:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105318:	83 e2 9f             	and    $0xffffff9f,%edx
ffff80000010531b:	83 ca 40             	or     $0x40,%edx
ffff80000010531e:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105321:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105325:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105329:	83 ca 80             	or     $0xffffff80,%edx
ffff80000010532c:	88 50 05             	mov    %dl,0x5(%rax)
ffff80000010532f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105333:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105337:	89 c2                	mov    %eax,%edx
ffff800000105339:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010533d:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105341:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105345:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105349:	89 c2                	mov    %eax,%edx
ffff80000010534b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010534f:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105352:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105356:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff80000010535d:	90                   	nop
ffff80000010535e:	5d                   	pop    %rbp
ffff80000010535f:	c3                   	retq   

ffff800000105360 <set_system_intr_gate>:
ffff800000105360:	f3 0f 1e fa          	endbr64 
ffff800000105364:	55                   	push   %rbp
ffff800000105365:	48 89 e5             	mov    %rsp,%rbp
ffff800000105368:	f3 0f 1e fa          	endbr64 
ffff80000010536c:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000105368 <set_system_intr_gate+0x8>
ffff800000105373:	49 bb d0 2d 00 00 00 	movabs $0x2dd0,%r11
ffff80000010537a:	00 00 00 
ffff80000010537d:	4c 01 d8             	add    %r11,%rax
ffff800000105380:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105384:	89 f0                	mov    %esi,%eax
ffff800000105386:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010538a:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff80000010538d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105391:	89 c2                	mov    %eax,%edx
ffff800000105393:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105397:	66 89 10             	mov    %dx,(%rax)
ffff80000010539a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010539e:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff8000001053a4:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff8000001053a8:	83 e0 07             	and    $0x7,%eax
ffff8000001053ab:	89 c2                	mov    %eax,%edx
ffff8000001053ad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001053b1:	89 d1                	mov    %edx,%ecx
ffff8000001053b3:	83 e1 07             	and    $0x7,%ecx
ffff8000001053b6:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff8000001053ba:	83 e2 f8             	and    $0xfffffff8,%edx
ffff8000001053bd:	09 ca                	or     %ecx,%edx
ffff8000001053bf:	88 50 04             	mov    %dl,0x4(%rax)
ffff8000001053c2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001053c6:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff8000001053ca:	83 e2 07             	and    $0x7,%edx
ffff8000001053cd:	88 50 04             	mov    %dl,0x4(%rax)
ffff8000001053d0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001053d4:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001053d8:	83 e2 f0             	and    $0xfffffff0,%edx
ffff8000001053db:	83 ca 0e             	or     $0xe,%edx
ffff8000001053de:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001053e1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001053e5:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001053e9:	83 e2 ef             	and    $0xffffffef,%edx
ffff8000001053ec:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001053ef:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001053f3:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001053f7:	83 e2 9f             	and    $0xffffff9f,%edx
ffff8000001053fa:	83 ca 40             	or     $0x40,%edx
ffff8000001053fd:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105400:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105404:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105408:	83 ca 80             	or     $0xffffff80,%edx
ffff80000010540b:	88 50 05             	mov    %dl,0x5(%rax)
ffff80000010540e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105412:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105416:	89 c2                	mov    %eax,%edx
ffff800000105418:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010541c:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105420:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105424:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105428:	89 c2                	mov    %eax,%edx
ffff80000010542a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010542e:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105431:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105435:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff80000010543c:	90                   	nop
ffff80000010543d:	5d                   	pop    %rbp
ffff80000010543e:	c3                   	retq   

ffff80000010543f <do_divide_error>:
ffff80000010543f:	f3 0f 1e fa          	endbr64 
ffff800000105443:	55                   	push   %rbp
ffff800000105444:	48 89 e5             	mov    %rsp,%rbp
ffff800000105447:	41 57                	push   %r15
ffff800000105449:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010544d:	f3 0f 1e fa          	endbr64 
ffff800000105451:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff80000010544d <do_divide_error+0xe>
ffff800000105458:	49 bb eb 2c 00 00 00 	movabs $0x2ceb,%r11
ffff80000010545f:	00 00 00 
ffff800000105462:	4d 01 d8             	add    %r11,%r8
ffff800000105465:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105469:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010546d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105474:	00 
ffff800000105475:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105479:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010547f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105483:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105487:	48 8b 08             	mov    (%rax),%rcx
ffff80000010548a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010548e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105492:	48 89 c6             	mov    %rax,%rsi
ffff800000105495:	48 b8 c8 e6 ff ff ff 	movabs $0xffffffffffffe6c8,%rax
ffff80000010549c:	ff ff ff 
ffff80000010549f:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff8000001054a3:	4d 89 c7             	mov    %r8,%r15
ffff8000001054a6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001054ab:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff8000001054b2:	ff ff ff 
ffff8000001054b5:	4d 01 c1             	add    %r8,%r9
ffff8000001054b8:	41 ff d1             	callq  *%r9
ffff8000001054bb:	eb fe                	jmp    ffff8000001054bb <do_divide_error+0x7c>

ffff8000001054bd <do_debug>:
ffff8000001054bd:	f3 0f 1e fa          	endbr64 
ffff8000001054c1:	55                   	push   %rbp
ffff8000001054c2:	48 89 e5             	mov    %rsp,%rbp
ffff8000001054c5:	41 57                	push   %r15
ffff8000001054c7:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001054cb:	f3 0f 1e fa          	endbr64 
ffff8000001054cf:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001054cb <do_debug+0xe>
ffff8000001054d6:	49 bb 6d 2c 00 00 00 	movabs $0x2c6d,%r11
ffff8000001054dd:	00 00 00 
ffff8000001054e0:	4d 01 d8             	add    %r11,%r8
ffff8000001054e3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001054e7:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001054eb:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001054f2:	00 
ffff8000001054f3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001054f7:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001054fd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105501:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105505:	48 8b 08             	mov    (%rax),%rcx
ffff800000105508:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010550c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105510:	48 89 c6             	mov    %rax,%rsi
ffff800000105513:	48 b8 08 e7 ff ff ff 	movabs $0xffffffffffffe708,%rax
ffff80000010551a:	ff ff ff 
ffff80000010551d:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105521:	4d 89 c7             	mov    %r8,%r15
ffff800000105524:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105529:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff800000105530:	ff ff ff 
ffff800000105533:	4d 01 c1             	add    %r8,%r9
ffff800000105536:	41 ff d1             	callq  *%r9
ffff800000105539:	eb fe                	jmp    ffff800000105539 <do_debug+0x7c>

ffff80000010553b <do_nmi>:
ffff80000010553b:	f3 0f 1e fa          	endbr64 
ffff80000010553f:	55                   	push   %rbp
ffff800000105540:	48 89 e5             	mov    %rsp,%rbp
ffff800000105543:	41 57                	push   %r15
ffff800000105545:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105549:	f3 0f 1e fa          	endbr64 
ffff80000010554d:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105549 <do_nmi+0xe>
ffff800000105554:	49 bb ef 2b 00 00 00 	movabs $0x2bef,%r11
ffff80000010555b:	00 00 00 
ffff80000010555e:	4d 01 d8             	add    %r11,%r8
ffff800000105561:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105565:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105569:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105570:	00 
ffff800000105571:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105575:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010557b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010557f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105583:	48 8b 08             	mov    (%rax),%rcx
ffff800000105586:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010558a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010558e:	48 89 c6             	mov    %rax,%rsi
ffff800000105591:	48 b8 40 e7 ff ff ff 	movabs $0xffffffffffffe740,%rax
ffff800000105598:	ff ff ff 
ffff80000010559b:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff80000010559f:	4d 89 c7             	mov    %r8,%r15
ffff8000001055a2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001055a7:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff8000001055ae:	ff ff ff 
ffff8000001055b1:	4d 01 c1             	add    %r8,%r9
ffff8000001055b4:	41 ff d1             	callq  *%r9
ffff8000001055b7:	eb fe                	jmp    ffff8000001055b7 <do_nmi+0x7c>

ffff8000001055b9 <do_int3>:
ffff8000001055b9:	f3 0f 1e fa          	endbr64 
ffff8000001055bd:	55                   	push   %rbp
ffff8000001055be:	48 89 e5             	mov    %rsp,%rbp
ffff8000001055c1:	41 57                	push   %r15
ffff8000001055c3:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001055c7:	f3 0f 1e fa          	endbr64 
ffff8000001055cb:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001055c7 <do_int3+0xe>
ffff8000001055d2:	49 bb 71 2b 00 00 00 	movabs $0x2b71,%r11
ffff8000001055d9:	00 00 00 
ffff8000001055dc:	4d 01 d8             	add    %r11,%r8
ffff8000001055df:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001055e3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001055e7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001055ee:	00 
ffff8000001055ef:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001055f3:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001055f9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001055fd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105601:	48 8b 08             	mov    (%rax),%rcx
ffff800000105604:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105608:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010560c:	48 89 c6             	mov    %rax,%rsi
ffff80000010560f:	48 b8 78 e7 ff ff ff 	movabs $0xffffffffffffe778,%rax
ffff800000105616:	ff ff ff 
ffff800000105619:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff80000010561d:	4d 89 c7             	mov    %r8,%r15
ffff800000105620:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105625:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff80000010562c:	ff ff ff 
ffff80000010562f:	4d 01 c1             	add    %r8,%r9
ffff800000105632:	41 ff d1             	callq  *%r9
ffff800000105635:	eb fe                	jmp    ffff800000105635 <do_int3+0x7c>

ffff800000105637 <do_overflow>:
ffff800000105637:	f3 0f 1e fa          	endbr64 
ffff80000010563b:	55                   	push   %rbp
ffff80000010563c:	48 89 e5             	mov    %rsp,%rbp
ffff80000010563f:	41 57                	push   %r15
ffff800000105641:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105645:	f3 0f 1e fa          	endbr64 
ffff800000105649:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105645 <do_overflow+0xe>
ffff800000105650:	49 bb f3 2a 00 00 00 	movabs $0x2af3,%r11
ffff800000105657:	00 00 00 
ffff80000010565a:	4d 01 d8             	add    %r11,%r8
ffff80000010565d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105661:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105665:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010566c:	00 
ffff80000010566d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105671:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105677:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010567b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010567f:	48 8b 08             	mov    (%rax),%rcx
ffff800000105682:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105686:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010568a:	48 89 c6             	mov    %rax,%rsi
ffff80000010568d:	48 b8 b0 e7 ff ff ff 	movabs $0xffffffffffffe7b0,%rax
ffff800000105694:	ff ff ff 
ffff800000105697:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff80000010569b:	4d 89 c7             	mov    %r8,%r15
ffff80000010569e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001056a3:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff8000001056aa:	ff ff ff 
ffff8000001056ad:	4d 01 c1             	add    %r8,%r9
ffff8000001056b0:	41 ff d1             	callq  *%r9
ffff8000001056b3:	eb fe                	jmp    ffff8000001056b3 <do_overflow+0x7c>

ffff8000001056b5 <do_bounds>:
ffff8000001056b5:	f3 0f 1e fa          	endbr64 
ffff8000001056b9:	55                   	push   %rbp
ffff8000001056ba:	48 89 e5             	mov    %rsp,%rbp
ffff8000001056bd:	41 57                	push   %r15
ffff8000001056bf:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001056c3:	f3 0f 1e fa          	endbr64 
ffff8000001056c7:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001056c3 <do_bounds+0xe>
ffff8000001056ce:	49 bb 75 2a 00 00 00 	movabs $0x2a75,%r11
ffff8000001056d5:	00 00 00 
ffff8000001056d8:	4d 01 d8             	add    %r11,%r8
ffff8000001056db:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001056df:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001056e3:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001056ea:	00 
ffff8000001056eb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001056ef:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001056f5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001056f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056fd:	48 8b 08             	mov    (%rax),%rcx
ffff800000105700:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105704:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105708:	48 89 c6             	mov    %rax,%rsi
ffff80000010570b:	48 b8 f0 e7 ff ff ff 	movabs $0xffffffffffffe7f0,%rax
ffff800000105712:	ff ff ff 
ffff800000105715:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105719:	4d 89 c7             	mov    %r8,%r15
ffff80000010571c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105721:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff800000105728:	ff ff ff 
ffff80000010572b:	4d 01 c1             	add    %r8,%r9
ffff80000010572e:	41 ff d1             	callq  *%r9
ffff800000105731:	eb fe                	jmp    ffff800000105731 <do_bounds+0x7c>

ffff800000105733 <do_undefined_opcode>:
ffff800000105733:	f3 0f 1e fa          	endbr64 
ffff800000105737:	55                   	push   %rbp
ffff800000105738:	48 89 e5             	mov    %rsp,%rbp
ffff80000010573b:	41 57                	push   %r15
ffff80000010573d:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105741:	f3 0f 1e fa          	endbr64 
ffff800000105745:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105741 <do_undefined_opcode+0xe>
ffff80000010574c:	49 bb f7 29 00 00 00 	movabs $0x29f7,%r11
ffff800000105753:	00 00 00 
ffff800000105756:	4d 01 d8             	add    %r11,%r8
ffff800000105759:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010575d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105761:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105768:	00 
ffff800000105769:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010576d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105773:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105777:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010577b:	48 8b 08             	mov    (%rax),%rcx
ffff80000010577e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105782:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105786:	48 89 c6             	mov    %rax,%rsi
ffff800000105789:	48 b8 30 e8 ff ff ff 	movabs $0xffffffffffffe830,%rax
ffff800000105790:	ff ff ff 
ffff800000105793:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105797:	4d 89 c7             	mov    %r8,%r15
ffff80000010579a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010579f:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff8000001057a6:	ff ff ff 
ffff8000001057a9:	4d 01 c1             	add    %r8,%r9
ffff8000001057ac:	41 ff d1             	callq  *%r9
ffff8000001057af:	eb fe                	jmp    ffff8000001057af <do_undefined_opcode+0x7c>

ffff8000001057b1 <do_dev_not_available>:
ffff8000001057b1:	f3 0f 1e fa          	endbr64 
ffff8000001057b5:	55                   	push   %rbp
ffff8000001057b6:	48 89 e5             	mov    %rsp,%rbp
ffff8000001057b9:	41 57                	push   %r15
ffff8000001057bb:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001057bf:	f3 0f 1e fa          	endbr64 
ffff8000001057c3:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001057bf <do_dev_not_available+0xe>
ffff8000001057ca:	49 bb 79 29 00 00 00 	movabs $0x2979,%r11
ffff8000001057d1:	00 00 00 
ffff8000001057d4:	4d 01 d8             	add    %r11,%r8
ffff8000001057d7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001057db:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001057df:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001057e6:	00 
ffff8000001057e7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001057eb:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001057f1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001057f5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001057f9:	48 8b 08             	mov    (%rax),%rcx
ffff8000001057fc:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105800:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105804:	48 89 c6             	mov    %rax,%rsi
ffff800000105807:	48 b8 78 e8 ff ff ff 	movabs $0xffffffffffffe878,%rax
ffff80000010580e:	ff ff ff 
ffff800000105811:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105815:	4d 89 c7             	mov    %r8,%r15
ffff800000105818:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010581d:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff800000105824:	ff ff ff 
ffff800000105827:	4d 01 c1             	add    %r8,%r9
ffff80000010582a:	41 ff d1             	callq  *%r9
ffff80000010582d:	eb fe                	jmp    ffff80000010582d <do_dev_not_available+0x7c>

ffff80000010582f <do_double_fault>:
ffff80000010582f:	f3 0f 1e fa          	endbr64 
ffff800000105833:	55                   	push   %rbp
ffff800000105834:	48 89 e5             	mov    %rsp,%rbp
ffff800000105837:	41 57                	push   %r15
ffff800000105839:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010583d:	f3 0f 1e fa          	endbr64 
ffff800000105841:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff80000010583d <do_double_fault+0xe>
ffff800000105848:	49 bb fb 28 00 00 00 	movabs $0x28fb,%r11
ffff80000010584f:	00 00 00 
ffff800000105852:	4d 01 d8             	add    %r11,%r8
ffff800000105855:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105859:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010585d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105864:	00 
ffff800000105865:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105869:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010586f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105873:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105877:	48 8b 08             	mov    (%rax),%rcx
ffff80000010587a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010587e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105882:	48 89 c6             	mov    %rax,%rsi
ffff800000105885:	48 b8 c0 e8 ff ff ff 	movabs $0xffffffffffffe8c0,%rax
ffff80000010588c:	ff ff ff 
ffff80000010588f:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105893:	4d 89 c7             	mov    %r8,%r15
ffff800000105896:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010589b:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff8000001058a2:	ff ff ff 
ffff8000001058a5:	4d 01 c1             	add    %r8,%r9
ffff8000001058a8:	41 ff d1             	callq  *%r9
ffff8000001058ab:	eb fe                	jmp    ffff8000001058ab <do_double_fault+0x7c>

ffff8000001058ad <do_coprocessor_segment_overrun>:
ffff8000001058ad:	f3 0f 1e fa          	endbr64 
ffff8000001058b1:	55                   	push   %rbp
ffff8000001058b2:	48 89 e5             	mov    %rsp,%rbp
ffff8000001058b5:	41 57                	push   %r15
ffff8000001058b7:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001058bb:	f3 0f 1e fa          	endbr64 
ffff8000001058bf:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001058bb <do_coprocessor_segment_overrun+0xe>
ffff8000001058c6:	49 bb 7d 28 00 00 00 	movabs $0x287d,%r11
ffff8000001058cd:	00 00 00 
ffff8000001058d0:	4d 01 d8             	add    %r11,%r8
ffff8000001058d3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001058d7:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001058db:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001058e2:	00 
ffff8000001058e3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001058e7:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001058ed:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001058f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058f5:	48 8b 08             	mov    (%rax),%rcx
ffff8000001058f8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001058fc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105900:	48 89 c6             	mov    %rax,%rsi
ffff800000105903:	48 b8 00 e9 ff ff ff 	movabs $0xffffffffffffe900,%rax
ffff80000010590a:	ff ff ff 
ffff80000010590d:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105911:	4d 89 c7             	mov    %r8,%r15
ffff800000105914:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105919:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff800000105920:	ff ff ff 
ffff800000105923:	4d 01 c1             	add    %r8,%r9
ffff800000105926:	41 ff d1             	callq  *%r9
ffff800000105929:	eb fe                	jmp    ffff800000105929 <do_coprocessor_segment_overrun+0x7c>

ffff80000010592b <do_invalid_TSS>:
ffff80000010592b:	f3 0f 1e fa          	endbr64 
ffff80000010592f:	55                   	push   %rbp
ffff800000105930:	48 89 e5             	mov    %rsp,%rbp
ffff800000105933:	41 57                	push   %r15
ffff800000105935:	53                   	push   %rbx
ffff800000105936:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010593a:	f3 0f 1e fa          	endbr64 
ffff80000010593e:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010593a <do_invalid_TSS+0xf>
ffff800000105945:	49 bb fe 27 00 00 00 	movabs $0x27fe,%r11
ffff80000010594c:	00 00 00 
ffff80000010594f:	4c 01 db             	add    %r11,%rbx
ffff800000105952:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105956:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010595a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105961:	00 
ffff800000105962:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105966:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010596c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105970:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105974:	48 8b 08             	mov    (%rax),%rcx
ffff800000105977:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010597b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010597f:	48 89 c6             	mov    %rax,%rsi
ffff800000105982:	48 b8 50 e9 ff ff ff 	movabs $0xffffffffffffe950,%rax
ffff800000105989:	ff ff ff 
ffff80000010598c:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105990:	49 89 df             	mov    %rbx,%r15
ffff800000105993:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105998:	49 b8 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r8
ffff80000010599f:	ff ff ff 
ffff8000001059a2:	49 01 d8             	add    %rbx,%r8
ffff8000001059a5:	41 ff d0             	callq  *%r8
ffff8000001059a8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001059ac:	83 e0 01             	and    $0x1,%eax
ffff8000001059af:	48 85 c0             	test   %rax,%rax
ffff8000001059b2:	74 25                	je     ffff8000001059d9 <do_invalid_TSS+0xae>
ffff8000001059b4:	48 b8 90 e9 ff ff ff 	movabs $0xffffffffffffe990,%rax
ffff8000001059bb:	ff ff ff 
ffff8000001059be:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001059c2:	49 89 df             	mov    %rbx,%r15
ffff8000001059c5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001059ca:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff8000001059d1:	ff ff ff 
ffff8000001059d4:	48 01 da             	add    %rbx,%rdx
ffff8000001059d7:	ff d2                	callq  *%rdx
ffff8000001059d9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001059dd:	83 e0 02             	and    $0x2,%eax
ffff8000001059e0:	48 85 c0             	test   %rax,%rax
ffff8000001059e3:	74 27                	je     ffff800000105a0c <do_invalid_TSS+0xe1>
ffff8000001059e5:	48 b8 10 ea ff ff ff 	movabs $0xffffffffffffea10,%rax
ffff8000001059ec:	ff ff ff 
ffff8000001059ef:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001059f3:	49 89 df             	mov    %rbx,%r15
ffff8000001059f6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001059fb:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105a02:	ff ff ff 
ffff800000105a05:	48 01 da             	add    %rbx,%rdx
ffff800000105a08:	ff d2                	callq  *%rdx
ffff800000105a0a:	eb 25                	jmp    ffff800000105a31 <do_invalid_TSS+0x106>
ffff800000105a0c:	48 b8 40 ea ff ff ff 	movabs $0xffffffffffffea40,%rax
ffff800000105a13:	ff ff ff 
ffff800000105a16:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105a1a:	49 89 df             	mov    %rbx,%r15
ffff800000105a1d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105a22:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105a29:	ff ff ff 
ffff800000105a2c:	48 01 da             	add    %rbx,%rdx
ffff800000105a2f:	ff d2                	callq  *%rdx
ffff800000105a31:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105a35:	83 e0 02             	and    $0x2,%eax
ffff800000105a38:	48 85 c0             	test   %rax,%rax
ffff800000105a3b:	75 58                	jne    ffff800000105a95 <do_invalid_TSS+0x16a>
ffff800000105a3d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105a41:	83 e0 04             	and    $0x4,%eax
ffff800000105a44:	48 85 c0             	test   %rax,%rax
ffff800000105a47:	74 27                	je     ffff800000105a70 <do_invalid_TSS+0x145>
ffff800000105a49:	48 b8 78 ea ff ff ff 	movabs $0xffffffffffffea78,%rax
ffff800000105a50:	ff ff ff 
ffff800000105a53:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105a57:	49 89 df             	mov    %rbx,%r15
ffff800000105a5a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105a5f:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105a66:	ff ff ff 
ffff800000105a69:	48 01 da             	add    %rbx,%rdx
ffff800000105a6c:	ff d2                	callq  *%rdx
ffff800000105a6e:	eb 25                	jmp    ffff800000105a95 <do_invalid_TSS+0x16a>
ffff800000105a70:	48 b8 b0 ea ff ff ff 	movabs $0xffffffffffffeab0,%rax
ffff800000105a77:	ff ff ff 
ffff800000105a7a:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105a7e:	49 89 df             	mov    %rbx,%r15
ffff800000105a81:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105a86:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105a8d:	ff ff ff 
ffff800000105a90:	48 01 da             	add    %rbx,%rdx
ffff800000105a93:	ff d2                	callq  *%rdx
ffff800000105a95:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105a99:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000105a9e:	48 89 c6             	mov    %rax,%rsi
ffff800000105aa1:	48 b8 e0 ea ff ff ff 	movabs $0xffffffffffffeae0,%rax
ffff800000105aa8:	ff ff ff 
ffff800000105aab:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105aaf:	49 89 df             	mov    %rbx,%r15
ffff800000105ab2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ab7:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105abe:	ff ff ff 
ffff800000105ac1:	48 01 da             	add    %rbx,%rdx
ffff800000105ac4:	ff d2                	callq  *%rdx
ffff800000105ac6:	eb fe                	jmp    ffff800000105ac6 <do_invalid_TSS+0x19b>

ffff800000105ac8 <do_segment_not_present>:
ffff800000105ac8:	f3 0f 1e fa          	endbr64 
ffff800000105acc:	55                   	push   %rbp
ffff800000105acd:	48 89 e5             	mov    %rsp,%rbp
ffff800000105ad0:	41 57                	push   %r15
ffff800000105ad2:	53                   	push   %rbx
ffff800000105ad3:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000105ad7:	f3 0f 1e fa          	endbr64 
ffff800000105adb:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000105ad7 <do_segment_not_present+0xf>
ffff800000105ae2:	49 bb 61 26 00 00 00 	movabs $0x2661,%r11
ffff800000105ae9:	00 00 00 
ffff800000105aec:	4c 01 db             	add    %r11,%rbx
ffff800000105aef:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105af3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105af7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105afe:	00 
ffff800000105aff:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105b03:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105b09:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105b0d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105b11:	48 8b 08             	mov    (%rax),%rcx
ffff800000105b14:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105b18:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105b1c:	48 89 c6             	mov    %rax,%rsi
ffff800000105b1f:	48 b8 00 eb ff ff ff 	movabs $0xffffffffffffeb00,%rax
ffff800000105b26:	ff ff ff 
ffff800000105b29:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105b2d:	49 89 df             	mov    %rbx,%r15
ffff800000105b30:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105b35:	49 b8 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r8
ffff800000105b3c:	ff ff ff 
ffff800000105b3f:	49 01 d8             	add    %rbx,%r8
ffff800000105b42:	41 ff d0             	callq  *%r8
ffff800000105b45:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105b49:	83 e0 01             	and    $0x1,%eax
ffff800000105b4c:	48 85 c0             	test   %rax,%rax
ffff800000105b4f:	74 25                	je     ffff800000105b76 <do_segment_not_present+0xae>
ffff800000105b51:	48 b8 90 e9 ff ff ff 	movabs $0xffffffffffffe990,%rax
ffff800000105b58:	ff ff ff 
ffff800000105b5b:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105b5f:	49 89 df             	mov    %rbx,%r15
ffff800000105b62:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105b67:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105b6e:	ff ff ff 
ffff800000105b71:	48 01 da             	add    %rbx,%rdx
ffff800000105b74:	ff d2                	callq  *%rdx
ffff800000105b76:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105b7a:	83 e0 02             	and    $0x2,%eax
ffff800000105b7d:	48 85 c0             	test   %rax,%rax
ffff800000105b80:	74 27                	je     ffff800000105ba9 <do_segment_not_present+0xe1>
ffff800000105b82:	48 b8 10 ea ff ff ff 	movabs $0xffffffffffffea10,%rax
ffff800000105b89:	ff ff ff 
ffff800000105b8c:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105b90:	49 89 df             	mov    %rbx,%r15
ffff800000105b93:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105b98:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105b9f:	ff ff ff 
ffff800000105ba2:	48 01 da             	add    %rbx,%rdx
ffff800000105ba5:	ff d2                	callq  *%rdx
ffff800000105ba7:	eb 25                	jmp    ffff800000105bce <do_segment_not_present+0x106>
ffff800000105ba9:	48 b8 40 ea ff ff ff 	movabs $0xffffffffffffea40,%rax
ffff800000105bb0:	ff ff ff 
ffff800000105bb3:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105bb7:	49 89 df             	mov    %rbx,%r15
ffff800000105bba:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105bbf:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105bc6:	ff ff ff 
ffff800000105bc9:	48 01 da             	add    %rbx,%rdx
ffff800000105bcc:	ff d2                	callq  *%rdx
ffff800000105bce:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105bd2:	83 e0 02             	and    $0x2,%eax
ffff800000105bd5:	48 85 c0             	test   %rax,%rax
ffff800000105bd8:	75 58                	jne    ffff800000105c32 <do_segment_not_present+0x16a>
ffff800000105bda:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105bde:	83 e0 04             	and    $0x4,%eax
ffff800000105be1:	48 85 c0             	test   %rax,%rax
ffff800000105be4:	74 27                	je     ffff800000105c0d <do_segment_not_present+0x145>
ffff800000105be6:	48 b8 78 ea ff ff ff 	movabs $0xffffffffffffea78,%rax
ffff800000105bed:	ff ff ff 
ffff800000105bf0:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105bf4:	49 89 df             	mov    %rbx,%r15
ffff800000105bf7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105bfc:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105c03:	ff ff ff 
ffff800000105c06:	48 01 da             	add    %rbx,%rdx
ffff800000105c09:	ff d2                	callq  *%rdx
ffff800000105c0b:	eb 25                	jmp    ffff800000105c32 <do_segment_not_present+0x16a>
ffff800000105c0d:	48 b8 b0 ea ff ff ff 	movabs $0xffffffffffffeab0,%rax
ffff800000105c14:	ff ff ff 
ffff800000105c17:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105c1b:	49 89 df             	mov    %rbx,%r15
ffff800000105c1e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105c23:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105c2a:	ff ff ff 
ffff800000105c2d:	48 01 da             	add    %rbx,%rdx
ffff800000105c30:	ff d2                	callq  *%rdx
ffff800000105c32:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105c36:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000105c3b:	48 89 c6             	mov    %rax,%rsi
ffff800000105c3e:	48 b8 e0 ea ff ff ff 	movabs $0xffffffffffffeae0,%rax
ffff800000105c45:	ff ff ff 
ffff800000105c48:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105c4c:	49 89 df             	mov    %rbx,%r15
ffff800000105c4f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105c54:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105c5b:	ff ff ff 
ffff800000105c5e:	48 01 da             	add    %rbx,%rdx
ffff800000105c61:	ff d2                	callq  *%rdx
ffff800000105c63:	eb fe                	jmp    ffff800000105c63 <do_segment_not_present+0x19b>

ffff800000105c65 <do_stack_segment_fault>:
ffff800000105c65:	f3 0f 1e fa          	endbr64 
ffff800000105c69:	55                   	push   %rbp
ffff800000105c6a:	48 89 e5             	mov    %rsp,%rbp
ffff800000105c6d:	41 57                	push   %r15
ffff800000105c6f:	53                   	push   %rbx
ffff800000105c70:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000105c74:	f3 0f 1e fa          	endbr64 
ffff800000105c78:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000105c74 <do_stack_segment_fault+0xf>
ffff800000105c7f:	49 bb c4 24 00 00 00 	movabs $0x24c4,%r11
ffff800000105c86:	00 00 00 
ffff800000105c89:	4c 01 db             	add    %r11,%rbx
ffff800000105c8c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105c90:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105c94:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105c9b:	00 
ffff800000105c9c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105ca0:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105ca6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105caa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105cae:	48 8b 08             	mov    (%rax),%rcx
ffff800000105cb1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105cb5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105cb9:	48 89 c6             	mov    %rax,%rsi
ffff800000105cbc:	48 b8 48 eb ff ff ff 	movabs $0xffffffffffffeb48,%rax
ffff800000105cc3:	ff ff ff 
ffff800000105cc6:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105cca:	49 89 df             	mov    %rbx,%r15
ffff800000105ccd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105cd2:	49 b8 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r8
ffff800000105cd9:	ff ff ff 
ffff800000105cdc:	49 01 d8             	add    %rbx,%r8
ffff800000105cdf:	41 ff d0             	callq  *%r8
ffff800000105ce2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105ce6:	83 e0 01             	and    $0x1,%eax
ffff800000105ce9:	48 85 c0             	test   %rax,%rax
ffff800000105cec:	74 25                	je     ffff800000105d13 <do_stack_segment_fault+0xae>
ffff800000105cee:	48 b8 90 e9 ff ff ff 	movabs $0xffffffffffffe990,%rax
ffff800000105cf5:	ff ff ff 
ffff800000105cf8:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105cfc:	49 89 df             	mov    %rbx,%r15
ffff800000105cff:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d04:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105d0b:	ff ff ff 
ffff800000105d0e:	48 01 da             	add    %rbx,%rdx
ffff800000105d11:	ff d2                	callq  *%rdx
ffff800000105d13:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d17:	83 e0 02             	and    $0x2,%eax
ffff800000105d1a:	48 85 c0             	test   %rax,%rax
ffff800000105d1d:	74 27                	je     ffff800000105d46 <do_stack_segment_fault+0xe1>
ffff800000105d1f:	48 b8 10 ea ff ff ff 	movabs $0xffffffffffffea10,%rax
ffff800000105d26:	ff ff ff 
ffff800000105d29:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105d2d:	49 89 df             	mov    %rbx,%r15
ffff800000105d30:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d35:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105d3c:	ff ff ff 
ffff800000105d3f:	48 01 da             	add    %rbx,%rdx
ffff800000105d42:	ff d2                	callq  *%rdx
ffff800000105d44:	eb 25                	jmp    ffff800000105d6b <do_stack_segment_fault+0x106>
ffff800000105d46:	48 b8 40 ea ff ff ff 	movabs $0xffffffffffffea40,%rax
ffff800000105d4d:	ff ff ff 
ffff800000105d50:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105d54:	49 89 df             	mov    %rbx,%r15
ffff800000105d57:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d5c:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105d63:	ff ff ff 
ffff800000105d66:	48 01 da             	add    %rbx,%rdx
ffff800000105d69:	ff d2                	callq  *%rdx
ffff800000105d6b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d6f:	83 e0 02             	and    $0x2,%eax
ffff800000105d72:	48 85 c0             	test   %rax,%rax
ffff800000105d75:	75 58                	jne    ffff800000105dcf <do_stack_segment_fault+0x16a>
ffff800000105d77:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d7b:	83 e0 04             	and    $0x4,%eax
ffff800000105d7e:	48 85 c0             	test   %rax,%rax
ffff800000105d81:	74 27                	je     ffff800000105daa <do_stack_segment_fault+0x145>
ffff800000105d83:	48 b8 78 ea ff ff ff 	movabs $0xffffffffffffea78,%rax
ffff800000105d8a:	ff ff ff 
ffff800000105d8d:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105d91:	49 89 df             	mov    %rbx,%r15
ffff800000105d94:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d99:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105da0:	ff ff ff 
ffff800000105da3:	48 01 da             	add    %rbx,%rdx
ffff800000105da6:	ff d2                	callq  *%rdx
ffff800000105da8:	eb 25                	jmp    ffff800000105dcf <do_stack_segment_fault+0x16a>
ffff800000105daa:	48 b8 b0 ea ff ff ff 	movabs $0xffffffffffffeab0,%rax
ffff800000105db1:	ff ff ff 
ffff800000105db4:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105db8:	49 89 df             	mov    %rbx,%r15
ffff800000105dbb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105dc0:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105dc7:	ff ff ff 
ffff800000105dca:	48 01 da             	add    %rbx,%rdx
ffff800000105dcd:	ff d2                	callq  *%rdx
ffff800000105dcf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105dd3:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000105dd8:	48 89 c6             	mov    %rax,%rsi
ffff800000105ddb:	48 b8 e0 ea ff ff ff 	movabs $0xffffffffffffeae0,%rax
ffff800000105de2:	ff ff ff 
ffff800000105de5:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105de9:	49 89 df             	mov    %rbx,%r15
ffff800000105dec:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105df1:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105df8:	ff ff ff 
ffff800000105dfb:	48 01 da             	add    %rbx,%rdx
ffff800000105dfe:	ff d2                	callq  *%rdx
ffff800000105e00:	eb fe                	jmp    ffff800000105e00 <do_stack_segment_fault+0x19b>

ffff800000105e02 <do_general_protection>:
ffff800000105e02:	f3 0f 1e fa          	endbr64 
ffff800000105e06:	55                   	push   %rbp
ffff800000105e07:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e0a:	41 57                	push   %r15
ffff800000105e0c:	53                   	push   %rbx
ffff800000105e0d:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000105e11:	f3 0f 1e fa          	endbr64 
ffff800000105e15:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000105e11 <do_general_protection+0xf>
ffff800000105e1c:	49 bb 27 23 00 00 00 	movabs $0x2327,%r11
ffff800000105e23:	00 00 00 
ffff800000105e26:	4c 01 db             	add    %r11,%rbx
ffff800000105e29:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105e2d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105e31:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105e38:	00 
ffff800000105e39:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105e3d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105e43:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105e47:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105e4b:	48 8b 08             	mov    (%rax),%rcx
ffff800000105e4e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105e52:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e56:	48 89 c6             	mov    %rax,%rsi
ffff800000105e59:	48 b8 90 eb ff ff ff 	movabs $0xffffffffffffeb90,%rax
ffff800000105e60:	ff ff ff 
ffff800000105e63:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105e67:	49 89 df             	mov    %rbx,%r15
ffff800000105e6a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e6f:	49 b8 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r8
ffff800000105e76:	ff ff ff 
ffff800000105e79:	49 01 d8             	add    %rbx,%r8
ffff800000105e7c:	41 ff d0             	callq  *%r8
ffff800000105e7f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e83:	83 e0 01             	and    $0x1,%eax
ffff800000105e86:	48 85 c0             	test   %rax,%rax
ffff800000105e89:	74 25                	je     ffff800000105eb0 <do_general_protection+0xae>
ffff800000105e8b:	48 b8 90 e9 ff ff ff 	movabs $0xffffffffffffe990,%rax
ffff800000105e92:	ff ff ff 
ffff800000105e95:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105e99:	49 89 df             	mov    %rbx,%r15
ffff800000105e9c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ea1:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105ea8:	ff ff ff 
ffff800000105eab:	48 01 da             	add    %rbx,%rdx
ffff800000105eae:	ff d2                	callq  *%rdx
ffff800000105eb0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105eb4:	83 e0 02             	and    $0x2,%eax
ffff800000105eb7:	48 85 c0             	test   %rax,%rax
ffff800000105eba:	74 27                	je     ffff800000105ee3 <do_general_protection+0xe1>
ffff800000105ebc:	48 b8 10 ea ff ff ff 	movabs $0xffffffffffffea10,%rax
ffff800000105ec3:	ff ff ff 
ffff800000105ec6:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105eca:	49 89 df             	mov    %rbx,%r15
ffff800000105ecd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ed2:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105ed9:	ff ff ff 
ffff800000105edc:	48 01 da             	add    %rbx,%rdx
ffff800000105edf:	ff d2                	callq  *%rdx
ffff800000105ee1:	eb 25                	jmp    ffff800000105f08 <do_general_protection+0x106>
ffff800000105ee3:	48 b8 40 ea ff ff ff 	movabs $0xffffffffffffea40,%rax
ffff800000105eea:	ff ff ff 
ffff800000105eed:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105ef1:	49 89 df             	mov    %rbx,%r15
ffff800000105ef4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ef9:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105f00:	ff ff ff 
ffff800000105f03:	48 01 da             	add    %rbx,%rdx
ffff800000105f06:	ff d2                	callq  *%rdx
ffff800000105f08:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f0c:	83 e0 02             	and    $0x2,%eax
ffff800000105f0f:	48 85 c0             	test   %rax,%rax
ffff800000105f12:	75 58                	jne    ffff800000105f6c <do_general_protection+0x16a>
ffff800000105f14:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f18:	83 e0 04             	and    $0x4,%eax
ffff800000105f1b:	48 85 c0             	test   %rax,%rax
ffff800000105f1e:	74 27                	je     ffff800000105f47 <do_general_protection+0x145>
ffff800000105f20:	48 b8 78 ea ff ff ff 	movabs $0xffffffffffffea78,%rax
ffff800000105f27:	ff ff ff 
ffff800000105f2a:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105f2e:	49 89 df             	mov    %rbx,%r15
ffff800000105f31:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f36:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105f3d:	ff ff ff 
ffff800000105f40:	48 01 da             	add    %rbx,%rdx
ffff800000105f43:	ff d2                	callq  *%rdx
ffff800000105f45:	eb 25                	jmp    ffff800000105f6c <do_general_protection+0x16a>
ffff800000105f47:	48 b8 b0 ea ff ff ff 	movabs $0xffffffffffffeab0,%rax
ffff800000105f4e:	ff ff ff 
ffff800000105f51:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105f55:	49 89 df             	mov    %rbx,%r15
ffff800000105f58:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f5d:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105f64:	ff ff ff 
ffff800000105f67:	48 01 da             	add    %rbx,%rdx
ffff800000105f6a:	ff d2                	callq  *%rdx
ffff800000105f6c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f70:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000105f75:	48 89 c6             	mov    %rax,%rsi
ffff800000105f78:	48 b8 e0 ea ff ff ff 	movabs $0xffffffffffffeae0,%rax
ffff800000105f7f:	ff ff ff 
ffff800000105f82:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105f86:	49 89 df             	mov    %rbx,%r15
ffff800000105f89:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f8e:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000105f95:	ff ff ff 
ffff800000105f98:	48 01 da             	add    %rbx,%rdx
ffff800000105f9b:	ff d2                	callq  *%rdx
ffff800000105f9d:	eb fe                	jmp    ffff800000105f9d <do_general_protection+0x19b>

ffff800000105f9f <do_page_fault>:
ffff800000105f9f:	f3 0f 1e fa          	endbr64 
ffff800000105fa3:	55                   	push   %rbp
ffff800000105fa4:	48 89 e5             	mov    %rsp,%rbp
ffff800000105fa7:	41 57                	push   %r15
ffff800000105fa9:	53                   	push   %rbx
ffff800000105faa:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000105fae:	f3 0f 1e fa          	endbr64 
ffff800000105fb2:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000105fae <do_page_fault+0xf>
ffff800000105fb9:	49 bb 8a 21 00 00 00 	movabs $0x218a,%r11
ffff800000105fc0:	00 00 00 
ffff800000105fc3:	4c 01 db             	add    %r11,%rbx
ffff800000105fc6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105fca:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105fce:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105fd5:	00 
ffff800000105fd6:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000105fdd:	00 
ffff800000105fde:	0f 20 d0             	mov    %cr2,%rax
ffff800000105fe1:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000105fe5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105fe9:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105fef:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105ff3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105ff7:	48 8b 08             	mov    (%rax),%rcx
ffff800000105ffa:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105ffe:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106002:	48 89 c6             	mov    %rax,%rsi
ffff800000106005:	48 b8 d8 eb ff ff ff 	movabs $0xffffffffffffebd8,%rax
ffff80000010600c:	ff ff ff 
ffff80000010600f:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106013:	49 89 df             	mov    %rbx,%r15
ffff800000106016:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010601b:	49 b8 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r8
ffff800000106022:	ff ff ff 
ffff800000106025:	49 01 d8             	add    %rbx,%r8
ffff800000106028:	41 ff d0             	callq  *%r8
ffff80000010602b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010602f:	83 e0 01             	and    $0x1,%eax
ffff800000106032:	48 85 c0             	test   %rax,%rax
ffff800000106035:	75 25                	jne    ffff80000010605c <do_page_fault+0xbd>
ffff800000106037:	48 b8 16 ec ff ff ff 	movabs $0xffffffffffffec16,%rax
ffff80000010603e:	ff ff ff 
ffff800000106041:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106045:	49 89 df             	mov    %rbx,%r15
ffff800000106048:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010604d:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000106054:	ff ff ff 
ffff800000106057:	48 01 da             	add    %rbx,%rdx
ffff80000010605a:	ff d2                	callq  *%rdx
ffff80000010605c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106060:	83 e0 02             	and    $0x2,%eax
ffff800000106063:	48 85 c0             	test   %rax,%rax
ffff800000106066:	74 27                	je     ffff80000010608f <do_page_fault+0xf0>
ffff800000106068:	48 b8 29 ec ff ff ff 	movabs $0xffffffffffffec29,%rax
ffff80000010606f:	ff ff ff 
ffff800000106072:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106076:	49 89 df             	mov    %rbx,%r15
ffff800000106079:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010607e:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000106085:	ff ff ff 
ffff800000106088:	48 01 da             	add    %rbx,%rdx
ffff80000010608b:	ff d2                	callq  *%rdx
ffff80000010608d:	eb 25                	jmp    ffff8000001060b4 <do_page_fault+0x115>
ffff80000010608f:	48 b8 3d ec ff ff ff 	movabs $0xffffffffffffec3d,%rax
ffff800000106096:	ff ff ff 
ffff800000106099:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010609d:	49 89 df             	mov    %rbx,%r15
ffff8000001060a0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060a5:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff8000001060ac:	ff ff ff 
ffff8000001060af:	48 01 da             	add    %rbx,%rdx
ffff8000001060b2:	ff d2                	callq  *%rdx
ffff8000001060b4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001060b8:	83 e0 04             	and    $0x4,%eax
ffff8000001060bb:	48 85 c0             	test   %rax,%rax
ffff8000001060be:	74 27                	je     ffff8000001060e7 <do_page_fault+0x148>
ffff8000001060c0:	48 b8 50 ec ff ff ff 	movabs $0xffffffffffffec50,%rax
ffff8000001060c7:	ff ff ff 
ffff8000001060ca:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001060ce:	49 89 df             	mov    %rbx,%r15
ffff8000001060d1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060d6:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff8000001060dd:	ff ff ff 
ffff8000001060e0:	48 01 da             	add    %rbx,%rdx
ffff8000001060e3:	ff d2                	callq  *%rdx
ffff8000001060e5:	eb 25                	jmp    ffff80000010610c <do_page_fault+0x16d>
ffff8000001060e7:	48 b8 62 ec ff ff ff 	movabs $0xffffffffffffec62,%rax
ffff8000001060ee:	ff ff ff 
ffff8000001060f1:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001060f5:	49 89 df             	mov    %rbx,%r15
ffff8000001060f8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060fd:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000106104:	ff ff ff 
ffff800000106107:	48 01 da             	add    %rbx,%rdx
ffff80000010610a:	ff d2                	callq  *%rdx
ffff80000010610c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106110:	83 e0 08             	and    $0x8,%eax
ffff800000106113:	48 85 c0             	test   %rax,%rax
ffff800000106116:	74 25                	je     ffff80000010613d <do_page_fault+0x19e>
ffff800000106118:	48 b8 7e ec ff ff ff 	movabs $0xffffffffffffec7e,%rax
ffff80000010611f:	ff ff ff 
ffff800000106122:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106126:	49 89 df             	mov    %rbx,%r15
ffff800000106129:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010612e:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000106135:	ff ff ff 
ffff800000106138:	48 01 da             	add    %rbx,%rdx
ffff80000010613b:	ff d2                	callq  *%rdx
ffff80000010613d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106141:	83 e0 10             	and    $0x10,%eax
ffff800000106144:	48 85 c0             	test   %rax,%rax
ffff800000106147:	74 25                	je     ffff80000010616e <do_page_fault+0x1cf>
ffff800000106149:	48 b8 a0 ec ff ff ff 	movabs $0xffffffffffffeca0,%rax
ffff800000106150:	ff ff ff 
ffff800000106153:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106157:	49 89 df             	mov    %rbx,%r15
ffff80000010615a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010615f:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff800000106166:	ff ff ff 
ffff800000106169:	48 01 da             	add    %rbx,%rdx
ffff80000010616c:	ff d2                	callq  *%rdx
ffff80000010616e:	48 b8 bf ec ff ff ff 	movabs $0xffffffffffffecbf,%rax
ffff800000106175:	ff ff ff 
ffff800000106178:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010617c:	49 89 df             	mov    %rbx,%r15
ffff80000010617f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106184:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff80000010618b:	ff ff ff 
ffff80000010618e:	48 01 da             	add    %rbx,%rdx
ffff800000106191:	ff d2                	callq  *%rdx
ffff800000106193:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106197:	48 89 c6             	mov    %rax,%rsi
ffff80000010619a:	48 b8 c1 ec ff ff ff 	movabs $0xffffffffffffecc1,%rax
ffff8000001061a1:	ff ff ff 
ffff8000001061a4:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001061a8:	49 89 df             	mov    %rbx,%r15
ffff8000001061ab:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061b0:	48 ba 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%rdx
ffff8000001061b7:	ff ff ff 
ffff8000001061ba:	48 01 da             	add    %rbx,%rdx
ffff8000001061bd:	ff d2                	callq  *%rdx
ffff8000001061bf:	eb fe                	jmp    ffff8000001061bf <do_page_fault+0x220>

ffff8000001061c1 <do_x87_FPU_error>:
ffff8000001061c1:	f3 0f 1e fa          	endbr64 
ffff8000001061c5:	55                   	push   %rbp
ffff8000001061c6:	48 89 e5             	mov    %rsp,%rbp
ffff8000001061c9:	41 57                	push   %r15
ffff8000001061cb:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001061cf:	f3 0f 1e fa          	endbr64 
ffff8000001061d3:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001061cf <do_x87_FPU_error+0xe>
ffff8000001061da:	49 bb 69 1f 00 00 00 	movabs $0x1f69,%r11
ffff8000001061e1:	00 00 00 
ffff8000001061e4:	4d 01 d8             	add    %r11,%r8
ffff8000001061e7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001061eb:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001061ef:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001061f6:	00 
ffff8000001061f7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001061fb:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106201:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106205:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106209:	48 8b 08             	mov    (%rax),%rcx
ffff80000010620c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106210:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106214:	48 89 c6             	mov    %rax,%rsi
ffff800000106217:	48 b8 d0 ec ff ff ff 	movabs $0xffffffffffffecd0,%rax
ffff80000010621e:	ff ff ff 
ffff800000106221:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106225:	4d 89 c7             	mov    %r8,%r15
ffff800000106228:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010622d:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff800000106234:	ff ff ff 
ffff800000106237:	4d 01 c1             	add    %r8,%r9
ffff80000010623a:	41 ff d1             	callq  *%r9
ffff80000010623d:	eb fe                	jmp    ffff80000010623d <do_x87_FPU_error+0x7c>

ffff80000010623f <do_alignment_check>:
ffff80000010623f:	f3 0f 1e fa          	endbr64 
ffff800000106243:	55                   	push   %rbp
ffff800000106244:	48 89 e5             	mov    %rsp,%rbp
ffff800000106247:	41 57                	push   %r15
ffff800000106249:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010624d:	f3 0f 1e fa          	endbr64 
ffff800000106251:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff80000010624d <do_alignment_check+0xe>
ffff800000106258:	49 bb eb 1e 00 00 00 	movabs $0x1eeb,%r11
ffff80000010625f:	00 00 00 
ffff800000106262:	4d 01 d8             	add    %r11,%r8
ffff800000106265:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106269:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010626d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106274:	00 
ffff800000106275:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106279:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010627f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106283:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106287:	48 8b 08             	mov    (%rax),%rcx
ffff80000010628a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010628e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106292:	48 89 c6             	mov    %rax,%rsi
ffff800000106295:	48 b8 18 ed ff ff ff 	movabs $0xffffffffffffed18,%rax
ffff80000010629c:	ff ff ff 
ffff80000010629f:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff8000001062a3:	4d 89 c7             	mov    %r8,%r15
ffff8000001062a6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062ab:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff8000001062b2:	ff ff ff 
ffff8000001062b5:	4d 01 c1             	add    %r8,%r9
ffff8000001062b8:	41 ff d1             	callq  *%r9
ffff8000001062bb:	eb fe                	jmp    ffff8000001062bb <do_alignment_check+0x7c>

ffff8000001062bd <do_machine_check>:
ffff8000001062bd:	f3 0f 1e fa          	endbr64 
ffff8000001062c1:	55                   	push   %rbp
ffff8000001062c2:	48 89 e5             	mov    %rsp,%rbp
ffff8000001062c5:	41 57                	push   %r15
ffff8000001062c7:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001062cb:	f3 0f 1e fa          	endbr64 
ffff8000001062cf:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001062cb <do_machine_check+0xe>
ffff8000001062d6:	49 bb 6d 1e 00 00 00 	movabs $0x1e6d,%r11
ffff8000001062dd:	00 00 00 
ffff8000001062e0:	4d 01 d8             	add    %r11,%r8
ffff8000001062e3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001062e7:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001062eb:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001062f2:	00 
ffff8000001062f3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001062f7:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001062fd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106301:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106305:	48 8b 08             	mov    (%rax),%rcx
ffff800000106308:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010630c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106310:	48 89 c6             	mov    %rax,%rsi
ffff800000106313:	48 b8 60 ed ff ff ff 	movabs $0xffffffffffffed60,%rax
ffff80000010631a:	ff ff ff 
ffff80000010631d:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106321:	4d 89 c7             	mov    %r8,%r15
ffff800000106324:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106329:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff800000106330:	ff ff ff 
ffff800000106333:	4d 01 c1             	add    %r8,%r9
ffff800000106336:	41 ff d1             	callq  *%r9
ffff800000106339:	eb fe                	jmp    ffff800000106339 <do_machine_check+0x7c>

ffff80000010633b <do_SIMD_exception>:
ffff80000010633b:	f3 0f 1e fa          	endbr64 
ffff80000010633f:	55                   	push   %rbp
ffff800000106340:	48 89 e5             	mov    %rsp,%rbp
ffff800000106343:	41 57                	push   %r15
ffff800000106345:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106349:	f3 0f 1e fa          	endbr64 
ffff80000010634d:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106349 <do_SIMD_exception+0xe>
ffff800000106354:	49 bb ef 1d 00 00 00 	movabs $0x1def,%r11
ffff80000010635b:	00 00 00 
ffff80000010635e:	4d 01 d8             	add    %r11,%r8
ffff800000106361:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106365:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106369:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106370:	00 
ffff800000106371:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106375:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010637b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010637f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106383:	48 8b 08             	mov    (%rax),%rcx
ffff800000106386:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010638a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010638e:	48 89 c6             	mov    %rax,%rsi
ffff800000106391:	48 b8 a8 ed ff ff ff 	movabs $0xffffffffffffeda8,%rax
ffff800000106398:	ff ff ff 
ffff80000010639b:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff80000010639f:	4d 89 c7             	mov    %r8,%r15
ffff8000001063a2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063a7:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff8000001063ae:	ff ff ff 
ffff8000001063b1:	4d 01 c1             	add    %r8,%r9
ffff8000001063b4:	41 ff d1             	callq  *%r9
ffff8000001063b7:	eb fe                	jmp    ffff8000001063b7 <do_SIMD_exception+0x7c>

ffff8000001063b9 <do_virtualization_exception>:
ffff8000001063b9:	f3 0f 1e fa          	endbr64 
ffff8000001063bd:	55                   	push   %rbp
ffff8000001063be:	48 89 e5             	mov    %rsp,%rbp
ffff8000001063c1:	41 57                	push   %r15
ffff8000001063c3:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001063c7:	f3 0f 1e fa          	endbr64 
ffff8000001063cb:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001063c7 <do_virtualization_exception+0xe>
ffff8000001063d2:	49 bb 71 1d 00 00 00 	movabs $0x1d71,%r11
ffff8000001063d9:	00 00 00 
ffff8000001063dc:	4d 01 d8             	add    %r11,%r8
ffff8000001063df:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001063e3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001063e7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001063ee:	00 
ffff8000001063ef:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001063f3:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001063f9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001063fd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106401:	48 8b 08             	mov    (%rax),%rcx
ffff800000106404:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106408:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010640c:	48 89 c6             	mov    %rax,%rsi
ffff80000010640f:	48 b8 f0 ed ff ff ff 	movabs $0xffffffffffffedf0,%rax
ffff800000106416:	ff ff ff 
ffff800000106419:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff80000010641d:	4d 89 c7             	mov    %r8,%r15
ffff800000106420:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106425:	49 b9 36 c6 ff ff ff 	movabs $0xffffffffffffc636,%r9
ffff80000010642c:	ff ff ff 
ffff80000010642f:	4d 01 c1             	add    %r8,%r9
ffff800000106432:	41 ff d1             	callq  *%r9
ffff800000106435:	eb fe                	jmp    ffff800000106435 <do_virtualization_exception+0x7c>

Disassembly of section .eh_frame:

ffff800000106438 <.eh_frame>:
ffff800000106438:	14 00                	adc    $0x0,%al
ffff80000010643a:	00 00                	add    %al,(%rax)
ffff80000010643c:	00 00                	add    %al,(%rax)
ffff80000010643e:	00 00                	add    %al,(%rax)
ffff800000106440:	01 7a 52             	add    %edi,0x52(%rdx)
ffff800000106443:	00 01                	add    %al,(%rcx)
ffff800000106445:	78 10                	js     ffff800000106457 <_etext+0x20>
ffff800000106447:	01 1b                	add    %ebx,(%rbx)
ffff800000106449:	0c 07                	or     $0x7,%al
ffff80000010644b:	08 90 01 00 00 1c    	or     %dl,0x1c000001(%rax)
ffff800000106451:	00 00                	add    %al,(%rax)
ffff800000106453:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000106456:	00 00                	add    %al,(%rax)
ffff800000106458:	7f dd                	jg     ffff800000106437 <_etext>
ffff80000010645a:	ff                   	(bad)  
ffff80000010645b:	ff 71 00             	pushq  0x0(%rcx)
ffff80000010645e:	00 00                	add    %al,(%rax)
ffff800000106460:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000106463:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000106469:	47 8f 03             	rex.RXB popq (%r11)
ffff80000010646c:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000106470:	1c 00                	sbb    $0x0,%al
ffff800000106472:	00 00                	add    %al,(%rax)
ffff800000106474:	3c 00                	cmp    $0x0,%al
ffff800000106476:	00 00                	add    %al,(%rax)
ffff800000106478:	d0 dd                	rcr    %ch
ffff80000010647a:	ff                   	(bad)  
ffff80000010647b:	ff 00                	incl   (%rax)
ffff80000010647d:	01 00                	add    %eax,(%rax)
ffff80000010647f:	00 00                	add    %al,(%rax)
ffff800000106481:	45 0e                	rex.RB (bad) 
ffff800000106483:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000106489:	02 f7                	add    %bh,%dh
ffff80000010648b:	0c 07                	or     $0x7,%al
ffff80000010648d:	08 00                	or     %al,(%rax)
ffff80000010648f:	00 20                	add    %ah,(%rax)
ffff800000106491:	00 00                	add    %al,(%rax)
ffff800000106493:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
ffff800000106497:	00 b0 de ff ff 26    	add    %dh,0x26ffffde(%rax)
ffff80000010649d:	04 00                	add    $0x0,%al
ffff80000010649f:	00 00                	add    %al,(%rax)
ffff8000001064a1:	45 0e                	rex.RB (bad) 
ffff8000001064a3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001064a9:	45 83 03 03          	rex.RB addl $0x3,(%r11)
ffff8000001064ad:	18 04 0c             	sbb    %al,(%rsp,%rcx,1)
ffff8000001064b0:	07                   	(bad)  
ffff8000001064b1:	08 00                	or     %al,(%rax)
ffff8000001064b3:	00 20                	add    %ah,(%rax)
ffff8000001064b5:	00 00                	add    %al,(%rax)
ffff8000001064b7:	00 80 00 00 00 b2    	add    %al,-0x4e000000(%rax)
ffff8000001064bd:	e2 ff                	loop   ffff8000001064be <_etext+0x87>
ffff8000001064bf:	ff 2a                	ljmp   *(%rdx)
ffff8000001064c1:	01 00                	add    %eax,(%rax)
ffff8000001064c3:	00 00                	add    %al,(%rax)
ffff8000001064c5:	45 0e                	rex.RB (bad) 
ffff8000001064c7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001064cd:	4a 8f 03             	rex.WX popq (%rbx)
ffff8000001064d0:	83 04 03 17          	addl   $0x17,(%rbx,%rax,1)
ffff8000001064d4:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff8000001064d7:	08 1c 00             	or     %bl,(%rax,%rax,1)
ffff8000001064da:	00 00                	add    %al,(%rax)
ffff8000001064dc:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
ffff8000001064dd:	00 00                	add    %al,(%rax)
ffff8000001064df:	00 b8 e3 ff ff 7b    	add    %bh,0x7bffffe3(%rax)
ffff8000001064e5:	01 00                	add    %eax,(%rax)
ffff8000001064e7:	00 00                	add    %al,(%rax)
ffff8000001064e9:	45 0e                	rex.RB (bad) 
ffff8000001064eb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001064f1:	03 72 01             	add    0x1(%rdx),%esi
ffff8000001064f4:	0c 07                	or     $0x7,%al
ffff8000001064f6:	08 00                	or     %al,(%rax)
ffff8000001064f8:	1c 00                	sbb    $0x0,%al
ffff8000001064fa:	00 00                	add    %al,(%rax)
ffff8000001064fc:	c4                   	(bad)  
ffff8000001064fd:	00 00                	add    %al,(%rax)
ffff8000001064ff:	00 13                	add    %dl,(%rbx)
ffff800000106501:	e5 ff                	in     $0xff,%eax
ffff800000106503:	ff 11                	callq  *(%rcx)
ffff800000106505:	02 00                	add    (%rax),%al
ffff800000106507:	00 00                	add    %al,(%rax)
ffff800000106509:	45 0e                	rex.RB (bad) 
ffff80000010650b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000106511:	03 08                	add    (%rax),%ecx
ffff800000106513:	02 0c 07             	add    (%rdi,%rax,1),%cl
ffff800000106516:	08 00                	or     %al,(%rax)
ffff800000106518:	20 00                	and    %al,(%rax)
ffff80000010651a:	00 00                	add    %al,(%rax)
ffff80000010651c:	e4 00                	in     $0x0,%al
ffff80000010651e:	00 00                	add    %al,(%rax)
ffff800000106520:	04 e7                	add    $0xe7,%al
ffff800000106522:	ff                   	(bad)  
ffff800000106523:	ff b0 04 00 00 00    	pushq  0x4(%rax)
ffff800000106529:	45 0e                	rex.RB (bad) 
ffff80000010652b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000106531:	45 83 03 03          	rex.RB addl $0x3,(%r11)
ffff800000106535:	a2 04 0c 07 08 00 00 	movabs %al,0x1c000008070c04
ffff80000010653c:	1c 00 
ffff80000010653e:	00 00                	add    %al,(%rax)
ffff800000106540:	08 01                	or     %al,(%rcx)
ffff800000106542:	00 00                	add    %al,(%rax)
ffff800000106544:	90                   	nop
ffff800000106545:	eb ff                	jmp    ffff800000106546 <_etext+0x10f>
ffff800000106547:	ff d7                	callq  *%rdi
ffff800000106549:	00 00                	add    %al,(%rax)
ffff80000010654b:	00 00                	add    %al,(%rax)
ffff80000010654d:	45 0e                	rex.RB (bad) 
ffff80000010654f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000106555:	02 ce                	add    %dh,%cl
ffff800000106557:	0c 07                	or     $0x7,%al
ffff800000106559:	08 00                	or     %al,(%rax)
ffff80000010655b:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff80000010655e:	00 00                	add    %al,(%rax)
ffff800000106560:	28 01                	sub    %al,(%rcx)
ffff800000106562:	00 00                	add    %al,(%rax)
ffff800000106564:	47 ec                	rex.RXB in (%dx),%al
ffff800000106566:	ff                   	(bad)  
ffff800000106567:	ff                   	(bad)  
ffff800000106568:	d9 00                	flds   (%rax)
ffff80000010656a:	00 00                	add    %al,(%rax)
ffff80000010656c:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010656f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000106575:	02 d0                	add    %al,%dl
ffff800000106577:	0c 07                	or     $0x7,%al
ffff800000106579:	08 00                	or     %al,(%rax)
ffff80000010657b:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff80000010657e:	00 00                	add    %al,(%rax)
ffff800000106580:	48 01 00             	add    %rax,(%rax)
ffff800000106583:	00 00                	add    %al,(%rax)
ffff800000106585:	ed                   	in     (%dx),%eax
ffff800000106586:	ff                   	(bad)  
ffff800000106587:	ff                   	(bad)  
ffff800000106588:	dc 00                	faddl  (%rax)
ffff80000010658a:	00 00                	add    %al,(%rax)
ffff80000010658c:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010658f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000106595:	02 d3                	add    %bl,%dl
ffff800000106597:	0c 07                	or     $0x7,%al
ffff800000106599:	08 00                	or     %al,(%rax)
ffff80000010659b:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff80000010659e:	00 00                	add    %al,(%rax)
ffff8000001065a0:	68 01 00 00 bc       	pushq  $0xffffffffbc000001
ffff8000001065a5:	ed                   	in     (%dx),%eax
ffff8000001065a6:	ff                   	(bad)  
ffff8000001065a7:	ff                   	(bad)  
ffff8000001065a8:	df 00                	filds  (%rax)
ffff8000001065aa:	00 00                	add    %al,(%rax)
ffff8000001065ac:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001065af:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001065b5:	02 d6                	add    %dh,%dl
ffff8000001065b7:	0c 07                	or     $0x7,%al
ffff8000001065b9:	08 00                	or     %al,(%rax)
ffff8000001065bb:	00 18                	add    %bl,(%rax)
ffff8000001065bd:	00 00                	add    %al,(%rax)
ffff8000001065bf:	00 88 01 00 00 7b    	add    %cl,0x7b000001(%rax)
ffff8000001065c5:	ee                   	out    %al,(%dx)
ffff8000001065c6:	ff                   	(bad)  
ffff8000001065c7:	ff                   	(bad)  
ffff8000001065c8:	7e 00                	jle    ffff8000001065ca <_etext+0x193>
ffff8000001065ca:	00 00                	add    %al,(%rax)
ffff8000001065cc:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001065cf:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001065d5:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001065d8:	18 00                	sbb    %al,(%rax)
ffff8000001065da:	00 00                	add    %al,(%rax)
ffff8000001065dc:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
ffff8000001065dd:	01 00                	add    %eax,(%rax)
ffff8000001065df:	00 dd                	add    %bl,%ch
ffff8000001065e1:	ee                   	out    %al,(%dx)
ffff8000001065e2:	ff                   	(bad)  
ffff8000001065e3:	ff                   	(bad)  
ffff8000001065e4:	7e 00                	jle    ffff8000001065e6 <_etext+0x1af>
ffff8000001065e6:	00 00                	add    %al,(%rax)
ffff8000001065e8:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001065eb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001065f1:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001065f4:	18 00                	sbb    %al,(%rax)
ffff8000001065f6:	00 00                	add    %al,(%rax)
ffff8000001065f8:	c0 01 00             	rolb   $0x0,(%rcx)
ffff8000001065fb:	00 3f                	add    %bh,(%rdi)
ffff8000001065fd:	ef                   	out    %eax,(%dx)
ffff8000001065fe:	ff                   	(bad)  
ffff8000001065ff:	ff                   	(bad)  
ffff800000106600:	7e 00                	jle    ffff800000106602 <_etext+0x1cb>
ffff800000106602:	00 00                	add    %al,(%rax)
ffff800000106604:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000106607:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010660d:	46 8f 03             	rex.RX popq (%rbx)
ffff800000106610:	18 00                	sbb    %al,(%rax)
ffff800000106612:	00 00                	add    %al,(%rax)
ffff800000106614:	dc 01                	faddl  (%rcx)
ffff800000106616:	00 00                	add    %al,(%rax)
ffff800000106618:	a1 ef ff ff 7e 00 00 	movabs 0x7effffef,%eax
ffff80000010661f:	00 00 
ffff800000106621:	45 0e                	rex.RB (bad) 
ffff800000106623:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000106629:	46 8f 03             	rex.RX popq (%rbx)
ffff80000010662c:	18 00                	sbb    %al,(%rax)
ffff80000010662e:	00 00                	add    %al,(%rax)
ffff800000106630:	f8                   	clc    
ffff800000106631:	01 00                	add    %eax,(%rax)
ffff800000106633:	00 03                	add    %al,(%rbx)
ffff800000106635:	f0 ff                	lock (bad) 
ffff800000106637:	ff                   	(bad)  
ffff800000106638:	7e 00                	jle    ffff80000010663a <_etext+0x203>
ffff80000010663a:	00 00                	add    %al,(%rax)
ffff80000010663c:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010663f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000106645:	46 8f 03             	rex.RX popq (%rbx)
ffff800000106648:	18 00                	sbb    %al,(%rax)
ffff80000010664a:	00 00                	add    %al,(%rax)
ffff80000010664c:	14 02                	adc    $0x2,%al
ffff80000010664e:	00 00                	add    %al,(%rax)
ffff800000106650:	65 f0 ff             	gs lock (bad) 
ffff800000106653:	ff                   	(bad)  
ffff800000106654:	7e 00                	jle    ffff800000106656 <_etext+0x21f>
ffff800000106656:	00 00                	add    %al,(%rax)
ffff800000106658:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010665b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000106661:	46 8f 03             	rex.RX popq (%rbx)
ffff800000106664:	18 00                	sbb    %al,(%rax)
ffff800000106666:	00 00                	add    %al,(%rax)
ffff800000106668:	30 02                	xor    %al,(%rdx)
ffff80000010666a:	00 00                	add    %al,(%rax)
ffff80000010666c:	c7                   	(bad)  
ffff80000010666d:	f0 ff                	lock (bad) 
ffff80000010666f:	ff                   	(bad)  
ffff800000106670:	7e 00                	jle    ffff800000106672 <_etext+0x23b>
ffff800000106672:	00 00                	add    %al,(%rax)
ffff800000106674:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000106677:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010667d:	46 8f 03             	rex.RX popq (%rbx)
ffff800000106680:	18 00                	sbb    %al,(%rax)
ffff800000106682:	00 00                	add    %al,(%rax)
ffff800000106684:	4c 02 00             	rex.WR add (%rax),%r8b
ffff800000106687:	00 29                	add    %ch,(%rcx)
ffff800000106689:	f1                   	icebp  
ffff80000010668a:	ff                   	(bad)  
ffff80000010668b:	ff                   	(bad)  
ffff80000010668c:	7e 00                	jle    ffff80000010668e <_etext+0x257>
ffff80000010668e:	00 00                	add    %al,(%rax)
ffff800000106690:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000106693:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000106699:	46 8f 03             	rex.RX popq (%rbx)
ffff80000010669c:	18 00                	sbb    %al,(%rax)
ffff80000010669e:	00 00                	add    %al,(%rax)
ffff8000001066a0:	68 02 00 00 8b       	pushq  $0xffffffff8b000002
ffff8000001066a5:	f1                   	icebp  
ffff8000001066a6:	ff                   	(bad)  
ffff8000001066a7:	ff                   	(bad)  
ffff8000001066a8:	7e 00                	jle    ffff8000001066aa <_etext+0x273>
ffff8000001066aa:	00 00                	add    %al,(%rax)
ffff8000001066ac:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001066af:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001066b5:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001066b8:	18 00                	sbb    %al,(%rax)
ffff8000001066ba:	00 00                	add    %al,(%rax)
ffff8000001066bc:	84 02                	test   %al,(%rdx)
ffff8000001066be:	00 00                	add    %al,(%rax)
ffff8000001066c0:	ed                   	in     (%dx),%eax
ffff8000001066c1:	f1                   	icebp  
ffff8000001066c2:	ff                   	(bad)  
ffff8000001066c3:	ff                   	(bad)  
ffff8000001066c4:	7e 00                	jle    ffff8000001066c6 <_etext+0x28f>
ffff8000001066c6:	00 00                	add    %al,(%rax)
ffff8000001066c8:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001066cb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001066d1:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001066d4:	1c 00                	sbb    $0x0,%al
ffff8000001066d6:	00 00                	add    %al,(%rax)
ffff8000001066d8:	a0 02 00 00 4f f2 ff 	movabs 0x9dfffff24f000002,%al
ffff8000001066df:	ff 9d 
ffff8000001066e1:	01 00                	add    %eax,(%rax)
ffff8000001066e3:	00 00                	add    %al,(%rax)
ffff8000001066e5:	45 0e                	rex.RB (bad) 
ffff8000001066e7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001066ed:	47 8f 03             	rex.RXB popq (%r11)
ffff8000001066f0:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff8000001066f4:	1c 00                	sbb    $0x0,%al
ffff8000001066f6:	00 00                	add    %al,(%rax)
ffff8000001066f8:	c0 02 00             	rolb   $0x0,(%rdx)
ffff8000001066fb:	00 cc                	add    %cl,%ah
ffff8000001066fd:	f3 ff                	repz (bad) 
ffff8000001066ff:	ff 9d 01 00 00 00    	lcall  *0x1(%rbp)
ffff800000106705:	45 0e                	rex.RB (bad) 
ffff800000106707:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010670d:	47 8f 03             	rex.RXB popq (%r11)
ffff800000106710:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000106714:	1c 00                	sbb    $0x0,%al
ffff800000106716:	00 00                	add    %al,(%rax)
ffff800000106718:	e0 02                	loopne ffff80000010671c <_etext+0x2e5>
ffff80000010671a:	00 00                	add    %al,(%rax)
ffff80000010671c:	49 f5                	rex.WB cmc 
ffff80000010671e:	ff                   	(bad)  
ffff80000010671f:	ff 9d 01 00 00 00    	lcall  *0x1(%rbp)
ffff800000106725:	45 0e                	rex.RB (bad) 
ffff800000106727:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010672d:	47 8f 03             	rex.RXB popq (%r11)
ffff800000106730:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000106734:	1c 00                	sbb    $0x0,%al
ffff800000106736:	00 00                	add    %al,(%rax)
ffff800000106738:	00 03                	add    %al,(%rbx)
ffff80000010673a:	00 00                	add    %al,(%rax)
ffff80000010673c:	c6                   	(bad)  
ffff80000010673d:	f6 ff                	idiv   %bh
ffff80000010673f:	ff 9d 01 00 00 00    	lcall  *0x1(%rbp)
ffff800000106745:	45 0e                	rex.RB (bad) 
ffff800000106747:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010674d:	47 8f 03             	rex.RXB popq (%r11)
ffff800000106750:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000106754:	1c 00                	sbb    $0x0,%al
ffff800000106756:	00 00                	add    %al,(%rax)
ffff800000106758:	20 03                	and    %al,(%rbx)
ffff80000010675a:	00 00                	add    %al,(%rax)
ffff80000010675c:	43 f8                	rex.XB clc 
ffff80000010675e:	ff                   	(bad)  
ffff80000010675f:	ff 22                	jmpq   *(%rdx)
ffff800000106761:	02 00                	add    (%rax),%al
ffff800000106763:	00 00                	add    %al,(%rax)
ffff800000106765:	45 0e                	rex.RB (bad) 
ffff800000106767:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010676d:	47 8f 03             	rex.RXB popq (%r11)
ffff800000106770:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000106774:	18 00                	sbb    %al,(%rax)
ffff800000106776:	00 00                	add    %al,(%rax)
ffff800000106778:	40 03 00             	rex add (%rax),%eax
ffff80000010677b:	00 45 fa             	add    %al,-0x6(%rbp)
ffff80000010677e:	ff                   	(bad)  
ffff80000010677f:	ff                   	(bad)  
ffff800000106780:	7e 00                	jle    ffff800000106782 <_etext+0x34b>
ffff800000106782:	00 00                	add    %al,(%rax)
ffff800000106784:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000106787:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010678d:	46 8f 03             	rex.RX popq (%rbx)
ffff800000106790:	18 00                	sbb    %al,(%rax)
ffff800000106792:	00 00                	add    %al,(%rax)
ffff800000106794:	5c                   	pop    %rsp
ffff800000106795:	03 00                	add    (%rax),%eax
ffff800000106797:	00 a7 fa ff ff 7e    	add    %ah,0x7efffffa(%rdi)
ffff80000010679d:	00 00                	add    %al,(%rax)
ffff80000010679f:	00 00                	add    %al,(%rax)
ffff8000001067a1:	45 0e                	rex.RB (bad) 
ffff8000001067a3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001067a9:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001067ac:	18 00                	sbb    %al,(%rax)
ffff8000001067ae:	00 00                	add    %al,(%rax)
ffff8000001067b0:	78 03                	js     ffff8000001067b5 <_etext+0x37e>
ffff8000001067b2:	00 00                	add    %al,(%rax)
ffff8000001067b4:	09 fb                	or     %edi,%ebx
ffff8000001067b6:	ff                   	(bad)  
ffff8000001067b7:	ff                   	(bad)  
ffff8000001067b8:	7e 00                	jle    ffff8000001067ba <_etext+0x383>
ffff8000001067ba:	00 00                	add    %al,(%rax)
ffff8000001067bc:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001067bf:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001067c5:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001067c8:	18 00                	sbb    %al,(%rax)
ffff8000001067ca:	00 00                	add    %al,(%rax)
ffff8000001067cc:	94                   	xchg   %eax,%esp
ffff8000001067cd:	03 00                	add    (%rax),%eax
ffff8000001067cf:	00 6b fb             	add    %ch,-0x5(%rbx)
ffff8000001067d2:	ff                   	(bad)  
ffff8000001067d3:	ff                   	(bad)  
ffff8000001067d4:	7e 00                	jle    ffff8000001067d6 <_etext+0x39f>
ffff8000001067d6:	00 00                	add    %al,(%rax)
ffff8000001067d8:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001067db:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001067e1:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001067e4:	18 00                	sbb    %al,(%rax)
ffff8000001067e6:	00 00                	add    %al,(%rax)
ffff8000001067e8:	b0 03                	mov    $0x3,%al
ffff8000001067ea:	00 00                	add    %al,(%rax)
ffff8000001067ec:	cd fb                	int    $0xfb
ffff8000001067ee:	ff                   	(bad)  
ffff8000001067ef:	ff                   	(bad)  
ffff8000001067f0:	7e 00                	jle    ffff8000001067f2 <_etext+0x3bb>
ffff8000001067f2:	00 00                	add    %al,(%rax)
ffff8000001067f4:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001067f7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001067fd:	46 8f 03             	rex.RX popq (%rbx)

Disassembly of section .rodata:

ffff800000106800 <.LC0>:
ffff800000106800:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000106802:	5f                   	pop    %rdi
ffff800000106803:	64 69 76 69 64 65 5f 	imul   $0x655f6564,%fs:0x69(%rsi),%esi
ffff80000010680a:	65 
ffff80000010680b:	72 72                	jb     ffff80000010687f <.LC2+0x7>
ffff80000010680d:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010680e:	72 28                	jb     ffff800000106838 <.LC0+0x38>
ffff800000106810:	30 29                	xor    %ch,(%rcx)
ffff800000106812:	2c 45                	sub    $0x45,%al
ffff800000106814:	52                   	push   %rdx
ffff800000106815:	52                   	push   %rdx
ffff800000106816:	4f 52                	rex.WRXB push %r10
ffff800000106818:	5f                   	pop    %rdi
ffff800000106819:	43                   	rex.XB
ffff80000010681a:	4f                   	rex.WRXB
ffff80000010681b:	44                   	rex.R
ffff80000010681c:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419846 <_ebss+0x383116f2>
ffff800000106823:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106824:	78 2c                	js     ffff800000106852 <.LC1+0x12>
ffff800000106826:	52                   	push   %rdx
ffff800000106827:	53                   	push   %rbx
ffff800000106828:	50                   	push   %rax
ffff800000106829:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419852 <_ebss+0x383116fe>
ffff80000010682f:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106830:	78 2c                	js     ffff80000010685e <.LC1+0x1e>
ffff800000106832:	52                   	push   %rdx
ffff800000106833:	49 50                	rex.WB push %r8
ffff800000106835:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841985e <_ebss+0x3831170a>
ffff80000010683b:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010683c:	78 0a                	js     ffff800000106848 <.LC1+0x8>
	...

ffff800000106840 <.LC1>:
ffff800000106840:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000106842:	5f                   	pop    %rdi
ffff800000106843:	64 65 62             	fs gs (bad) 
ffff800000106846:	75 67                	jne    ffff8000001068af <.LC2+0x37>
ffff800000106848:	28 31                	sub    %dh,(%rcx)
ffff80000010684a:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000106851:	5f                   	pop    %rdi
ffff800000106852:	43                   	rex.XB
ffff800000106853:	4f                   	rex.WRXB
ffff800000106854:	44                   	rex.R
ffff800000106855:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841987f <_ebss+0x3831172b>
ffff80000010685c:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010685d:	78 2c                	js     ffff80000010688b <.LC2+0x13>
ffff80000010685f:	52                   	push   %rdx
ffff800000106860:	53                   	push   %rbx
ffff800000106861:	50                   	push   %rax
ffff800000106862:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff80003841988b <_ebss+0x38311737>
ffff800000106868:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106869:	78 2c                	js     ffff800000106897 <.LC2+0x1f>
ffff80000010686b:	52                   	push   %rdx
ffff80000010686c:	49 50                	rex.WB push %r8
ffff80000010686e:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419897 <_ebss+0x38311743>
ffff800000106874:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106875:	78 0a                	js     ffff800000106881 <.LC2+0x9>
	...

ffff800000106878 <.LC2>:
ffff800000106878:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010687a:	5f                   	pop    %rdi
ffff80000010687b:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff80000010687c:	6d                   	insl   (%dx),%es:(%rdi)
ffff80000010687d:	69 28 32 29 2c 45    	imul   $0x452c2932,(%rax),%ebp
ffff800000106883:	52                   	push   %rdx
ffff800000106884:	52                   	push   %rdx
ffff800000106885:	4f 52                	rex.WRXB push %r10
ffff800000106887:	5f                   	pop    %rdi
ffff800000106888:	43                   	rex.XB
ffff800000106889:	4f                   	rex.WRXB
ffff80000010688a:	44                   	rex.R
ffff80000010688b:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff8000384198b5 <_ebss+0x38311761>
ffff800000106892:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106893:	78 2c                	js     ffff8000001068c1 <.LC3+0x11>
ffff800000106895:	52                   	push   %rdx
ffff800000106896:	53                   	push   %rbx
ffff800000106897:	50                   	push   %rax
ffff800000106898:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff8000384198c1 <_ebss+0x3831176d>
ffff80000010689e:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010689f:	78 2c                	js     ffff8000001068cd <.LC3+0x1d>
ffff8000001068a1:	52                   	push   %rdx
ffff8000001068a2:	49 50                	rex.WB push %r8
ffff8000001068a4:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff8000384198cd <_ebss+0x38311779>
ffff8000001068aa:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001068ab:	78 0a                	js     ffff8000001068b7 <.LC3+0x7>
ffff8000001068ad:	00 00                	add    %al,(%rax)
	...

ffff8000001068b0 <.LC3>:
ffff8000001068b0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001068b2:	5f                   	pop    %rdi
ffff8000001068b3:	69 6e 74 33 28 33 29 	imul   $0x29332833,0x74(%rsi),%ebp
ffff8000001068ba:	2c 45                	sub    $0x45,%al
ffff8000001068bc:	52                   	push   %rdx
ffff8000001068bd:	52                   	push   %rdx
ffff8000001068be:	4f 52                	rex.WRXB push %r10
ffff8000001068c0:	5f                   	pop    %rdi
ffff8000001068c1:	43                   	rex.XB
ffff8000001068c2:	4f                   	rex.WRXB
ffff8000001068c3:	44                   	rex.R
ffff8000001068c4:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff8000384198ee <_ebss+0x3831179a>
ffff8000001068cb:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001068cc:	78 2c                	js     ffff8000001068fa <.LC4+0x12>
ffff8000001068ce:	52                   	push   %rdx
ffff8000001068cf:	53                   	push   %rbx
ffff8000001068d0:	50                   	push   %rax
ffff8000001068d1:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff8000384198fa <_ebss+0x383117a6>
ffff8000001068d7:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001068d8:	78 2c                	js     ffff800000106906 <.LC4+0x1e>
ffff8000001068da:	52                   	push   %rdx
ffff8000001068db:	49 50                	rex.WB push %r8
ffff8000001068dd:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419906 <_ebss+0x383117b2>
ffff8000001068e3:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001068e4:	78 0a                	js     ffff8000001068f0 <.LC4+0x8>
	...

ffff8000001068e8 <.LC4>:
ffff8000001068e8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001068ea:	5f                   	pop    %rdi
ffff8000001068eb:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001068ec:	76 65                	jbe    ffff800000106953 <.LC5+0x2b>
ffff8000001068ee:	72 66                	jb     ffff800000106956 <.LC5+0x2e>
ffff8000001068f0:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001068f1:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001068f2:	77 28                	ja     ffff80000010691c <.LC4+0x34>
ffff8000001068f4:	34 29                	xor    $0x29,%al
ffff8000001068f6:	2c 45                	sub    $0x45,%al
ffff8000001068f8:	52                   	push   %rdx
ffff8000001068f9:	52                   	push   %rdx
ffff8000001068fa:	4f 52                	rex.WRXB push %r10
ffff8000001068fc:	5f                   	pop    %rdi
ffff8000001068fd:	43                   	rex.XB
ffff8000001068fe:	4f                   	rex.WRXB
ffff8000001068ff:	44                   	rex.R
ffff800000106900:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff80003841992a <_ebss+0x383117d6>
ffff800000106907:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106908:	78 2c                	js     ffff800000106936 <.LC5+0xe>
ffff80000010690a:	52                   	push   %rdx
ffff80000010690b:	53                   	push   %rbx
ffff80000010690c:	50                   	push   %rax
ffff80000010690d:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419936 <_ebss+0x383117e2>
ffff800000106913:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106914:	78 2c                	js     ffff800000106942 <.LC5+0x1a>
ffff800000106916:	52                   	push   %rdx
ffff800000106917:	49 50                	rex.WB push %r8
ffff800000106919:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419942 <_ebss+0x383117ee>
ffff80000010691f:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106920:	78 0a                	js     ffff80000010692c <.LC5+0x4>
ffff800000106922:	00 00                	add    %al,(%rax)
ffff800000106924:	00 00                	add    %al,(%rax)
	...

ffff800000106928 <.LC5>:
ffff800000106928:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010692a:	5f                   	pop    %rdi
ffff80000010692b:	62                   	(bad)  
ffff80000010692c:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010692d:	75 6e                	jne    ffff80000010699d <.LC6+0x35>
ffff80000010692f:	64 73 28             	fs jae ffff80000010695a <.LC5+0x32>
ffff800000106932:	35 29 2c 45 52       	xor    $0x52452c29,%eax
ffff800000106937:	52                   	push   %rdx
ffff800000106938:	4f 52                	rex.WRXB push %r10
ffff80000010693a:	5f                   	pop    %rdi
ffff80000010693b:	43                   	rex.XB
ffff80000010693c:	4f                   	rex.WRXB
ffff80000010693d:	44                   	rex.R
ffff80000010693e:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419968 <_ebss+0x38311814>
ffff800000106945:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106946:	78 2c                	js     ffff800000106974 <.LC6+0xc>
ffff800000106948:	52                   	push   %rdx
ffff800000106949:	53                   	push   %rbx
ffff80000010694a:	50                   	push   %rax
ffff80000010694b:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419974 <_ebss+0x38311820>
ffff800000106951:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106952:	78 2c                	js     ffff800000106980 <.LC6+0x18>
ffff800000106954:	52                   	push   %rdx
ffff800000106955:	49 50                	rex.WB push %r8
ffff800000106957:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419980 <_ebss+0x3831182c>
ffff80000010695d:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010695e:	78 0a                	js     ffff80000010696a <.LC6+0x2>
	...

ffff800000106968 <.LC6>:
ffff800000106968:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010696a:	5f                   	pop    %rdi
ffff80000010696b:	75 6e                	jne    ffff8000001069db <.LC7+0x2b>
ffff80000010696d:	64 65 66 69 6e 65 64 	fs imul $0x5f64,%gs:0x65(%rsi),%bp
ffff800000106974:	5f 
ffff800000106975:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106976:	70 63                	jo     ffff8000001069db <.LC7+0x2b>
ffff800000106978:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106979:	64 65 28 36          	fs sub %dh,%gs:(%rsi)
ffff80000010697d:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000106984:	5f                   	pop    %rdi
ffff800000106985:	43                   	rex.XB
ffff800000106986:	4f                   	rex.WRXB
ffff800000106987:	44                   	rex.R
ffff800000106988:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff8000384199b2 <_ebss+0x3831185e>
ffff80000010698f:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106990:	78 2c                	js     ffff8000001069be <.LC7+0xe>
ffff800000106992:	52                   	push   %rdx
ffff800000106993:	53                   	push   %rbx
ffff800000106994:	50                   	push   %rax
ffff800000106995:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff8000384199be <_ebss+0x3831186a>
ffff80000010699b:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010699c:	78 2c                	js     ffff8000001069ca <.LC7+0x1a>
ffff80000010699e:	52                   	push   %rdx
ffff80000010699f:	49 50                	rex.WB push %r8
ffff8000001069a1:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff8000384199ca <_ebss+0x38311876>
ffff8000001069a7:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001069a8:	78 0a                	js     ffff8000001069b4 <.LC7+0x4>
ffff8000001069aa:	00 00                	add    %al,(%rax)
ffff8000001069ac:	00 00                	add    %al,(%rax)
	...

ffff8000001069b0 <.LC7>:
ffff8000001069b0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001069b2:	5f                   	pop    %rdi
ffff8000001069b3:	64 65 76 5f          	fs gs jbe ffff800000106a16 <.LC8+0x1e>
ffff8000001069b7:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001069b8:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001069b9:	74 5f                	je     ffff800000106a1a <.LC8+0x22>
ffff8000001069bb:	61                   	(bad)  
ffff8000001069bc:	76 61                	jbe    ffff800000106a1f <.LC8+0x27>
ffff8000001069be:	69 6c 61 62 6c 65 28 	imul   $0x3728656c,0x62(%rcx,%riz,2),%ebp
ffff8000001069c5:	37 
ffff8000001069c6:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff8000001069cd:	5f                   	pop    %rdi
ffff8000001069ce:	43                   	rex.XB
ffff8000001069cf:	4f                   	rex.WRXB
ffff8000001069d0:	44                   	rex.R
ffff8000001069d1:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff8000384199fb <_ebss+0x383118a7>
ffff8000001069d8:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001069d9:	78 2c                	js     ffff800000106a07 <.LC8+0xf>
ffff8000001069db:	52                   	push   %rdx
ffff8000001069dc:	53                   	push   %rbx
ffff8000001069dd:	50                   	push   %rax
ffff8000001069de:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419a07 <_ebss+0x383118b3>
ffff8000001069e4:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001069e5:	78 2c                	js     ffff800000106a13 <.LC8+0x1b>
ffff8000001069e7:	52                   	push   %rdx
ffff8000001069e8:	49 50                	rex.WB push %r8
ffff8000001069ea:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419a13 <_ebss+0x383118bf>
ffff8000001069f0:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001069f1:	78 0a                	js     ffff8000001069fd <.LC8+0x5>
ffff8000001069f3:	00 00                	add    %al,(%rax)
ffff8000001069f5:	00 00                	add    %al,(%rax)
	...

ffff8000001069f8 <.LC8>:
ffff8000001069f8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001069fa:	5f                   	pop    %rdi
ffff8000001069fb:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001069fd:	75 62                	jne    ffff800000106a61 <.LC9+0x29>
ffff8000001069ff:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106a00:	65 5f                	gs pop %rdi
ffff800000106a02:	66 61                	data16 (bad) 
ffff800000106a04:	75 6c                	jne    ffff800000106a72 <.LC9+0x3a>
ffff800000106a06:	74 28                	je     ffff800000106a30 <.LC8+0x38>
ffff800000106a08:	38 29                	cmp    %ch,(%rcx)
ffff800000106a0a:	2c 45                	sub    $0x45,%al
ffff800000106a0c:	52                   	push   %rdx
ffff800000106a0d:	52                   	push   %rdx
ffff800000106a0e:	4f 52                	rex.WRXB push %r10
ffff800000106a10:	5f                   	pop    %rdi
ffff800000106a11:	43                   	rex.XB
ffff800000106a12:	4f                   	rex.WRXB
ffff800000106a13:	44                   	rex.R
ffff800000106a14:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419a3e <_ebss+0x383118ea>
ffff800000106a1b:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106a1c:	78 2c                	js     ffff800000106a4a <.LC9+0x12>
ffff800000106a1e:	52                   	push   %rdx
ffff800000106a1f:	53                   	push   %rbx
ffff800000106a20:	50                   	push   %rax
ffff800000106a21:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419a4a <_ebss+0x383118f6>
ffff800000106a27:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106a28:	78 2c                	js     ffff800000106a56 <.LC9+0x1e>
ffff800000106a2a:	52                   	push   %rdx
ffff800000106a2b:	49 50                	rex.WB push %r8
ffff800000106a2d:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419a56 <_ebss+0x38311902>
ffff800000106a33:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106a34:	78 0a                	js     ffff800000106a40 <.LC9+0x8>
	...

ffff800000106a38 <.LC9>:
ffff800000106a38:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000106a3a:	5f                   	pop    %rdi
ffff800000106a3b:	63 6f 70             	movslq 0x70(%rdi),%ebp
ffff800000106a3e:	72 6f                	jb     ffff800000106aaf <.LC10+0x27>
ffff800000106a40:	63 65 73             	movslq 0x73(%rbp),%esp
ffff800000106a43:	73 6f                	jae    ffff800000106ab4 <.LC10+0x2c>
ffff800000106a45:	72 5f                	jb     ffff800000106aa6 <.LC10+0x1e>
ffff800000106a47:	73 65                	jae    ffff800000106aae <.LC10+0x26>
ffff800000106a49:	67 6d                	insl   (%dx),%es:(%edi)
ffff800000106a4b:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000106a4d:	74 5f                	je     ffff800000106aae <.LC10+0x26>
ffff800000106a4f:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106a50:	76 65                	jbe    ffff800000106ab7 <.LC10+0x2f>
ffff800000106a52:	72 72                	jb     ffff800000106ac6 <.LC10+0x3e>
ffff800000106a54:	75 6e                	jne    ffff800000106ac4 <.LC10+0x3c>
ffff800000106a56:	28 39                	sub    %bh,(%rcx)
ffff800000106a58:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000106a5f:	5f                   	pop    %rdi
ffff800000106a60:	43                   	rex.XB
ffff800000106a61:	4f                   	rex.WRXB
ffff800000106a62:	44                   	rex.R
ffff800000106a63:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419a8d <_ebss+0x38311939>
ffff800000106a6a:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106a6b:	78 2c                	js     ffff800000106a99 <.LC10+0x11>
ffff800000106a6d:	52                   	push   %rdx
ffff800000106a6e:	53                   	push   %rbx
ffff800000106a6f:	50                   	push   %rax
ffff800000106a70:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419a99 <_ebss+0x38311945>
ffff800000106a76:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106a77:	78 2c                	js     ffff800000106aa5 <.LC10+0x1d>
ffff800000106a79:	52                   	push   %rdx
ffff800000106a7a:	49 50                	rex.WB push %r8
ffff800000106a7c:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419aa5 <_ebss+0x38311951>
ffff800000106a82:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106a83:	78 0a                	js     ffff800000106a8f <.LC10+0x7>
ffff800000106a85:	00 00                	add    %al,(%rax)
	...

ffff800000106a88 <.LC10>:
ffff800000106a88:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000106a8a:	5f                   	pop    %rdi
ffff800000106a8b:	69 6e 76 61 6c 69 64 	imul   $0x64696c61,0x76(%rsi),%ebp
ffff800000106a92:	5f                   	pop    %rdi
ffff800000106a93:	54                   	push   %rsp
ffff800000106a94:	53                   	push   %rbx
ffff800000106a95:	53                   	push   %rbx
ffff800000106a96:	28 31                	sub    %dh,(%rcx)
ffff800000106a98:	30 29                	xor    %ch,(%rcx)
ffff800000106a9a:	2c 45                	sub    $0x45,%al
ffff800000106a9c:	52                   	push   %rdx
ffff800000106a9d:	52                   	push   %rdx
ffff800000106a9e:	4f 52                	rex.WRXB push %r10
ffff800000106aa0:	5f                   	pop    %rdi
ffff800000106aa1:	43                   	rex.XB
ffff800000106aa2:	4f                   	rex.WRXB
ffff800000106aa3:	44                   	rex.R
ffff800000106aa4:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419ace <_ebss+0x3831197a>
ffff800000106aab:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106aac:	78 2c                	js     ffff800000106ada <.LC11+0x12>
ffff800000106aae:	52                   	push   %rdx
ffff800000106aaf:	53                   	push   %rbx
ffff800000106ab0:	50                   	push   %rax
ffff800000106ab1:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419ada <_ebss+0x38311986>
ffff800000106ab7:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106ab8:	78 2c                	js     ffff800000106ae6 <.LC11+0x1e>
ffff800000106aba:	52                   	push   %rdx
ffff800000106abb:	49 50                	rex.WB push %r8
ffff800000106abd:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419ae6 <_ebss+0x38311992>
ffff800000106ac3:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106ac4:	78 0a                	js     ffff800000106ad0 <.LC11+0x8>
	...

ffff800000106ac8 <.LC11>:
ffff800000106ac8:	54                   	push   %rsp
ffff800000106ac9:	68 65 20 65 78       	pushq  $0x78652065
ffff800000106ace:	63 65 70             	movslq 0x70(%rbp),%esp
ffff800000106ad1:	74 69                	je     ffff800000106b3c <.LC11+0x74>
ffff800000106ad3:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106ad4:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000106ad5:	20 6f 63             	and    %ch,0x63(%rdi)
ffff800000106ad8:	63 75 72             	movslq 0x72(%rbp),%esi
ffff800000106adb:	72 65                	jb     ffff800000106b42 <.LC11+0x7a>
ffff800000106add:	64 20 64 75 72       	and    %ah,%fs:0x72(%rbp,%rsi,2)
ffff800000106ae2:	69 6e 67 20 64 65 6c 	imul   $0x6c656420,0x67(%rsi),%ebp
ffff800000106ae9:	69 76 65 72 79 20 6f 	imul   $0x6f207972,0x65(%rsi),%esi
ffff800000106af0:	66 20 61 6e          	data16 and %ah,0x6e(%rcx)
ffff800000106af4:	20 65 76             	and    %ah,0x76(%rbp)
ffff800000106af7:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000106af9:	74 20                	je     ffff800000106b1b <.LC11+0x53>
ffff800000106afb:	65 78 74             	gs js  ffff800000106b72 <.LC12+0x2a>
ffff800000106afe:	65 72 6e             	gs jb  ffff800000106b6f <.LC12+0x27>
ffff800000106b01:	61                   	(bad)  
ffff800000106b02:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106b03:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff800000106b07:	74 68                	je     ffff800000106b71 <.LC12+0x29>
ffff800000106b09:	65 20 70 72          	and    %dh,%gs:0x72(%rax)
ffff800000106b0d:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106b0e:	67 72 61             	addr32 jb ffff800000106b72 <.LC12+0x2a>
ffff800000106b11:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000106b12:	2c 73                	sub    $0x73,%al
ffff800000106b14:	75 63                	jne    ffff800000106b79 <.LC13+0x1>
ffff800000106b16:	68 20 61 73 20       	pushq  $0x20736120
ffff800000106b1b:	61                   	(bad)  
ffff800000106b1c:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000106b1d:	20 69 6e             	and    %ch,0x6e(%rcx)
ffff800000106b20:	74 65                	je     ffff800000106b87 <.LC13+0xf>
ffff800000106b22:	72 72                	jb     ffff800000106b96 <.LC13+0x1e>
ffff800000106b24:	75 70                	jne    ffff800000106b96 <.LC13+0x1e>
ffff800000106b26:	74 20                	je     ffff800000106b48 <.LC12>
ffff800000106b28:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106b29:	72 20                	jb     ffff800000106b4b <.LC12+0x3>
ffff800000106b2b:	61                   	(bad)  
ffff800000106b2c:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000106b2d:	20 65 61             	and    %ah,0x61(%rbp)
ffff800000106b30:	72 6c                	jb     ffff800000106b9e <.LC13+0x26>
ffff800000106b32:	69 65 72 20 65 78 63 	imul   $0x63786520,0x72(%rbp),%esp
ffff800000106b39:	65 70 74             	gs jo  ffff800000106bb0 <.LC14>
ffff800000106b3c:	69 6f 6e 2e 0a 00 00 	imul   $0xa2e,0x6e(%rdi),%ebp
ffff800000106b43:	00 00                	add    %al,(%rax)
ffff800000106b45:	00 00                	add    %al,(%rax)
	...

ffff800000106b48 <.LC12>:
ffff800000106b48:	52                   	push   %rdx
ffff800000106b49:	65 66 65 72 73       	gs data16 gs jb ffff800000106bc1 <.LC14+0x11>
ffff800000106b4e:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff800000106b52:	61                   	(bad)  
ffff800000106b53:	20 67 61             	and    %ah,0x61(%rdi)
ffff800000106b56:	74 65                	je     ffff800000106bbd <.LC14+0xd>
ffff800000106b58:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff800000106b5c:	63 72 69             	movslq 0x69(%rdx),%esi
ffff800000106b5f:	70 74                	jo     ffff800000106bd5 <.LC14+0x25>
ffff800000106b61:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106b62:	72 20                	jb     ffff800000106b84 <.LC13+0xc>
ffff800000106b64:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff800000106b6b:	49                   	rex.WB
ffff800000106b6c:	44 54                	rex.R push %rsp
ffff800000106b6e:	3b 0a                	cmp    (%rdx),%ecx
	...

ffff800000106b78 <.LC13>:
ffff800000106b78:	52                   	push   %rdx
ffff800000106b79:	65 66 65 72 73       	gs data16 gs jb ffff800000106bf1 <.LC15+0x9>
ffff800000106b7e:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff800000106b82:	61                   	(bad)  
ffff800000106b83:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff800000106b87:	63 72 69             	movslq 0x69(%rdx),%esi
ffff800000106b8a:	70 74                	jo     ffff800000106c00 <.LC15+0x18>
ffff800000106b8c:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106b8d:	72 20                	jb     ffff800000106baf <.LC13+0x37>
ffff800000106b8f:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff800000106b96:	47                   	rex.RXB
ffff800000106b97:	44 54                	rex.R push %rsp
ffff800000106b99:	20 6f 72             	and    %ch,0x72(%rdi)
ffff800000106b9c:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
ffff800000106ba0:	20 63 75             	and    %ah,0x75(%rbx)
ffff800000106ba3:	72 72                	jb     ffff800000106c17 <.LC15+0x2f>
ffff800000106ba5:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000106ba7:	74 20                	je     ffff800000106bc9 <.LC14+0x19>
ffff800000106ba9:	4c                   	rex.WR
ffff800000106baa:	44 54                	rex.R push %rsp
ffff800000106bac:	3b 0a                	cmp    (%rdx),%ecx
	...

ffff800000106bb0 <.LC14>:
ffff800000106bb0:	52                   	push   %rdx
ffff800000106bb1:	65 66 65 72 73       	gs data16 gs jb ffff800000106c29 <.LC16+0x11>
ffff800000106bb6:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff800000106bba:	61                   	(bad)  
ffff800000106bbb:	20 73 65             	and    %dh,0x65(%rbx)
ffff800000106bbe:	67 6d                	insl   (%dx),%es:(%edi)
ffff800000106bc0:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000106bc2:	74 20                	je     ffff800000106be4 <.LC14+0x34>
ffff800000106bc4:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106bc5:	72 20                	jb     ffff800000106be7 <.LC14+0x37>
ffff800000106bc7:	67 61                	addr32 (bad) 
ffff800000106bc9:	74 65                	je     ffff800000106c30 <.LC16+0x18>
ffff800000106bcb:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff800000106bcf:	63 72 69             	movslq 0x69(%rdx),%esi
ffff800000106bd2:	70 74                	jo     ffff800000106c48 <.LC17+0x10>
ffff800000106bd4:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106bd5:	72 20                	jb     ffff800000106bf7 <.LC15+0xf>
ffff800000106bd7:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff800000106bde:	4c                   	rex.WR
ffff800000106bdf:	44 54                	rex.R push %rsp
ffff800000106be1:	3b 0a                	cmp    (%rdx),%ecx
ffff800000106be3:	00 00                	add    %al,(%rax)
ffff800000106be5:	00 00                	add    %al,(%rax)
	...

ffff800000106be8 <.LC15>:
ffff800000106be8:	52                   	push   %rdx
ffff800000106be9:	65 66 65 72 73       	gs data16 gs jb ffff800000106c61 <.LC17+0x29>
ffff800000106bee:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff800000106bf2:	61                   	(bad)  
ffff800000106bf3:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff800000106bf7:	63 72 69             	movslq 0x69(%rdx),%esi
ffff800000106bfa:	70 74                	jo     ffff800000106c70 <.LC17+0x38>
ffff800000106bfc:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106bfd:	72 20                	jb     ffff800000106c1f <.LC16+0x7>
ffff800000106bff:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff800000106c06:	63 75 72             	movslq 0x72(%rbp),%esi
ffff800000106c09:	72 65                	jb     ffff800000106c70 <.LC17+0x38>
ffff800000106c0b:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000106c0c:	74 20                	je     ffff800000106c2e <.LC16+0x16>
ffff800000106c0e:	47                   	rex.RXB
ffff800000106c0f:	44 54                	rex.R push %rsp
ffff800000106c11:	3b 0a                	cmp    (%rdx),%ecx
ffff800000106c13:	00 00                	add    %al,(%rax)
ffff800000106c15:	00 00                	add    %al,(%rax)
	...

ffff800000106c18 <.LC16>:
ffff800000106c18:	53                   	push   %rbx
ffff800000106c19:	65 67 6d             	gs insl (%dx),%es:(%edi)
ffff800000106c1c:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000106c1e:	74 20                	je     ffff800000106c40 <.LC17+0x8>
ffff800000106c20:	53                   	push   %rbx
ffff800000106c21:	65 6c                	gs insb (%dx),%es:(%rdi)
ffff800000106c23:	65 63 74 6f 72       	movslq %gs:0x72(%rdi,%rbp,2),%esi
ffff800000106c28:	20 49 6e             	and    %cl,0x6e(%rcx)
ffff800000106c2b:	64 65 78 3a          	fs gs js ffff800000106c69 <.LC17+0x31>
ffff800000106c2f:	25 23 30 31 30       	and    $0x30313023,%eax
ffff800000106c34:	78 0a                	js     ffff800000106c40 <.LC17+0x8>
	...

ffff800000106c38 <.LC17>:
ffff800000106c38:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000106c3a:	5f                   	pop    %rdi
ffff800000106c3b:	73 65                	jae    ffff800000106ca2 <.LC18+0x22>
ffff800000106c3d:	67 6d                	insl   (%dx),%es:(%edi)
ffff800000106c3f:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000106c41:	74 5f                	je     ffff800000106ca2 <.LC18+0x22>
ffff800000106c43:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000106c44:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106c45:	74 5f                	je     ffff800000106ca6 <.LC18+0x26>
ffff800000106c47:	70 72                	jo     ffff800000106cbb <.LC18+0x3b>
ffff800000106c49:	65 73 65             	gs jae ffff800000106cb1 <.LC18+0x31>
ffff800000106c4c:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000106c4d:	74 28                	je     ffff800000106c77 <.LC17+0x3f>
ffff800000106c4f:	31 31                	xor    %esi,(%rcx)
ffff800000106c51:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000106c58:	5f                   	pop    %rdi
ffff800000106c59:	43                   	rex.XB
ffff800000106c5a:	4f                   	rex.WRXB
ffff800000106c5b:	44                   	rex.R
ffff800000106c5c:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419c86 <_ebss+0x38311b32>
ffff800000106c63:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106c64:	78 2c                	js     ffff800000106c92 <.LC18+0x12>
ffff800000106c66:	52                   	push   %rdx
ffff800000106c67:	53                   	push   %rbx
ffff800000106c68:	50                   	push   %rax
ffff800000106c69:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419c92 <_ebss+0x38311b3e>
ffff800000106c6f:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106c70:	78 2c                	js     ffff800000106c9e <.LC18+0x1e>
ffff800000106c72:	52                   	push   %rdx
ffff800000106c73:	49 50                	rex.WB push %r8
ffff800000106c75:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419c9e <_ebss+0x38311b4a>
ffff800000106c7b:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106c7c:	78 0a                	js     ffff800000106c88 <.LC18+0x8>
	...

ffff800000106c80 <.LC18>:
ffff800000106c80:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000106c82:	5f                   	pop    %rdi
ffff800000106c83:	73 74                	jae    ffff800000106cf9 <.LC19+0x31>
ffff800000106c85:	61                   	(bad)  
ffff800000106c86:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
ffff800000106c89:	73 65                	jae    ffff800000106cf0 <.LC19+0x28>
ffff800000106c8b:	67 6d                	insl   (%dx),%es:(%edi)
ffff800000106c8d:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000106c8f:	74 5f                	je     ffff800000106cf0 <.LC19+0x28>
ffff800000106c91:	66 61                	data16 (bad) 
ffff800000106c93:	75 6c                	jne    ffff800000106d01 <.LC19+0x39>
ffff800000106c95:	74 28                	je     ffff800000106cbf <.LC18+0x3f>
ffff800000106c97:	31 32                	xor    %esi,(%rdx)
ffff800000106c99:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000106ca0:	5f                   	pop    %rdi
ffff800000106ca1:	43                   	rex.XB
ffff800000106ca2:	4f                   	rex.WRXB
ffff800000106ca3:	44                   	rex.R
ffff800000106ca4:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419cce <_ebss+0x38311b7a>
ffff800000106cab:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106cac:	78 2c                	js     ffff800000106cda <.LC19+0x12>
ffff800000106cae:	52                   	push   %rdx
ffff800000106caf:	53                   	push   %rbx
ffff800000106cb0:	50                   	push   %rax
ffff800000106cb1:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419cda <_ebss+0x38311b86>
ffff800000106cb7:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106cb8:	78 2c                	js     ffff800000106ce6 <.LC19+0x1e>
ffff800000106cba:	52                   	push   %rdx
ffff800000106cbb:	49 50                	rex.WB push %r8
ffff800000106cbd:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419ce6 <_ebss+0x38311b92>
ffff800000106cc3:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106cc4:	78 0a                	js     ffff800000106cd0 <.LC19+0x8>
	...

ffff800000106cc8 <.LC19>:
ffff800000106cc8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000106cca:	5f                   	pop    %rdi
ffff800000106ccb:	67 65 6e             	outsb  %gs:(%esi),(%dx)
ffff800000106cce:	65 72 61             	gs jb  ffff800000106d32 <.LC20+0x22>
ffff800000106cd1:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106cd2:	5f                   	pop    %rdi
ffff800000106cd3:	70 72                	jo     ffff800000106d47 <.LC20+0x37>
ffff800000106cd5:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106cd6:	74 65                	je     ffff800000106d3d <.LC20+0x2d>
ffff800000106cd8:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
ffff800000106cdc:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000106cdd:	28 31                	sub    %dh,(%rcx)
ffff800000106cdf:	33 29                	xor    (%rcx),%ebp
ffff800000106ce1:	2c 45                	sub    $0x45,%al
ffff800000106ce3:	52                   	push   %rdx
ffff800000106ce4:	52                   	push   %rdx
ffff800000106ce5:	4f 52                	rex.WRXB push %r10
ffff800000106ce7:	5f                   	pop    %rdi
ffff800000106ce8:	43                   	rex.XB
ffff800000106ce9:	4f                   	rex.WRXB
ffff800000106cea:	44                   	rex.R
ffff800000106ceb:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419d15 <_ebss+0x38311bc1>
ffff800000106cf2:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106cf3:	78 2c                	js     ffff800000106d21 <.LC20+0x11>
ffff800000106cf5:	52                   	push   %rdx
ffff800000106cf6:	53                   	push   %rbx
ffff800000106cf7:	50                   	push   %rax
ffff800000106cf8:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419d21 <_ebss+0x38311bcd>
ffff800000106cfe:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106cff:	78 2c                	js     ffff800000106d2d <.LC20+0x1d>
ffff800000106d01:	52                   	push   %rdx
ffff800000106d02:	49 50                	rex.WB push %r8
ffff800000106d04:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419d2d <_ebss+0x38311bd9>
ffff800000106d0a:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106d0b:	78 0a                	js     ffff800000106d17 <.LC20+0x7>
ffff800000106d0d:	00 00                	add    %al,(%rax)
	...

ffff800000106d10 <.LC20>:
ffff800000106d10:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000106d12:	5f                   	pop    %rdi
ffff800000106d13:	70 61                	jo     ffff800000106d76 <.LC23+0x1>
ffff800000106d15:	67 65 5f             	addr32 gs pop %rdi
ffff800000106d18:	66 61                	data16 (bad) 
ffff800000106d1a:	75 6c                	jne    ffff800000106d88 <.LC24>
ffff800000106d1c:	74 28                	je     ffff800000106d46 <.LC20+0x36>
ffff800000106d1e:	31 34 29             	xor    %esi,(%rcx,%rbp,1)
ffff800000106d21:	2c 45                	sub    $0x45,%al
ffff800000106d23:	52                   	push   %rdx
ffff800000106d24:	52                   	push   %rdx
ffff800000106d25:	4f 52                	rex.WRXB push %r10
ffff800000106d27:	5f                   	pop    %rdi
ffff800000106d28:	43                   	rex.XB
ffff800000106d29:	4f                   	rex.WRXB
ffff800000106d2a:	44                   	rex.R
ffff800000106d2b:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419d55 <_ebss+0x38311c01>
ffff800000106d32:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106d33:	78 2c                	js     ffff800000106d61 <.LC22>
ffff800000106d35:	52                   	push   %rdx
ffff800000106d36:	53                   	push   %rbx
ffff800000106d37:	50                   	push   %rax
ffff800000106d38:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419d61 <_ebss+0x38311c0d>
ffff800000106d3e:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106d3f:	78 2c                	js     ffff800000106d6d <.LC22+0xc>
ffff800000106d41:	52                   	push   %rdx
ffff800000106d42:	49 50                	rex.WB push %r8
ffff800000106d44:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419d6d <_ebss+0x38311c19>
ffff800000106d4a:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106d4b:	78 0a                	js     ffff800000106d57 <.LC21+0x9>
	...

ffff800000106d4e <.LC21>:
ffff800000106d4e:	50                   	push   %rax
ffff800000106d4f:	61                   	(bad)  
ffff800000106d50:	67 65 20 4e 6f       	and    %cl,%gs:0x6f(%esi)
ffff800000106d55:	74 2d                	je     ffff800000106d84 <.LC23+0xf>
ffff800000106d57:	50                   	push   %rax
ffff800000106d58:	72 65                	jb     ffff800000106dbf <.LC26+0x9>
ffff800000106d5a:	73 65                	jae    ffff800000106dc1 <.LC26+0xb>
ffff800000106d5c:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000106d5d:	74 2c                	je     ffff800000106d8b <.LC24+0x3>
ffff800000106d5f:	09 00                	or     %eax,(%rax)

ffff800000106d61 <.LC22>:
ffff800000106d61:	57                   	push   %rdi
ffff800000106d62:	72 69                	jb     ffff800000106dcd <.LC26+0x17>
ffff800000106d64:	74 65                	je     ffff800000106dcb <.LC26+0x15>
ffff800000106d66:	20 43 61             	and    %al,0x61(%rbx)
ffff800000106d69:	75 73                	jne    ffff800000106dde <.LC27+0x6>
ffff800000106d6b:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff800000106d6f:	75 6c                	jne    ffff800000106ddd <.LC27+0x5>
ffff800000106d71:	74 2c                	je     ffff800000106d9f <.LC25+0x5>
ffff800000106d73:	09 00                	or     %eax,(%rax)

ffff800000106d75 <.LC23>:
ffff800000106d75:	52                   	push   %rdx
ffff800000106d76:	65 61                	gs (bad) 
ffff800000106d78:	64 20 43 61          	and    %al,%fs:0x61(%rbx)
ffff800000106d7c:	75 73                	jne    ffff800000106df1 <.LC27+0x19>
ffff800000106d7e:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff800000106d82:	75 6c                	jne    ffff800000106df0 <.LC27+0x18>
ffff800000106d84:	74 2c                	je     ffff800000106db2 <.LC25+0x18>
ffff800000106d86:	09 00                	or     %eax,(%rax)

ffff800000106d88 <.LC24>:
ffff800000106d88:	46 61                	rex.RX (bad) 
ffff800000106d8a:	75 6c                	jne    ffff800000106df8 <.LC28+0x1>
ffff800000106d8c:	74 20                	je     ffff800000106dae <.LC25+0x14>
ffff800000106d8e:	69 6e 20 75 73 65 72 	imul   $0x72657375,0x20(%rsi),%ebp
ffff800000106d95:	28 33                	sub    %dh,(%rbx)
ffff800000106d97:	29 09                	sub    %ecx,(%rcx)
	...

ffff800000106d9a <.LC25>:
ffff800000106d9a:	46 61                	rex.RX (bad) 
ffff800000106d9c:	75 6c                	jne    ffff800000106e0a <.LC30+0x2>
ffff800000106d9e:	74 20                	je     ffff800000106dc0 <.LC26+0xa>
ffff800000106da0:	69 6e 20 73 75 70 65 	imul   $0x65707573,0x20(%rsi),%ebp
ffff800000106da7:	72 76                	jb     ffff800000106e1f <.LC30+0x17>
ffff800000106da9:	69 73 6f 72 28 30 2c 	imul   $0x2c302872,0x6f(%rbx),%esi
ffff800000106db0:	31 2c 32             	xor    %ebp,(%rdx,%rsi,1)
ffff800000106db3:	29 09                	sub    %ecx,(%rcx)
	...

ffff800000106db6 <.LC26>:
ffff800000106db6:	2c 52                	sub    $0x52,%al
ffff800000106db8:	65 73 65             	gs jae ffff800000106e20 <.LC30+0x18>
ffff800000106dbb:	72 76                	jb     ffff800000106e33 <.LC30+0x2b>
ffff800000106dbd:	65 64 20 42 69       	gs and %al,%fs:0x69(%rdx)
ffff800000106dc2:	74 20                	je     ffff800000106de4 <.LC27+0xc>
ffff800000106dc4:	43 61                	rex.XB (bad) 
ffff800000106dc6:	75 73                	jne    ffff800000106e3b <.LC30+0x33>
ffff800000106dc8:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff800000106dcc:	75 6c                	jne    ffff800000106e3a <.LC30+0x32>
ffff800000106dce:	74 09                	je     ffff800000106dd9 <.LC27+0x1>
	...

ffff800000106dd8 <.LC27>:
ffff800000106dd8:	2c 49                	sub    $0x49,%al
ffff800000106dda:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000106ddb:	73 74                	jae    ffff800000106e51 <.LC31+0x1>
ffff800000106ddd:	72 75                	jb     ffff800000106e54 <.LC31+0x4>
ffff800000106ddf:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
ffff800000106de3:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000106de4:	20 66 65             	and    %ah,0x65(%rsi)
ffff800000106de7:	74 63                	je     ffff800000106e4c <.LC30+0x44>
ffff800000106de9:	68 20 43 61 75       	pushq  $0x75614320
ffff800000106dee:	73 65                	jae    ffff800000106e55 <.LC31+0x5>
ffff800000106df0:	20 46 61             	and    %al,0x61(%rsi)
ffff800000106df3:	75 6c                	jne    ffff800000106e61 <.LC31+0x11>
ffff800000106df5:	74 00                	je     ffff800000106df7 <.LC28>

ffff800000106df7 <.LC28>:
ffff800000106df7:	0a 00                	or     (%rax),%al

ffff800000106df9 <.LC29>:
ffff800000106df9:	43 52                	rex.XB push %r10
ffff800000106dfb:	32 3a                	xor    (%rdx),%bh
ffff800000106dfd:	25 23 30 31 38       	and    $0x38313023,%eax
ffff800000106e02:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106e03:	78 0a                	js     ffff800000106e0f <.LC30+0x7>
ffff800000106e05:	00 00                	add    %al,(%rax)
	...

ffff800000106e08 <.LC30>:
ffff800000106e08:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000106e0a:	5f                   	pop    %rdi
ffff800000106e0b:	78 38                	js     ffff800000106e45 <.LC30+0x3d>
ffff800000106e0d:	37                   	(bad)  
ffff800000106e0e:	5f                   	pop    %rdi
ffff800000106e0f:	46 50                	rex.RX push %rax
ffff800000106e11:	55                   	push   %rbp
ffff800000106e12:	5f                   	pop    %rdi
ffff800000106e13:	65 72 72             	gs jb  ffff800000106e88 <.LC31+0x38>
ffff800000106e16:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000106e17:	72 28                	jb     ffff800000106e41 <.LC30+0x39>
ffff800000106e19:	31 36                	xor    %esi,(%rsi)
ffff800000106e1b:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000106e22:	5f                   	pop    %rdi
ffff800000106e23:	43                   	rex.XB
ffff800000106e24:	4f                   	rex.WRXB
ffff800000106e25:	44                   	rex.R
ffff800000106e26:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419e50 <_ebss+0x38311cfc>
ffff800000106e2d:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106e2e:	78 2c                	js     ffff800000106e5c <.LC31+0xc>
ffff800000106e30:	52                   	push   %rdx
ffff800000106e31:	53                   	push   %rbx
ffff800000106e32:	50                   	push   %rax
ffff800000106e33:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419e5c <_ebss+0x38311d08>
ffff800000106e39:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106e3a:	78 2c                	js     ffff800000106e68 <.LC31+0x18>
ffff800000106e3c:	52                   	push   %rdx
ffff800000106e3d:	49 50                	rex.WB push %r8
ffff800000106e3f:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419e68 <_ebss+0x38311d14>
ffff800000106e45:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106e46:	78 0a                	js     ffff800000106e52 <.LC31+0x2>
	...

ffff800000106e50 <.LC31>:
ffff800000106e50:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000106e52:	5f                   	pop    %rdi
ffff800000106e53:	61                   	(bad)  
ffff800000106e54:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106e55:	69 67 6e 6d 65 6e 74 	imul   $0x746e656d,0x6e(%rdi),%esp
ffff800000106e5c:	5f                   	pop    %rdi
ffff800000106e5d:	63 68 65             	movslq 0x65(%rax),%ebp
ffff800000106e60:	63 6b 28             	movslq 0x28(%rbx),%ebp
ffff800000106e63:	31 37                	xor    %esi,(%rdi)
ffff800000106e65:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000106e6c:	5f                   	pop    %rdi
ffff800000106e6d:	43                   	rex.XB
ffff800000106e6e:	4f                   	rex.WRXB
ffff800000106e6f:	44                   	rex.R
ffff800000106e70:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419e9a <_ebss+0x38311d46>
ffff800000106e77:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106e78:	78 2c                	js     ffff800000106ea6 <.LC32+0xe>
ffff800000106e7a:	52                   	push   %rdx
ffff800000106e7b:	53                   	push   %rbx
ffff800000106e7c:	50                   	push   %rax
ffff800000106e7d:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419ea6 <_ebss+0x38311d52>
ffff800000106e83:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106e84:	78 2c                	js     ffff800000106eb2 <.LC32+0x1a>
ffff800000106e86:	52                   	push   %rdx
ffff800000106e87:	49 50                	rex.WB push %r8
ffff800000106e89:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419eb2 <_ebss+0x38311d5e>
ffff800000106e8f:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106e90:	78 0a                	js     ffff800000106e9c <.LC32+0x4>
ffff800000106e92:	00 00                	add    %al,(%rax)
ffff800000106e94:	00 00                	add    %al,(%rax)
	...

ffff800000106e98 <.LC32>:
ffff800000106e98:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000106e9a:	5f                   	pop    %rdi
ffff800000106e9b:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000106e9c:	61                   	(bad)  
ffff800000106e9d:	63 68 69             	movslq 0x69(%rax),%ebp
ffff800000106ea0:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000106ea1:	65 5f                	gs pop %rdi
ffff800000106ea3:	63 68 65             	movslq 0x65(%rax),%ebp
ffff800000106ea6:	63 6b 28             	movslq 0x28(%rbx),%ebp
ffff800000106ea9:	31 38                	xor    %edi,(%rax)
ffff800000106eab:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000106eb2:	5f                   	pop    %rdi
ffff800000106eb3:	43                   	rex.XB
ffff800000106eb4:	4f                   	rex.WRXB
ffff800000106eb5:	44                   	rex.R
ffff800000106eb6:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419ee0 <_ebss+0x38311d8c>
ffff800000106ebd:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106ebe:	78 2c                	js     ffff800000106eec <.LC33+0xc>
ffff800000106ec0:	52                   	push   %rdx
ffff800000106ec1:	53                   	push   %rbx
ffff800000106ec2:	50                   	push   %rax
ffff800000106ec3:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419eec <_ebss+0x38311d98>
ffff800000106ec9:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106eca:	78 2c                	js     ffff800000106ef8 <.LC33+0x18>
ffff800000106ecc:	52                   	push   %rdx
ffff800000106ecd:	49 50                	rex.WB push %r8
ffff800000106ecf:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419ef8 <_ebss+0x38311da4>
ffff800000106ed5:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106ed6:	78 0a                	js     ffff800000106ee2 <.LC33+0x2>
	...

ffff800000106ee0 <.LC33>:
ffff800000106ee0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000106ee2:	5f                   	pop    %rdi
ffff800000106ee3:	53                   	push   %rbx
ffff800000106ee4:	49                   	rex.WB
ffff800000106ee5:	4d                   	rex.WRB
ffff800000106ee6:	44 5f                	rex.R pop %rdi
ffff800000106ee8:	65 78 63             	gs js  ffff800000106f4e <.LC34+0x26>
ffff800000106eeb:	65 70 74             	gs jo  ffff800000106f62 <.LC34+0x3a>
ffff800000106eee:	69 6f 6e 28 31 39 29 	imul   $0x29393128,0x6e(%rdi),%ebp
ffff800000106ef5:	2c 45                	sub    $0x45,%al
ffff800000106ef7:	52                   	push   %rdx
ffff800000106ef8:	52                   	push   %rdx
ffff800000106ef9:	4f 52                	rex.WRXB push %r10
ffff800000106efb:	5f                   	pop    %rdi
ffff800000106efc:	43                   	rex.XB
ffff800000106efd:	4f                   	rex.WRXB
ffff800000106efe:	44                   	rex.R
ffff800000106eff:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419f29 <_ebss+0x38311dd5>
ffff800000106f06:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106f07:	78 2c                	js     ffff800000106f35 <.LC34+0xd>
ffff800000106f09:	52                   	push   %rdx
ffff800000106f0a:	53                   	push   %rbx
ffff800000106f0b:	50                   	push   %rax
ffff800000106f0c:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419f35 <_ebss+0x38311de1>
ffff800000106f12:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106f13:	78 2c                	js     ffff800000106f41 <.LC34+0x19>
ffff800000106f15:	52                   	push   %rdx
ffff800000106f16:	49 50                	rex.WB push %r8
ffff800000106f18:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419f41 <_ebss+0x38311ded>
ffff800000106f1e:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106f1f:	78 0a                	js     ffff800000106f2b <.LC34+0x3>
ffff800000106f21:	00 00                	add    %al,(%rax)
ffff800000106f23:	00 00                	add    %al,(%rax)
ffff800000106f25:	00 00                	add    %al,(%rax)
	...

ffff800000106f28 <.LC34>:
ffff800000106f28:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000106f2a:	5f                   	pop    %rdi
ffff800000106f2b:	76 69                	jbe    ffff800000106f96 <GDT64_Table+0x1e>
ffff800000106f2d:	72 74                	jb     ffff800000106fa3 <GDT64_Table+0x2b>
ffff800000106f2f:	75 61                	jne    ffff800000106f92 <GDT64_Table+0x1a>
ffff800000106f31:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106f32:	69 7a 61 74 69 6f 6e 	imul   $0x6e6f6974,0x61(%rdx),%edi
ffff800000106f39:	5f                   	pop    %rdi
ffff800000106f3a:	65 78 63             	gs js  ffff800000106fa0 <GDT64_Table+0x28>
ffff800000106f3d:	65 70 74             	gs jo  ffff800000106fb4 <GDT64_Table+0x3c>
ffff800000106f40:	69 6f 6e 28 32 30 29 	imul   $0x29303228,0x6e(%rdi),%ebp
ffff800000106f47:	2c 45                	sub    $0x45,%al
ffff800000106f49:	52                   	push   %rdx
ffff800000106f4a:	52                   	push   %rdx
ffff800000106f4b:	4f 52                	rex.WRXB push %r10
ffff800000106f4d:	5f                   	pop    %rdi
ffff800000106f4e:	43                   	rex.XB
ffff800000106f4f:	4f                   	rex.WRXB
ffff800000106f50:	44                   	rex.R
ffff800000106f51:	45 3a 25 23 30 31 38 	cmp    0x38313023(%rip),%r12b        # ffff800038419f7b <_ebss+0x38311e27>
ffff800000106f58:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106f59:	78 2c                	js     ffff800000106f87 <GDT64_Table+0xf>
ffff800000106f5b:	52                   	push   %rdx
ffff800000106f5c:	53                   	push   %rbx
ffff800000106f5d:	50                   	push   %rax
ffff800000106f5e:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419f87 <_ebss+0x38311e33>
ffff800000106f64:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106f65:	78 2c                	js     ffff800000106f93 <GDT64_Table+0x1b>
ffff800000106f67:	52                   	push   %rdx
ffff800000106f68:	49 50                	rex.WB push %r8
ffff800000106f6a:	3a 25 23 30 31 38    	cmp    0x38313023(%rip),%ah        # ffff800038419f93 <_ebss+0x38311e3f>
ffff800000106f70:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000106f71:	78 0a                	js     ffff800000106f7d <GDT64_Table+0x5>
	...

Disassembly of section .data:

ffff800000106f78 <GDT64_Table>:
	...
ffff800000106f84:	00 98 20 00 00 00    	add    %bl,0x20(%rax)
ffff800000106f8a:	00 00                	add    %al,(%rax)
ffff800000106f8c:	00 92 00 00 00 00    	add    %dl,0x0(%rdx)
ffff800000106f92:	00 00                	add    %al,(%rax)
ffff800000106f94:	00 f8                	add    %bh,%al
ffff800000106f96:	20 00                	and    %al,(%rax)
ffff800000106f98:	00 00                	add    %al,(%rax)
ffff800000106f9a:	00 00                	add    %al,(%rax)
ffff800000106f9c:	00 f2                	add    %dh,%dl
ffff800000106f9e:	00 00                	add    %al,(%rax)
ffff800000106fa0:	ff                   	(bad)  
ffff800000106fa1:	ff 00                	incl   (%rax)
ffff800000106fa3:	00 00                	add    %al,(%rax)
ffff800000106fa5:	9a                   	(bad)  
ffff800000106fa6:	cf                   	iret   
ffff800000106fa7:	00 ff                	add    %bh,%bh
ffff800000106fa9:	ff 00                	incl   (%rax)
ffff800000106fab:	00 00                	add    %al,(%rax)
ffff800000106fad:	92                   	xchg   %eax,%edx
ffff800000106fae:	cf                   	iret   
	...

ffff800000107000 <GDT6464_LIMIT>:
ffff800000107000:	87 00                	xchg   %eax,(%rax)

ffff800000107002 <GDT64_BASE>:
ffff800000107002:	78 6f                	js     ffff800000107073 <IDT64_Table+0x69>
ffff800000107004:	10 00                	adc    %al,(%rax)
ffff800000107006:	00 80 ff ff      	add    %al,0xffff(%rax)

ffff80000010700a <IDT64_Table>:
	...

ffff80000010800a <IDT64_END>:
ffff80000010800a:	ff 0f                	decl   (%rdi)

ffff80000010800c <IDT64_BASE>:
ffff80000010800c:	0a 70 10             	or     0x10(%rax),%dh
ffff80000010800f:	00 00                	add    %al,(%rax)
ffff800000108011:	80 ff ff             	cmp    $0xff,%bh

ffff800000108014 <TSS64_Table>:
	...

Disassembly of section .got:

ffff800000108080 <.got>:
ffff800000108080:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108081:	40 10 00             	adc    %al,(%rax)
ffff800000108084:	00 80 ff ff 58 41    	add    %al,0x4158ffff(%rax)
ffff80000010808a:	10 00                	adc    %al,(%rax)
ffff80000010808c:	00 80 ff ff b5 40    	add    %al,0x40b5ffff(%rax)
ffff800000108092:	10 00                	adc    %al,(%rax)
ffff800000108094:	00 80 ff ff 7c 40    	add    %al,0x407cffff(%rax)
ffff80000010809a:	10 00                	adc    %al,(%rax)
ffff80000010809c:	00 80 ff ff c8 40    	add    %al,0x40c8ffff(%rax)
ffff8000001080a2:	10 00                	adc    %al,(%rax)
ffff8000001080a4:	00 80 ff ff 25 41    	add    %al,0x4125ffff(%rax)
ffff8000001080aa:	10 00                	adc    %al,(%rax)
ffff8000001080ac:	00 80 ff ff 0a 70    	add    %al,0x700affff(%rax)
ffff8000001080b2:	10 00                	adc    %al,(%rax)
ffff8000001080b4:	00 80 ff ff 36 41    	add    %al,0x4136ffff(%rax)
ffff8000001080ba:	10 00                	adc    %al,(%rax)
ffff8000001080bc:	00 80 ff ff 47 41    	add    %al,0x4147ffff(%rax)
ffff8000001080c2:	10 00                	adc    %al,(%rax)
ffff8000001080c4:	00 80 ff ff db 40    	add    %al,0x40dbffff(%rax)
ffff8000001080ca:	10 00                	adc    %al,(%rax)
ffff8000001080cc:	00 80 ff ff 14 80    	add    %al,-0x7feb0001(%rax)
ffff8000001080d2:	10 00                	adc    %al,(%rax)
ffff8000001080d4:	00 80 ff ff 8d 41    	add    %al,0x418dffff(%rax)
ffff8000001080da:	10 00                	adc    %al,(%rax)
ffff8000001080dc:	00 80 ff ff 7a 41    	add    %al,0x417affff(%rax)
ffff8000001080e2:	10 00                	adc    %al,(%rax)
ffff8000001080e4:	00 80 ff ff 01 41    	add    %al,0x4101ffff(%rax)
ffff8000001080ea:	10 00                	adc    %al,(%rax)
ffff8000001080ec:	00 80 ff ff 78 6f    	add    %al,0x6f78ffff(%rax)
ffff8000001080f2:	10 00                	adc    %al,(%rax)
ffff8000001080f4:	00 80 ff ff c4 41    	add    %al,0x41c4ffff(%rax)
ffff8000001080fa:	10 00                	adc    %al,(%rax)
ffff8000001080fc:	00 80 ff ff 12 41    	add    %al,0x4112ffff(%rax)
ffff800000108102:	10 00                	adc    %al,(%rax)
ffff800000108104:	00 80 ff ff 69 41    	add    %al,0x4169ffff(%rax)
ffff80000010810a:	10 00                	adc    %al,(%rax)
ffff80000010810c:	00 80 ff ff 9e 41    	add    %al,0x419effff(%rax)
ffff800000108112:	10 00                	adc    %al,(%rax)
ffff800000108114:	00 80 ff ff b1 41    	add    %al,0x41b1ffff(%rax)
ffff80000010811a:	10 00                	adc    %al,(%rax)
ffff80000010811c:	00 80 ff ff 8f 40    	add    %al,0x408fffff(%rax)
ffff800000108122:	10 00                	adc    %al,(%rax)
ffff800000108124:	00 80 ff ff ee 40    	add    %al,0x40eeffff(%rax)
ffff80000010812a:	10 00                	adc    %al,(%rax)
ffff80000010812c:	00 80 ff ff a2 40    	add    %al,0x40a2ffff(%rax)
ffff800000108132:	10 00                	adc    %al,(%rax)
ffff800000108134:	00                   	.byte 0x0
ffff800000108135:	80 ff ff             	cmp    $0xff,%bh

Disassembly of section .got.plt:

ffff800000108138 <_GLOBAL_OFFSET_TABLE_>:
	...

Disassembly of section .bss:

ffff800000108150 <pos>:
ffff800000108150:	00 00                	add    %al,(%rax)
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
