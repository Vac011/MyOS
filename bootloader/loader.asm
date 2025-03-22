; MyOS二级引导程序
; 负责硬件信息检测、处理器模式切换、向内核传递数据等工作

BaseOfTemp         equ    0        ; 临时缓冲区基地址
OffsetOfTemp       equ    0x7e00   ; 临时缓冲区偏移地址, 存放根目录、临时内核文件以及内存结构信息
OffsetOfTempFAT    equ    0x8000   ; 临时缓冲区FAT表偏移地址, 后续还用于存放VBE信息
BaseOfLoader       equ    0x1000   ; loader加载地址基址(实际地址乘以16)
OffsetOfLoader     equ    0        ; loader加载地址偏移
BaseOfKernel       equ    0        ; kernel加载地址基址
OffsetOfKernel     equ    0x100000 ; kernel加载地址偏移, 1MB
BaseOfMonoText     equ    0xb000   ; 单色文本模式显存地址基址
OffsetOfMonoText   equ    0        ; 单色文本模式显存地址偏移

FAT1SecStart equ 1            ; FAT表1起始扇区号(LBA, Logical Block Address，逻辑块地址格式, 从0开始, 而中断int 13h只能接受CHS格式, 从1开始)
FAT1SecNum equ 9              ; FAT表1扇区数
RootDirSecStart equ 19        ; 根目录起始扇区号, 前面有1+9+9=19块
RootDirSecNum equ 14          ; 根目录扇区数
RootDirEntSize equ 32         ; 根目录项大小
DataClusSecStart equ 33       ; 数据区起始簇扇区号, 前面有1+9+9+14=33块

; FAT信息
BPB_BytesPerSec equ 512       ; 每扇区字节数
BPB_SecPerTrk equ 18          ; 每磁道扇区数
BS_DrvNum equ 0               ; 驱动器号


org 0x10000
    jmp Start

[SECTION .16]
[BITS 16]         ; 实际nasm会将bin文件默认编译为16位模式, 这里可以省略
Start:
    ; 设置段寄存器
    mov ax, cs    ; 由于从boot跳转过来时使用的是长跳转指令, 因此cs已经从0变为了0x1000
    mov ds, ax    ; 此时如果不将ds, es等设置为0x1000, 只使用段内偏移(16位)是不够访问0x10000以上的地址的
    mov ax, 0
    mov ss, ax    ; 但ss不需要, 因为栈还用的是0x7c00以下的空间, 仅使用sp就够了
    mov sp, 0x7c00

    ; 清屏
    mov ax, 0x0600
    mov bx, 0x0700
    mov cx, 0
    mov dx, 0x0184f
    int 0x10

    ; 显示字符串
    mov si, 0
    mov bp, LoaderMsg
    mov ax, BaseOfLoader
    mov es, ax
    call Func_ShowMsg

    ; 打开A20地址线, 使用20根以上的地址总线, 以便能访问1MB以上的内存
    ; 这里使用快速门启用A20, 还可以使用8042键盘控制器(端口0x64、0x60)或int 0x15中断的功能号0x2401启用
    in al, 0x92       ; 读取系统控制端口
    or al, 0x02       ; 设置A20地址线
    out 0x92, al      ; 写入系统控制端口

    ; 关闭中断
    cli               ; 禁止CPU级别的中断

    ; 加载GDT表
    db 0x66           ; 使用0x66前缀强制在16位实模式下使用32位操作数
    lgdt [GDTPtr]     ; GDTR(48位)寄存器需要一个32位的地址, 因此这里需要使用32操作数作为参数传递

    ; 设置CR0(control register)寄存器使能保护模式(而不是进入, 进入需要设置cs段寄存器)
    mov eax, cr0      ; 此时仍在实模式下, 使用的只是eax和cr0的低16位
    or eax, 1         ; 设置PE位(Protection Enable, 第0位)为1
    mov cr0, eax      ; 开启保护模式

    ; 设置段寄存器
    mov ax, SelectorData32
    mov fs, ax
    
    ; 关闭保护模式(进入big real mode)
    mov eax, cr0
    and al, 0xfe
    mov cr0, eax

    ; 打开中断
    sti

    ; 搜索内核文件
    mov dx, 0
LoadRootDirSec:
    ; 第一层循环, 读取根目录扇区
    cmp dx, RootDirSecNum
    je FileNotFound
    mov ax, BaseOfTemp
    mov es, ax
    mov bx, OffsetOfTemp
    mov ax, RootDirSecStart
    add ax, dx
    inc dx
    call Func_ReadOneSec
    mov bx, 0
