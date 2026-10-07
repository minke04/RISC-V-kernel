#pragma once
#include "../lib/hw.h"
#include "../h/tcb.hpp"
#include "../h/sem.hpp"

#ifndef PROJECT_BASE_RADNA_SYSCALL_C_H
#define PROJECT_BASE_RADNA_SYSCALL_C_H

class TCB;
typedef TCB* thread_t;
class Sem;
typedef Sem* sem_t;

void* mem_alloc(size_t size);                        // Allocate memory of given size
int mem_free(void* ptr);                             // Free previously allocated memory
int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg); // Create a new thread
int thread_exit ();                                  // Exit the current thread
void thread_dispatch ();                             // Yield processor and trigger context switch
int sem_open(sem_t* handle, unsigned init);          // Open/create a semaphore
int sem_close(sem_t handle);                         // Close a semaphore
int sem_wait(sem_t handle);                          // Wait on a semaphore (lock/decrement)
int sem_signal(sem_t handle);                        // Signal a semaphore (unlock/increment)
int sem_wait_n(sem_t handle, int n);                 // Wait on a semaphore by n amount
int sem_signal_n(sem_t handle, int n);               // Signal a semaphore by n amount
char getc();                                         // Read a character from input
void putc (char);                                    // Write a character to output

#endif //PROJECT_BASE_RADNA_SYSCALL_C_H
