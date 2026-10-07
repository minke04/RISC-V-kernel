//
// Created by os on 7/17/26.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"
#include "../h/print.hpp"

TCB *TCB::running = nullptr;

int TCB::createThread(thread_t *handle, Body body, void* arg, uint64* stack) {
    TCB* tcb = new TCB(body, arg, stack);
    *handle = tcb;
    return 0;
}

void TCB::yield() {
    __asm__ volatile("mv a0, %0" :: "r"(THREAD_DISPATCH));
    __asm__ volatile ("ecall");
}

void TCB::dispatch() {
    TCB *old = running;
    if (! old->isBlocked() && !old->isFinished()) {
        Scheduler::put(old);
    }
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    TCB::yield();
}