SearchRootDirSec:
    ; 第二层循环, 在根目录扇区中搜索目录项
    cmp bx, BPB_BytesPerSec
    je LoadRootDirSec
    mov si, KernelName
    mov di, OffsetOfTemp
    add di, bx
    dec di
    add bx, RootDirEntSize
    mov cx, 0
    cld
CmpFileName:
    ; 第三层循环, 按字节比较文件名
    cmp cx, 11
    je FileFound
    inc cx
    inc di
    lodsb
    cmp al, byte [es:di]
    je CmpFileName
    jmp SearchRootDirSec

FileNotFound:
    mov si, 1
    mov bp, FileNotFoundMsg
    mov ax, BaseOfLoader
    mov es, ax
    call Func_ShowMsg

FileFound:
    and di, 0xffe0
    add di, 0x1a
    mov ax, BaseOfTemp
    mov es, ax
    mov si, [es:di]          ; 获取文件的起始簇号(2B)
    ; 无需再次加载FAT表, 使用之前的即可
    mov edi, OffsetOfKernel  ; cpy函数目的内存偏移起始地址
LoadFile:
    ; 根据簇号加载文件到临时内存缓冲区0x7e00处
    and si, 0xfff
    cmp si, 0xff8
    jae Loaded
    mov ax, BaseOfTemp
    mov es, ax
    mov bx, OffsetOfTemp
    mov ax, DataClusSecStart
    sub ax, 2
    add ax, si
    call Func_ReadOneSec
    ; 转移内核到1MB处
    mov ecx, BPB_BytesPerSec ; 传递copy内存大小
    mov ax, BaseOfTemp
    mov es, ax               ; 传递源内存段基址
    push esi
    mov esi, OffsetOfTemp    ; 传递源内存偏移地址
    mov ax, BaseOfKernel
    mov fs, ax               ; 传递目的内存段基址
    call Func_CpyMem         ; 在函数里自动更新目的内存偏移地址edi
    pop esi
    push edi 
    ; 获取下一个簇号值
    mov ax, si               
    and si, 1                
    shr ax, 1                
    mov cx, 3                
    mul cx                  
    mov di, OffsetOfTempFAT  
    add di, ax               
    add di, si               
    mov ax, BaseOfTemp
    mov es, ax               
    mov dx, word [es:di]     
    shl si, 2                
    mov cx, si               
    shr dx, cl               
    mov si, dx 
    pop edi              
    jmp LoadFile             

Loaded:
    ; 关闭软盘马达
    mov dx, 0x3f2        ; out指令的目的操作数可以是立即数或dx, 但立即数取值范围只能是8位(0x00~0xff)
    mov al, 0            ; al对应8位I/O端口
    out dx, al

    ; 获取内存信息
    mov ebx, 0
    mov ax, BaseOfTemp
    mov es, ax
    mov di, OffsetOfTemp
GetMemStruct:
    ; 多次调用int 0x15的0xe820号中断遍历内存信息
    mov eax, 0xe820      ; eax会被返回值覆盖, 返回"SMAP"字符串
    mov ecx, 20
    mov edx, 0x534d4150
    int 0x15
    jc GetMemStructFail
    add di, 20
    cmp ebx, 0
    jne GetMemStruct
    jmp SetMonoTextMode
GetMemStructFail:
    mov si, 1
    mov ax, BaseOfLoader
    mov es, ax
    mov bp, GetMemStructFailMsg
    call Func_ShowMsg

; 设置单色文本模式
SetMonoTextMode:
    mov ax, 0x03
    int 0x10

; ;设置图形模式
; GetSVGA:
;     ; 使用VBE(VESA BIOS EXTENSION)获取SVGA模式信息
;     mov ax, BaseOfTemp
;     mov es, ax      ; 缓冲区基地址
;     mov di, OffsetOfTempFAT ; 缓冲区偏移地址, 作为存放VBEInfoBlock信息块结构的起始地址
;     mov ax, 0x4f00  ; 所有VBE功能统一将ah寄存器赋值为0x4f来区别标准VGA BIOS功能, 并使用al寄存器来指定VBE的功能号, 而bl寄存器则用于指明追加或扩展的子功能。
;     int 0x10
;     cmp ax, 0x004f  ; 对于VBE的功能, 如果支持则al返回0x4f表示支持该功能, ah返回0x00表示成功, 否则AH寄存器将记录失败类型
;     jz GetSVGAMode
; GetSVGAFail:
;     mov si, 1
;     mov ax, BaseOfLoader
;     mov es, ax
;     mov bp, GetSVGAInfoFailMsg
;     call Func_ShowMsg

