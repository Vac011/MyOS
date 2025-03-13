#include <stdarg.h>
#include <stddef.h>
#include "defs.h"

// 限制itoa函数作用域仅限于当前文件
static void itoa(int value, char *buffer, int base) {
    char digits[] = "0123456789ABCDEF";
    char temp[32]; // 临时存储转换后的字符串
    int i = 0, j = 0;
    int is_negative = (value < 0 && base == 10); // 只有10进制才显示负号

    if (is_negative) value = -value;

    do {
        temp[i++] = digits[value % base];
        value /= base;
    } while (value);

    if (is_negative) temp[i++] = '-';

    while (i > 0) buffer[j++] = temp[--i];
    buffer[j] = '\0';
}

int vsnprintf(char *buffer, size_t size, const char *fmt, va_list args) {
    size_t i = 0, j = 0;

    while (fmt[i] && j < size - 1) {
        if (fmt[i] == '%' && fmt[i + 1]) {
            i++; // 跳过 '%'
            char temp[32];

            switch (fmt[i]) {
                case 'c': {
                    char c = (char) va_arg(args, int);
                    buffer[j++] = c;
                    break;
                }
                case 's': {
                    char *str = va_arg(args, char*);
                    while (*str && j < size - 1) buffer[j++] = *str++;
                    break;
                }
                case 'd': {
                    int num = va_arg(args, int);
                    itoa(num, temp, 10);
                    for (char *p = temp; *p && j < size - 1; p++) buffer[j++] = *p;
                    break;
                }
                case 'x': {
                    int num = va_arg(args, int);
                    itoa(num, temp, 16);
                    for (char *p = temp; *p && j < size - 1; p++) buffer[j++] = *p;
                    break;
                }
                default: // 处理未知格式
                    buffer[j++] = '%';
                    buffer[j++] = fmt[i];
                    break;
            }
        } else {
            buffer[j++] = fmt[i];
        }
        i++;
    }

    buffer[j] = '\0';
    return j; // 返回写入的字符数
}

void printf(const char *fmt, ...) {
    char buffer[256]; // 临时存储格式化字符串
    va_list args;
    va_start(args, fmt);
    vsnprintf(buffer, sizeof(buffer), fmt, args);
    va_end(args);

    for (char *p = buffer; *p; p++) {
        putchar(*p);
    }
}
