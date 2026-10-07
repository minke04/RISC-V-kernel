//
// Created by os on 7/20/26.
//

#include "../h/tcb.hpp"
#include "../h/sem.hpp"

int Sem::sem_open(sem_t* handle, int init) {
    if (handle == nullptr) return -1;
    *handle = new Sem(init);
    if (handle == nullptr) return -2;
    return 0;
}

int Sem::sem_wait() {
    return sem_wait(1);
}

int Sem::sem_signal() {
    return sem_signal(1);
}

int Sem::sem_wait(int n) {
    if (TCB::running->isBlocked() == true) {
        return -1;
    }

    if (value >= n) {
        value -= n;
    } else {
        TCB::running->setBlockedValue(n);
        TCB::running->setBlocked(true);
        blockedQueue.addLast(TCB::running);
        TCB::yield();
    }
    return 0;
}

int Sem::sem_signal(int n) {
    value += n;
    while (!blockedQueue.isEmpty() && blockedQueue.peekFirst()->getBlockedValue() <= (unsigned) value) {
        TCB* t = blockedQueue.removeFirst();
        value -= t->getBlockedValue();
        t->setBlocked(false);
        Scheduler::put(t);
    }
    return 0;
}

int Sem::sem_close() {
    while (!blockedQueue.isEmpty()) {
        TCB* t = blockedQueue.removeFirst();
        t->setBlocked(false);
        Scheduler::put(t);
    }
    return 0;
}