; GetSVGAMode:
;     ; 解析模式列表
;     mov ax, BaseOfTemp
;     mov es, ax
;     mov si, OffsetOfTempFAT
;     add si, 0xe            ; vbeInfoBlock结构体中的VideoModePtr字段偏移, 保存着videomodelist的指针
;     mov esi, dword [es:si] ; 获取videomodelist的指针VideoModePtr
;     mov di, OffsetOfTempFAT
;     add di, 0x200          ; ModeInfoBlock结构起始偏移地址
; Get:
;     ; 遍历模式列表并获取模式详细信息
;     mov cx, word [es:esi]  ; VideoModePtr指向VidieoModeList(word数组), 每个word是一个当前VBE芯片能够支持的模式号
;     cmp cx, 0xffff         ; 0xffff表示videomodelist结束
;     jz SetSVGAMode         ; 遍历完成, 去设置SVGA模式
;     mov ax, 0x4f01         ; 通过VBE的01h号功能遍历所有VBE模式号, 以获取每个模式号的ModeInfoBlock结构。
;     int 0x10
;     cmp ax, 0x004f         ; al=0x4f表示支持该功能, ah=0x00表示成功
;     jnz GetSVGAModeFail
;     add esi, 2             ; 指针后移, 指向下一个模式号
;     add di, 0x100          ; 每个ModeInfoBlock结构体大小为256字节
;     jmp Get
; GetSVGAModeFail:
;     mov si, 1
;     mov ax, BaseOfLoader
;     mov es, ax
;     mov bp, GetSVGAModeFailMsg
;     call Func_ShowMsg

; SetSVGAMode:
;     ; 选择合适的SVGA模式并设置
;     mov ax, 0x4f02
;     mov bx, 0x4180    ; 1440x900, 32bit每像素位宽
;     int 0x10
;     cmp ax, 0x004f
;     jz ChangeMode
; SetSVGAModeFail:
;     mov si, 1
;     mov ax, BaseOfLoader
;     mov es, ax
;     mov bp, SetSVGAModeFailMsg
;     call Func_ShowMsg

ChangeMode:
    ; 关闭中断
    cli  
    ; 加载GDT(强制使用32位操作数)              
    db 0x66
    lgdt [GDTPtr]
    ; 加载IDT(因为已经屏蔽了中断, 所以这里也可以选择暂时不加载IDT)        
    db 0x66
    lidt [IDTPtr]        
    ; 使能保护模式
    mov eax, cr0
    or eax, 1
    mov cr0, eax
    ; 这里要使用一个jmp指令来自动设置更新代码段寄存器cs以及处理器的执行流水线
    ; 实际上在jmp完成cs代码段的设置, 其缓冲区段描述符逻辑得到更新, 加载执行保护模式的代码后才是真正进入保护模式
    jmp dword SelectorCode32:ProtectedMode    ; 使用dword前缀也可以强制在16位段中使用32位操作数
    
[SECTION .32]
[BITS 32]
ProtectedMode:
    ; 更新数据段寄存器
    mov ax, SelectorData32
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov ss, ax
    mov esp, 0x7e00      ; 栈从0x7e00向下, 因为此时0x7c00~0x7e00已经不使用了, 而0x7e00~0x8000存放着临时物理内存信息, 0x8000之后存放着VBE信息

    ; 检测CPU是否支持64位模式
    mov eax, 0x80000001  ; 获取扩展功能标志
    cpuid
    test edx, (1 << 29)  ; 检查返回值 EDX 位 29（Long Mode）
    jnz Supported
Not_Supported:
    ; 如果不支持64位模式, 显示错误信息；由于此时已经在保护模式下, 无法直接调用BIOS中断, 所以这里直接操作显存
    mov esi, NotSupportedMsg    ; ESI 指向字符串
    mov edi, 0xB8000            ; VGA 文本模式缓冲区起始地址
.loop:
    lodsb                 ; 取下一个字符 (AL = *ESI++)
    test  al, al          ; 检查是否是 NULL 结束符
    jz    .done           ; 如果是 NULL，结束
    mov   ah, 0x4C        ; 设置颜色 (红色)
    stosw                 ; 写入 VGA 显存 (*EDI++ = AX)
    jmp   .loop           ; 继续打印
.done:
    hlt                   ; 停机

