//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_SCHEDULER_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_SCHEDULER_HPP

#include "../h/list.hpp"

class TCB;

class Scheduler {
private:
    static List<TCB> readyThreadQueue; // Queue of ready threads

public:
    static TCB *get();                 // Get the next thread from the scheduler

    static void put(TCB *tcb);         // Add a thread to the scheduler queue

};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_SCHEDULER_HPP
