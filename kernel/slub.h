#define MAX_SLAB 16
#define MIN_SIZE 8
#define MAX_SIZE 1024
#define FACTOR 2
#define ALIGN(x) (((x) + 8 - 1) & ~(8 - 1))

// 使用typedef定义别名，之后使用时不必再加struct关键字
typedef struct freelist{
	struct freelist *next;
} freelist;

// 用于slab的page页描述符
struct slab{
	struct slab *next;
	// 最大object数
	int maxobj;
	// 当前可用的object数
	int leftobj;
    // 指向当前page的第一个free object
	freelist *freeobj;
}; 

// cpu是一个kmem_cache中当前cpu可以使用的“本地缓冲池”
struct kmem_cache_cpu{
    // 指向当前正在使用的slab页
	struct slab *slab;
	// partial中可用的slab数量
	int nr_partial;
    // 本地slab缓冲池中的其他slab页
    struct slab *partial;
};

// node是一个kmem_cache中被所有cpu共用的“备用缓冲池”
// 相较于slab来说成员极少，十分简洁
struct kmem_cache_node{
    // 自旋锁，故而允许被多个cpu访问
	// struct spinlock lock;
    // node中可用slab的数量
	int nr_partial;
    // slab链表(含多个slab)
	struct slab *partial;
};

// 一个slab是一个或多个连续的页被划分成若干个相同大小object的一段内存空间
// 相同规格的slab全都包含在一个 struct kmem_caches 结构体中
struct kmem_cache{
    // 每个Core对应若干个slab缓存，使得可以无锁访问，提升分配速度
	struct kmem_cache_cpu cpu_slab; 
    const char* name;
    // 本mem_cache中同规格slab的object大小
    // size = object_size + next_ptr_size
	int size; 
	// 是否字节对齐
	int align;
    // 共享slab缓冲池
	struct kmem_cache_node node_slab;
    // kmem_cache的链表结构
	struct kmem_cache *next;
};