Supported:
    ; 加载64位GDT
    lgdt [GdtPtr64]
    
    ; 使能PAE(Physical Address Extension, 物理地址扩展), 以支持4GB以上的物理内存
    mov eax, cr4
    or eax, 0x20    ; 设置PAE位(bit 5)
    mov cr4, eax

    ; 动态配置临时页目录项和页表项(放在0x90000处)，避免loader.bin文件过大，用于映射0x00000000~0x00A00000(10MB)的物理内存
    ; 0x90000 处是页目录
    mov dword [0x90000], 0x91007  ; PDE 指向 0x91000，RW + Present
    mov dword [0x90800], 0x91007  ; PDE 复制一份，映射相同区域

    ; 0x91000 处是页表
    mov dword [0x91000], 0x92007  ; 指向 0x92000 的页表

    ; 0x92000 处是页表项
    mov dword [0x92000], 0x000083  ; 4KB 页: 0x000000 (映射物理地址 0x000000)
    mov dword [0x92008], 0x200083  ; 4KB 页: 0x002000 (映射物理地址 0x200000)
    mov dword [0x92010], 0x400083  ; 4KB 页: 0x004000
    mov dword [0x92018], 0x600083  ; 4KB 页: 0x006000
    mov dword [0x92020], 0x800083  ; 4KB 页: 0x008000
    mov dword [0x92028], 0xa00083  ; 4KB 页: 0x00A000

    ; 加载cr3寄存器(将页目录(顶层页表)的首地址设置到CR3控制寄存器中), 构造页表结构(此时分页机制必须是关闭状态)
    mov eax, 0x90000
    mov cr3, eax

    ; 使能长模式(通过置位IA32_EFER寄存器(MSR寄存器组内)的LME(Long Mode Enable)标志位激活IA-32e模式)
    mov ecx, 0xc0000080  ; 传入要读取的IA32_EFER寄存器的地址
    rdmsr                ; 读取IA32_EFER寄存器的值, 返回值存放在edx:eax组成的64位寄存器中
    or eax, 0x100        ; 设置IA32_EFER寄存器的LME标志位(bit 8)
    wrmsr                ; 写入IA32_EFER寄存器(ecx传递目标寄存器地址, edx:eax传递写入值)

    ; 开启分页机制，真正进入IA-32e模式
    mov eax, cr0      
    bts eax, 31          ; bit test and set, 可以测试(返回给CF)并设置寄存器的某一位(从第0位开始)为1(设置为0使用btr, bit test and reset)
    mov cr0, eax         ; 设置PG位(第31位)为1, 使能分页机制, 此时处理器会自动置位IA32_ERER寄存器的LMA(Long Mode Active, 用以指示处理器当前是否处于IA-32e模式)标志位

    ; 至此，处理器完成了进入IA-32e模式前所有的准备工作
    ; 但是处理器目前正在执行保护模式的程序，这种状态叫作兼容模式(Compatibility Mode), 即运行在IA-32e模式（64位模式）下的32位程序
    ; 若想真正运行在IA-32e模式，还需要使用一条跨段跳转/调用指令将CS段寄存器的值更新为IA-32e模式的代码段描述符

    ; 跳转到64位代码段, 正式进入长模式
    jmp SelectorCode64:OffsetOfKernel

[SECTION .lib16]
[BITS 16]
; 读磁盘扇区(1个)函数
; es传递缓冲区段地址
; bx传递缓冲区偏移地址
; ax传递读取扇区号(LBA)
Func_ReadOneSec:
    ; LBA格式转换为CHS格式
    push cx
    push dx
    push si
    mov cl, BPB_SecPerTrk
    div cl
    inc ah
    mov cl, ah
    mov dh, al
    and dh, 1
    shr al, 1
    mov ch, al
    mov si, 0
Retry:
    ; 读取磁盘/失败重读
    mov ax, 0
    mov dl, BS_DrvNum
    int 0x13
    mov ah, 0x02
    mov al, 1
    int 0x13
    jnc Return
    add si, 1
    cmp si, 3
    jne Retry
    mov si, 1
    mov bp, ReadSecErrorMsg
    mov ax, BaseOfLoader
    mov es, ax
    call Func_ShowMsg
Return:
    pop si
    pop dx
    pop cx
    ret
    
; 显示信息函数
; si传递信息类型(0x00:显示并返回, 0x01:错误)
; es传递错误信息段地址
; bp传递错误信息偏移地址
Func_ShowMsg:
    push ax
    push bx
    push cx
    push dx
    mov cx, 0
Count:
    ; 循环计算字符串长度
    mov bx, bp
    add bx, cx
    inc cx
    mov al, [es:bx]
    cmp al, 0
    jne Count
    mov ax, 0x1301
    mov dh, [Row]
    mov dl, 0
    mov bl, dh
    add bl, 2
    mov [Row], bl
    cmp si, 0
    jne HALT
