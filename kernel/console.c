#define VIDEO_MEMORY 0xB8000
#define SCREEN_WIDTH 80
#define SCREEN_HEIGHT 25

static int pos = 0;  // 记录当前光标位置

void putchar(char c) {
    volatile unsigned short *vidmem = (unsigned short*)VIDEO_MEMORY;

    if (c == '\n') {
        pos += SCREEN_WIDTH - (pos % SCREEN_WIDTH); // 换行
    } else {
        vidmem[pos] = (0x07 << 8) | c; // 0x07 = 灰色前景，黑色背景
        pos++;
    }

    if (pos >= SCREEN_WIDTH * SCREEN_HEIGHT) { // 滚屏
        for (int i = 0; i < (SCREEN_WIDTH * (SCREEN_HEIGHT - 1)); i++) {
            vidmem[i] = vidmem[i + SCREEN_WIDTH];
        }
        for (int i = (SCREEN_WIDTH * (SCREEN_HEIGHT - 1)); i < SCREEN_WIDTH * SCREEN_HEIGHT; i++) {
            vidmem[i] = (0x07 << 8) | ' ';
        }
        pos -= SCREEN_WIDTH;
    }
}
