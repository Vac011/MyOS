#########################
# 在linux下使用(如已在Windows中配置dd等命令，也可在Windows中使用)
# 命令所需程序: nasm, qemu, vncviewer, bochs按需安装
#########################

# Windows命令
ASM = nasm.exe
QEMU = qemu-system-x86_64.exe
ADDR = 127.0.0.1:5900
BOCHS = bochs.exe
DBG	= bochsdbg.exe
BXIMAGE = echo "c" | bximage.exe -func=create -fd="1.44M" -q
# DD = 
# MOUNT = 
# CP = 
# SYNC = 
# UMOUNT = 
# CLEAN = del /f /q

# Linux命令
# ASM = nasm
# QEMU = qemu-system-x86_64
# VNC = vncviewer
# ADDR = 127.0.0.1:5900
# BOCHS = bochs
# BXIMAGE = echo "c" | bximage -func=create -fd="1.44M" -q
DD = dd
MOUNT = sudo mount
CP = sudo cp
SYNC = sync
UMOUNT = sudo umount
CLEAN = rm -f

# 文件生成规则
# $<表示第一个依赖文件，$@表示目标文件

# compile bootloader
boot.bin: boot.asm
	$(ASM) $< -o $@

loader.bin: loader.asm
	$(ASM) $< -o $@

kernel.bin: kernel.asm
	$(ASM) $< -o $@

# create floppy image
bootloader.img: boot.bin loader.bin kernel.bin
	$(DD) if=/dev/zero of=$@ bs=512 count=2880
	$(DD) if=$< of=$@ conv=notrunc
	$(MOUNT) $@ /media/ -t vfat -o loop
	$(CP) loader.bin /media/
	$(CP) kernel.bin /media/
	$(SYNC)
	$(UMOUNT) /media/


# 命令规则
# 使用make+命令规则即可执行命令

# run in qemu
# &表示后台运行, \表示换行(多命令时仍属于整体，否则多个命令属于不同执行逻辑), &&表示逻辑与(当前命令执行成功后执行下一个命令), ;表示分隔命令(无论前一个命令是否成功，都执行下一个命令)
qemu: bootloader.img
	$(QEMU) -drive file=$<,format=raw &\
	PID=$$! && sleep 1 && $(VNC) $(ADDR);\
	kill $$PID

# run in bochs
# -前缀表示忽略命令的退出状态
bochs: bootloader.img
	-$(BOCHS) -q -f bochsrc.bxrc || true

# debug in bochs
dbg: bootloader.img
	-$(DBG) -q -f bochsrc.bxrc || true

# clean up files
clean:
	$(CLEAN) *.bin *.img
