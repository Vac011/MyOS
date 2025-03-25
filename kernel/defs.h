#ifndef DEFS_H
#define DEFS_H

#include "types.h"

// console.c
void putchar(char c);

// printf.c
void printf(const char *fmt, ...);
void panic(char *s);

// trap.c
void tssinit(uint64 sp, uint16 GDT_TSS);
void trapinit();

// intr.c
void intrinit();

// memory.c
void memoryinit();
void freerange(void *start, void *end);
void* kalloc(void);
void  kfree(void *);
void* malloc(int);
void  mfree(void*, int);
// void* halloc(uint);
// void  hfree(void *);

// slub.c
// 初始化kmem_cache
int kmem_cache_init(int factor, int min_cache_size, int max_cache_size);
// 创建一种kmem_cache类型
struct kmem_cache* kmem_cache_create(char* name, int size, int align);
// 分配并初始化一个slab页
void slab_alloc(struct kmem_cache* cc);
// 从node_slab中释放一个slab页
void slab_free(struct kmem_cache* cc);
// 从指定的kmem_cache中分配一个object
void* kmem_cache_alloc(struct kmem_cache* cc);
// 释放object
void kmem_cache_free(struct kmem_cache* cc, void *p);

// string.c
void* memset(void *dst, int c, uint64 n);
int memcmp(const void *v1, const void *v2, uint64 n);
void* memmove(void *dst, const void *src, uint64 n);
void* memcpy(void *dst, const void *src, uint64 n);
int strlen(const char *s);
char* safestrcpy(char *s, const char *t, int n);
int strncmp(const char *p, const char *q, uint64 n);
char* strncpy(char *s, const char *t, int n);

#endif