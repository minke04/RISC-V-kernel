//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_RISCV_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_RISCV_HPP

#include "../lib/hw.h"

enum opcodes {
    MEM_ALLOC = 0x01, MEM_FREE = 0x02,
    THREAD_CREATE = 0x11 ,THREAD_EXIT = 0x12, THREAD_DISPATCH = 0x13,
    SEM_OPEN = 0x21, SEM_CLOSE = 0x22, SEM_WAIT = 0x23, SEM_SIGNAL = 0x24, SEM_WAIT_N = 0x25, SEM_SIGNAL_N = 0x26, GET_C = 0x41, PUT_C = 0x42
};

enum causes {
    ECALL_USER_MODE = 0x0000000000000008UL,
    ECALL_SYSTEM_MODE = 0x0000000000000009UL,
    SOFTWARE_INTERRUPT = 0x8000000000000001UL,
    EXTERNAL_INTERRUPT = 0x8000000000000009UL,
};

class Riscv {
public:

    static void end();                      // terminate the simulation and exit QEMU

    static void popSppSpie();               // pop sstatus.spp and sstatus.spie bits (has to be a non inline function)

    static uint64 r_scause();               // read register scause

    static void w_scause(uint64 scause);    // write register scause

    static uint64 r_sepc();                 // read register sepc

    static void w_sepc(uint64 sepc);        // write register sepc

    static uint64 r_stvec();                // read register stvec

    static void w_stvec(uint64 stvec);      // write register stvec

    static uint64 r_stval();                // read register stval

    static void w_stval(uint64 stval);      // write register stval

    enum BitMaskSip
    {
        SIP_SSIP = (1 << 1),
        SIP_STIP = (1 << 5),
        SIP_SEIP = (1 << 9),
    };

    static void ms_sip(uint64 mask);       // mask set register sip

    static void mc_sip(uint64 mask);       // mask clear register sip

    static uint64 r_sip();                 // read register sip

    static void w_sip(uint64 sip);         // write register sip

    enum BitMaskSstatus
    {
        SSTATUS_SIE = (1 << 1),
        SSTATUS_SPIE = (1 << 5),
        SSTATUS_SPP = (1 << 8),
    };

    static void ms_sstatus(uint64 mask);  // mask set register sstatus

    static void mc_sstatus(uint64 mask);  // mask clear register sstatus

    static uint64 r_sstatus();            // read register sstatus

    static void w_sstatus(uint64 sstatus);  // write register sstatus

    static void supervisorTrap();         // supervisor trap

private:

    static void handleSupervisorTrap();   // supervisor trap handler
};

inline void Riscv::end() {
    __asm__ volatile(
        "li t0, 0x5555\n"
        "li t1, 0x100000\n"
        "sw t0, 0(t1)\n"
        ::: "t0", "t1", "memory"
    );
}

inline uint64 Riscv::r_scause() {
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    return scause;
}

inline void Riscv::w_scause(uint64 scause) {
    __asm__ volatile ("csrw scause, %[scause]" : : [scause] "r"(scause));
}

inline uint64 Riscv::r_sepc() {
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    return sepc;
}

inline void Riscv::w_sepc(uint64 sepc) {
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
}

inline uint64 Riscv::r_stvec() {
    uint64 volatile stvec;
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
}

inline uint64 Riscv::r_stval() {
    uint64 volatile stval;
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    return stval;
}

inline void Riscv::w_stval(uint64 stval) {
    __asm__ volatile ("csrw stval, %[stval]" : : [stval] "r"(stval));
}

inline void Riscv::ms_sip(uint64 mask) {
    __asm__ volatile ("csrs sip, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sip(uint64 mask) {
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sip() {
    uint64 volatile sip;
    __asm__ volatile ("csrr %[sip], sip" : [sip] "=r"(sip));
    return sip;
}

inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    return sstatus;
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_RISCV_HPP
