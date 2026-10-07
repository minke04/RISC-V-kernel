//
// Created by os on 7/22/26.
//

#ifndef PROJECT_BASE_RADNA_VERZIJA_SYSCALL_CPP_H
#define PROJECT_BASE_RADNA_VERZIJA_SYSCALL_CPP_H

#include "../h/syscall_c.h"

void* operator new (size_t n);                        // Global operator new override

void operator delete (void* p) noexcept;             // Global operator delete override

class Thread {                                       // THREAD CLASS
public:
    Thread(void (*runnable)(void*), void* arg);      // Constructor with routine and argument
    virtual ~Thread();                               // Destructor

    int start();                                     // Start the thread execution
    static void dispatch();                          // Yield processor and trigger context switch

protected:
    Thread();                                        // Protected constructor for derived classes
    virtual void run() {}                            // Virtual run method to be overridden
    static int sleep(time_t time);                   // Put thread to sleep for given time

private:
    thread_t myHandle;                               // Underlying C thread handle
    void (*cppRunnable)(void*);                      // C++ runnable function pointer
    void* cppArg;                                    // C++ runnable argument

    static void wrapper(void* arg);                  // Internal wrapper function for thread execution
};

class Semaphore {                                    // SEMAPHORE CLASS
public:
    Semaphore(unsigned init = 1);                    // Constructor with initial value
    virtual ~Semaphore();                            // Destructor

    int wait();                                      // Wait on the semaphore (lock/decrement)
    int signal();                                    // Signal the semaphore (unlock/increment)
    int wait(int n);                                 // Wait on the semaphore by n amount
    int signal(int n);                               // Signal the semaphore by n amount

private:
    sem_t myHandle;                                  // Underlying C semaphore handle
};

class Console {                                      // CONSOLE CLASS
public:
    static char getc();                              // Read a character from the console
    static void putc(char c);                        // Write a character to the console
};

#endif //PROJECT_BASE_RADNA_VERZIJA_SYSCALL_CPP_H
