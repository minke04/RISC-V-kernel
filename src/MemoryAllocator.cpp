#include "../h/MemoryAllocator.hpp"

// Initialization of static members from your class
MemoryAllocator::FreeMemBlock* MemoryAllocator::freeMemHead = nullptr;
bool MemoryAllocator::isInitialized = false;

void MemoryAllocator::initialize() {
    if (!isInitialized) {
        // Aligning the start and end of the heap to the block size
        uint64 start = ((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
        uint64 end = (uint64)HEAP_END_ADDR / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;

        freeMemHead = (FreeMemBlock*)start;
        freeMemHead->next = nullptr;
        // Size is total bytes minus the header space of the first block
        freeMemHead->size = end - start - sizeof(FreeMemBlock);

        isInitialized = true;
    }
}

void* MemoryAllocator::mem_alloc(size_t size) {
    if (size == 0) return nullptr;
    if (!isInitialized) initialize();

    // Converting the requested number of blocks into bytes and adding header size
    // Using your FreeMemBlock structure
    size_t requestedBytes = size * MEM_BLOCK_SIZE;

    FreeMemBlock* curr = freeMemHead;
    FreeMemBlock* prev = nullptr;

    while (curr != nullptr) {
        if (curr->size >= requestedBytes) {
            // Found a block that is large enough
            size_t remainingBytes = curr->size - requestedBytes;

            // If the remaining space is large enough to fit another header
            if (remainingBytes > sizeof(FreeMemBlock)) {
                // Creating a new free block after this allocated one
                FreeMemBlock* newFreeBlock = (FreeMemBlock*)((char*)curr + sizeof(FreeMemBlock) + requestedBytes);
                newFreeBlock->next = curr->next;
                newFreeBlock->size = remainingBytes - sizeof(FreeMemBlock);

                if (prev != nullptr) {
                    prev->next = newFreeBlock;
                } else {
                    freeMemHead = newFreeBlock;
                }
                curr->size = requestedBytes; // Exact size of the allocated segment
            } else {
                // The remainder is too small, giving the user the whole block (no splitting)
                if (prev != nullptr) {
                    prev->next = curr->next;
                } else {
                    freeMemHead = curr->next;
                }
                // Size remains the same (curr->size is unchanged)
            }

            // Returning a pointer to the memory RIGHT AFTER the header
            return (void*)((char*)curr + sizeof(FreeMemBlock));
        }
        prev = curr;
        curr = curr->next;
    }

    return nullptr; // Not enough memory
}

int MemoryAllocator::mem_free(void* ptr) {
    if (ptr == nullptr) return -1;

    // Reaching the block header by moving backward by the structure size
    FreeMemBlock* blockToFree = (FreeMemBlock*)((char*)ptr - sizeof(FreeMemBlock));

    FreeMemBlock* curr = freeMemHead;
    FreeMemBlock* prev = nullptr;

    // Finding the position in the sorted list based on physical addresses
    while (curr != nullptr && curr < blockToFree) {
        prev = curr;
        curr = curr->next;
    }

    // Inserting the block back into the free list
    if (prev != nullptr) {
        prev->next = blockToFree;
    } else {
        freeMemHead = blockToFree;
    }
    blockToFree->next = curr;

    // Coalescing/Merging with the next adjacent block (if they touch in memory)
    if (blockToFree->next != nullptr &&
        (char*)blockToFree + sizeof(FreeMemBlock) + blockToFree->size == (char*)blockToFree->next) {
        blockToFree->size += sizeof(FreeMemBlock) + blockToFree->next->size;
        blockToFree->next = blockToFree->next->next;
    }

    // Coalescing/Merging with the previous adjacent block
    if (prev != nullptr &&
        (char*)prev + sizeof(FreeMemBlock) + prev->size == (char*)blockToFree) {
        prev->size += sizeof(FreeMemBlock) + blockToFree->size;
        prev->next = blockToFree->next;
    }

    return 0; // Successfully freed
}

MemoryAllocator::FreeMemBlock* MemoryAllocator::getFreeMemHead() {
    return freeMemHead;
}
