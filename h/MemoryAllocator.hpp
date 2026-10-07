#pragma once

#ifndef MEMORY_ALLOCATOR_HPP
#define MEMORY_ALLOCATOR_HPP

#include "../lib/hw.h"

class MemoryAllocator {
public:
    struct FreeMemBlock {
        size_t size;          // Size of the free memory block
        FreeMemBlock* next;   // Pointer to the next free block
    };

    static void* mem_alloc(size_t size);            // Main allocation and deallocation functions
    static int mem_free(void* ptr);                 //

    static FreeMemBlock* getFreeMemHead();          // Optional: helper function for testing

private:

    MemoryAllocator() = delete;                     // Prevent class instantiation

    static FreeMemBlock* freeMemHead;               // Head of the free memory blocks linked list

    static bool isInitialized;                      // Initialization flag

    static void initialize();                        // Helper function called on the first allocation
};

#endif // MEMORY_ALLOCATOR_HPP
