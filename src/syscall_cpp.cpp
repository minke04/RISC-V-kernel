//
// Created by os on 7/22/26.
//

#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.h"
#include "../lib/console.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n) {
    return mem_alloc(n);
}

void *operator new[](size_t n) {
    return mem_alloc(n);
}

void operator delete(void *p) noexcept {
    mem_free(p);
}

void operator delete[](void *p) noexcept {
    mem_free(p);
}


Thread::Thread(void (*runnable)(void*), void* arg) {
    cppRunnable = runnable;
    cppArg = arg;
    myHandle = nullptr;
}

Thread::Thread() {
    cppRunnable = nullptr;
    cppArg = nullptr;
    myHandle = nullptr;
}

Thread::~Thread() {
}

void Thread::wrapper(void* arg) {
    Thread* t = (Thread*)arg;
    if (t->cppRunnable != nullptr) {
        t->cppRunnable(t->cppArg);
    } else {
        t->run();
    }
}

int Thread::start() {
    return thread_create(&myHandle, wrapper, this);
}

void Thread::dispatch() {
    thread_dispatch();
}


Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

int Semaphore::wait(int n) {
    return sem_wait_n(myHandle, n);
}

int Semaphore::signal(int n) {
    return sem_signal_n(myHandle, n);
}

int Thread::sleep(time_t time) {
    return 0;
}


char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
