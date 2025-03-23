#include <stdarg.h>
#include <stddef.h>
#include "defs.h"
#include "printf.h"

// 限制itoa函数作用域仅限于当前文件
static void itoa(long value, char *buffer, int base) {
    char digits[] = "0123456789ABCDEF";
    char temp[32]; // 临时存储转换后的字符串
    int i = 0, j = 0;
    // 只有10进制才进行负数转换
    int is_negative = (value < 0 && base == 10); 
    if (is_negative) value = -value;
    // 无符号除法
    do {
        temp[i++] = digits[udiv(value, base)];
    } while (value);
    // 添加负号
    if (is_negative) temp[i++] = '-';
    while (i > 0) buffer[j++] = temp[--i];
    buffer[j] = '\0';
}

int vsnprintf(char *buffer, size_t size, const char *fmt, va_list args) {
    size_t i = 0, j = 0;
    int is_long = 0;
    while (fmt[i] && j < size - 1) {
        if (fmt[i] == '%' && fmt[i + 1]) {
            i++; // 跳过 '%'
            char temp[32];
            is_long = 0;
            if (fmt[i] == 'l') {
                is_long = 1;
                i++;
            }
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
                    if (is_long) {
                        itoa(va_arg(args, long), temp, 10);
                    } else {
                        itoa(va_arg(args, int), temp, 10);
                    }
                    for (char *p = temp; *p && j < size - 1; p++) buffer[j++] = *p;
                    break;
                }
                case 'x': {
                    if (is_long) {
                        itoa(va_arg(args, long), temp, 16);
                    } else {
                        itoa(va_arg(args, int), temp, 16);
                    }
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

void panic(char *s) {
  printf("panic: ");
  printf(s);
  printf("\n");
  for(;;)
    ;
}