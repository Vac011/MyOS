#ifndef DEFS_H
#define DEFS_H

#include "types.h"

// console.c
void putchar(char c);

// printf.c
void printf(const char *fmt, ...);

// trap.c
void tssinit(uint64 sp, uint16 GDT_TSS);
void trapinit();

#endif