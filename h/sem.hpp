//
// Created by os on 7/20/26.
//

#ifndef PROJECT_BASE_RADNA_VERZIJA_SEM_H
#define PROJECT_BASE_RADNA_VERZIJA_SEM_H


#include "../h/tcb.hpp"
#include "../h/list.hpp"

class Sem;
typedef Sem* sem_t;

class Sem {
public:
    static int sem_open(sem_t* handle, int init); // Create a new semaphore
    int sem_close();                             // Close the semaphore
    int sem_wait();                              // Decrement semaphore value / block if zero
    int sem_signal();                            // Increment semaphore value / unblock a thread
    int sem_wait(int n);                         // Decrement semaphore value by n
    int sem_signal(int n);                       // Increment semaphore value by n

private:
    Sem(int init) : value(init) {}               // Private constructor initializing value
    int value;                                   // Current semaphore value / counter
    List<TCB> blockedQueue;                      // Queue of threads blocked on this semaphore
};

#endif //PROJECT_BASE_RADNA_VERZIJA_SEM_H