Fin:
    mov bx, 0x000f
    int 0x10
    pop dx
    pop cx
    pop bx
    pop ax
    ret
HALT:
    mov bx, 0x008c
    int 0x10
    hlt
    jmp HALT

; 内存拷贝函数
; ecx传递拷贝内存大小
; es传递源内存段基址
; esi传递源内存偏移地址
; fs传递目的内存段基址
; edi传递目的内存偏移地址
Func_CpyMem:
    push eax
CpyLoop:
    mov eax, [es:esi]
    mov [fs:edi], eax
    add esi, 4
    add edi, 4
    sub ecx, 4
    jnz CpyLoop
    pop eax
    ret

    alignb 16

[SECTION gdt]
GDT0:                     
    dq 0         ; GDT的第一项必须为0
DESC_CODE32:     ; 代码段描述符，定义为0x0000ffff, 0x00cf9a00
    dw 0xffff    ; 段界限低16位0xffff
    dw 0x0000    ; 段基址低16位
    db 0x00      ; 段基址中8位
    db 10011010b ; 段属性8位：代码段，存在，特权级0，可执行  
    db 11001111b ; 段属性4位：粒度4KB，32位模式 + 段界限高4位：0xf，共计限长0xFFFFF * 4KB = 0xFFFFFFFF = 4GB
    db 0x00      ; 段基址高8位          
DESC_DATA32:     ; 数据段描述符，定义为0x0000ffff, 0x00cf9200   
    dw 0xffff    ; 段界限低16位0xffff  
    dw 0x0000    ; 段基址低16位 
    db 0x00      ; 段基址中8位  
    db 10010010b ; 段属性8位：数据段，存在，特权级 0，不可执行  
    db 11001111b ; 段属性4位：粒度4KB，32位模式 + 段界限高4位：0xf，共计限长0xFFFFF * 4KB = 0xFFFFFFFF = 4GB  
    db 0x00      ; 段基址高8位
GDTEnd:
GDTPtr:
    dw GDTEnd - GDT0 - 1 ; GDT长度
    dd GDT0              ; GDT基址

SelectorCode32 equ DESC_CODE32 - GDT0        ; 代码段选择子索引
SelectorData32 equ DESC_DATA32 - GDT0        ; 数据段选择子索引

[SECTION gdt64]
GDT64:
    dq 0         ; GDT的第一项必须为0
DESC_CODE64:     ; 64位代码段描述符
    dw 0x0000    ; 段界限低16位，IA-32e模式简化了保护模式的段结构，删掉了冗余的段基地址和段限长，使段直接覆盖整个线性地址空间
    dw 0x0000    ; 段基址低16位
    db 0x00      ; 段基址中8位
    db 10011000b ; 段属性8位：代码段，存在，特权级0，可执行
    db 00100000b ; 段属性4位：粒度1B，64位模式 + 段界限高4位
    db 0x00      ; 段基址高8位
DESC_DATA64:     ; 64位数据段描述符
    dw 0x0000    ; 段界限低16位
    dw 0x0000    ; 段基址低16位
    db 0x00      ; 段基址中8位
    db 10010010b ; 段属性8位：数据段，存在，特权级0，不可执行
    db 00000000b ; 段属性4位 + 段界限高4位
    db 0x00      ; 段基址高8位
GDT64End:
GdtPtr64:
    dw GDT64End - GDT64 - 1 ; GDT长度
    dd GDT64                ; GDT基址

SelectorCode64 equ DESC_CODE64 - GDT64        ; 代码段选择子索引
SelectorData64 equ DESC_DATA64 - GDT64        ; 数据段选择子索引

; 临时空IDT
[SECTION idt]
IDT:
	times	0x50	dq	0           ; 256个8字节空描述符
IDT_END:
IDTPtr:
	dw	IDT_END - IDT - 1
	dd	IDT

[SECTION .data]
Msg:
    Row db 0
    LoaderMsg: db "Loading...", 0
    ReadSecErrorMsg: db "Read Disk Error!", 0
    FileNotFoundMsg: db "File Not Found!", 0
    KernelName: db "KERNEL  BIN", 0
    GetMemStructFailMsg: db "Get Memory Structure Failed!", 0
    GetSVGAInfoFailMsg: db "Get SVGA Information Failed!", 0
    GetSVGAModeFailMsg: db "Get SVGA Mode Failed!", 0
    SetSVGAModeFailMsg: db "Set SVGA Mode Failed!", 0
    NotSupportedMsg: db "64-bit mode not supported!", 0