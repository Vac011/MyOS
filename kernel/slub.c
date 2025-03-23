#include "types.h"
#include "defs.h"
#include "memory.h"
#include "slub.h"

struct kmem_cache *cache_chain;
// 初始化slab
// slab分配内存大小是：
// 8B，16B，32B，64B，128B，256B，512B，1024B以及额外的96B和192B等大小。共10组
int kmem_cache_init(int factor, int min_cache_size, int max_cache_size)
{
	struct kmem_cache *cc;
	// 依次创建所需的cache
	for(int size = min_cache_size; size <= max_cache_size; size *= factor)
	{
		if((cc = kmem_cache_create("", size, 1)) == 0)
            return -1;
	}
    if(96 > min_cache_size && 96 < max_cache_size)
	{
        if((cc = kmem_cache_create("", 96, 1)) == 0)
            return -1;
	}
    if(192 > min_cache_size && 192 < max_cache_size)
	{
        if((cc = kmem_cache_create("", 192, 1)) == 0)
            return -1;
	}
	return 0;
}

// 创建kmem_cache
// 返回页地址或分配失败返回0；
struct kmem_cache* kmem_cache_create(char* name, int size, int align)
{
	struct kmem_cache* cc = (struct kmem_cache*)kalloc();
	memset((void*)cc, 0, PGSIZE);
    if(cc == 0)
        return 0;
    cc->name = name;
    cc->size = size;
    cc->align = align;
	cc->next = 0;
    slab_alloc(cc);
    // 将新创建的cache插入cache_chain中的合适位置
    if(cache_chain == 0)
        cache_chain = cc;
    else
    {
        struct kmem_cache *temp = cache_chain;
        while(1)
        {
            if(temp->next == 0 || temp->next->size > cc->size)
            {
				cc->next = temp->next;
                temp->next = cc;
                break;
            }
            else
                temp = temp->next;
        }
	}
	return cc;
}

// 分配并初始化一个slab页
void slab_alloc(struct kmem_cache* cc)
{
	int size = cc->size; 
	int align = cc->align;
	struct slab *slab = (struct slab*)kalloc();
	memset((void*)slab, 0, PGSIZE);
	slab->next = cc->node_slab.partial;
	cc->node_slab.partial = slab;
	cc->node_slab.nr_partial += 1;
	char *temp = (char*)slab;
	// 分割出若干个object
	freelist *free = 0;
	for(int i = (align ? ALIGN(sizeof(struct slab)) : sizeof(struct slab)); i < PGSIZE; i += (align ? ALIGN(size) : size))
	{
		slab->maxobj ++;
		slab->leftobj ++;
		if(slab->freeobj == 0)
		{
			free = (freelist*)(temp + i);
			free->next = 0;
			slab->freeobj = free;
			continue;
		}
		free->next = (freelist*)(temp + i);
		free = free->next;
		free->next = 0;
	}
}

// 从node_slab中释放一个slab页还给内存
void slab_free(struct kmem_cache* cc)
{
	// acquire(&cc->node_slab.lock);
	void *paddr = (void*)cc->node_slab.partial;
	cc->node_slab.partial = cc->node_slab.partial->next;
	kfree(paddr);
	cc->node_slab.nr_partial -= 1;
	// release(&cc->node_slab.lock);
}


