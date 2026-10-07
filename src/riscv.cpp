#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/sem.hpp"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap() {
    uint64 scause = r_scause();

    if (scause == ECALL_USER_MODE || scause == ECALL_SYSTEM_MODE) {
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();

        uint64 opcode = 0;
        __asm__ volatile ("mv %0, a0" : "=r"(opcode));

        uint64 res = 0;

        // Helper block to read arguments from the stack using inline assembly via offsets
        auto readArg = [](int offset) -> uint64 {
            uint64 val;
            __asm__ volatile("ld %0, %[off](fp)" : "=r"(val) : [off] "i"(offset));
            return val;
        };

        switch (opcode) {
            case MEM_ALLOC: {
                res = (uint64) MemoryAllocator::mem_alloc(readArg(88));
                break;
            }
            case MEM_FREE: {
                res = (uint64) MemoryAllocator::mem_free((void*) readArg(88));
                break;
            }
            case THREAD_CREATE: {
                res = TCB::createThread(
                    (thread_t*) readArg(88),
                    (TCB::Body) readArg(96),
                    (void*) readArg(104),
                    (uint64*) readArg(112)
                );
                break;
            }
            case THREAD_EXIT: {
                if (TCB::running->isFinished()) {
                    res = -1;
                } else {
                    TCB::running->setFinished(true);
                    TCB::yield();
                }
                break;
            }
            case THREAD_DISPATCH: {
                TCB::dispatch();
                break;
            }
            case SEM_OPEN: {
                res = Sem::sem_open((sem_t*) readArg(88), (unsigned) readArg(96));
                break;
            }
            case SEM_CLOSE: {
                res = ((sem_t) readArg(88))->sem_close();
                break;
            }
            case SEM_WAIT: {
                res = ((sem_t) readArg(88))->sem_wait();
                break;
            }
            case SEM_SIGNAL: {
                res = ((sem_t) readArg(88))->sem_signal();
                break;
            }
            case SEM_WAIT_N: {
                res = ((sem_t) readArg(88))->sem_wait((int) readArg(96));
                break;
            }
            case SEM_SIGNAL_N: {
                res = ((sem_t) readArg(88))->sem_signal((int) readArg(96));
                break;
            }
            case GET_C: {
                res = __getc();
                break;
            }
            case PUT_C: {
                __putc((char) readArg(88));
                break;
            }
            default:
                break;
        }
        __asm__ volatile ("sd %0, 80(fp)" : : "r"(res));
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == SOFTWARE_INTERRUPT) {
        mc_sip(SIP_SSIP);
    }
    else if (scause == EXTERNAL_INTERRUPT) {
        console_handler();
    }
}
