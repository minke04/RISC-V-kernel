//
// Created by marko on 20.4.22.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../lib/hw.h"
#include "../h/syscall_c.h"

extern void userMain();

static void userMainWrapper(void* arg) {
    userMain();
}

int main() {
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    thread_t mainThread = nullptr;
    thread_t userThread = nullptr;

    thread_create(&mainThread, nullptr, nullptr);
    TCB::running = mainThread;

    thread_create(&userThread, userMainWrapper, nullptr);

    while (userThread && !userThread->isFinished()) {
        thread_dispatch();
    }

    Riscv::end();
    return 0;
}