void* kmem_cache_alloc(struct kmem_cache *cc)
{
	// 如果当前cpu正在使用的slab为空，向本地cpu缓冲池索要
	if(cc->cpu_slab.slab == 0)
	{
		// 如果本地缓冲池中可用slab数为0，向共用node节点索要
		if(cc->cpu_slab.nr_partial == 0)
		{
			// acquire(&cc->node_slab.lock);
			// 如果node_slab无可用slab，重新分配并初始化一个slab页
			if(cc->node_slab.nr_partial == 0)
				slab_alloc(cc);
			// 从node中取出一个slab页放入当前cpu的本地缓冲池中
			cc->cpu_slab.partial = cc->node_slab.partial;
			cc->node_slab.partial = cc->node_slab.partial->next;
			cc->node_slab.nr_partial -= 1;
			cc->cpu_slab.nr_partial += 1;
			// release(&cc->node_slab.lock);
		}
		// 从cpu的本地缓冲池中取出一个slab页放入当前cpu使用的slab中
		struct slab *temp = cc->cpu_slab.partial;
		// 如果第一个slab不为空，则直接取出第一个
		if(temp->leftobj != 0)
		{
			cc->cpu_slab.slab = cc->cpu_slab.partial;
			cc->cpu_slab.partial = cc->cpu_slab.partial->next;
			cc->cpu_slab.nr_partial -= 1;
		}
		// 否则遍历本地缓冲池直到找出一个不为空的slab
		else
		{
			while(temp->next != 0)
			{
				if(temp->next->leftobj > 0)
				{
					cc->cpu_slab.slab = temp->next;
					temp->next = temp->next->next;
					cc->cpu_slab.nr_partial -= 1;
					break;
				}
				else
					temp = temp->next;
			}
		}
	}
	// 从当前cpu正在使用的slab中分配出一个object
	freelist *rtn = cc->cpu_slab.slab->freeobj;
	cc->cpu_slab.slab->leftobj -= 1;
	// 如果分配后该slab可用object为0，将其放回本地缓冲池中
	if((cc->cpu_slab.slab->leftobj -= 1) == 0)
	{
		cc->cpu_slab.slab->next = cc->cpu_slab.partial;
		cc->cpu_slab.partial = cc->cpu_slab.slab;
		cc->cpu_slab.slab = 0;
	}
	printf("New allocate memory begin at: %p, size: %d\n", rtn, cc->size);
	return (void*)rtn;
}

void kmem_cache_free(struct kmem_cache *cc, void *p)
{	
	// 查看需释放的object是否在当前cpu使用的slab中
	if(p > (void*)cc->cpu_slab.slab && p <= ((void*)cc->cpu_slab.slab + PGSIZE))
	{
		freelist *temp = cc->cpu_slab.slab->freeobj;
		if(p < (void*)temp)
		{
			((freelist*)p)->next = temp;
			cc->cpu_slab.slab->freeobj = (freelist*)p;
		}
		else
		{
			while(temp != 0)
			{
				if(temp->next == 0)
				{
					temp->next = (freelist*)p;
					((freelist*)p)->next = 0;
					break;
				}
				else if((void*)temp->next > p)
				{
					((freelist*)p)->next = temp->next;
					temp->next = (freelist*)p;
					break;
				}
				else
					temp = temp->next;
			}
		}
		cc->cpu_slab.slab->leftobj += 1;
	}
	// 否则在本地缓冲池中寻找对应的slab插入
	else
	{
		struct slab *slab = cc->cpu_slab.partial;
		struct slab *pp = slab;
		while(slab != 0)
		{
			if(p > (void*)slab && p <= (void*)slab + PGSIZE)
			{
				freelist *temp = slab->freeobj;
				if(p < (void*)temp)
				{
					((freelist*)p)->next = temp;
					slab->freeobj = (freelist*)p;
				}
				else
				{
					while(temp != 0)
					{
						if(temp->next == 0)
						{
							temp->next = (freelist*)p;
							((freelist*)p)->next = 0;
							break;
						}
						else if((void*)temp->next > p)
						{
							((freelist*)p)->next = temp->next;
							temp->next = (freelist*)p;
							break;
						}
						else
							temp = temp->next;
					}
				}
				// 如果该slab本来为空，则可用partial应加1
				if(slab->leftobj == 0)
					cc->cpu_slab.nr_partial += 1;
				// 如果回收object后slab为满，则将其放回共享缓冲池中
				// acquire(&cc->node_slab.lock);
				if((slab->leftobj += 1) == slab->maxobj)
				{
					if(slab == cc->cpu_slab.partial)
						cc->node_slab.partial = slab->next;
					else
						pp->next = slab->next;
					cc->cpu_slab.nr_partial -= 1;
					// 如果共享缓冲池已满，则直接释放该页
					if(cc->node_slab.nr_partial == MAX_SLAB)
						kfree((void*)slab);
					else
					{
						slab->next = cc->node_slab.partial;
						cc->node_slab.partial = slab;
						cc->node_slab.nr_partial += 1;
					}
				}
				// release(&cc->node_slab.lock);
				break;
			}
			else
			{
				pp = slab;
				slab = slab->next;
			}
		}

	}
	printf("The new free memory begin at: %p, size: %d\n", p, cc->size);
}