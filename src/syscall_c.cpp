#include "../h/syscall_c.h"
#include "../h/riscv.hpp"

extern "C" {
    char __getc();
    void __putc(char c);
}

static inline uint64 sys_call(uint64 opcode, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    uint64 ret;
    __asm__ volatile(
        "mv a0, %1\n"
        "mv a1, %2\n"
        "mv a2, %3\n"
        "mv a3, %4\n"
        "mv a4, %5\n"
        "ecall\n"
        "mv %0, a0"
        : "=r"(ret)
        : "r"(opcode), "r"(a1), "r"(a2), "r"(a3), "r"(a4) :
        "a0", "a1", "a2", "a3", "a4", "memory"
    );
    return ret;
}

void* mem_alloc(size_t size) {
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return (void*) sys_call(MEM_ALLOC, blocks);
}

int mem_free(void* addr) {
    return (int) sys_call(MEM_FREE, (uint64) addr);
}

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg) {
    uint64* stack_space = nullptr;
    if (start_routine != nullptr) {
        stack_space = (uint64*) mem_alloc(DEFAULT_STACK_SIZE);
        if (stack_space == nullptr) return -1;
    }
    return (int) sys_call(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) stack_space);
}

void thread_dispatch() {
    sys_call(THREAD_DISPATCH);
}

int thread_exit() {
    return (int) sys_call(THREAD_EXIT);
}

int sem_open(sem_t* handle, unsigned init) {
    return (int) sys_call(SEM_OPEN, (uint64) handle, (uint64) init);
}

int sem_close(sem_t handle) {
    return (int) sys_call(SEM_CLOSE, (uint64) handle);
}

int sem_wait(sem_t handle) {
    return (int) sys_call(SEM_WAIT, (uint64) handle);
}

int sem_signal(sem_t handle) {
    return (int) sys_call(SEM_SIGNAL, (uint64) handle);
}

int sem_wait_n(sem_t handle, int n) {
    return (int) sys_call(SEM_WAIT_N, (uint64) handle, (uint64) n);
}

int sem_signal_n(sem_t handle, int n) {
    return (int) sys_call(SEM_SIGNAL_N, (uint64) handle, (uint64) n);
}

char getc() {
    return (char) sys_call(GET_C);
}

void putc(char c) {
    sys_call(PUT_C, (uint64) c);
}
