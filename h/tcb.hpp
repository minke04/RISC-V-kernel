//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "../h/scheduler.hpp"

typedef TCB* thread_t;

class TCB {

public:
    ~TCB() { delete[] stack; }                                    // Destructor freeing the stack memory

    bool isFinished() const { return finished; }                  // Check if the thread has finished execution

    void setFinished(bool value) { finished = value; }            // Set the finished status of the thread

    bool isBlocked() const { return blocked; }                    // Check if the thread is currently blocked

    void setBlocked(bool b) { blocked = b; }                      // Set the blocked status of the thread

    unsigned getBlockedValue() const { return blockedValue; }     // Get the blocked value/counter

    void setBlockedValue(unsigned v) { blockedValue = v; }        // Set the blocked value/counter

    using Body = void(*)(void*);                                  // Type alias for thread body function pointer

    static int createThread(thread_t *handle, Body body, void* arg, uint64* stack_space); // Create a new thread

    static void yield();                                          // Yield the processor to another thread

    static TCB *running;                                          // Pointer to the currently executing thread

private:
    TCB(Body body, void* arg, uint64* stack_space) :              // Private constructor initializing thread fields
        body(body),
        arg(arg),
        stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
        context({
            (uint64) &threadWrapper,
                (stack != nullptr) ? (uint64)stack + DEFAULT_STACK_SIZE : 0
        }),
        finished(false),
        blocked(false),
        blockedValue(0)
    {
        if (body != nullptr) Scheduler::put(this);                // Add thread to scheduler if it has a body
    }

    struct Context {                                              // Processor context structure for switching
        uint64 ra;                                                // Return address register
        uint64 sp;                                                // Stack pointer register
    };
    Body body;                                                    // Thread function body pointer
    void* arg;                                                    // Argument passed to the thread function
    uint64 *stack;                                                // Pointer to the allocated thread stack
    Context context;                                              // Saved execution context of the thread
    bool finished;                                                // Flag indicating if thread is finished
    bool blocked;                                                 // Flag indicating if thread is blocked
    int blockedValue;                                             // Internal value used when thread is blocked

    friend class Riscv;                                           // Allow Riscv class access to private members

    static void threadWrapper();                                  // Wrapper function executing the thread body

    static void contextSwitch(Context *oldContext, Context *runningContext); // Low-level context switch routine

    static void dispatch();                                       // High-level thread dispatch and switching logic

    static uint64 constexpr STACK_SIZE = 1024;                    // Default thread stack size
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP