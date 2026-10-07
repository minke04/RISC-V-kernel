
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	32013103          	ld	sp,800(sp) # 8000a320 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1d9050ef          	jal	ra,800059f4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	305000ef          	jal	ra,80001b88 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z9mem_allocm>:
        "a0", "a1", "a2", "a3", "a4", "memory"
    );
    return ret;
}

void* mem_alloc(size_t size) {
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001150:	03f50793          	addi	a5,a0,63
    80001154:	0067d813          	srli	a6,a5,0x6
    );
    80001158:	00000793          	li	a5,0
    8000115c:	00100893          	li	a7,1
    80001160:	00088513          	mv	a0,a7
    80001164:	00080593          	mv	a1,a6
    80001168:	00078613          	mv	a2,a5
    8000116c:	00078693          	mv	a3,a5
    80001170:	00078713          	mv	a4,a5
    80001174:	00000073          	ecall
    80001178:	00050793          	mv	a5,a0
    return (void*) sys_call(MEM_ALLOC, blocks);
}
    8000117c:	00078513          	mv	a0,a5
    80001180:	00813403          	ld	s0,8(sp)
    80001184:	01010113          	addi	sp,sp,16
    80001188:	00008067          	ret

000000008000118c <_Z8mem_freePv>:

int mem_free(void* addr) {
    8000118c:	ff010113          	addi	sp,sp,-16
    80001190:	00813423          	sd	s0,8(sp)
    80001194:	01010413          	addi	s0,sp,16
    80001198:	00050893          	mv	a7,a0
    );
    8000119c:	00000793          	li	a5,0
    800011a0:	00200813          	li	a6,2
    800011a4:	00080513          	mv	a0,a6
    800011a8:	00088593          	mv	a1,a7
    800011ac:	00078613          	mv	a2,a5
    800011b0:	00078693          	mv	a3,a5
    800011b4:	00078713          	mv	a4,a5
    800011b8:	00000073          	ecall
    800011bc:	00050793          	mv	a5,a0
    return (int) sys_call(MEM_FREE, (uint64) addr);
}
    800011c0:	0007851b          	sext.w	a0,a5
    800011c4:	00813403          	ld	s0,8(sp)
    800011c8:	01010113          	addi	sp,sp,16
    800011cc:	00008067          	ret

00000000800011d0 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg) {
    800011d0:	fd010113          	addi	sp,sp,-48
    800011d4:	02113423          	sd	ra,40(sp)
    800011d8:	02813023          	sd	s0,32(sp)
    800011dc:	00913c23          	sd	s1,24(sp)
    800011e0:	01213823          	sd	s2,16(sp)
    800011e4:	01313423          	sd	s3,8(sp)
    800011e8:	03010413          	addi	s0,sp,48
    800011ec:	00050913          	mv	s2,a0
    800011f0:	00058493          	mv	s1,a1
    800011f4:	00060993          	mv	s3,a2
    uint64* stack_space = nullptr;
    if (start_routine != nullptr) {
    800011f8:	04058c63          	beqz	a1,80001250 <_Z13thread_createPP3TCBPFvPvES2_+0x80>
        stack_space = (uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    800011fc:	00001537          	lui	a0,0x1
    80001200:	00000097          	auipc	ra,0x0
    80001204:	f44080e7          	jalr	-188(ra) # 80001144 <_Z9mem_allocm>
    80001208:	00050793          	mv	a5,a0
        if (stack_space == nullptr) return -1;
    8000120c:	04050663          	beqz	a0,80001258 <_Z13thread_createPP3TCBPFvPvES2_+0x88>
    );
    80001210:	01100813          	li	a6,17
    80001214:	00080513          	mv	a0,a6
    80001218:	00090593          	mv	a1,s2
    8000121c:	00048613          	mv	a2,s1
    80001220:	00098693          	mv	a3,s3
    80001224:	00078713          	mv	a4,a5
    80001228:	00000073          	ecall
    8000122c:	00050793          	mv	a5,a0
    }
    return (int) sys_call(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) stack_space);
    80001230:	0007851b          	sext.w	a0,a5
}
    80001234:	02813083          	ld	ra,40(sp)
    80001238:	02013403          	ld	s0,32(sp)
    8000123c:	01813483          	ld	s1,24(sp)
    80001240:	01013903          	ld	s2,16(sp)
    80001244:	00813983          	ld	s3,8(sp)
    80001248:	03010113          	addi	sp,sp,48
    8000124c:	00008067          	ret
    uint64* stack_space = nullptr;
    80001250:	00000793          	li	a5,0
    80001254:	fbdff06f          	j	80001210 <_Z13thread_createPP3TCBPFvPvES2_+0x40>
        if (stack_space == nullptr) return -1;
    80001258:	fff00513          	li	a0,-1
    8000125c:	fd9ff06f          	j	80001234 <_Z13thread_createPP3TCBPFvPvES2_+0x64>

0000000080001260 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001260:	ff010113          	addi	sp,sp,-16
    80001264:	00813423          	sd	s0,8(sp)
    80001268:	01010413          	addi	s0,sp,16
    );
    8000126c:	00000793          	li	a5,0
    80001270:	01300813          	li	a6,19
    80001274:	00080513          	mv	a0,a6
    80001278:	00078593          	mv	a1,a5
    8000127c:	00078613          	mv	a2,a5
    80001280:	00078693          	mv	a3,a5
    80001284:	00078713          	mv	a4,a5
    80001288:	00000073          	ecall
    8000128c:	00050793          	mv	a5,a0
    sys_call(THREAD_DISPATCH);
}
    80001290:	00813403          	ld	s0,8(sp)
    80001294:	01010113          	addi	sp,sp,16
    80001298:	00008067          	ret

000000008000129c <_Z11thread_exitv>:

int thread_exit() {
    8000129c:	ff010113          	addi	sp,sp,-16
    800012a0:	00813423          	sd	s0,8(sp)
    800012a4:	01010413          	addi	s0,sp,16
    );
    800012a8:	00000793          	li	a5,0
    800012ac:	01200813          	li	a6,18
    800012b0:	00080513          	mv	a0,a6
    800012b4:	00078593          	mv	a1,a5
    800012b8:	00078613          	mv	a2,a5
    800012bc:	00078693          	mv	a3,a5
    800012c0:	00078713          	mv	a4,a5
    800012c4:	00000073          	ecall
    800012c8:	00050793          	mv	a5,a0
    return (int) sys_call(THREAD_EXIT);
}
    800012cc:	0007851b          	sext.w	a0,a5
    800012d0:	00813403          	ld	s0,8(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, unsigned init) {
    800012dc:	ff010113          	addi	sp,sp,-16
    800012e0:	00813423          	sd	s0,8(sp)
    800012e4:	01010413          	addi	s0,sp,16
    800012e8:	00050313          	mv	t1,a0
    return (int) sys_call(SEM_OPEN, (uint64) handle, (uint64) init);
    800012ec:	02059813          	slli	a6,a1,0x20
    800012f0:	02085813          	srli	a6,a6,0x20
    );
    800012f4:	00000793          	li	a5,0
    800012f8:	02100893          	li	a7,33
    800012fc:	00088513          	mv	a0,a7
    80001300:	00030593          	mv	a1,t1
    80001304:	00080613          	mv	a2,a6
    80001308:	00078693          	mv	a3,a5
    8000130c:	00078713          	mv	a4,a5
    80001310:	00000073          	ecall
    80001314:	00050793          	mv	a5,a0
}
    80001318:	0007851b          	sext.w	a0,a5
    8000131c:	00813403          	ld	s0,8(sp)
    80001320:	01010113          	addi	sp,sp,16
    80001324:	00008067          	ret

0000000080001328 <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle) {
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00813423          	sd	s0,8(sp)
    80001330:	01010413          	addi	s0,sp,16
    80001334:	00050893          	mv	a7,a0
    );
    80001338:	00000793          	li	a5,0
    8000133c:	02200813          	li	a6,34
    80001340:	00080513          	mv	a0,a6
    80001344:	00088593          	mv	a1,a7
    80001348:	00078613          	mv	a2,a5
    8000134c:	00078693          	mv	a3,a5
    80001350:	00078713          	mv	a4,a5
    80001354:	00000073          	ecall
    80001358:	00050793          	mv	a5,a0
    return (int) sys_call(SEM_CLOSE, (uint64) handle);
}
    8000135c:	0007851b          	sext.w	a0,a5
    80001360:	00813403          	ld	s0,8(sp)
    80001364:	01010113          	addi	sp,sp,16
    80001368:	00008067          	ret

000000008000136c <_Z8sem_waitP3Sem>:

int sem_wait(sem_t handle) {
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    80001378:	00050893          	mv	a7,a0
    );
    8000137c:	00000793          	li	a5,0
    80001380:	02300813          	li	a6,35
    80001384:	00080513          	mv	a0,a6
    80001388:	00088593          	mv	a1,a7
    8000138c:	00078613          	mv	a2,a5
    80001390:	00078693          	mv	a3,a5
    80001394:	00078713          	mv	a4,a5
    80001398:	00000073          	ecall
    8000139c:	00050793          	mv	a5,a0
    return (int) sys_call(SEM_WAIT, (uint64) handle);
}
    800013a0:	0007851b          	sext.w	a0,a5
    800013a4:	00813403          	ld	s0,8(sp)
    800013a8:	01010113          	addi	sp,sp,16
    800013ac:	00008067          	ret

00000000800013b0 <_Z10sem_signalP3Sem>:

int sem_signal(sem_t handle) {
    800013b0:	ff010113          	addi	sp,sp,-16
    800013b4:	00813423          	sd	s0,8(sp)
    800013b8:	01010413          	addi	s0,sp,16
    800013bc:	00050893          	mv	a7,a0
    );
    800013c0:	00000793          	li	a5,0
    800013c4:	02400813          	li	a6,36
    800013c8:	00080513          	mv	a0,a6
    800013cc:	00088593          	mv	a1,a7
    800013d0:	00078613          	mv	a2,a5
    800013d4:	00078693          	mv	a3,a5
    800013d8:	00078713          	mv	a4,a5
    800013dc:	00000073          	ecall
    800013e0:	00050793          	mv	a5,a0
    return (int) sys_call(SEM_SIGNAL, (uint64) handle);
}
    800013e4:	0007851b          	sext.w	a0,a5
    800013e8:	00813403          	ld	s0,8(sp)
    800013ec:	01010113          	addi	sp,sp,16
    800013f0:	00008067          	ret

00000000800013f4 <_Z10sem_wait_nP3Semi>:

int sem_wait_n(sem_t handle, int n) {
    800013f4:	ff010113          	addi	sp,sp,-16
    800013f8:	00813423          	sd	s0,8(sp)
    800013fc:	01010413          	addi	s0,sp,16
    80001400:	00050893          	mv	a7,a0
    80001404:	00058313          	mv	t1,a1
    );
    80001408:	00000793          	li	a5,0
    8000140c:	02500813          	li	a6,37
    80001410:	00080513          	mv	a0,a6
    80001414:	00088593          	mv	a1,a7
    80001418:	00030613          	mv	a2,t1
    8000141c:	00078693          	mv	a3,a5
    80001420:	00078713          	mv	a4,a5
    80001424:	00000073          	ecall
    80001428:	00050793          	mv	a5,a0
    return (int) sys_call(SEM_WAIT_N, (uint64) handle, (uint64) n);
}
    8000142c:	0007851b          	sext.w	a0,a5
    80001430:	00813403          	ld	s0,8(sp)
    80001434:	01010113          	addi	sp,sp,16
    80001438:	00008067          	ret

000000008000143c <_Z12sem_signal_nP3Semi>:

int sem_signal_n(sem_t handle, int n) {
    8000143c:	ff010113          	addi	sp,sp,-16
    80001440:	00813423          	sd	s0,8(sp)
    80001444:	01010413          	addi	s0,sp,16
    80001448:	00050893          	mv	a7,a0
    8000144c:	00058313          	mv	t1,a1
    );
    80001450:	00000793          	li	a5,0
    80001454:	02600813          	li	a6,38
    80001458:	00080513          	mv	a0,a6
    8000145c:	00088593          	mv	a1,a7
    80001460:	00030613          	mv	a2,t1
    80001464:	00078693          	mv	a3,a5
    80001468:	00078713          	mv	a4,a5
    8000146c:	00000073          	ecall
    80001470:	00050793          	mv	a5,a0
    return (int) sys_call(SEM_SIGNAL_N, (uint64) handle, (uint64) n);
}
    80001474:	0007851b          	sext.w	a0,a5
    80001478:	00813403          	ld	s0,8(sp)
    8000147c:	01010113          	addi	sp,sp,16
    80001480:	00008067          	ret

0000000080001484 <_Z4getcv>:

char getc() {
    80001484:	ff010113          	addi	sp,sp,-16
    80001488:	00813423          	sd	s0,8(sp)
    8000148c:	01010413          	addi	s0,sp,16
    );
    80001490:	00000793          	li	a5,0
    80001494:	04100813          	li	a6,65
    80001498:	00080513          	mv	a0,a6
    8000149c:	00078593          	mv	a1,a5
    800014a0:	00078613          	mv	a2,a5
    800014a4:	00078693          	mv	a3,a5
    800014a8:	00078713          	mv	a4,a5
    800014ac:	00000073          	ecall
    800014b0:	00050793          	mv	a5,a0
    return (char) sys_call(GET_C);
}
    800014b4:	0ff7f513          	andi	a0,a5,255
    800014b8:	00813403          	ld	s0,8(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <_Z4putcc>:

void putc(char c) {
    800014c4:	ff010113          	addi	sp,sp,-16
    800014c8:	00813423          	sd	s0,8(sp)
    800014cc:	01010413          	addi	s0,sp,16
    800014d0:	00050893          	mv	a7,a0
    );
    800014d4:	00000793          	li	a5,0
    800014d8:	04200813          	li	a6,66
    800014dc:	00080513          	mv	a0,a6
    800014e0:	00088593          	mv	a1,a7
    800014e4:	00078613          	mv	a2,a5
    800014e8:	00078693          	mv	a3,a5
    800014ec:	00078713          	mv	a4,a5
    800014f0:	00000073          	ecall
    800014f4:	00050793          	mv	a5,a0
    sys_call(PUT_C, (uint64) c);
}
    800014f8:	00813403          	ld	s0,8(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret

0000000080001504 <_ZL15userMainWrapperPv>:
#include "../lib/hw.h"
#include "../h/syscall_c.h"

extern void userMain();

static void userMainWrapper(void* arg) {
    80001504:	ff010113          	addi	sp,sp,-16
    80001508:	00113423          	sd	ra,8(sp)
    8000150c:	00813023          	sd	s0,0(sp)
    80001510:	01010413          	addi	s0,sp,16
    userMain();
    80001514:	00004097          	auipc	ra,0x4
    80001518:	99c080e7          	jalr	-1636(ra) # 80004eb0 <_Z8userMainv>
}
    8000151c:	00813083          	ld	ra,8(sp)
    80001520:	00013403          	ld	s0,0(sp)
    80001524:	01010113          	addi	sp,sp,16
    80001528:	00008067          	ret

000000008000152c <main>:

int main() {
    8000152c:	fe010113          	addi	sp,sp,-32
    80001530:	00113c23          	sd	ra,24(sp)
    80001534:	00813823          	sd	s0,16(sp)
    80001538:	02010413          	addi	s0,sp,32
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    8000153c:	00009797          	auipc	a5,0x9
    80001540:	ddc7b783          	ld	a5,-548(a5) # 8000a318 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001544:	10579073          	csrw	stvec,a5

    thread_t mainThread = nullptr;
    80001548:	fe043423          	sd	zero,-24(s0)
    thread_t userThread = nullptr;
    8000154c:	fe043023          	sd	zero,-32(s0)

    thread_create(&mainThread, nullptr, nullptr);
    80001550:	00000613          	li	a2,0
    80001554:	00000593          	li	a1,0
    80001558:	fe840513          	addi	a0,s0,-24
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	c74080e7          	jalr	-908(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = mainThread;
    80001564:	00009797          	auipc	a5,0x9
    80001568:	dc47b783          	ld	a5,-572(a5) # 8000a328 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000156c:	fe843703          	ld	a4,-24(s0)
    80001570:	00e7b023          	sd	a4,0(a5)

    thread_create(&userThread, userMainWrapper, nullptr);
    80001574:	00000613          	li	a2,0
    80001578:	00000597          	auipc	a1,0x0
    8000157c:	f8c58593          	addi	a1,a1,-116 # 80001504 <_ZL15userMainWrapperPv>
    80001580:	fe040513          	addi	a0,s0,-32
    80001584:	00000097          	auipc	ra,0x0
    80001588:	c4c080e7          	jalr	-948(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>

    while (userThread && !userThread->isFinished()) {
    8000158c:	fe043783          	ld	a5,-32(s0)
    80001590:	00078c63          	beqz	a5,800015a8 <main+0x7c>
class TCB {

public:
    ~TCB() { delete[] stack; }                                    // Destructor freeing the stack memory

    bool isFinished() const { return finished; }                  // Check if the thread has finished execution
    80001594:	0287c783          	lbu	a5,40(a5)
    80001598:	00079863          	bnez	a5,800015a8 <main+0x7c>
        thread_dispatch();
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	cc4080e7          	jalr	-828(ra) # 80001260 <_Z15thread_dispatchv>
    800015a4:	fe9ff06f          	j	8000158c <main+0x60>
    );
    800015a8:	000052b7          	lui	t0,0x5
    800015ac:	5552829b          	addiw	t0,t0,1365
    800015b0:	00100337          	lui	t1,0x100
    800015b4:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>
    }

    Riscv::end();
    return 0;
}
    800015b8:	00000513          	li	a0,0
    800015bc:	01813083          	ld	ra,24(sp)
    800015c0:	01013403          	ld	s0,16(sp)
    800015c4:	02010113          	addi	sp,sp,32
    800015c8:	00008067          	ret

00000000800015cc <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm>:
#include "../h/scheduler.hpp"
#include "../h/print.hpp"

TCB *TCB::running = nullptr;

int TCB::createThread(thread_t *handle, Body body, void* arg, uint64* stack) {
    800015cc:	fd010113          	addi	sp,sp,-48
    800015d0:	02113423          	sd	ra,40(sp)
    800015d4:	02813023          	sd	s0,32(sp)
    800015d8:	00913c23          	sd	s1,24(sp)
    800015dc:	01213823          	sd	s2,16(sp)
    800015e0:	01313423          	sd	s3,8(sp)
    800015e4:	01413023          	sd	s4,0(sp)
    800015e8:	03010413          	addi	s0,sp,48
    800015ec:	00050993          	mv	s3,a0
    800015f0:	00058913          	mv	s2,a1
    800015f4:	00060a13          	mv	s4,a2
    TCB* tcb = new TCB(body, arg, stack);
    800015f8:	03000513          	li	a0,48
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	238080e7          	jalr	568(ra) # 80001834 <_Znwm>
    80001604:	00050493          	mv	s1,a0
            (uint64) &threadWrapper,
                (stack != nullptr) ? (uint64)stack + DEFAULT_STACK_SIZE : 0
        }),
        finished(false),
        blocked(false),
        blockedValue(0)
    80001608:	01253023          	sd	s2,0(a0) # 1000 <_entry-0x7ffff000>
    8000160c:	01453423          	sd	s4,8(a0)
        stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001610:	00090a63          	beqz	s2,80001624 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x58>
    80001614:	00002537          	lui	a0,0x2
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	244080e7          	jalr	580(ra) # 8000185c <_Znam>
    80001620:	0080006f          	j	80001628 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x5c>
    80001624:	00000513          	li	a0,0
        blockedValue(0)
    80001628:	00a4b823          	sd	a0,16(s1)
    8000162c:	00000797          	auipc	a5,0x0
    80001630:	0ac78793          	addi	a5,a5,172 # 800016d8 <_ZN3TCB13threadWrapperEv>
    80001634:	00f4bc23          	sd	a5,24(s1)
                (stack != nullptr) ? (uint64)stack + DEFAULT_STACK_SIZE : 0
    80001638:	02050863          	beqz	a0,80001668 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x9c>
    8000163c:	000017b7          	lui	a5,0x1
    80001640:	00f507b3          	add	a5,a0,a5
        blockedValue(0)
    80001644:	02f4b023          	sd	a5,32(s1)
    80001648:	02048423          	sb	zero,40(s1)
    8000164c:	020484a3          	sb	zero,41(s1)
    80001650:	0204a623          	sw	zero,44(s1)
    {
        if (body != nullptr) Scheduler::put(this);                // Add thread to scheduler if it has a body
    80001654:	02090c63          	beqz	s2,8000168c <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xc0>
    80001658:	00048513          	mv	a0,s1
    8000165c:	00001097          	auipc	ra,0x1
    80001660:	a44080e7          	jalr	-1468(ra) # 800020a0 <_ZN9Scheduler3putEP3TCB>
    80001664:	0280006f          	j	8000168c <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xc0>
                (stack != nullptr) ? (uint64)stack + DEFAULT_STACK_SIZE : 0
    80001668:	00000793          	li	a5,0
    8000166c:	fd9ff06f          	j	80001644 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x78>
    80001670:	00050913          	mv	s2,a0
    80001674:	00048513          	mv	a0,s1
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	20c080e7          	jalr	524(ra) # 80001884 <_ZdlPv>
    80001680:	00090513          	mv	a0,s2
    80001684:	0000a097          	auipc	ra,0xa
    80001688:	e44080e7          	jalr	-444(ra) # 8000b4c8 <_Unwind_Resume>
    *handle = tcb;
    8000168c:	0099b023          	sd	s1,0(s3)
    return 0;
}
    80001690:	00000513          	li	a0,0
    80001694:	02813083          	ld	ra,40(sp)
    80001698:	02013403          	ld	s0,32(sp)
    8000169c:	01813483          	ld	s1,24(sp)
    800016a0:	01013903          	ld	s2,16(sp)
    800016a4:	00813983          	ld	s3,8(sp)
    800016a8:	00013a03          	ld	s4,0(sp)
    800016ac:	03010113          	addi	sp,sp,48
    800016b0:	00008067          	ret

00000000800016b4 <_ZN3TCB5yieldEv>:

void TCB::yield() {
    800016b4:	ff010113          	addi	sp,sp,-16
    800016b8:	00813423          	sd	s0,8(sp)
    800016bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" :: "r"(THREAD_DISPATCH));
    800016c0:	01300793          	li	a5,19
    800016c4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800016c8:	00000073          	ecall
}
    800016cc:	00813403          	ld	s0,8(sp)
    800016d0:	01010113          	addi	sp,sp,16
    800016d4:	00008067          	ret

00000000800016d8 <_ZN3TCB13threadWrapperEv>:
    }
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    800016d8:	fe010113          	addi	sp,sp,-32
    800016dc:	00113c23          	sd	ra,24(sp)
    800016e0:	00813823          	sd	s0,16(sp)
    800016e4:	00913423          	sd	s1,8(sp)
    800016e8:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	47c080e7          	jalr	1148(ra) # 80001b68 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800016f4:	00009497          	auipc	s1,0x9
    800016f8:	c8c48493          	addi	s1,s1,-884 # 8000a380 <_ZN3TCB7runningE>
    800016fc:	0004b783          	ld	a5,0(s1)
    80001700:	0007b703          	ld	a4,0(a5) # 1000 <_entry-0x7ffff000>
    80001704:	0087b503          	ld	a0,8(a5)
    80001708:	000700e7          	jalr	a4
    running->setFinished(true);
    8000170c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }            // Set the finished status of the thread
    80001710:	00100713          	li	a4,1
    80001714:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	f9c080e7          	jalr	-100(ra) # 800016b4 <_ZN3TCB5yieldEv>
}
    80001720:	01813083          	ld	ra,24(sp)
    80001724:	01013403          	ld	s0,16(sp)
    80001728:	00813483          	ld	s1,8(sp)
    8000172c:	02010113          	addi	sp,sp,32
    80001730:	00008067          	ret

0000000080001734 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001734:	fe010113          	addi	sp,sp,-32
    80001738:	00113c23          	sd	ra,24(sp)
    8000173c:	00813823          	sd	s0,16(sp)
    80001740:	00913423          	sd	s1,8(sp)
    80001744:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001748:	00009497          	auipc	s1,0x9
    8000174c:	c384b483          	ld	s1,-968(s1) # 8000a380 <_ZN3TCB7runningE>
    bool isBlocked() const { return blocked; }                    // Check if the thread is currently blocked
    80001750:	0294c783          	lbu	a5,41(s1)
    if (! old->isBlocked() && !old->isFinished()) {
    80001754:	00079663          	bnez	a5,80001760 <_ZN3TCB8dispatchEv+0x2c>
    bool isFinished() const { return finished; }                  // Check if the thread has finished execution
    80001758:	0284c783          	lbu	a5,40(s1)
    8000175c:	02078c63          	beqz	a5,80001794 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001760:	00001097          	auipc	ra,0x1
    80001764:	8d8080e7          	jalr	-1832(ra) # 80002038 <_ZN9Scheduler3getEv>
    80001768:	00009797          	auipc	a5,0x9
    8000176c:	c0a7bc23          	sd	a0,-1000(a5) # 8000a380 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001770:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80001774:	01848513          	addi	a0,s1,24
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	998080e7          	jalr	-1640(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001780:	01813083          	ld	ra,24(sp)
    80001784:	01013403          	ld	s0,16(sp)
    80001788:	00813483          	ld	s1,8(sp)
    8000178c:	02010113          	addi	sp,sp,32
    80001790:	00008067          	ret
        Scheduler::put(old);
    80001794:	00048513          	mv	a0,s1
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	908080e7          	jalr	-1784(ra) # 800020a0 <_ZN9Scheduler3putEP3TCB>
    800017a0:	fc1ff06f          	j	80001760 <_ZN3TCB8dispatchEv+0x2c>

00000000800017a4 <_ZN6ThreadD1Ev>:
    cppRunnable = nullptr;
    cppArg = nullptr;
    myHandle = nullptr;
}

Thread::~Thread() {
    800017a4:	ff010113          	addi	sp,sp,-16
    800017a8:	00813423          	sd	s0,8(sp)
    800017ac:	01010413          	addi	s0,sp,16
}
    800017b0:	00813403          	ld	s0,8(sp)
    800017b4:	01010113          	addi	sp,sp,16
    800017b8:	00008067          	ret

00000000800017bc <_ZN6Thread7wrapperEPv>:

void Thread::wrapper(void* arg) {
    800017bc:	ff010113          	addi	sp,sp,-16
    800017c0:	00113423          	sd	ra,8(sp)
    800017c4:	00813023          	sd	s0,0(sp)
    800017c8:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*)arg;
    if (t->cppRunnable != nullptr) {
    800017cc:	01053783          	ld	a5,16(a0)
    800017d0:	00078e63          	beqz	a5,800017ec <_ZN6Thread7wrapperEPv+0x30>
        t->cppRunnable(t->cppArg);
    800017d4:	01853503          	ld	a0,24(a0)
    800017d8:	000780e7          	jalr	a5
    } else {
        t->run();
    }
}
    800017dc:	00813083          	ld	ra,8(sp)
    800017e0:	00013403          	ld	s0,0(sp)
    800017e4:	01010113          	addi	sp,sp,16
    800017e8:	00008067          	ret
        t->run();
    800017ec:	00053783          	ld	a5,0(a0)
    800017f0:	0107b783          	ld	a5,16(a5)
    800017f4:	000780e7          	jalr	a5
}
    800017f8:	fe5ff06f          	j	800017dc <_ZN6Thread7wrapperEPv+0x20>

00000000800017fc <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800017fc:	ff010113          	addi	sp,sp,-16
    80001800:	00113423          	sd	ra,8(sp)
    80001804:	00813023          	sd	s0,0(sp)
    80001808:	01010413          	addi	s0,sp,16
    8000180c:	00009797          	auipc	a5,0x9
    80001810:	94478793          	addi	a5,a5,-1724 # 8000a150 <_ZTV9Semaphore+0x10>
    80001814:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001818:	00853503          	ld	a0,8(a0)
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	b0c080e7          	jalr	-1268(ra) # 80001328 <_Z9sem_closeP3Sem>
}
    80001824:	00813083          	ld	ra,8(sp)
    80001828:	00013403          	ld	s0,0(sp)
    8000182c:	01010113          	addi	sp,sp,16
    80001830:	00008067          	ret

0000000080001834 <_Znwm>:
void *operator new(size_t n) {
    80001834:	ff010113          	addi	sp,sp,-16
    80001838:	00113423          	sd	ra,8(sp)
    8000183c:	00813023          	sd	s0,0(sp)
    80001840:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001844:	00000097          	auipc	ra,0x0
    80001848:	900080e7          	jalr	-1792(ra) # 80001144 <_Z9mem_allocm>
}
    8000184c:	00813083          	ld	ra,8(sp)
    80001850:	00013403          	ld	s0,0(sp)
    80001854:	01010113          	addi	sp,sp,16
    80001858:	00008067          	ret

000000008000185c <_Znam>:
void *operator new[](size_t n) {
    8000185c:	ff010113          	addi	sp,sp,-16
    80001860:	00113423          	sd	ra,8(sp)
    80001864:	00813023          	sd	s0,0(sp)
    80001868:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	8d8080e7          	jalr	-1832(ra) # 80001144 <_Z9mem_allocm>
}
    80001874:	00813083          	ld	ra,8(sp)
    80001878:	00013403          	ld	s0,0(sp)
    8000187c:	01010113          	addi	sp,sp,16
    80001880:	00008067          	ret

0000000080001884 <_ZdlPv>:
void operator delete(void *p) noexcept {
    80001884:	ff010113          	addi	sp,sp,-16
    80001888:	00113423          	sd	ra,8(sp)
    8000188c:	00813023          	sd	s0,0(sp)
    80001890:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001894:	00000097          	auipc	ra,0x0
    80001898:	8f8080e7          	jalr	-1800(ra) # 8000118c <_Z8mem_freePv>
}
    8000189c:	00813083          	ld	ra,8(sp)
    800018a0:	00013403          	ld	s0,0(sp)
    800018a4:	01010113          	addi	sp,sp,16
    800018a8:	00008067          	ret

00000000800018ac <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800018ac:	ff010113          	addi	sp,sp,-16
    800018b0:	00113423          	sd	ra,8(sp)
    800018b4:	00813023          	sd	s0,0(sp)
    800018b8:	01010413          	addi	s0,sp,16
}
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	fc8080e7          	jalr	-56(ra) # 80001884 <_ZdlPv>
    800018c4:	00813083          	ld	ra,8(sp)
    800018c8:	00013403          	ld	s0,0(sp)
    800018cc:	01010113          	addi	sp,sp,16
    800018d0:	00008067          	ret

00000000800018d4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800018d4:	fe010113          	addi	sp,sp,-32
    800018d8:	00113c23          	sd	ra,24(sp)
    800018dc:	00813823          	sd	s0,16(sp)
    800018e0:	00913423          	sd	s1,8(sp)
    800018e4:	02010413          	addi	s0,sp,32
    800018e8:	00050493          	mv	s1,a0
}
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	f10080e7          	jalr	-240(ra) # 800017fc <_ZN9SemaphoreD1Ev>
    800018f4:	00048513          	mv	a0,s1
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	f8c080e7          	jalr	-116(ra) # 80001884 <_ZdlPv>
    80001900:	01813083          	ld	ra,24(sp)
    80001904:	01013403          	ld	s0,16(sp)
    80001908:	00813483          	ld	s1,8(sp)
    8000190c:	02010113          	addi	sp,sp,32
    80001910:	00008067          	ret

0000000080001914 <_ZdaPv>:
void operator delete[](void *p) noexcept {
    80001914:	ff010113          	addi	sp,sp,-16
    80001918:	00113423          	sd	ra,8(sp)
    8000191c:	00813023          	sd	s0,0(sp)
    80001920:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001924:	00000097          	auipc	ra,0x0
    80001928:	868080e7          	jalr	-1944(ra) # 8000118c <_Z8mem_freePv>
}
    8000192c:	00813083          	ld	ra,8(sp)
    80001930:	00013403          	ld	s0,0(sp)
    80001934:	01010113          	addi	sp,sp,16
    80001938:	00008067          	ret

000000008000193c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*runnable)(void*), void* arg) {
    8000193c:	ff010113          	addi	sp,sp,-16
    80001940:	00813423          	sd	s0,8(sp)
    80001944:	01010413          	addi	s0,sp,16
    80001948:	00008797          	auipc	a5,0x8
    8000194c:	7e078793          	addi	a5,a5,2016 # 8000a128 <_ZTV6Thread+0x10>
    80001950:	00f53023          	sd	a5,0(a0)
    cppRunnable = runnable;
    80001954:	00b53823          	sd	a1,16(a0)
    cppArg = arg;
    80001958:	00c53c23          	sd	a2,24(a0)
    myHandle = nullptr;
    8000195c:	00053423          	sd	zero,8(a0)
}
    80001960:	00813403          	ld	s0,8(sp)
    80001964:	01010113          	addi	sp,sp,16
    80001968:	00008067          	ret

000000008000196c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000196c:	ff010113          	addi	sp,sp,-16
    80001970:	00813423          	sd	s0,8(sp)
    80001974:	01010413          	addi	s0,sp,16
    80001978:	00008797          	auipc	a5,0x8
    8000197c:	7b078793          	addi	a5,a5,1968 # 8000a128 <_ZTV6Thread+0x10>
    80001980:	00f53023          	sd	a5,0(a0)
    cppRunnable = nullptr;
    80001984:	00053823          	sd	zero,16(a0)
    cppArg = nullptr;
    80001988:	00053c23          	sd	zero,24(a0)
    myHandle = nullptr;
    8000198c:	00053423          	sd	zero,8(a0)
}
    80001990:	00813403          	ld	s0,8(sp)
    80001994:	01010113          	addi	sp,sp,16
    80001998:	00008067          	ret

000000008000199c <_ZN6Thread5startEv>:
int Thread::start() {
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00113423          	sd	ra,8(sp)
    800019a4:	00813023          	sd	s0,0(sp)
    800019a8:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, wrapper, this);
    800019ac:	00050613          	mv	a2,a0
    800019b0:	00000597          	auipc	a1,0x0
    800019b4:	e0c58593          	addi	a1,a1,-500 # 800017bc <_ZN6Thread7wrapperEPv>
    800019b8:	00850513          	addi	a0,a0,8
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	814080e7          	jalr	-2028(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800019c4:	00813083          	ld	ra,8(sp)
    800019c8:	00013403          	ld	s0,0(sp)
    800019cc:	01010113          	addi	sp,sp,16
    800019d0:	00008067          	ret

00000000800019d4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800019d4:	ff010113          	addi	sp,sp,-16
    800019d8:	00113423          	sd	ra,8(sp)
    800019dc:	00813023          	sd	s0,0(sp)
    800019e0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	87c080e7          	jalr	-1924(ra) # 80001260 <_Z15thread_dispatchv>
}
    800019ec:	00813083          	ld	ra,8(sp)
    800019f0:	00013403          	ld	s0,0(sp)
    800019f4:	01010113          	addi	sp,sp,16
    800019f8:	00008067          	ret

00000000800019fc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    800019fc:	ff010113          	addi	sp,sp,-16
    80001a00:	00113423          	sd	ra,8(sp)
    80001a04:	00813023          	sd	s0,0(sp)
    80001a08:	01010413          	addi	s0,sp,16
    80001a0c:	00008797          	auipc	a5,0x8
    80001a10:	74478793          	addi	a5,a5,1860 # 8000a150 <_ZTV9Semaphore+0x10>
    80001a14:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001a18:	00850513          	addi	a0,a0,8
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	8c0080e7          	jalr	-1856(ra) # 800012dc <_Z8sem_openPP3Semj>
}
    80001a24:	00813083          	ld	ra,8(sp)
    80001a28:	00013403          	ld	s0,0(sp)
    80001a2c:	01010113          	addi	sp,sp,16
    80001a30:	00008067          	ret

0000000080001a34 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001a34:	ff010113          	addi	sp,sp,-16
    80001a38:	00113423          	sd	ra,8(sp)
    80001a3c:	00813023          	sd	s0,0(sp)
    80001a40:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001a44:	00853503          	ld	a0,8(a0)
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	924080e7          	jalr	-1756(ra) # 8000136c <_Z8sem_waitP3Sem>
}
    80001a50:	00813083          	ld	ra,8(sp)
    80001a54:	00013403          	ld	s0,0(sp)
    80001a58:	01010113          	addi	sp,sp,16
    80001a5c:	00008067          	ret

0000000080001a60 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001a60:	ff010113          	addi	sp,sp,-16
    80001a64:	00113423          	sd	ra,8(sp)
    80001a68:	00813023          	sd	s0,0(sp)
    80001a6c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001a70:	00853503          	ld	a0,8(a0)
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	93c080e7          	jalr	-1732(ra) # 800013b0 <_Z10sem_signalP3Sem>
}
    80001a7c:	00813083          	ld	ra,8(sp)
    80001a80:	00013403          	ld	s0,0(sp)
    80001a84:	01010113          	addi	sp,sp,16
    80001a88:	00008067          	ret

0000000080001a8c <_ZN9Semaphore4waitEi>:

int Semaphore::wait(int n) {
    80001a8c:	ff010113          	addi	sp,sp,-16
    80001a90:	00113423          	sd	ra,8(sp)
    80001a94:	00813023          	sd	s0,0(sp)
    80001a98:	01010413          	addi	s0,sp,16
    return sem_wait_n(myHandle, n);
    80001a9c:	00853503          	ld	a0,8(a0)
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	954080e7          	jalr	-1708(ra) # 800013f4 <_Z10sem_wait_nP3Semi>
}
    80001aa8:	00813083          	ld	ra,8(sp)
    80001aac:	00013403          	ld	s0,0(sp)
    80001ab0:	01010113          	addi	sp,sp,16
    80001ab4:	00008067          	ret

0000000080001ab8 <_ZN9Semaphore6signalEi>:

int Semaphore::signal(int n) {
    80001ab8:	ff010113          	addi	sp,sp,-16
    80001abc:	00113423          	sd	ra,8(sp)
    80001ac0:	00813023          	sd	s0,0(sp)
    80001ac4:	01010413          	addi	s0,sp,16
    return sem_signal_n(myHandle, n);
    80001ac8:	00853503          	ld	a0,8(a0)
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	970080e7          	jalr	-1680(ra) # 8000143c <_Z12sem_signal_nP3Semi>
}
    80001ad4:	00813083          	ld	ra,8(sp)
    80001ad8:	00013403          	ld	s0,0(sp)
    80001adc:	01010113          	addi	sp,sp,16
    80001ae0:	00008067          	ret

0000000080001ae4 <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t time) {
    80001ae4:	ff010113          	addi	sp,sp,-16
    80001ae8:	00813423          	sd	s0,8(sp)
    80001aec:	01010413          	addi	s0,sp,16
    return 0;
}
    80001af0:	00000513          	li	a0,0
    80001af4:	00813403          	ld	s0,8(sp)
    80001af8:	01010113          	addi	sp,sp,16
    80001afc:	00008067          	ret

0000000080001b00 <_ZN7Console4getcEv>:


char Console::getc() {
    80001b00:	ff010113          	addi	sp,sp,-16
    80001b04:	00113423          	sd	ra,8(sp)
    80001b08:	00813023          	sd	s0,0(sp)
    80001b0c:	01010413          	addi	s0,sp,16
    return ::getc();
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	974080e7          	jalr	-1676(ra) # 80001484 <_Z4getcv>
}
    80001b18:	00813083          	ld	ra,8(sp)
    80001b1c:	00013403          	ld	s0,0(sp)
    80001b20:	01010113          	addi	sp,sp,16
    80001b24:	00008067          	ret

0000000080001b28 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001b28:	ff010113          	addi	sp,sp,-16
    80001b2c:	00113423          	sd	ra,8(sp)
    80001b30:	00813023          	sd	s0,0(sp)
    80001b34:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	98c080e7          	jalr	-1652(ra) # 800014c4 <_Z4putcc>
}
    80001b40:	00813083          	ld	ra,8(sp)
    80001b44:	00013403          	ld	s0,0(sp)
    80001b48:	01010113          	addi	sp,sp,16
    80001b4c:	00008067          	ret

0000000080001b50 <_ZN6Thread3runEv>:
    int start();                                     // Start the thread execution
    static void dispatch();                          // Yield processor and trigger context switch

protected:
    Thread();                                        // Protected constructor for derived classes
    virtual void run() {}                            // Virtual run method to be overridden
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00813423          	sd	s0,8(sp)
    80001b58:	01010413          	addi	s0,sp,16
    80001b5c:	00813403          	ld	s0,8(sp)
    80001b60:	01010113          	addi	sp,sp,16
    80001b64:	00008067          	ret

0000000080001b68 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/sem.hpp"

void Riscv::popSppSpie()
{
    80001b68:	ff010113          	addi	sp,sp,-16
    80001b6c:	00813423          	sd	s0,8(sp)
    80001b70:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001b74:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001b78:	10200073          	sret
}
    80001b7c:	00813403          	ld	s0,8(sp)
    80001b80:	01010113          	addi	sp,sp,16
    80001b84:	00008067          	ret

0000000080001b88 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001b88:	fc010113          	addi	sp,sp,-64
    80001b8c:	02113c23          	sd	ra,56(sp)
    80001b90:	02813823          	sd	s0,48(sp)
    80001b94:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001b98:	142027f3          	csrr	a5,scause
    80001b9c:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80001ba0:	fd843703          	ld	a4,-40(s0)
    uint64 scause = r_scause();

    if (scause == ECALL_USER_MODE || scause == ECALL_SYSTEM_MODE) {
    80001ba4:	ff870693          	addi	a3,a4,-8
    80001ba8:	00100793          	li	a5,1
    80001bac:	02d7f863          	bgeu	a5,a3,80001bdc <_ZN5Riscv20handleSupervisorTrapEv+0x54>
        }
        __asm__ volatile ("sd %0, 80(fp)" : : "r"(res));
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == SOFTWARE_INTERRUPT) {
    80001bb0:	fff00793          	li	a5,-1
    80001bb4:	03f79793          	slli	a5,a5,0x3f
    80001bb8:	00178793          	addi	a5,a5,1
    80001bbc:	1af70863          	beq	a4,a5,80001d6c <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
        mc_sip(SIP_SSIP);
    }
    else if (scause == EXTERNAL_INTERRUPT) {
    80001bc0:	fff00793          	li	a5,-1
    80001bc4:	03f79793          	slli	a5,a5,0x3f
    80001bc8:	00978793          	addi	a5,a5,9
    80001bcc:	18f71863          	bne	a4,a5,80001d5c <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
        console_handler();
    80001bd0:	00006097          	auipc	ra,0x6
    80001bd4:	f60080e7          	jalr	-160(ra) # 80007b30 <console_handler>
    }
}
    80001bd8:	1840006f          	j	80001d5c <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001bdc:	141027f3          	csrr	a5,sepc
    80001be0:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80001be4:	fe843783          	ld	a5,-24(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001be8:	00478793          	addi	a5,a5,4
    80001bec:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001bf0:	100027f3          	csrr	a5,sstatus
    80001bf4:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80001bf8:	fe043783          	ld	a5,-32(s0)
        uint64 volatile sstatus = r_sstatus();
    80001bfc:	fcf43823          	sd	a5,-48(s0)
        __asm__ volatile ("mv %0, a0" : "=r"(opcode));
    80001c00:	00050793          	mv	a5,a0
        switch (opcode) {
    80001c04:	04200713          	li	a4,66
    80001c08:	12f76e63          	bltu	a4,a5,80001d44 <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
    80001c0c:	00279793          	slli	a5,a5,0x2
    80001c10:	00006717          	auipc	a4,0x6
    80001c14:	41070713          	addi	a4,a4,1040 # 80008020 <CONSOLE_STATUS+0x10>
    80001c18:	00e787b3          	add	a5,a5,a4
    80001c1c:	0007a783          	lw	a5,0(a5)
    80001c20:	00e787b3          	add	a5,a5,a4
    80001c24:	00078067          	jr	a5
            __asm__ volatile("ld %0, %[off](fp)" : "=r"(val) : [off] "i"(offset));
    80001c28:	05843503          	ld	a0,88(s0)
                res = (uint64) MemoryAllocator::mem_alloc(readArg(88));
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	580080e7          	jalr	1408(ra) # 800021ac <_ZN15MemoryAllocator9mem_allocEm>
                break;
    80001c34:	1140006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            __asm__ volatile("ld %0, %[off](fp)" : "=r"(val) : [off] "i"(offset));
    80001c38:	05843503          	ld	a0,88(s0)
                res = (uint64) MemoryAllocator::mem_free((void*) readArg(88));
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	648080e7          	jalr	1608(ra) # 80002284 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80001c44:	1040006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            __asm__ volatile("ld %0, %[off](fp)" : "=r"(val) : [off] "i"(offset));
    80001c48:	05843503          	ld	a0,88(s0)
    80001c4c:	06043583          	ld	a1,96(s0)
    80001c50:	06843603          	ld	a2,104(s0)
    80001c54:	07043683          	ld	a3,112(s0)
                res = TCB::createThread(
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	974080e7          	jalr	-1676(ra) # 800015cc <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm>
                break;
    80001c60:	0e80006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                if (TCB::running->isFinished()) {
    80001c64:	00008797          	auipc	a5,0x8
    80001c68:	6c47b783          	ld	a5,1732(a5) # 8000a328 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c6c:	0007b783          	ld	a5,0(a5)
    80001c70:	0287c703          	lbu	a4,40(a5)
    80001c74:	00070663          	beqz	a4,80001c80 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
                    res = -1;
    80001c78:	fff00513          	li	a0,-1
    80001c7c:	0cc0006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
    void setFinished(bool value) { finished = value; }            // Set the finished status of the thread
    80001c80:	00100713          	li	a4,1
    80001c84:	02e78423          	sb	a4,40(a5)
                    TCB::yield();
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	a2c080e7          	jalr	-1492(ra) # 800016b4 <_ZN3TCB5yieldEv>
        uint64 res = 0;
    80001c90:	00000513          	li	a0,0
    80001c94:	0b40006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                TCB::dispatch();
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	a9c080e7          	jalr	-1380(ra) # 80001734 <_ZN3TCB8dispatchEv>
        uint64 res = 0;
    80001ca0:	00000513          	li	a0,0
    80001ca4:	0a40006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            __asm__ volatile("ld %0, %[off](fp)" : "=r"(val) : [off] "i"(offset));
    80001ca8:	05843503          	ld	a0,88(s0)
    80001cac:	06043583          	ld	a1,96(s0)
                res = Sem::sem_open((sem_t*) readArg(88), (unsigned) readArg(96));
    80001cb0:	0005859b          	sext.w	a1,a1
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	0c4080e7          	jalr	196(ra) # 80001d78 <_ZN3Sem8sem_openEPPS_i>
                break;
    80001cbc:	08c0006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            __asm__ volatile("ld %0, %[off](fp)" : "=r"(val) : [off] "i"(offset));
    80001cc0:	05843503          	ld	a0,88(s0)
                res = ((sem_t) readArg(88))->sem_close();
    80001cc4:	00000097          	auipc	ra,0x0
    80001cc8:	2c0080e7          	jalr	704(ra) # 80001f84 <_ZN3Sem9sem_closeEv>
                break;
    80001ccc:	07c0006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            __asm__ volatile("ld %0, %[off](fp)" : "=r"(val) : [off] "i"(offset));
    80001cd0:	05843503          	ld	a0,88(s0)
                res = ((sem_t) readArg(88))->sem_wait();
    80001cd4:	00000097          	auipc	ra,0x0
    80001cd8:	1b8080e7          	jalr	440(ra) # 80001e8c <_ZN3Sem8sem_waitEv>
                break;
    80001cdc:	06c0006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            __asm__ volatile("ld %0, %[off](fp)" : "=r"(val) : [off] "i"(offset));
    80001ce0:	05843503          	ld	a0,88(s0)
                res = ((sem_t) readArg(88))->sem_signal();
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	274080e7          	jalr	628(ra) # 80001f58 <_ZN3Sem10sem_signalEv>
                break;
    80001cec:	05c0006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            __asm__ volatile("ld %0, %[off](fp)" : "=r"(val) : [off] "i"(offset));
    80001cf0:	05843503          	ld	a0,88(s0)
    80001cf4:	06043583          	ld	a1,96(s0)
                res = ((sem_t) readArg(88))->sem_wait((int) readArg(96));
    80001cf8:	0005859b          	sext.w	a1,a1
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	0e0080e7          	jalr	224(ra) # 80001ddc <_ZN3Sem8sem_waitEi>
                break;
    80001d04:	0440006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            __asm__ volatile("ld %0, %[off](fp)" : "=r"(val) : [off] "i"(offset));
    80001d08:	05843503          	ld	a0,88(s0)
    80001d0c:	06043583          	ld	a1,96(s0)
                res = ((sem_t) readArg(88))->sem_signal((int) readArg(96));
    80001d10:	0005859b          	sext.w	a1,a1
    80001d14:	00000097          	auipc	ra,0x0
    80001d18:	1a4080e7          	jalr	420(ra) # 80001eb8 <_ZN3Sem10sem_signalEi>
                break;
    80001d1c:	02c0006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                res = __getc();
    80001d20:	00006097          	auipc	ra,0x6
    80001d24:	dd8080e7          	jalr	-552(ra) # 80007af8 <__getc>
                break;
    80001d28:	0200006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            __asm__ volatile("ld %0, %[off](fp)" : "=r"(val) : [off] "i"(offset));
    80001d2c:	05843503          	ld	a0,88(s0)
                __putc((char) readArg(88));
    80001d30:	0ff57513          	andi	a0,a0,255
    80001d34:	00006097          	auipc	ra,0x6
    80001d38:	d88080e7          	jalr	-632(ra) # 80007abc <__putc>
        uint64 res = 0;
    80001d3c:	00000513          	li	a0,0
    80001d40:	0080006f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
        __asm__ volatile ("mv %0, a0" : "=r"(opcode));
    80001d44:	00000513          	li	a0,0
        __asm__ volatile ("sd %0, 80(fp)" : : "r"(res));
    80001d48:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80001d4c:	fd043783          	ld	a5,-48(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d50:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001d54:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d58:	14179073          	csrw	sepc,a5
}
    80001d5c:	03813083          	ld	ra,56(sp)
    80001d60:	03013403          	ld	s0,48(sp)
    80001d64:	04010113          	addi	sp,sp,64
    80001d68:	00008067          	ret
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001d6c:	00200793          	li	a5,2
    80001d70:	1447b073          	csrc	sip,a5
}
    80001d74:	fe9ff06f          	j	80001d5c <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>

0000000080001d78 <_ZN3Sem8sem_openEPPS_i>:

#include "../h/tcb.hpp"
#include "../h/sem.hpp"

int Sem::sem_open(sem_t* handle, int init) {
    if (handle == nullptr) return -1;
    80001d78:	04050e63          	beqz	a0,80001dd4 <_ZN3Sem8sem_openEPPS_i+0x5c>
int Sem::sem_open(sem_t* handle, int init) {
    80001d7c:	fe010113          	addi	sp,sp,-32
    80001d80:	00113c23          	sd	ra,24(sp)
    80001d84:	00813823          	sd	s0,16(sp)
    80001d88:	00913423          	sd	s1,8(sp)
    80001d8c:	01213023          	sd	s2,0(sp)
    80001d90:	02010413          	addi	s0,sp,32
    80001d94:	00050493          	mv	s1,a0
    80001d98:	00058913          	mv	s2,a1
    *handle = new Sem(init);
    80001d9c:	01800513          	li	a0,24
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	a94080e7          	jalr	-1388(ra) # 80001834 <_Znwm>
    int sem_signal();                            // Increment semaphore value / unblock a thread
    int sem_wait(int n);                         // Decrement semaphore value by n
    int sem_signal(int n);                       // Increment semaphore value by n

private:
    Sem(int init) : value(init) {}               // Private constructor initializing value
    80001da8:	01252023          	sw	s2,0(a0)
        Elem(T *data, Elem *next) : data(data), next(next) {}
    };
    Elem *head, *tail;;

public:
    List() : head(0), tail(0) {}
    80001dac:	00053423          	sd	zero,8(a0)
    80001db0:	00053823          	sd	zero,16(a0)
    80001db4:	00a4b023          	sd	a0,0(s1)
    if (handle == nullptr) return -2;
    return 0;
    80001db8:	00000513          	li	a0,0
}
    80001dbc:	01813083          	ld	ra,24(sp)
    80001dc0:	01013403          	ld	s0,16(sp)
    80001dc4:	00813483          	ld	s1,8(sp)
    80001dc8:	00013903          	ld	s2,0(sp)
    80001dcc:	02010113          	addi	sp,sp,32
    80001dd0:	00008067          	ret
    if (handle == nullptr) return -1;
    80001dd4:	fff00513          	li	a0,-1
}
    80001dd8:	00008067          	ret

0000000080001ddc <_ZN3Sem8sem_waitEi>:

int Sem::sem_signal() {
    return sem_signal(1);
}

int Sem::sem_wait(int n) {
    80001ddc:	fe010113          	addi	sp,sp,-32
    80001de0:	00113c23          	sd	ra,24(sp)
    80001de4:	00813823          	sd	s0,16(sp)
    80001de8:	00913423          	sd	s1,8(sp)
    80001dec:	01213023          	sd	s2,0(sp)
    80001df0:	02010413          	addi	s0,sp,32
    if (TCB::running->isBlocked() == true) {
    80001df4:	00008797          	auipc	a5,0x8
    80001df8:	5347b783          	ld	a5,1332(a5) # 8000a328 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001dfc:	0007b903          	ld	s2,0(a5)
    bool isBlocked() const { return blocked; }                    // Check if the thread is currently blocked
    80001e00:	02994783          	lbu	a5,41(s2)
    80001e04:	08079063          	bnez	a5,80001e84 <_ZN3Sem8sem_waitEi+0xa8>
    80001e08:	00050493          	mv	s1,a0
        return -1;
    }

    if (value >= n) {
    80001e0c:	00052783          	lw	a5,0(a0)
    80001e10:	02b7c463          	blt	a5,a1,80001e38 <_ZN3Sem8sem_waitEi+0x5c>
        value -= n;
    80001e14:	40b785bb          	subw	a1,a5,a1
    80001e18:	00b52023          	sw	a1,0(a0)
        TCB::running->setBlockedValue(n);
        TCB::running->setBlocked(true);
        blockedQueue.addLast(TCB::running);
        TCB::yield();
    }
    return 0;
    80001e1c:	00000513          	li	a0,0
}
    80001e20:	01813083          	ld	ra,24(sp)
    80001e24:	01013403          	ld	s0,16(sp)
    80001e28:	00813483          	ld	s1,8(sp)
    80001e2c:	00013903          	ld	s2,0(sp)
    80001e30:	02010113          	addi	sp,sp,32
    80001e34:	00008067          	ret
    void setBlockedValue(unsigned v) { blockedValue = v; }        // Set the blocked value/counter
    80001e38:	02b92623          	sw	a1,44(s2)
    void setBlocked(bool b) { blocked = b; }                      // Set the blocked status of the thread
    80001e3c:	00100793          	li	a5,1
    80001e40:	02f904a3          	sb	a5,41(s2)
        head = elem;
        if (!tail) { tail = head; }
    }

    void addLast(T *data) {
        Elem *elem = new Elem(data, 0);
    80001e44:	01000513          	li	a0,16
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	9ec080e7          	jalr	-1556(ra) # 80001834 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001e50:	01253023          	sd	s2,0(a0)
    80001e54:	00053423          	sd	zero,8(a0)
        if (tail) {
    80001e58:	0104b783          	ld	a5,16(s1)
    80001e5c:	00078e63          	beqz	a5,80001e78 <_ZN3Sem8sem_waitEi+0x9c>
            tail->next = elem;
    80001e60:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001e64:	00a4b823          	sd	a0,16(s1)
        TCB::yield();
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	84c080e7          	jalr	-1972(ra) # 800016b4 <_ZN3TCB5yieldEv>
    return 0;
    80001e70:	00000513          	li	a0,0
    80001e74:	fadff06f          	j	80001e20 <_ZN3Sem8sem_waitEi+0x44>
        } else {
            head = tail = elem;
    80001e78:	00a4b823          	sd	a0,16(s1)
    80001e7c:	00a4b423          	sd	a0,8(s1)
    80001e80:	fe9ff06f          	j	80001e68 <_ZN3Sem8sem_waitEi+0x8c>
        return -1;
    80001e84:	fff00513          	li	a0,-1
    80001e88:	f99ff06f          	j	80001e20 <_ZN3Sem8sem_waitEi+0x44>

0000000080001e8c <_ZN3Sem8sem_waitEv>:
int Sem::sem_wait() {
    80001e8c:	ff010113          	addi	sp,sp,-16
    80001e90:	00113423          	sd	ra,8(sp)
    80001e94:	00813023          	sd	s0,0(sp)
    80001e98:	01010413          	addi	s0,sp,16
    return sem_wait(1);
    80001e9c:	00100593          	li	a1,1
    80001ea0:	00000097          	auipc	ra,0x0
    80001ea4:	f3c080e7          	jalr	-196(ra) # 80001ddc <_ZN3Sem8sem_waitEi>
}
    80001ea8:	00813083          	ld	ra,8(sp)
    80001eac:	00013403          	ld	s0,0(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <_ZN3Sem10sem_signalEi>:

int Sem::sem_signal(int n) {
    80001eb8:	fe010113          	addi	sp,sp,-32
    80001ebc:	00113c23          	sd	ra,24(sp)
    80001ec0:	00813823          	sd	s0,16(sp)
    80001ec4:	00913423          	sd	s1,8(sp)
    80001ec8:	01213023          	sd	s2,0(sp)
    80001ecc:	02010413          	addi	s0,sp,32
    80001ed0:	00050493          	mv	s1,a0
    value += n;
    80001ed4:	00052783          	lw	a5,0(a0)
    80001ed8:	00b787bb          	addw	a5,a5,a1
    80001edc:	00f52023          	sw	a5,0(a0)
    80001ee0:	0340006f          	j	80001f14 <_ZN3Sem10sem_signalEi+0x5c>
    T *removeFirst() {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80001ee4:	0004b823          	sd	zero,16(s1)

        T *ret = elem->data;
    80001ee8:	00053903          	ld	s2,0(a0)
        delete elem;
    80001eec:	00000097          	auipc	ra,0x0
    80001ef0:	998080e7          	jalr	-1640(ra) # 80001884 <_ZdlPv>
    unsigned getBlockedValue() const { return blockedValue; }     // Get the blocked value/counter
    80001ef4:	02c92703          	lw	a4,44(s2)
    while (!blockedQueue.isEmpty() && blockedQueue.peekFirst()->getBlockedValue() <= (unsigned) value) {
        TCB* t = blockedQueue.removeFirst();
        value -= t->getBlockedValue();
    80001ef8:	0004a783          	lw	a5,0(s1)
    80001efc:	40e787bb          	subw	a5,a5,a4
    80001f00:	00f4a023          	sw	a5,0(s1)
    void setBlocked(bool b) { blocked = b; }                      // Set the blocked status of the thread
    80001f04:	020904a3          	sb	zero,41(s2)
        t->setBlocked(false);
        Scheduler::put(t);
    80001f08:	00090513          	mv	a0,s2
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	194080e7          	jalr	404(ra) # 800020a0 <_ZN9Scheduler3putEP3TCB>
        if (!tail) { return 0; }
        return tail->data;
    }

    bool isEmpty() {
        if (head == nullptr) { return true; }
    80001f14:	0084b503          	ld	a0,8(s1)
    80001f18:	02050263          	beqz	a0,80001f3c <_ZN3Sem10sem_signalEi+0x84>
        return head->data;
    80001f1c:	00053783          	ld	a5,0(a0)
    unsigned getBlockedValue() const { return blockedValue; }     // Get the blocked value/counter
    80001f20:	02c7a783          	lw	a5,44(a5)
    while (!blockedQueue.isEmpty() && blockedQueue.peekFirst()->getBlockedValue() <= (unsigned) value) {
    80001f24:	0004a703          	lw	a4,0(s1)
    80001f28:	00f76a63          	bltu	a4,a5,80001f3c <_ZN3Sem10sem_signalEi+0x84>
        head = head->next;
    80001f2c:	00853783          	ld	a5,8(a0)
    80001f30:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001f34:	fa079ae3          	bnez	a5,80001ee8 <_ZN3Sem10sem_signalEi+0x30>
    80001f38:	fadff06f          	j	80001ee4 <_ZN3Sem10sem_signalEi+0x2c>
    }
    return 0;
}
    80001f3c:	00000513          	li	a0,0
    80001f40:	01813083          	ld	ra,24(sp)
    80001f44:	01013403          	ld	s0,16(sp)
    80001f48:	00813483          	ld	s1,8(sp)
    80001f4c:	00013903          	ld	s2,0(sp)
    80001f50:	02010113          	addi	sp,sp,32
    80001f54:	00008067          	ret

0000000080001f58 <_ZN3Sem10sem_signalEv>:
int Sem::sem_signal() {
    80001f58:	ff010113          	addi	sp,sp,-16
    80001f5c:	00113423          	sd	ra,8(sp)
    80001f60:	00813023          	sd	s0,0(sp)
    80001f64:	01010413          	addi	s0,sp,16
    return sem_signal(1);
    80001f68:	00100593          	li	a1,1
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	f4c080e7          	jalr	-180(ra) # 80001eb8 <_ZN3Sem10sem_signalEi>
}
    80001f74:	00813083          	ld	ra,8(sp)
    80001f78:	00013403          	ld	s0,0(sp)
    80001f7c:	01010113          	addi	sp,sp,16
    80001f80:	00008067          	ret

0000000080001f84 <_ZN3Sem9sem_closeEv>:

int Sem::sem_close() {
    80001f84:	fe010113          	addi	sp,sp,-32
    80001f88:	00113c23          	sd	ra,24(sp)
    80001f8c:	00813823          	sd	s0,16(sp)
    80001f90:	00913423          	sd	s1,8(sp)
    80001f94:	01213023          	sd	s2,0(sp)
    80001f98:	02010413          	addi	s0,sp,32
    80001f9c:	00050493          	mv	s1,a0
    80001fa0:	0240006f          	j	80001fc4 <_ZN3Sem9sem_closeEv+0x40>
    80001fa4:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    80001fa8:	00053903          	ld	s2,0(a0)
        delete elem;
    80001fac:	00000097          	auipc	ra,0x0
    80001fb0:	8d8080e7          	jalr	-1832(ra) # 80001884 <_ZdlPv>
    void setBlocked(bool b) { blocked = b; }                      // Set the blocked status of the thread
    80001fb4:	020904a3          	sb	zero,41(s2)
    while (!blockedQueue.isEmpty()) {
        TCB* t = blockedQueue.removeFirst();
        t->setBlocked(false);
        Scheduler::put(t);
    80001fb8:	00090513          	mv	a0,s2
    80001fbc:	00000097          	auipc	ra,0x0
    80001fc0:	0e4080e7          	jalr	228(ra) # 800020a0 <_ZN9Scheduler3putEP3TCB>
        if (head == nullptr) { return true; }
    80001fc4:	0084b503          	ld	a0,8(s1)
    80001fc8:	00050a63          	beqz	a0,80001fdc <_ZN3Sem9sem_closeEv+0x58>
        head = head->next;
    80001fcc:	00853783          	ld	a5,8(a0)
    80001fd0:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001fd4:	fc079ae3          	bnez	a5,80001fa8 <_ZN3Sem9sem_closeEv+0x24>
    80001fd8:	fcdff06f          	j	80001fa4 <_ZN3Sem9sem_closeEv+0x20>
    }
    return 0;
}
    80001fdc:	00000513          	li	a0,0
    80001fe0:	01813083          	ld	ra,24(sp)
    80001fe4:	01013403          	ld	s0,16(sp)
    80001fe8:	00813483          	ld	s1,8(sp)
    80001fec:	00013903          	ld	s2,0(sp)
    80001ff0:	02010113          	addi	sp,sp,32
    80001ff4:	00008067          	ret

0000000080001ff8 <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void Scheduler::put(TCB *tcb) {
    readyThreadQueue.addLast(tcb);
}
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00813423          	sd	s0,8(sp)
    80002000:	01010413          	addi	s0,sp,16
    80002004:	00100793          	li	a5,1
    80002008:	00f50863          	beq	a0,a5,80002018 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000200c:	00813403          	ld	s0,8(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret
    80002018:	000107b7          	lui	a5,0x10
    8000201c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002020:	fef596e3          	bne	a1,a5,8000200c <_Z41__static_initialization_and_destruction_0ii+0x14>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    };
    Elem *head, *tail;;

public:
    List() : head(0), tail(0) {}
    80002024:	00008797          	auipc	a5,0x8
    80002028:	36478793          	addi	a5,a5,868 # 8000a388 <_ZN9Scheduler16readyThreadQueueE>
    8000202c:	0007b023          	sd	zero,0(a5)
    80002030:	0007b423          	sd	zero,8(a5)
    80002034:	fd9ff06f          	j	8000200c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002038 <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    80002038:	fe010113          	addi	sp,sp,-32
    8000203c:	00113c23          	sd	ra,24(sp)
    80002040:	00813823          	sd	s0,16(sp)
    80002044:	00913423          	sd	s1,8(sp)
    80002048:	02010413          	addi	s0,sp,32
            head = tail = elem;
        }
    }

    T *removeFirst() {
        if (!head) { return 0; }
    8000204c:	00008517          	auipc	a0,0x8
    80002050:	33c53503          	ld	a0,828(a0) # 8000a388 <_ZN9Scheduler16readyThreadQueueE>
    80002054:	04050263          	beqz	a0,80002098 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80002058:	00853783          	ld	a5,8(a0)
    8000205c:	00008717          	auipc	a4,0x8
    80002060:	32f73623          	sd	a5,812(a4) # 8000a388 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002064:	02078463          	beqz	a5,8000208c <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80002068:	00053483          	ld	s1,0(a0)
        delete elem;
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	818080e7          	jalr	-2024(ra) # 80001884 <_ZdlPv>
}
    80002074:	00048513          	mv	a0,s1
    80002078:	01813083          	ld	ra,24(sp)
    8000207c:	01013403          	ld	s0,16(sp)
    80002080:	00813483          	ld	s1,8(sp)
    80002084:	02010113          	addi	sp,sp,32
    80002088:	00008067          	ret
        if (!head) { tail = 0; }
    8000208c:	00008797          	auipc	a5,0x8
    80002090:	3007b223          	sd	zero,772(a5) # 8000a390 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002094:	fd5ff06f          	j	80002068 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002098:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000209c:	fd9ff06f          	j	80002074 <_ZN9Scheduler3getEv+0x3c>

00000000800020a0 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *tcb) {
    800020a0:	fe010113          	addi	sp,sp,-32
    800020a4:	00113c23          	sd	ra,24(sp)
    800020a8:	00813823          	sd	s0,16(sp)
    800020ac:	00913423          	sd	s1,8(sp)
    800020b0:	02010413          	addi	s0,sp,32
    800020b4:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800020b8:	01000513          	li	a0,16
    800020bc:	fffff097          	auipc	ra,0xfffff
    800020c0:	778080e7          	jalr	1912(ra) # 80001834 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800020c4:	00953023          	sd	s1,0(a0)
    800020c8:	00053423          	sd	zero,8(a0)
        if (tail) {
    800020cc:	00008797          	auipc	a5,0x8
    800020d0:	2c47b783          	ld	a5,708(a5) # 8000a390 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800020d4:	02078263          	beqz	a5,800020f8 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800020d8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800020dc:	00008797          	auipc	a5,0x8
    800020e0:	2aa7ba23          	sd	a0,692(a5) # 8000a390 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800020e4:	01813083          	ld	ra,24(sp)
    800020e8:	01013403          	ld	s0,16(sp)
    800020ec:	00813483          	ld	s1,8(sp)
    800020f0:	02010113          	addi	sp,sp,32
    800020f4:	00008067          	ret
            head = tail = elem;
    800020f8:	00008797          	auipc	a5,0x8
    800020fc:	29078793          	addi	a5,a5,656 # 8000a388 <_ZN9Scheduler16readyThreadQueueE>
    80002100:	00a7b423          	sd	a0,8(a5)
    80002104:	00a7b023          	sd	a0,0(a5)
    80002108:	fddff06f          	j	800020e4 <_ZN9Scheduler3putEP3TCB+0x44>

000000008000210c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    8000210c:	ff010113          	addi	sp,sp,-16
    80002110:	00113423          	sd	ra,8(sp)
    80002114:	00813023          	sd	s0,0(sp)
    80002118:	01010413          	addi	s0,sp,16
    8000211c:	000105b7          	lui	a1,0x10
    80002120:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002124:	00100513          	li	a0,1
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	ed0080e7          	jalr	-304(ra) # 80001ff8 <_Z41__static_initialization_and_destruction_0ii>
    80002130:	00813083          	ld	ra,8(sp)
    80002134:	00013403          	ld	s0,0(sp)
    80002138:	01010113          	addi	sp,sp,16
    8000213c:	00008067          	ret

0000000080002140 <_ZN15MemoryAllocator10initializeEv>:

// Initialization of static members from your class
MemoryAllocator::FreeMemBlock* MemoryAllocator::freeMemHead = nullptr;
bool MemoryAllocator::isInitialized = false;

void MemoryAllocator::initialize() {
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00813423          	sd	s0,8(sp)
    80002148:	01010413          	addi	s0,sp,16
    if (!isInitialized) {
    8000214c:	00008797          	auipc	a5,0x8
    80002150:	24c7c783          	lbu	a5,588(a5) # 8000a398 <_ZN15MemoryAllocator13isInitializedE>
    80002154:	04079663          	bnez	a5,800021a0 <_ZN15MemoryAllocator10initializeEv+0x60>
        // Aligning the start and end of the heap to the block size
        uint64 start = ((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    80002158:	00008797          	auipc	a5,0x8
    8000215c:	1b87b783          	ld	a5,440(a5) # 8000a310 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002160:	0007b783          	ld	a5,0(a5)
    80002164:	03f78793          	addi	a5,a5,63
    80002168:	fc07f793          	andi	a5,a5,-64
        uint64 end = (uint64)HEAP_END_ADDR / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    8000216c:	00008717          	auipc	a4,0x8
    80002170:	1c473703          	ld	a4,452(a4) # 8000a330 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002174:	00073703          	ld	a4,0(a4)
    80002178:	fc077713          	andi	a4,a4,-64

        freeMemHead = (FreeMemBlock*)start;
    8000217c:	00008697          	auipc	a3,0x8
    80002180:	21c68693          	addi	a3,a3,540 # 8000a398 <_ZN15MemoryAllocator13isInitializedE>
    80002184:	00f6b423          	sd	a5,8(a3)
        freeMemHead->next = nullptr;
    80002188:	0007b423          	sd	zero,8(a5)
        // Size is total bytes minus the header space of the first block
        freeMemHead->size = end - start - sizeof(FreeMemBlock);
    8000218c:	40f70733          	sub	a4,a4,a5
    80002190:	ff070713          	addi	a4,a4,-16
    80002194:	00e7b023          	sd	a4,0(a5)

        isInitialized = true;
    80002198:	00100793          	li	a5,1
    8000219c:	00f68023          	sb	a5,0(a3)
    }
}
    800021a0:	00813403          	ld	s0,8(sp)
    800021a4:	01010113          	addi	sp,sp,16
    800021a8:	00008067          	ret

00000000800021ac <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size) {
    if (size == 0) return nullptr;
    800021ac:	0c050863          	beqz	a0,8000227c <_ZN15MemoryAllocator9mem_allocEm+0xd0>
void* MemoryAllocator::mem_alloc(size_t size) {
    800021b0:	fe010113          	addi	sp,sp,-32
    800021b4:	00113c23          	sd	ra,24(sp)
    800021b8:	00813823          	sd	s0,16(sp)
    800021bc:	00913423          	sd	s1,8(sp)
    800021c0:	02010413          	addi	s0,sp,32
    800021c4:	00050493          	mv	s1,a0
    if (!isInitialized) initialize();
    800021c8:	00008797          	auipc	a5,0x8
    800021cc:	1d07c783          	lbu	a5,464(a5) # 8000a398 <_ZN15MemoryAllocator13isInitializedE>
    800021d0:	02078663          	beqz	a5,800021fc <_ZN15MemoryAllocator9mem_allocEm+0x50>

    // Converting the requested number of blocks into bytes and adding header size
    // Using your FreeMemBlock structure
    size_t requestedBytes = size * MEM_BLOCK_SIZE;
    800021d4:	00649713          	slli	a4,s1,0x6

    FreeMemBlock* curr = freeMemHead;
    800021d8:	00008517          	auipc	a0,0x8
    800021dc:	1c853503          	ld	a0,456(a0) # 8000a3a0 <_ZN15MemoryAllocator11freeMemHeadE>
    FreeMemBlock* prev = nullptr;
    800021e0:	00000693          	li	a3,0

    while (curr != nullptr) {
    800021e4:	04050c63          	beqz	a0,8000223c <_ZN15MemoryAllocator9mem_allocEm+0x90>
        if (curr->size >= requestedBytes) {
    800021e8:	00053783          	ld	a5,0(a0)
    800021ec:	00e7fe63          	bgeu	a5,a4,80002208 <_ZN15MemoryAllocator9mem_allocEm+0x5c>
            }

            // Returning a pointer to the memory RIGHT AFTER the header
            return (void*)((char*)curr + sizeof(FreeMemBlock));
        }
        prev = curr;
    800021f0:	00050693          	mv	a3,a0
        curr = curr->next;
    800021f4:	00853503          	ld	a0,8(a0)
    while (curr != nullptr) {
    800021f8:	fedff06f          	j	800021e4 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    if (!isInitialized) initialize();
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	f44080e7          	jalr	-188(ra) # 80002140 <_ZN15MemoryAllocator10initializeEv>
    80002204:	fd1ff06f          	j	800021d4 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            size_t remainingBytes = curr->size - requestedBytes;
    80002208:	40e787b3          	sub	a5,a5,a4
            if (remainingBytes > sizeof(FreeMemBlock)) {
    8000220c:	01000613          	li	a2,16
    80002210:	04f67663          	bgeu	a2,a5,8000225c <_ZN15MemoryAllocator9mem_allocEm+0xb0>
                FreeMemBlock* newFreeBlock = (FreeMemBlock*)((char*)curr + sizeof(FreeMemBlock) + requestedBytes);
    80002214:	01070613          	addi	a2,a4,16
    80002218:	00c50633          	add	a2,a0,a2
                newFreeBlock->next = curr->next;
    8000221c:	00853583          	ld	a1,8(a0)
    80002220:	00b63423          	sd	a1,8(a2)
                newFreeBlock->size = remainingBytes - sizeof(FreeMemBlock);
    80002224:	ff078793          	addi	a5,a5,-16
    80002228:	00f63023          	sd	a5,0(a2)
                if (prev != nullptr) {
    8000222c:	02068263          	beqz	a3,80002250 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
                    prev->next = newFreeBlock;
    80002230:	00c6b423          	sd	a2,8(a3)
                curr->size = requestedBytes; // Exact size of the allocated segment
    80002234:	00e53023          	sd	a4,0(a0)
            return (void*)((char*)curr + sizeof(FreeMemBlock));
    80002238:	01050513          	addi	a0,a0,16
    }

    return nullptr; // Not enough memory
}
    8000223c:	01813083          	ld	ra,24(sp)
    80002240:	01013403          	ld	s0,16(sp)
    80002244:	00813483          	ld	s1,8(sp)
    80002248:	02010113          	addi	sp,sp,32
    8000224c:	00008067          	ret
                    freeMemHead = newFreeBlock;
    80002250:	00008797          	auipc	a5,0x8
    80002254:	14c7b823          	sd	a2,336(a5) # 8000a3a0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002258:	fddff06f          	j	80002234 <_ZN15MemoryAllocator9mem_allocEm+0x88>
                if (prev != nullptr) {
    8000225c:	00068863          	beqz	a3,8000226c <_ZN15MemoryAllocator9mem_allocEm+0xc0>
                    prev->next = curr->next;
    80002260:	00853783          	ld	a5,8(a0)
    80002264:	00f6b423          	sd	a5,8(a3)
    80002268:	fd1ff06f          	j	80002238 <_ZN15MemoryAllocator9mem_allocEm+0x8c>
                    freeMemHead = curr->next;
    8000226c:	00853783          	ld	a5,8(a0)
    80002270:	00008717          	auipc	a4,0x8
    80002274:	12f73823          	sd	a5,304(a4) # 8000a3a0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002278:	fc1ff06f          	j	80002238 <_ZN15MemoryAllocator9mem_allocEm+0x8c>
    if (size == 0) return nullptr;
    8000227c:	00000513          	li	a0,0
}
    80002280:	00008067          	ret

0000000080002284 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void* ptr) {
    80002284:	ff010113          	addi	sp,sp,-16
    80002288:	00813423          	sd	s0,8(sp)
    8000228c:	01010413          	addi	s0,sp,16
    if (ptr == nullptr) return -1;
    80002290:	0a050863          	beqz	a0,80002340 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>

    // Reaching the block header by moving backward by the structure size
    FreeMemBlock* blockToFree = (FreeMemBlock*)((char*)ptr - sizeof(FreeMemBlock));
    80002294:	ff050693          	addi	a3,a0,-16

    FreeMemBlock* curr = freeMemHead;
    80002298:	00008797          	auipc	a5,0x8
    8000229c:	1087b783          	ld	a5,264(a5) # 8000a3a0 <_ZN15MemoryAllocator11freeMemHeadE>
    FreeMemBlock* prev = nullptr;
    800022a0:	00000713          	li	a4,0

    // Finding the position in the sorted list based on physical addresses
    while (curr != nullptr && curr < blockToFree) {
    800022a4:	00078a63          	beqz	a5,800022b8 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
    800022a8:	00d7f863          	bgeu	a5,a3,800022b8 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
        prev = curr;
    800022ac:	00078713          	mv	a4,a5
        curr = curr->next;
    800022b0:	0087b783          	ld	a5,8(a5)
    while (curr != nullptr && curr < blockToFree) {
    800022b4:	ff1ff06f          	j	800022a4 <_ZN15MemoryAllocator8mem_freeEPv+0x20>
    }

    // Inserting the block back into the free list
    if (prev != nullptr) {
    800022b8:	04070063          	beqz	a4,800022f8 <_ZN15MemoryAllocator8mem_freeEPv+0x74>
        prev->next = blockToFree;
    800022bc:	00d73423          	sd	a3,8(a4)
    } else {
        freeMemHead = blockToFree;
    }
    blockToFree->next = curr;
    800022c0:	fef53c23          	sd	a5,-8(a0)

    // Coalescing/Merging with the next adjacent block (if they touch in memory)
    if (blockToFree->next != nullptr &&
    800022c4:	00078863          	beqz	a5,800022d4 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
        (char*)blockToFree + sizeof(FreeMemBlock) + blockToFree->size == (char*)blockToFree->next) {
    800022c8:	ff053603          	ld	a2,-16(a0)
    800022cc:	00c505b3          	add	a1,a0,a2
    if (blockToFree->next != nullptr &&
    800022d0:	02f58a63          	beq	a1,a5,80002304 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        blockToFree->size += sizeof(FreeMemBlock) + blockToFree->next->size;
        blockToFree->next = blockToFree->next->next;
    }

    // Coalescing/Merging with the previous adjacent block
    if (prev != nullptr &&
    800022d4:	06070a63          	beqz	a4,80002348 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        (char*)prev + sizeof(FreeMemBlock) + prev->size == (char*)blockToFree) {
    800022d8:	00073603          	ld	a2,0(a4)
    800022dc:	01060793          	addi	a5,a2,16
    800022e0:	00f707b3          	add	a5,a4,a5
    if (prev != nullptr &&
    800022e4:	02d78e63          	beq	a5,a3,80002320 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
        prev->size += sizeof(FreeMemBlock) + blockToFree->size;
        prev->next = blockToFree->next;
    }

    return 0; // Successfully freed
    800022e8:	00000513          	li	a0,0
}
    800022ec:	00813403          	ld	s0,8(sp)
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	00008067          	ret
        freeMemHead = blockToFree;
    800022f8:	00008617          	auipc	a2,0x8
    800022fc:	0ad63423          	sd	a3,168(a2) # 8000a3a0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002300:	fc1ff06f          	j	800022c0 <_ZN15MemoryAllocator8mem_freeEPv+0x3c>
        blockToFree->size += sizeof(FreeMemBlock) + blockToFree->next->size;
    80002304:	0007b583          	ld	a1,0(a5)
    80002308:	00b60633          	add	a2,a2,a1
    8000230c:	01060613          	addi	a2,a2,16
    80002310:	fec53823          	sd	a2,-16(a0)
        blockToFree->next = blockToFree->next->next;
    80002314:	0087b783          	ld	a5,8(a5)
    80002318:	fef53c23          	sd	a5,-8(a0)
    8000231c:	fb9ff06f          	j	800022d4 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
        prev->size += sizeof(FreeMemBlock) + blockToFree->size;
    80002320:	ff053783          	ld	a5,-16(a0)
    80002324:	00f60633          	add	a2,a2,a5
    80002328:	01060613          	addi	a2,a2,16
    8000232c:	00c73023          	sd	a2,0(a4)
        prev->next = blockToFree->next;
    80002330:	ff853783          	ld	a5,-8(a0)
    80002334:	00f73423          	sd	a5,8(a4)
    return 0; // Successfully freed
    80002338:	00000513          	li	a0,0
    8000233c:	fb1ff06f          	j	800022ec <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    if (ptr == nullptr) return -1;
    80002340:	fff00513          	li	a0,-1
    80002344:	fa9ff06f          	j	800022ec <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    return 0; // Successfully freed
    80002348:	00000513          	li	a0,0
    8000234c:	fa1ff06f          	j	800022ec <_ZN15MemoryAllocator8mem_freeEPv+0x68>

0000000080002350 <_ZN15MemoryAllocator14getFreeMemHeadEv>:

MemoryAllocator::FreeMemBlock* MemoryAllocator::getFreeMemHead() {
    80002350:	ff010113          	addi	sp,sp,-16
    80002354:	00813423          	sd	s0,8(sp)
    80002358:	01010413          	addi	s0,sp,16
    return freeMemHead;
}
    8000235c:	00008517          	auipc	a0,0x8
    80002360:	04453503          	ld	a0,68(a0) # 8000a3a0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002364:	00813403          	ld	s0,8(sp)
    80002368:	01010113          	addi	sp,sp,16
    8000236c:	00008067          	ret

0000000080002370 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002370:	fe010113          	addi	sp,sp,-32
    80002374:	00113c23          	sd	ra,24(sp)
    80002378:	00813823          	sd	s0,16(sp)
    8000237c:	00913423          	sd	s1,8(sp)
    80002380:	01213023          	sd	s2,0(sp)
    80002384:	02010413          	addi	s0,sp,32
    80002388:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000238c:	00000913          	li	s2,0
    80002390:	00c0006f          	j	8000239c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002394:	fffff097          	auipc	ra,0xfffff
    80002398:	ecc080e7          	jalr	-308(ra) # 80001260 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    8000239c:	fffff097          	auipc	ra,0xfffff
    800023a0:	0e8080e7          	jalr	232(ra) # 80001484 <_Z4getcv>
    800023a4:	0005059b          	sext.w	a1,a0
    800023a8:	01b00793          	li	a5,27
    800023ac:	02f58a63          	beq	a1,a5,800023e0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800023b0:	0084b503          	ld	a0,8(s1)
    800023b4:	00003097          	auipc	ra,0x3
    800023b8:	3bc080e7          	jalr	956(ra) # 80005770 <_ZN6Buffer3putEi>
        i++;
    800023bc:	0019071b          	addiw	a4,s2,1
    800023c0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800023c4:	0004a683          	lw	a3,0(s1)
    800023c8:	0026979b          	slliw	a5,a3,0x2
    800023cc:	00d787bb          	addw	a5,a5,a3
    800023d0:	0017979b          	slliw	a5,a5,0x1
    800023d4:	02f767bb          	remw	a5,a4,a5
    800023d8:	fc0792e3          	bnez	a5,8000239c <_ZL16producerKeyboardPv+0x2c>
    800023dc:	fb9ff06f          	j	80002394 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800023e0:	00100793          	li	a5,1
    800023e4:	00008717          	auipc	a4,0x8
    800023e8:	fcf72223          	sw	a5,-60(a4) # 8000a3a8 <_ZL9threadEnd>
    data->buffer->put('!');
    800023ec:	02100593          	li	a1,33
    800023f0:	0084b503          	ld	a0,8(s1)
    800023f4:	00003097          	auipc	ra,0x3
    800023f8:	37c080e7          	jalr	892(ra) # 80005770 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800023fc:	0104b503          	ld	a0,16(s1)
    80002400:	fffff097          	auipc	ra,0xfffff
    80002404:	fb0080e7          	jalr	-80(ra) # 800013b0 <_Z10sem_signalP3Sem>
}
    80002408:	01813083          	ld	ra,24(sp)
    8000240c:	01013403          	ld	s0,16(sp)
    80002410:	00813483          	ld	s1,8(sp)
    80002414:	00013903          	ld	s2,0(sp)
    80002418:	02010113          	addi	sp,sp,32
    8000241c:	00008067          	ret

0000000080002420 <_ZL8producerPv>:

static void producer(void *arg) {
    80002420:	fe010113          	addi	sp,sp,-32
    80002424:	00113c23          	sd	ra,24(sp)
    80002428:	00813823          	sd	s0,16(sp)
    8000242c:	00913423          	sd	s1,8(sp)
    80002430:	01213023          	sd	s2,0(sp)
    80002434:	02010413          	addi	s0,sp,32
    80002438:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000243c:	00000913          	li	s2,0
    80002440:	00c0006f          	j	8000244c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002444:	fffff097          	auipc	ra,0xfffff
    80002448:	e1c080e7          	jalr	-484(ra) # 80001260 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000244c:	00008797          	auipc	a5,0x8
    80002450:	f5c7a783          	lw	a5,-164(a5) # 8000a3a8 <_ZL9threadEnd>
    80002454:	02079e63          	bnez	a5,80002490 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002458:	0004a583          	lw	a1,0(s1)
    8000245c:	0305859b          	addiw	a1,a1,48
    80002460:	0084b503          	ld	a0,8(s1)
    80002464:	00003097          	auipc	ra,0x3
    80002468:	30c080e7          	jalr	780(ra) # 80005770 <_ZN6Buffer3putEi>
        i++;
    8000246c:	0019071b          	addiw	a4,s2,1
    80002470:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002474:	0004a683          	lw	a3,0(s1)
    80002478:	0026979b          	slliw	a5,a3,0x2
    8000247c:	00d787bb          	addw	a5,a5,a3
    80002480:	0017979b          	slliw	a5,a5,0x1
    80002484:	02f767bb          	remw	a5,a4,a5
    80002488:	fc0792e3          	bnez	a5,8000244c <_ZL8producerPv+0x2c>
    8000248c:	fb9ff06f          	j	80002444 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002490:	0104b503          	ld	a0,16(s1)
    80002494:	fffff097          	auipc	ra,0xfffff
    80002498:	f1c080e7          	jalr	-228(ra) # 800013b0 <_Z10sem_signalP3Sem>
}
    8000249c:	01813083          	ld	ra,24(sp)
    800024a0:	01013403          	ld	s0,16(sp)
    800024a4:	00813483          	ld	s1,8(sp)
    800024a8:	00013903          	ld	s2,0(sp)
    800024ac:	02010113          	addi	sp,sp,32
    800024b0:	00008067          	ret

00000000800024b4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800024b4:	fd010113          	addi	sp,sp,-48
    800024b8:	02113423          	sd	ra,40(sp)
    800024bc:	02813023          	sd	s0,32(sp)
    800024c0:	00913c23          	sd	s1,24(sp)
    800024c4:	01213823          	sd	s2,16(sp)
    800024c8:	01313423          	sd	s3,8(sp)
    800024cc:	03010413          	addi	s0,sp,48
    800024d0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800024d4:	00000993          	li	s3,0
    800024d8:	01c0006f          	j	800024f4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800024dc:	fffff097          	auipc	ra,0xfffff
    800024e0:	d84080e7          	jalr	-636(ra) # 80001260 <_Z15thread_dispatchv>
    800024e4:	0500006f          	j	80002534 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800024e8:	00a00513          	li	a0,10
    800024ec:	fffff097          	auipc	ra,0xfffff
    800024f0:	fd8080e7          	jalr	-40(ra) # 800014c4 <_Z4putcc>
    while (!threadEnd) {
    800024f4:	00008797          	auipc	a5,0x8
    800024f8:	eb47a783          	lw	a5,-332(a5) # 8000a3a8 <_ZL9threadEnd>
    800024fc:	06079063          	bnez	a5,8000255c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002500:	00893503          	ld	a0,8(s2)
    80002504:	00003097          	auipc	ra,0x3
    80002508:	2fc080e7          	jalr	764(ra) # 80005800 <_ZN6Buffer3getEv>
        i++;
    8000250c:	0019849b          	addiw	s1,s3,1
    80002510:	0004899b          	sext.w	s3,s1
        putc(key);
    80002514:	0ff57513          	andi	a0,a0,255
    80002518:	fffff097          	auipc	ra,0xfffff
    8000251c:	fac080e7          	jalr	-84(ra) # 800014c4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002520:	00092703          	lw	a4,0(s2)
    80002524:	0027179b          	slliw	a5,a4,0x2
    80002528:	00e787bb          	addw	a5,a5,a4
    8000252c:	02f4e7bb          	remw	a5,s1,a5
    80002530:	fa0786e3          	beqz	a5,800024dc <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002534:	05000793          	li	a5,80
    80002538:	02f4e4bb          	remw	s1,s1,a5
    8000253c:	fa049ce3          	bnez	s1,800024f4 <_ZL8consumerPv+0x40>
    80002540:	fa9ff06f          	j	800024e8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002544:	00893503          	ld	a0,8(s2)
    80002548:	00003097          	auipc	ra,0x3
    8000254c:	2b8080e7          	jalr	696(ra) # 80005800 <_ZN6Buffer3getEv>
        putc(key);
    80002550:	0ff57513          	andi	a0,a0,255
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	f70080e7          	jalr	-144(ra) # 800014c4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000255c:	00893503          	ld	a0,8(s2)
    80002560:	00003097          	auipc	ra,0x3
    80002564:	32c080e7          	jalr	812(ra) # 8000588c <_ZN6Buffer6getCntEv>
    80002568:	fca04ee3          	bgtz	a0,80002544 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000256c:	01093503          	ld	a0,16(s2)
    80002570:	fffff097          	auipc	ra,0xfffff
    80002574:	e40080e7          	jalr	-448(ra) # 800013b0 <_Z10sem_signalP3Sem>
}
    80002578:	02813083          	ld	ra,40(sp)
    8000257c:	02013403          	ld	s0,32(sp)
    80002580:	01813483          	ld	s1,24(sp)
    80002584:	01013903          	ld	s2,16(sp)
    80002588:	00813983          	ld	s3,8(sp)
    8000258c:	03010113          	addi	sp,sp,48
    80002590:	00008067          	ret

0000000080002594 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002594:	f9010113          	addi	sp,sp,-112
    80002598:	06113423          	sd	ra,104(sp)
    8000259c:	06813023          	sd	s0,96(sp)
    800025a0:	04913c23          	sd	s1,88(sp)
    800025a4:	05213823          	sd	s2,80(sp)
    800025a8:	05313423          	sd	s3,72(sp)
    800025ac:	05413023          	sd	s4,64(sp)
    800025b0:	03513c23          	sd	s5,56(sp)
    800025b4:	03613823          	sd	s6,48(sp)
    800025b8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800025bc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800025c0:	00006517          	auipc	a0,0x6
    800025c4:	b7050513          	addi	a0,a0,-1168 # 80008130 <CONSOLE_STATUS+0x120>
    800025c8:	00002097          	auipc	ra,0x2
    800025cc:	220080e7          	jalr	544(ra) # 800047e8 <_Z11printStringPKc>
    getString(input, 30);
    800025d0:	01e00593          	li	a1,30
    800025d4:	fa040493          	addi	s1,s0,-96
    800025d8:	00048513          	mv	a0,s1
    800025dc:	00002097          	auipc	ra,0x2
    800025e0:	294080e7          	jalr	660(ra) # 80004870 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800025e4:	00048513          	mv	a0,s1
    800025e8:	00002097          	auipc	ra,0x2
    800025ec:	360080e7          	jalr	864(ra) # 80004948 <_Z11stringToIntPKc>
    800025f0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800025f4:	00006517          	auipc	a0,0x6
    800025f8:	b5c50513          	addi	a0,a0,-1188 # 80008150 <CONSOLE_STATUS+0x140>
    800025fc:	00002097          	auipc	ra,0x2
    80002600:	1ec080e7          	jalr	492(ra) # 800047e8 <_Z11printStringPKc>
    getString(input, 30);
    80002604:	01e00593          	li	a1,30
    80002608:	00048513          	mv	a0,s1
    8000260c:	00002097          	auipc	ra,0x2
    80002610:	264080e7          	jalr	612(ra) # 80004870 <_Z9getStringPci>
    n = stringToInt(input);
    80002614:	00048513          	mv	a0,s1
    80002618:	00002097          	auipc	ra,0x2
    8000261c:	330080e7          	jalr	816(ra) # 80004948 <_Z11stringToIntPKc>
    80002620:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002624:	00006517          	auipc	a0,0x6
    80002628:	b4c50513          	addi	a0,a0,-1204 # 80008170 <CONSOLE_STATUS+0x160>
    8000262c:	00002097          	auipc	ra,0x2
    80002630:	1bc080e7          	jalr	444(ra) # 800047e8 <_Z11printStringPKc>
    80002634:	00000613          	li	a2,0
    80002638:	00a00593          	li	a1,10
    8000263c:	00090513          	mv	a0,s2
    80002640:	00002097          	auipc	ra,0x2
    80002644:	358080e7          	jalr	856(ra) # 80004998 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002648:	00006517          	auipc	a0,0x6
    8000264c:	b4050513          	addi	a0,a0,-1216 # 80008188 <CONSOLE_STATUS+0x178>
    80002650:	00002097          	auipc	ra,0x2
    80002654:	198080e7          	jalr	408(ra) # 800047e8 <_Z11printStringPKc>
    80002658:	00000613          	li	a2,0
    8000265c:	00a00593          	li	a1,10
    80002660:	00048513          	mv	a0,s1
    80002664:	00002097          	auipc	ra,0x2
    80002668:	334080e7          	jalr	820(ra) # 80004998 <_Z8printIntiii>
    printString(".\n");
    8000266c:	00006517          	auipc	a0,0x6
    80002670:	b3450513          	addi	a0,a0,-1228 # 800081a0 <CONSOLE_STATUS+0x190>
    80002674:	00002097          	auipc	ra,0x2
    80002678:	174080e7          	jalr	372(ra) # 800047e8 <_Z11printStringPKc>
    if(threadNum > n) {
    8000267c:	0324c463          	blt	s1,s2,800026a4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002680:	03205c63          	blez	s2,800026b8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002684:	03800513          	li	a0,56
    80002688:	fffff097          	auipc	ra,0xfffff
    8000268c:	1ac080e7          	jalr	428(ra) # 80001834 <_Znwm>
    80002690:	00050a13          	mv	s4,a0
    80002694:	00048593          	mv	a1,s1
    80002698:	00003097          	auipc	ra,0x3
    8000269c:	03c080e7          	jalr	60(ra) # 800056d4 <_ZN6BufferC1Ei>
    800026a0:	0300006f          	j	800026d0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800026a4:	00006517          	auipc	a0,0x6
    800026a8:	b0450513          	addi	a0,a0,-1276 # 800081a8 <CONSOLE_STATUS+0x198>
    800026ac:	00002097          	auipc	ra,0x2
    800026b0:	13c080e7          	jalr	316(ra) # 800047e8 <_Z11printStringPKc>
        return;
    800026b4:	0140006f          	j	800026c8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800026b8:	00006517          	auipc	a0,0x6
    800026bc:	b3050513          	addi	a0,a0,-1232 # 800081e8 <CONSOLE_STATUS+0x1d8>
    800026c0:	00002097          	auipc	ra,0x2
    800026c4:	128080e7          	jalr	296(ra) # 800047e8 <_Z11printStringPKc>
        return;
    800026c8:	000b0113          	mv	sp,s6
    800026cc:	1500006f          	j	8000281c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800026d0:	00000593          	li	a1,0
    800026d4:	00008517          	auipc	a0,0x8
    800026d8:	cdc50513          	addi	a0,a0,-804 # 8000a3b0 <_ZL10waitForAll>
    800026dc:	fffff097          	auipc	ra,0xfffff
    800026e0:	c00080e7          	jalr	-1024(ra) # 800012dc <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    800026e4:	00391793          	slli	a5,s2,0x3
    800026e8:	00f78793          	addi	a5,a5,15
    800026ec:	ff07f793          	andi	a5,a5,-16
    800026f0:	40f10133          	sub	sp,sp,a5
    800026f4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800026f8:	0019071b          	addiw	a4,s2,1
    800026fc:	00171793          	slli	a5,a4,0x1
    80002700:	00e787b3          	add	a5,a5,a4
    80002704:	00379793          	slli	a5,a5,0x3
    80002708:	00f78793          	addi	a5,a5,15
    8000270c:	ff07f793          	andi	a5,a5,-16
    80002710:	40f10133          	sub	sp,sp,a5
    80002714:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002718:	00191613          	slli	a2,s2,0x1
    8000271c:	012607b3          	add	a5,a2,s2
    80002720:	00379793          	slli	a5,a5,0x3
    80002724:	00f987b3          	add	a5,s3,a5
    80002728:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000272c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002730:	00008717          	auipc	a4,0x8
    80002734:	c8073703          	ld	a4,-896(a4) # 8000a3b0 <_ZL10waitForAll>
    80002738:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000273c:	00078613          	mv	a2,a5
    80002740:	00000597          	auipc	a1,0x0
    80002744:	d7458593          	addi	a1,a1,-652 # 800024b4 <_ZL8consumerPv>
    80002748:	f9840513          	addi	a0,s0,-104
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	a84080e7          	jalr	-1404(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002754:	00000493          	li	s1,0
    80002758:	0280006f          	j	80002780 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000275c:	00000597          	auipc	a1,0x0
    80002760:	c1458593          	addi	a1,a1,-1004 # 80002370 <_ZL16producerKeyboardPv>
                      data + i);
    80002764:	00179613          	slli	a2,a5,0x1
    80002768:	00f60633          	add	a2,a2,a5
    8000276c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002770:	00c98633          	add	a2,s3,a2
    80002774:	fffff097          	auipc	ra,0xfffff
    80002778:	a5c080e7          	jalr	-1444(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000277c:	0014849b          	addiw	s1,s1,1
    80002780:	0524d263          	bge	s1,s2,800027c4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002784:	00149793          	slli	a5,s1,0x1
    80002788:	009787b3          	add	a5,a5,s1
    8000278c:	00379793          	slli	a5,a5,0x3
    80002790:	00f987b3          	add	a5,s3,a5
    80002794:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002798:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000279c:	00008717          	auipc	a4,0x8
    800027a0:	c1473703          	ld	a4,-1004(a4) # 8000a3b0 <_ZL10waitForAll>
    800027a4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800027a8:	00048793          	mv	a5,s1
    800027ac:	00349513          	slli	a0,s1,0x3
    800027b0:	00aa8533          	add	a0,s5,a0
    800027b4:	fa9054e3          	blez	s1,8000275c <_Z22producerConsumer_C_APIv+0x1c8>
    800027b8:	00000597          	auipc	a1,0x0
    800027bc:	c6858593          	addi	a1,a1,-920 # 80002420 <_ZL8producerPv>
    800027c0:	fa5ff06f          	j	80002764 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800027c4:	fffff097          	auipc	ra,0xfffff
    800027c8:	a9c080e7          	jalr	-1380(ra) # 80001260 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800027cc:	00000493          	li	s1,0
    800027d0:	00994e63          	blt	s2,s1,800027ec <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800027d4:	00008517          	auipc	a0,0x8
    800027d8:	bdc53503          	ld	a0,-1060(a0) # 8000a3b0 <_ZL10waitForAll>
    800027dc:	fffff097          	auipc	ra,0xfffff
    800027e0:	b90080e7          	jalr	-1136(ra) # 8000136c <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    800027e4:	0014849b          	addiw	s1,s1,1
    800027e8:	fe9ff06f          	j	800027d0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800027ec:	00008517          	auipc	a0,0x8
    800027f0:	bc453503          	ld	a0,-1084(a0) # 8000a3b0 <_ZL10waitForAll>
    800027f4:	fffff097          	auipc	ra,0xfffff
    800027f8:	b34080e7          	jalr	-1228(ra) # 80001328 <_Z9sem_closeP3Sem>
    delete buffer;
    800027fc:	000a0e63          	beqz	s4,80002818 <_Z22producerConsumer_C_APIv+0x284>
    80002800:	000a0513          	mv	a0,s4
    80002804:	00003097          	auipc	ra,0x3
    80002808:	110080e7          	jalr	272(ra) # 80005914 <_ZN6BufferD1Ev>
    8000280c:	000a0513          	mv	a0,s4
    80002810:	fffff097          	auipc	ra,0xfffff
    80002814:	074080e7          	jalr	116(ra) # 80001884 <_ZdlPv>
    80002818:	000b0113          	mv	sp,s6

}
    8000281c:	f9040113          	addi	sp,s0,-112
    80002820:	06813083          	ld	ra,104(sp)
    80002824:	06013403          	ld	s0,96(sp)
    80002828:	05813483          	ld	s1,88(sp)
    8000282c:	05013903          	ld	s2,80(sp)
    80002830:	04813983          	ld	s3,72(sp)
    80002834:	04013a03          	ld	s4,64(sp)
    80002838:	03813a83          	ld	s5,56(sp)
    8000283c:	03013b03          	ld	s6,48(sp)
    80002840:	07010113          	addi	sp,sp,112
    80002844:	00008067          	ret
    80002848:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000284c:	000a0513          	mv	a0,s4
    80002850:	fffff097          	auipc	ra,0xfffff
    80002854:	034080e7          	jalr	52(ra) # 80001884 <_ZdlPv>
    80002858:	00048513          	mv	a0,s1
    8000285c:	00009097          	auipc	ra,0x9
    80002860:	c6c080e7          	jalr	-916(ra) # 8000b4c8 <_Unwind_Resume>

0000000080002864 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002864:	fe010113          	addi	sp,sp,-32
    80002868:	00113c23          	sd	ra,24(sp)
    8000286c:	00813823          	sd	s0,16(sp)
    80002870:	00913423          	sd	s1,8(sp)
    80002874:	01213023          	sd	s2,0(sp)
    80002878:	02010413          	addi	s0,sp,32
    8000287c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002880:	00100793          	li	a5,1
    80002884:	02a7f863          	bgeu	a5,a0,800028b4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002888:	00a00793          	li	a5,10
    8000288c:	02f577b3          	remu	a5,a0,a5
    80002890:	02078e63          	beqz	a5,800028cc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002894:	fff48513          	addi	a0,s1,-1
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	fcc080e7          	jalr	-52(ra) # 80002864 <_ZL9fibonaccim>
    800028a0:	00050913          	mv	s2,a0
    800028a4:	ffe48513          	addi	a0,s1,-2
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	fbc080e7          	jalr	-68(ra) # 80002864 <_ZL9fibonaccim>
    800028b0:	00a90533          	add	a0,s2,a0
}
    800028b4:	01813083          	ld	ra,24(sp)
    800028b8:	01013403          	ld	s0,16(sp)
    800028bc:	00813483          	ld	s1,8(sp)
    800028c0:	00013903          	ld	s2,0(sp)
    800028c4:	02010113          	addi	sp,sp,32
    800028c8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800028cc:	fffff097          	auipc	ra,0xfffff
    800028d0:	994080e7          	jalr	-1644(ra) # 80001260 <_Z15thread_dispatchv>
    800028d4:	fc1ff06f          	j	80002894 <_ZL9fibonaccim+0x30>

00000000800028d8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800028d8:	fe010113          	addi	sp,sp,-32
    800028dc:	00113c23          	sd	ra,24(sp)
    800028e0:	00813823          	sd	s0,16(sp)
    800028e4:	00913423          	sd	s1,8(sp)
    800028e8:	01213023          	sd	s2,0(sp)
    800028ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800028f0:	00000913          	li	s2,0
    800028f4:	0380006f          	j	8000292c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800028f8:	fffff097          	auipc	ra,0xfffff
    800028fc:	968080e7          	jalr	-1688(ra) # 80001260 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002900:	00148493          	addi	s1,s1,1
    80002904:	000027b7          	lui	a5,0x2
    80002908:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000290c:	0097ee63          	bltu	a5,s1,80002928 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002910:	00000713          	li	a4,0
    80002914:	000077b7          	lui	a5,0x7
    80002918:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000291c:	fce7eee3          	bltu	a5,a4,800028f8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002920:	00170713          	addi	a4,a4,1
    80002924:	ff1ff06f          	j	80002914 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002928:	00190913          	addi	s2,s2,1
    8000292c:	00900793          	li	a5,9
    80002930:	0527e063          	bltu	a5,s2,80002970 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002934:	00006517          	auipc	a0,0x6
    80002938:	8e450513          	addi	a0,a0,-1820 # 80008218 <CONSOLE_STATUS+0x208>
    8000293c:	00002097          	auipc	ra,0x2
    80002940:	eac080e7          	jalr	-340(ra) # 800047e8 <_Z11printStringPKc>
    80002944:	00000613          	li	a2,0
    80002948:	00a00593          	li	a1,10
    8000294c:	0009051b          	sext.w	a0,s2
    80002950:	00002097          	auipc	ra,0x2
    80002954:	048080e7          	jalr	72(ra) # 80004998 <_Z8printIntiii>
    80002958:	00006517          	auipc	a0,0x6
    8000295c:	b1050513          	addi	a0,a0,-1264 # 80008468 <CONSOLE_STATUS+0x458>
    80002960:	00002097          	auipc	ra,0x2
    80002964:	e88080e7          	jalr	-376(ra) # 800047e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002968:	00000493          	li	s1,0
    8000296c:	f99ff06f          	j	80002904 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002970:	00006517          	auipc	a0,0x6
    80002974:	8b050513          	addi	a0,a0,-1872 # 80008220 <CONSOLE_STATUS+0x210>
    80002978:	00002097          	auipc	ra,0x2
    8000297c:	e70080e7          	jalr	-400(ra) # 800047e8 <_Z11printStringPKc>
    finishedA = true;
    80002980:	00100793          	li	a5,1
    80002984:	00008717          	auipc	a4,0x8
    80002988:	a2f70a23          	sb	a5,-1484(a4) # 8000a3b8 <_ZL9finishedA>
}
    8000298c:	01813083          	ld	ra,24(sp)
    80002990:	01013403          	ld	s0,16(sp)
    80002994:	00813483          	ld	s1,8(sp)
    80002998:	00013903          	ld	s2,0(sp)
    8000299c:	02010113          	addi	sp,sp,32
    800029a0:	00008067          	ret

00000000800029a4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800029a4:	fe010113          	addi	sp,sp,-32
    800029a8:	00113c23          	sd	ra,24(sp)
    800029ac:	00813823          	sd	s0,16(sp)
    800029b0:	00913423          	sd	s1,8(sp)
    800029b4:	01213023          	sd	s2,0(sp)
    800029b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800029bc:	00000913          	li	s2,0
    800029c0:	0380006f          	j	800029f8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	89c080e7          	jalr	-1892(ra) # 80001260 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800029cc:	00148493          	addi	s1,s1,1
    800029d0:	000027b7          	lui	a5,0x2
    800029d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800029d8:	0097ee63          	bltu	a5,s1,800029f4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800029dc:	00000713          	li	a4,0
    800029e0:	000077b7          	lui	a5,0x7
    800029e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800029e8:	fce7eee3          	bltu	a5,a4,800029c4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800029ec:	00170713          	addi	a4,a4,1
    800029f0:	ff1ff06f          	j	800029e0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800029f4:	00190913          	addi	s2,s2,1
    800029f8:	00f00793          	li	a5,15
    800029fc:	0527e063          	bltu	a5,s2,80002a3c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002a00:	00006517          	auipc	a0,0x6
    80002a04:	83050513          	addi	a0,a0,-2000 # 80008230 <CONSOLE_STATUS+0x220>
    80002a08:	00002097          	auipc	ra,0x2
    80002a0c:	de0080e7          	jalr	-544(ra) # 800047e8 <_Z11printStringPKc>
    80002a10:	00000613          	li	a2,0
    80002a14:	00a00593          	li	a1,10
    80002a18:	0009051b          	sext.w	a0,s2
    80002a1c:	00002097          	auipc	ra,0x2
    80002a20:	f7c080e7          	jalr	-132(ra) # 80004998 <_Z8printIntiii>
    80002a24:	00006517          	auipc	a0,0x6
    80002a28:	a4450513          	addi	a0,a0,-1468 # 80008468 <CONSOLE_STATUS+0x458>
    80002a2c:	00002097          	auipc	ra,0x2
    80002a30:	dbc080e7          	jalr	-580(ra) # 800047e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002a34:	00000493          	li	s1,0
    80002a38:	f99ff06f          	j	800029d0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002a3c:	00005517          	auipc	a0,0x5
    80002a40:	7fc50513          	addi	a0,a0,2044 # 80008238 <CONSOLE_STATUS+0x228>
    80002a44:	00002097          	auipc	ra,0x2
    80002a48:	da4080e7          	jalr	-604(ra) # 800047e8 <_Z11printStringPKc>
    finishedB = true;
    80002a4c:	00100793          	li	a5,1
    80002a50:	00008717          	auipc	a4,0x8
    80002a54:	96f704a3          	sb	a5,-1687(a4) # 8000a3b9 <_ZL9finishedB>
    thread_dispatch();
    80002a58:	fffff097          	auipc	ra,0xfffff
    80002a5c:	808080e7          	jalr	-2040(ra) # 80001260 <_Z15thread_dispatchv>
}
    80002a60:	01813083          	ld	ra,24(sp)
    80002a64:	01013403          	ld	s0,16(sp)
    80002a68:	00813483          	ld	s1,8(sp)
    80002a6c:	00013903          	ld	s2,0(sp)
    80002a70:	02010113          	addi	sp,sp,32
    80002a74:	00008067          	ret

0000000080002a78 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002a78:	fe010113          	addi	sp,sp,-32
    80002a7c:	00113c23          	sd	ra,24(sp)
    80002a80:	00813823          	sd	s0,16(sp)
    80002a84:	00913423          	sd	s1,8(sp)
    80002a88:	01213023          	sd	s2,0(sp)
    80002a8c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002a90:	00000493          	li	s1,0
    80002a94:	0400006f          	j	80002ad4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002a98:	00005517          	auipc	a0,0x5
    80002a9c:	7b050513          	addi	a0,a0,1968 # 80008248 <CONSOLE_STATUS+0x238>
    80002aa0:	00002097          	auipc	ra,0x2
    80002aa4:	d48080e7          	jalr	-696(ra) # 800047e8 <_Z11printStringPKc>
    80002aa8:	00000613          	li	a2,0
    80002aac:	00a00593          	li	a1,10
    80002ab0:	00048513          	mv	a0,s1
    80002ab4:	00002097          	auipc	ra,0x2
    80002ab8:	ee4080e7          	jalr	-284(ra) # 80004998 <_Z8printIntiii>
    80002abc:	00006517          	auipc	a0,0x6
    80002ac0:	9ac50513          	addi	a0,a0,-1620 # 80008468 <CONSOLE_STATUS+0x458>
    80002ac4:	00002097          	auipc	ra,0x2
    80002ac8:	d24080e7          	jalr	-732(ra) # 800047e8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002acc:	0014849b          	addiw	s1,s1,1
    80002ad0:	0ff4f493          	andi	s1,s1,255
    80002ad4:	00200793          	li	a5,2
    80002ad8:	fc97f0e3          	bgeu	a5,s1,80002a98 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002adc:	00005517          	auipc	a0,0x5
    80002ae0:	77450513          	addi	a0,a0,1908 # 80008250 <CONSOLE_STATUS+0x240>
    80002ae4:	00002097          	auipc	ra,0x2
    80002ae8:	d04080e7          	jalr	-764(ra) # 800047e8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002aec:	00700313          	li	t1,7
    thread_dispatch();
    80002af0:	ffffe097          	auipc	ra,0xffffe
    80002af4:	770080e7          	jalr	1904(ra) # 80001260 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002af8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002afc:	00005517          	auipc	a0,0x5
    80002b00:	76450513          	addi	a0,a0,1892 # 80008260 <CONSOLE_STATUS+0x250>
    80002b04:	00002097          	auipc	ra,0x2
    80002b08:	ce4080e7          	jalr	-796(ra) # 800047e8 <_Z11printStringPKc>
    80002b0c:	00000613          	li	a2,0
    80002b10:	00a00593          	li	a1,10
    80002b14:	0009051b          	sext.w	a0,s2
    80002b18:	00002097          	auipc	ra,0x2
    80002b1c:	e80080e7          	jalr	-384(ra) # 80004998 <_Z8printIntiii>
    80002b20:	00006517          	auipc	a0,0x6
    80002b24:	94850513          	addi	a0,a0,-1720 # 80008468 <CONSOLE_STATUS+0x458>
    80002b28:	00002097          	auipc	ra,0x2
    80002b2c:	cc0080e7          	jalr	-832(ra) # 800047e8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002b30:	00c00513          	li	a0,12
    80002b34:	00000097          	auipc	ra,0x0
    80002b38:	d30080e7          	jalr	-720(ra) # 80002864 <_ZL9fibonaccim>
    80002b3c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002b40:	00005517          	auipc	a0,0x5
    80002b44:	72850513          	addi	a0,a0,1832 # 80008268 <CONSOLE_STATUS+0x258>
    80002b48:	00002097          	auipc	ra,0x2
    80002b4c:	ca0080e7          	jalr	-864(ra) # 800047e8 <_Z11printStringPKc>
    80002b50:	00000613          	li	a2,0
    80002b54:	00a00593          	li	a1,10
    80002b58:	0009051b          	sext.w	a0,s2
    80002b5c:	00002097          	auipc	ra,0x2
    80002b60:	e3c080e7          	jalr	-452(ra) # 80004998 <_Z8printIntiii>
    80002b64:	00006517          	auipc	a0,0x6
    80002b68:	90450513          	addi	a0,a0,-1788 # 80008468 <CONSOLE_STATUS+0x458>
    80002b6c:	00002097          	auipc	ra,0x2
    80002b70:	c7c080e7          	jalr	-900(ra) # 800047e8 <_Z11printStringPKc>
    80002b74:	0400006f          	j	80002bb4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002b78:	00005517          	auipc	a0,0x5
    80002b7c:	6d050513          	addi	a0,a0,1744 # 80008248 <CONSOLE_STATUS+0x238>
    80002b80:	00002097          	auipc	ra,0x2
    80002b84:	c68080e7          	jalr	-920(ra) # 800047e8 <_Z11printStringPKc>
    80002b88:	00000613          	li	a2,0
    80002b8c:	00a00593          	li	a1,10
    80002b90:	00048513          	mv	a0,s1
    80002b94:	00002097          	auipc	ra,0x2
    80002b98:	e04080e7          	jalr	-508(ra) # 80004998 <_Z8printIntiii>
    80002b9c:	00006517          	auipc	a0,0x6
    80002ba0:	8cc50513          	addi	a0,a0,-1844 # 80008468 <CONSOLE_STATUS+0x458>
    80002ba4:	00002097          	auipc	ra,0x2
    80002ba8:	c44080e7          	jalr	-956(ra) # 800047e8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002bac:	0014849b          	addiw	s1,s1,1
    80002bb0:	0ff4f493          	andi	s1,s1,255
    80002bb4:	00500793          	li	a5,5
    80002bb8:	fc97f0e3          	bgeu	a5,s1,80002b78 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002bbc:	00005517          	auipc	a0,0x5
    80002bc0:	66450513          	addi	a0,a0,1636 # 80008220 <CONSOLE_STATUS+0x210>
    80002bc4:	00002097          	auipc	ra,0x2
    80002bc8:	c24080e7          	jalr	-988(ra) # 800047e8 <_Z11printStringPKc>
    finishedC = true;
    80002bcc:	00100793          	li	a5,1
    80002bd0:	00007717          	auipc	a4,0x7
    80002bd4:	7ef70523          	sb	a5,2026(a4) # 8000a3ba <_ZL9finishedC>
    thread_dispatch();
    80002bd8:	ffffe097          	auipc	ra,0xffffe
    80002bdc:	688080e7          	jalr	1672(ra) # 80001260 <_Z15thread_dispatchv>
}
    80002be0:	01813083          	ld	ra,24(sp)
    80002be4:	01013403          	ld	s0,16(sp)
    80002be8:	00813483          	ld	s1,8(sp)
    80002bec:	00013903          	ld	s2,0(sp)
    80002bf0:	02010113          	addi	sp,sp,32
    80002bf4:	00008067          	ret

0000000080002bf8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002bf8:	fe010113          	addi	sp,sp,-32
    80002bfc:	00113c23          	sd	ra,24(sp)
    80002c00:	00813823          	sd	s0,16(sp)
    80002c04:	00913423          	sd	s1,8(sp)
    80002c08:	01213023          	sd	s2,0(sp)
    80002c0c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002c10:	00a00493          	li	s1,10
    80002c14:	0400006f          	j	80002c54 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002c18:	00005517          	auipc	a0,0x5
    80002c1c:	66050513          	addi	a0,a0,1632 # 80008278 <CONSOLE_STATUS+0x268>
    80002c20:	00002097          	auipc	ra,0x2
    80002c24:	bc8080e7          	jalr	-1080(ra) # 800047e8 <_Z11printStringPKc>
    80002c28:	00000613          	li	a2,0
    80002c2c:	00a00593          	li	a1,10
    80002c30:	00048513          	mv	a0,s1
    80002c34:	00002097          	auipc	ra,0x2
    80002c38:	d64080e7          	jalr	-668(ra) # 80004998 <_Z8printIntiii>
    80002c3c:	00006517          	auipc	a0,0x6
    80002c40:	82c50513          	addi	a0,a0,-2004 # 80008468 <CONSOLE_STATUS+0x458>
    80002c44:	00002097          	auipc	ra,0x2
    80002c48:	ba4080e7          	jalr	-1116(ra) # 800047e8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002c4c:	0014849b          	addiw	s1,s1,1
    80002c50:	0ff4f493          	andi	s1,s1,255
    80002c54:	00c00793          	li	a5,12
    80002c58:	fc97f0e3          	bgeu	a5,s1,80002c18 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002c5c:	00005517          	auipc	a0,0x5
    80002c60:	62450513          	addi	a0,a0,1572 # 80008280 <CONSOLE_STATUS+0x270>
    80002c64:	00002097          	auipc	ra,0x2
    80002c68:	b84080e7          	jalr	-1148(ra) # 800047e8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002c6c:	00500313          	li	t1,5
    thread_dispatch();
    80002c70:	ffffe097          	auipc	ra,0xffffe
    80002c74:	5f0080e7          	jalr	1520(ra) # 80001260 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002c78:	01000513          	li	a0,16
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	be8080e7          	jalr	-1048(ra) # 80002864 <_ZL9fibonaccim>
    80002c84:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002c88:	00005517          	auipc	a0,0x5
    80002c8c:	60850513          	addi	a0,a0,1544 # 80008290 <CONSOLE_STATUS+0x280>
    80002c90:	00002097          	auipc	ra,0x2
    80002c94:	b58080e7          	jalr	-1192(ra) # 800047e8 <_Z11printStringPKc>
    80002c98:	00000613          	li	a2,0
    80002c9c:	00a00593          	li	a1,10
    80002ca0:	0009051b          	sext.w	a0,s2
    80002ca4:	00002097          	auipc	ra,0x2
    80002ca8:	cf4080e7          	jalr	-780(ra) # 80004998 <_Z8printIntiii>
    80002cac:	00005517          	auipc	a0,0x5
    80002cb0:	7bc50513          	addi	a0,a0,1980 # 80008468 <CONSOLE_STATUS+0x458>
    80002cb4:	00002097          	auipc	ra,0x2
    80002cb8:	b34080e7          	jalr	-1228(ra) # 800047e8 <_Z11printStringPKc>
    80002cbc:	0400006f          	j	80002cfc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002cc0:	00005517          	auipc	a0,0x5
    80002cc4:	5b850513          	addi	a0,a0,1464 # 80008278 <CONSOLE_STATUS+0x268>
    80002cc8:	00002097          	auipc	ra,0x2
    80002ccc:	b20080e7          	jalr	-1248(ra) # 800047e8 <_Z11printStringPKc>
    80002cd0:	00000613          	li	a2,0
    80002cd4:	00a00593          	li	a1,10
    80002cd8:	00048513          	mv	a0,s1
    80002cdc:	00002097          	auipc	ra,0x2
    80002ce0:	cbc080e7          	jalr	-836(ra) # 80004998 <_Z8printIntiii>
    80002ce4:	00005517          	auipc	a0,0x5
    80002ce8:	78450513          	addi	a0,a0,1924 # 80008468 <CONSOLE_STATUS+0x458>
    80002cec:	00002097          	auipc	ra,0x2
    80002cf0:	afc080e7          	jalr	-1284(ra) # 800047e8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002cf4:	0014849b          	addiw	s1,s1,1
    80002cf8:	0ff4f493          	andi	s1,s1,255
    80002cfc:	00f00793          	li	a5,15
    80002d00:	fc97f0e3          	bgeu	a5,s1,80002cc0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002d04:	00005517          	auipc	a0,0x5
    80002d08:	59c50513          	addi	a0,a0,1436 # 800082a0 <CONSOLE_STATUS+0x290>
    80002d0c:	00002097          	auipc	ra,0x2
    80002d10:	adc080e7          	jalr	-1316(ra) # 800047e8 <_Z11printStringPKc>
    finishedD = true;
    80002d14:	00100793          	li	a5,1
    80002d18:	00007717          	auipc	a4,0x7
    80002d1c:	6af701a3          	sb	a5,1699(a4) # 8000a3bb <_ZL9finishedD>
    thread_dispatch();
    80002d20:	ffffe097          	auipc	ra,0xffffe
    80002d24:	540080e7          	jalr	1344(ra) # 80001260 <_Z15thread_dispatchv>
}
    80002d28:	01813083          	ld	ra,24(sp)
    80002d2c:	01013403          	ld	s0,16(sp)
    80002d30:	00813483          	ld	s1,8(sp)
    80002d34:	00013903          	ld	s2,0(sp)
    80002d38:	02010113          	addi	sp,sp,32
    80002d3c:	00008067          	ret

0000000080002d40 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002d40:	fc010113          	addi	sp,sp,-64
    80002d44:	02113c23          	sd	ra,56(sp)
    80002d48:	02813823          	sd	s0,48(sp)
    80002d4c:	02913423          	sd	s1,40(sp)
    80002d50:	03213023          	sd	s2,32(sp)
    80002d54:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002d58:	02000513          	li	a0,32
    80002d5c:	fffff097          	auipc	ra,0xfffff
    80002d60:	ad8080e7          	jalr	-1320(ra) # 80001834 <_Znwm>
    80002d64:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002d68:	fffff097          	auipc	ra,0xfffff
    80002d6c:	c04080e7          	jalr	-1020(ra) # 8000196c <_ZN6ThreadC1Ev>
    80002d70:	00007797          	auipc	a5,0x7
    80002d74:	40078793          	addi	a5,a5,1024 # 8000a170 <_ZTV7WorkerA+0x10>
    80002d78:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002d7c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002d80:	00005517          	auipc	a0,0x5
    80002d84:	53050513          	addi	a0,a0,1328 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80002d88:	00002097          	auipc	ra,0x2
    80002d8c:	a60080e7          	jalr	-1440(ra) # 800047e8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002d90:	02000513          	li	a0,32
    80002d94:	fffff097          	auipc	ra,0xfffff
    80002d98:	aa0080e7          	jalr	-1376(ra) # 80001834 <_Znwm>
    80002d9c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002da0:	fffff097          	auipc	ra,0xfffff
    80002da4:	bcc080e7          	jalr	-1076(ra) # 8000196c <_ZN6ThreadC1Ev>
    80002da8:	00007797          	auipc	a5,0x7
    80002dac:	3f078793          	addi	a5,a5,1008 # 8000a198 <_ZTV7WorkerB+0x10>
    80002db0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002db4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002db8:	00005517          	auipc	a0,0x5
    80002dbc:	51050513          	addi	a0,a0,1296 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80002dc0:	00002097          	auipc	ra,0x2
    80002dc4:	a28080e7          	jalr	-1496(ra) # 800047e8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002dc8:	02000513          	li	a0,32
    80002dcc:	fffff097          	auipc	ra,0xfffff
    80002dd0:	a68080e7          	jalr	-1432(ra) # 80001834 <_Znwm>
    80002dd4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002dd8:	fffff097          	auipc	ra,0xfffff
    80002ddc:	b94080e7          	jalr	-1132(ra) # 8000196c <_ZN6ThreadC1Ev>
    80002de0:	00007797          	auipc	a5,0x7
    80002de4:	3e078793          	addi	a5,a5,992 # 8000a1c0 <_ZTV7WorkerC+0x10>
    80002de8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002dec:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002df0:	00005517          	auipc	a0,0x5
    80002df4:	4f050513          	addi	a0,a0,1264 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80002df8:	00002097          	auipc	ra,0x2
    80002dfc:	9f0080e7          	jalr	-1552(ra) # 800047e8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002e00:	02000513          	li	a0,32
    80002e04:	fffff097          	auipc	ra,0xfffff
    80002e08:	a30080e7          	jalr	-1488(ra) # 80001834 <_Znwm>
    80002e0c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002e10:	fffff097          	auipc	ra,0xfffff
    80002e14:	b5c080e7          	jalr	-1188(ra) # 8000196c <_ZN6ThreadC1Ev>
    80002e18:	00007797          	auipc	a5,0x7
    80002e1c:	3d078793          	addi	a5,a5,976 # 8000a1e8 <_ZTV7WorkerD+0x10>
    80002e20:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002e24:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002e28:	00005517          	auipc	a0,0x5
    80002e2c:	4d050513          	addi	a0,a0,1232 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80002e30:	00002097          	auipc	ra,0x2
    80002e34:	9b8080e7          	jalr	-1608(ra) # 800047e8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002e38:	00000493          	li	s1,0
    80002e3c:	00300793          	li	a5,3
    80002e40:	0297c663          	blt	a5,s1,80002e6c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002e44:	00349793          	slli	a5,s1,0x3
    80002e48:	fe040713          	addi	a4,s0,-32
    80002e4c:	00f707b3          	add	a5,a4,a5
    80002e50:	fe07b503          	ld	a0,-32(a5)
    80002e54:	fffff097          	auipc	ra,0xfffff
    80002e58:	b48080e7          	jalr	-1208(ra) # 8000199c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002e5c:	0014849b          	addiw	s1,s1,1
    80002e60:	fddff06f          	j	80002e3c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002e64:	fffff097          	auipc	ra,0xfffff
    80002e68:	b70080e7          	jalr	-1168(ra) # 800019d4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002e6c:	00007797          	auipc	a5,0x7
    80002e70:	54c7c783          	lbu	a5,1356(a5) # 8000a3b8 <_ZL9finishedA>
    80002e74:	fe0788e3          	beqz	a5,80002e64 <_Z20Threads_CPP_API_testv+0x124>
    80002e78:	00007797          	auipc	a5,0x7
    80002e7c:	5417c783          	lbu	a5,1345(a5) # 8000a3b9 <_ZL9finishedB>
    80002e80:	fe0782e3          	beqz	a5,80002e64 <_Z20Threads_CPP_API_testv+0x124>
    80002e84:	00007797          	auipc	a5,0x7
    80002e88:	5367c783          	lbu	a5,1334(a5) # 8000a3ba <_ZL9finishedC>
    80002e8c:	fc078ce3          	beqz	a5,80002e64 <_Z20Threads_CPP_API_testv+0x124>
    80002e90:	00007797          	auipc	a5,0x7
    80002e94:	52b7c783          	lbu	a5,1323(a5) # 8000a3bb <_ZL9finishedD>
    80002e98:	fc0786e3          	beqz	a5,80002e64 <_Z20Threads_CPP_API_testv+0x124>
    80002e9c:	fc040493          	addi	s1,s0,-64
    80002ea0:	0080006f          	j	80002ea8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002ea4:	00848493          	addi	s1,s1,8
    80002ea8:	fe040793          	addi	a5,s0,-32
    80002eac:	08f48663          	beq	s1,a5,80002f38 <_Z20Threads_CPP_API_testv+0x1f8>
    80002eb0:	0004b503          	ld	a0,0(s1)
    80002eb4:	fe0508e3          	beqz	a0,80002ea4 <_Z20Threads_CPP_API_testv+0x164>
    80002eb8:	00053783          	ld	a5,0(a0)
    80002ebc:	0087b783          	ld	a5,8(a5)
    80002ec0:	000780e7          	jalr	a5
    80002ec4:	fe1ff06f          	j	80002ea4 <_Z20Threads_CPP_API_testv+0x164>
    80002ec8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002ecc:	00048513          	mv	a0,s1
    80002ed0:	fffff097          	auipc	ra,0xfffff
    80002ed4:	9b4080e7          	jalr	-1612(ra) # 80001884 <_ZdlPv>
    80002ed8:	00090513          	mv	a0,s2
    80002edc:	00008097          	auipc	ra,0x8
    80002ee0:	5ec080e7          	jalr	1516(ra) # 8000b4c8 <_Unwind_Resume>
    80002ee4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002ee8:	00048513          	mv	a0,s1
    80002eec:	fffff097          	auipc	ra,0xfffff
    80002ef0:	998080e7          	jalr	-1640(ra) # 80001884 <_ZdlPv>
    80002ef4:	00090513          	mv	a0,s2
    80002ef8:	00008097          	auipc	ra,0x8
    80002efc:	5d0080e7          	jalr	1488(ra) # 8000b4c8 <_Unwind_Resume>
    80002f00:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002f04:	00048513          	mv	a0,s1
    80002f08:	fffff097          	auipc	ra,0xfffff
    80002f0c:	97c080e7          	jalr	-1668(ra) # 80001884 <_ZdlPv>
    80002f10:	00090513          	mv	a0,s2
    80002f14:	00008097          	auipc	ra,0x8
    80002f18:	5b4080e7          	jalr	1460(ra) # 8000b4c8 <_Unwind_Resume>
    80002f1c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002f20:	00048513          	mv	a0,s1
    80002f24:	fffff097          	auipc	ra,0xfffff
    80002f28:	960080e7          	jalr	-1696(ra) # 80001884 <_ZdlPv>
    80002f2c:	00090513          	mv	a0,s2
    80002f30:	00008097          	auipc	ra,0x8
    80002f34:	598080e7          	jalr	1432(ra) # 8000b4c8 <_Unwind_Resume>
}
    80002f38:	03813083          	ld	ra,56(sp)
    80002f3c:	03013403          	ld	s0,48(sp)
    80002f40:	02813483          	ld	s1,40(sp)
    80002f44:	02013903          	ld	s2,32(sp)
    80002f48:	04010113          	addi	sp,sp,64
    80002f4c:	00008067          	ret

0000000080002f50 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002f50:	ff010113          	addi	sp,sp,-16
    80002f54:	00113423          	sd	ra,8(sp)
    80002f58:	00813023          	sd	s0,0(sp)
    80002f5c:	01010413          	addi	s0,sp,16
    80002f60:	00007797          	auipc	a5,0x7
    80002f64:	21078793          	addi	a5,a5,528 # 8000a170 <_ZTV7WorkerA+0x10>
    80002f68:	00f53023          	sd	a5,0(a0)
    80002f6c:	fffff097          	auipc	ra,0xfffff
    80002f70:	838080e7          	jalr	-1992(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80002f74:	00813083          	ld	ra,8(sp)
    80002f78:	00013403          	ld	s0,0(sp)
    80002f7c:	01010113          	addi	sp,sp,16
    80002f80:	00008067          	ret

0000000080002f84 <_ZN7WorkerAD0Ev>:
    80002f84:	fe010113          	addi	sp,sp,-32
    80002f88:	00113c23          	sd	ra,24(sp)
    80002f8c:	00813823          	sd	s0,16(sp)
    80002f90:	00913423          	sd	s1,8(sp)
    80002f94:	02010413          	addi	s0,sp,32
    80002f98:	00050493          	mv	s1,a0
    80002f9c:	00007797          	auipc	a5,0x7
    80002fa0:	1d478793          	addi	a5,a5,468 # 8000a170 <_ZTV7WorkerA+0x10>
    80002fa4:	00f53023          	sd	a5,0(a0)
    80002fa8:	ffffe097          	auipc	ra,0xffffe
    80002fac:	7fc080e7          	jalr	2044(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80002fb0:	00048513          	mv	a0,s1
    80002fb4:	fffff097          	auipc	ra,0xfffff
    80002fb8:	8d0080e7          	jalr	-1840(ra) # 80001884 <_ZdlPv>
    80002fbc:	01813083          	ld	ra,24(sp)
    80002fc0:	01013403          	ld	s0,16(sp)
    80002fc4:	00813483          	ld	s1,8(sp)
    80002fc8:	02010113          	addi	sp,sp,32
    80002fcc:	00008067          	ret

0000000080002fd0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80002fd0:	ff010113          	addi	sp,sp,-16
    80002fd4:	00113423          	sd	ra,8(sp)
    80002fd8:	00813023          	sd	s0,0(sp)
    80002fdc:	01010413          	addi	s0,sp,16
    80002fe0:	00007797          	auipc	a5,0x7
    80002fe4:	1b878793          	addi	a5,a5,440 # 8000a198 <_ZTV7WorkerB+0x10>
    80002fe8:	00f53023          	sd	a5,0(a0)
    80002fec:	ffffe097          	auipc	ra,0xffffe
    80002ff0:	7b8080e7          	jalr	1976(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80002ff4:	00813083          	ld	ra,8(sp)
    80002ff8:	00013403          	ld	s0,0(sp)
    80002ffc:	01010113          	addi	sp,sp,16
    80003000:	00008067          	ret

0000000080003004 <_ZN7WorkerBD0Ev>:
    80003004:	fe010113          	addi	sp,sp,-32
    80003008:	00113c23          	sd	ra,24(sp)
    8000300c:	00813823          	sd	s0,16(sp)
    80003010:	00913423          	sd	s1,8(sp)
    80003014:	02010413          	addi	s0,sp,32
    80003018:	00050493          	mv	s1,a0
    8000301c:	00007797          	auipc	a5,0x7
    80003020:	17c78793          	addi	a5,a5,380 # 8000a198 <_ZTV7WorkerB+0x10>
    80003024:	00f53023          	sd	a5,0(a0)
    80003028:	ffffe097          	auipc	ra,0xffffe
    8000302c:	77c080e7          	jalr	1916(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80003030:	00048513          	mv	a0,s1
    80003034:	fffff097          	auipc	ra,0xfffff
    80003038:	850080e7          	jalr	-1968(ra) # 80001884 <_ZdlPv>
    8000303c:	01813083          	ld	ra,24(sp)
    80003040:	01013403          	ld	s0,16(sp)
    80003044:	00813483          	ld	s1,8(sp)
    80003048:	02010113          	addi	sp,sp,32
    8000304c:	00008067          	ret

0000000080003050 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003050:	ff010113          	addi	sp,sp,-16
    80003054:	00113423          	sd	ra,8(sp)
    80003058:	00813023          	sd	s0,0(sp)
    8000305c:	01010413          	addi	s0,sp,16
    80003060:	00007797          	auipc	a5,0x7
    80003064:	16078793          	addi	a5,a5,352 # 8000a1c0 <_ZTV7WorkerC+0x10>
    80003068:	00f53023          	sd	a5,0(a0)
    8000306c:	ffffe097          	auipc	ra,0xffffe
    80003070:	738080e7          	jalr	1848(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80003074:	00813083          	ld	ra,8(sp)
    80003078:	00013403          	ld	s0,0(sp)
    8000307c:	01010113          	addi	sp,sp,16
    80003080:	00008067          	ret

0000000080003084 <_ZN7WorkerCD0Ev>:
    80003084:	fe010113          	addi	sp,sp,-32
    80003088:	00113c23          	sd	ra,24(sp)
    8000308c:	00813823          	sd	s0,16(sp)
    80003090:	00913423          	sd	s1,8(sp)
    80003094:	02010413          	addi	s0,sp,32
    80003098:	00050493          	mv	s1,a0
    8000309c:	00007797          	auipc	a5,0x7
    800030a0:	12478793          	addi	a5,a5,292 # 8000a1c0 <_ZTV7WorkerC+0x10>
    800030a4:	00f53023          	sd	a5,0(a0)
    800030a8:	ffffe097          	auipc	ra,0xffffe
    800030ac:	6fc080e7          	jalr	1788(ra) # 800017a4 <_ZN6ThreadD1Ev>
    800030b0:	00048513          	mv	a0,s1
    800030b4:	ffffe097          	auipc	ra,0xffffe
    800030b8:	7d0080e7          	jalr	2000(ra) # 80001884 <_ZdlPv>
    800030bc:	01813083          	ld	ra,24(sp)
    800030c0:	01013403          	ld	s0,16(sp)
    800030c4:	00813483          	ld	s1,8(sp)
    800030c8:	02010113          	addi	sp,sp,32
    800030cc:	00008067          	ret

00000000800030d0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800030d0:	ff010113          	addi	sp,sp,-16
    800030d4:	00113423          	sd	ra,8(sp)
    800030d8:	00813023          	sd	s0,0(sp)
    800030dc:	01010413          	addi	s0,sp,16
    800030e0:	00007797          	auipc	a5,0x7
    800030e4:	10878793          	addi	a5,a5,264 # 8000a1e8 <_ZTV7WorkerD+0x10>
    800030e8:	00f53023          	sd	a5,0(a0)
    800030ec:	ffffe097          	auipc	ra,0xffffe
    800030f0:	6b8080e7          	jalr	1720(ra) # 800017a4 <_ZN6ThreadD1Ev>
    800030f4:	00813083          	ld	ra,8(sp)
    800030f8:	00013403          	ld	s0,0(sp)
    800030fc:	01010113          	addi	sp,sp,16
    80003100:	00008067          	ret

0000000080003104 <_ZN7WorkerDD0Ev>:
    80003104:	fe010113          	addi	sp,sp,-32
    80003108:	00113c23          	sd	ra,24(sp)
    8000310c:	00813823          	sd	s0,16(sp)
    80003110:	00913423          	sd	s1,8(sp)
    80003114:	02010413          	addi	s0,sp,32
    80003118:	00050493          	mv	s1,a0
    8000311c:	00007797          	auipc	a5,0x7
    80003120:	0cc78793          	addi	a5,a5,204 # 8000a1e8 <_ZTV7WorkerD+0x10>
    80003124:	00f53023          	sd	a5,0(a0)
    80003128:	ffffe097          	auipc	ra,0xffffe
    8000312c:	67c080e7          	jalr	1660(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80003130:	00048513          	mv	a0,s1
    80003134:	ffffe097          	auipc	ra,0xffffe
    80003138:	750080e7          	jalr	1872(ra) # 80001884 <_ZdlPv>
    8000313c:	01813083          	ld	ra,24(sp)
    80003140:	01013403          	ld	s0,16(sp)
    80003144:	00813483          	ld	s1,8(sp)
    80003148:	02010113          	addi	sp,sp,32
    8000314c:	00008067          	ret

0000000080003150 <_ZN7WorkerA3runEv>:
    void run() override {
    80003150:	ff010113          	addi	sp,sp,-16
    80003154:	00113423          	sd	ra,8(sp)
    80003158:	00813023          	sd	s0,0(sp)
    8000315c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003160:	00000593          	li	a1,0
    80003164:	fffff097          	auipc	ra,0xfffff
    80003168:	774080e7          	jalr	1908(ra) # 800028d8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000316c:	00813083          	ld	ra,8(sp)
    80003170:	00013403          	ld	s0,0(sp)
    80003174:	01010113          	addi	sp,sp,16
    80003178:	00008067          	ret

000000008000317c <_ZN7WorkerB3runEv>:
    void run() override {
    8000317c:	ff010113          	addi	sp,sp,-16
    80003180:	00113423          	sd	ra,8(sp)
    80003184:	00813023          	sd	s0,0(sp)
    80003188:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000318c:	00000593          	li	a1,0
    80003190:	00000097          	auipc	ra,0x0
    80003194:	814080e7          	jalr	-2028(ra) # 800029a4 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003198:	00813083          	ld	ra,8(sp)
    8000319c:	00013403          	ld	s0,0(sp)
    800031a0:	01010113          	addi	sp,sp,16
    800031a4:	00008067          	ret

00000000800031a8 <_ZN7WorkerC3runEv>:
    void run() override {
    800031a8:	ff010113          	addi	sp,sp,-16
    800031ac:	00113423          	sd	ra,8(sp)
    800031b0:	00813023          	sd	s0,0(sp)
    800031b4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800031b8:	00000593          	li	a1,0
    800031bc:	00000097          	auipc	ra,0x0
    800031c0:	8bc080e7          	jalr	-1860(ra) # 80002a78 <_ZN7WorkerC11workerBodyCEPv>
    }
    800031c4:	00813083          	ld	ra,8(sp)
    800031c8:	00013403          	ld	s0,0(sp)
    800031cc:	01010113          	addi	sp,sp,16
    800031d0:	00008067          	ret

00000000800031d4 <_ZN7WorkerD3runEv>:
    void run() override {
    800031d4:	ff010113          	addi	sp,sp,-16
    800031d8:	00113423          	sd	ra,8(sp)
    800031dc:	00813023          	sd	s0,0(sp)
    800031e0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800031e4:	00000593          	li	a1,0
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	a10080e7          	jalr	-1520(ra) # 80002bf8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800031f0:	00813083          	ld	ra,8(sp)
    800031f4:	00013403          	ld	s0,0(sp)
    800031f8:	01010113          	addi	sp,sp,16
    800031fc:	00008067          	ret

0000000080003200 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003200:	f8010113          	addi	sp,sp,-128
    80003204:	06113c23          	sd	ra,120(sp)
    80003208:	06813823          	sd	s0,112(sp)
    8000320c:	06913423          	sd	s1,104(sp)
    80003210:	07213023          	sd	s2,96(sp)
    80003214:	05313c23          	sd	s3,88(sp)
    80003218:	05413823          	sd	s4,80(sp)
    8000321c:	05513423          	sd	s5,72(sp)
    80003220:	05613023          	sd	s6,64(sp)
    80003224:	03713c23          	sd	s7,56(sp)
    80003228:	03813823          	sd	s8,48(sp)
    8000322c:	03913423          	sd	s9,40(sp)
    80003230:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003234:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003238:	00005517          	auipc	a0,0x5
    8000323c:	ef850513          	addi	a0,a0,-264 # 80008130 <CONSOLE_STATUS+0x120>
    80003240:	00001097          	auipc	ra,0x1
    80003244:	5a8080e7          	jalr	1448(ra) # 800047e8 <_Z11printStringPKc>
    getString(input, 30);
    80003248:	01e00593          	li	a1,30
    8000324c:	f8040493          	addi	s1,s0,-128
    80003250:	00048513          	mv	a0,s1
    80003254:	00001097          	auipc	ra,0x1
    80003258:	61c080e7          	jalr	1564(ra) # 80004870 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000325c:	00048513          	mv	a0,s1
    80003260:	00001097          	auipc	ra,0x1
    80003264:	6e8080e7          	jalr	1768(ra) # 80004948 <_Z11stringToIntPKc>
    80003268:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000326c:	00005517          	auipc	a0,0x5
    80003270:	ee450513          	addi	a0,a0,-284 # 80008150 <CONSOLE_STATUS+0x140>
    80003274:	00001097          	auipc	ra,0x1
    80003278:	574080e7          	jalr	1396(ra) # 800047e8 <_Z11printStringPKc>
    getString(input, 30);
    8000327c:	01e00593          	li	a1,30
    80003280:	00048513          	mv	a0,s1
    80003284:	00001097          	auipc	ra,0x1
    80003288:	5ec080e7          	jalr	1516(ra) # 80004870 <_Z9getStringPci>
    n = stringToInt(input);
    8000328c:	00048513          	mv	a0,s1
    80003290:	00001097          	auipc	ra,0x1
    80003294:	6b8080e7          	jalr	1720(ra) # 80004948 <_Z11stringToIntPKc>
    80003298:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    8000329c:	00005517          	auipc	a0,0x5
    800032a0:	ed450513          	addi	a0,a0,-300 # 80008170 <CONSOLE_STATUS+0x160>
    800032a4:	00001097          	auipc	ra,0x1
    800032a8:	544080e7          	jalr	1348(ra) # 800047e8 <_Z11printStringPKc>
    printInt(threadNum);
    800032ac:	00000613          	li	a2,0
    800032b0:	00a00593          	li	a1,10
    800032b4:	00098513          	mv	a0,s3
    800032b8:	00001097          	auipc	ra,0x1
    800032bc:	6e0080e7          	jalr	1760(ra) # 80004998 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800032c0:	00005517          	auipc	a0,0x5
    800032c4:	ec850513          	addi	a0,a0,-312 # 80008188 <CONSOLE_STATUS+0x178>
    800032c8:	00001097          	auipc	ra,0x1
    800032cc:	520080e7          	jalr	1312(ra) # 800047e8 <_Z11printStringPKc>
    printInt(n);
    800032d0:	00000613          	li	a2,0
    800032d4:	00a00593          	li	a1,10
    800032d8:	00048513          	mv	a0,s1
    800032dc:	00001097          	auipc	ra,0x1
    800032e0:	6bc080e7          	jalr	1724(ra) # 80004998 <_Z8printIntiii>
    printString(".\n");
    800032e4:	00005517          	auipc	a0,0x5
    800032e8:	ebc50513          	addi	a0,a0,-324 # 800081a0 <CONSOLE_STATUS+0x190>
    800032ec:	00001097          	auipc	ra,0x1
    800032f0:	4fc080e7          	jalr	1276(ra) # 800047e8 <_Z11printStringPKc>
    if (threadNum > n) {
    800032f4:	0334c463          	blt	s1,s3,8000331c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800032f8:	03305c63          	blez	s3,80003330 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800032fc:	03800513          	li	a0,56
    80003300:	ffffe097          	auipc	ra,0xffffe
    80003304:	534080e7          	jalr	1332(ra) # 80001834 <_Znwm>
    80003308:	00050a93          	mv	s5,a0
    8000330c:	00048593          	mv	a1,s1
    80003310:	00001097          	auipc	ra,0x1
    80003314:	7a8080e7          	jalr	1960(ra) # 80004ab8 <_ZN9BufferCPPC1Ei>
    80003318:	0300006f          	j	80003348 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000331c:	00005517          	auipc	a0,0x5
    80003320:	e8c50513          	addi	a0,a0,-372 # 800081a8 <CONSOLE_STATUS+0x198>
    80003324:	00001097          	auipc	ra,0x1
    80003328:	4c4080e7          	jalr	1220(ra) # 800047e8 <_Z11printStringPKc>
        return;
    8000332c:	0140006f          	j	80003340 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003330:	00005517          	auipc	a0,0x5
    80003334:	eb850513          	addi	a0,a0,-328 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80003338:	00001097          	auipc	ra,0x1
    8000333c:	4b0080e7          	jalr	1200(ra) # 800047e8 <_Z11printStringPKc>
        return;
    80003340:	000c0113          	mv	sp,s8
    80003344:	2140006f          	j	80003558 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003348:	01000513          	li	a0,16
    8000334c:	ffffe097          	auipc	ra,0xffffe
    80003350:	4e8080e7          	jalr	1256(ra) # 80001834 <_Znwm>
    80003354:	00050913          	mv	s2,a0
    80003358:	00000593          	li	a1,0
    8000335c:	ffffe097          	auipc	ra,0xffffe
    80003360:	6a0080e7          	jalr	1696(ra) # 800019fc <_ZN9SemaphoreC1Ej>
    80003364:	00007797          	auipc	a5,0x7
    80003368:	0727b223          	sd	s2,100(a5) # 8000a3c8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000336c:	00399793          	slli	a5,s3,0x3
    80003370:	00f78793          	addi	a5,a5,15
    80003374:	ff07f793          	andi	a5,a5,-16
    80003378:	40f10133          	sub	sp,sp,a5
    8000337c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003380:	0019871b          	addiw	a4,s3,1
    80003384:	00171793          	slli	a5,a4,0x1
    80003388:	00e787b3          	add	a5,a5,a4
    8000338c:	00379793          	slli	a5,a5,0x3
    80003390:	00f78793          	addi	a5,a5,15
    80003394:	ff07f793          	andi	a5,a5,-16
    80003398:	40f10133          	sub	sp,sp,a5
    8000339c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800033a0:	00199493          	slli	s1,s3,0x1
    800033a4:	013484b3          	add	s1,s1,s3
    800033a8:	00349493          	slli	s1,s1,0x3
    800033ac:	009b04b3          	add	s1,s6,s1
    800033b0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800033b4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800033b8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800033bc:	02800513          	li	a0,40
    800033c0:	ffffe097          	auipc	ra,0xffffe
    800033c4:	474080e7          	jalr	1140(ra) # 80001834 <_Znwm>
    800033c8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800033cc:	ffffe097          	auipc	ra,0xffffe
    800033d0:	5a0080e7          	jalr	1440(ra) # 8000196c <_ZN6ThreadC1Ev>
    800033d4:	00007797          	auipc	a5,0x7
    800033d8:	e8c78793          	addi	a5,a5,-372 # 8000a260 <_ZTV8Consumer+0x10>
    800033dc:	00fbb023          	sd	a5,0(s7)
    800033e0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800033e4:	000b8513          	mv	a0,s7
    800033e8:	ffffe097          	auipc	ra,0xffffe
    800033ec:	5b4080e7          	jalr	1460(ra) # 8000199c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800033f0:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800033f4:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800033f8:	00007797          	auipc	a5,0x7
    800033fc:	fd07b783          	ld	a5,-48(a5) # 8000a3c8 <_ZL10waitForAll>
    80003400:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003404:	02800513          	li	a0,40
    80003408:	ffffe097          	auipc	ra,0xffffe
    8000340c:	42c080e7          	jalr	1068(ra) # 80001834 <_Znwm>
    80003410:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003414:	ffffe097          	auipc	ra,0xffffe
    80003418:	558080e7          	jalr	1368(ra) # 8000196c <_ZN6ThreadC1Ev>
    8000341c:	00007797          	auipc	a5,0x7
    80003420:	df478793          	addi	a5,a5,-524 # 8000a210 <_ZTV16ProducerKeyborad+0x10>
    80003424:	00f4b023          	sd	a5,0(s1)
    80003428:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000342c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003430:	00048513          	mv	a0,s1
    80003434:	ffffe097          	auipc	ra,0xffffe
    80003438:	568080e7          	jalr	1384(ra) # 8000199c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000343c:	00100913          	li	s2,1
    80003440:	0300006f          	j	80003470 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003444:	00007797          	auipc	a5,0x7
    80003448:	df478793          	addi	a5,a5,-524 # 8000a238 <_ZTV8Producer+0x10>
    8000344c:	00fcb023          	sd	a5,0(s9)
    80003450:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003454:	00391793          	slli	a5,s2,0x3
    80003458:	00fa07b3          	add	a5,s4,a5
    8000345c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003460:	000c8513          	mv	a0,s9
    80003464:	ffffe097          	auipc	ra,0xffffe
    80003468:	538080e7          	jalr	1336(ra) # 8000199c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000346c:	0019091b          	addiw	s2,s2,1
    80003470:	05395263          	bge	s2,s3,800034b4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003474:	00191493          	slli	s1,s2,0x1
    80003478:	012484b3          	add	s1,s1,s2
    8000347c:	00349493          	slli	s1,s1,0x3
    80003480:	009b04b3          	add	s1,s6,s1
    80003484:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003488:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000348c:	00007797          	auipc	a5,0x7
    80003490:	f3c7b783          	ld	a5,-196(a5) # 8000a3c8 <_ZL10waitForAll>
    80003494:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003498:	02800513          	li	a0,40
    8000349c:	ffffe097          	auipc	ra,0xffffe
    800034a0:	398080e7          	jalr	920(ra) # 80001834 <_Znwm>
    800034a4:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800034a8:	ffffe097          	auipc	ra,0xffffe
    800034ac:	4c4080e7          	jalr	1220(ra) # 8000196c <_ZN6ThreadC1Ev>
    800034b0:	f95ff06f          	j	80003444 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800034b4:	ffffe097          	auipc	ra,0xffffe
    800034b8:	520080e7          	jalr	1312(ra) # 800019d4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800034bc:	00000493          	li	s1,0
    800034c0:	0099ce63          	blt	s3,s1,800034dc <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800034c4:	00007517          	auipc	a0,0x7
    800034c8:	f0453503          	ld	a0,-252(a0) # 8000a3c8 <_ZL10waitForAll>
    800034cc:	ffffe097          	auipc	ra,0xffffe
    800034d0:	568080e7          	jalr	1384(ra) # 80001a34 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800034d4:	0014849b          	addiw	s1,s1,1
    800034d8:	fe9ff06f          	j	800034c0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800034dc:	00007517          	auipc	a0,0x7
    800034e0:	eec53503          	ld	a0,-276(a0) # 8000a3c8 <_ZL10waitForAll>
    800034e4:	00050863          	beqz	a0,800034f4 <_Z20testConsumerProducerv+0x2f4>
    800034e8:	00053783          	ld	a5,0(a0)
    800034ec:	0087b783          	ld	a5,8(a5)
    800034f0:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800034f4:	00000493          	li	s1,0
    800034f8:	0080006f          	j	80003500 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800034fc:	0014849b          	addiw	s1,s1,1
    80003500:	0334d263          	bge	s1,s3,80003524 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003504:	00349793          	slli	a5,s1,0x3
    80003508:	00fa07b3          	add	a5,s4,a5
    8000350c:	0007b503          	ld	a0,0(a5)
    80003510:	fe0506e3          	beqz	a0,800034fc <_Z20testConsumerProducerv+0x2fc>
    80003514:	00053783          	ld	a5,0(a0)
    80003518:	0087b783          	ld	a5,8(a5)
    8000351c:	000780e7          	jalr	a5
    80003520:	fddff06f          	j	800034fc <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003524:	000b8a63          	beqz	s7,80003538 <_Z20testConsumerProducerv+0x338>
    80003528:	000bb783          	ld	a5,0(s7)
    8000352c:	0087b783          	ld	a5,8(a5)
    80003530:	000b8513          	mv	a0,s7
    80003534:	000780e7          	jalr	a5
    delete buffer;
    80003538:	000a8e63          	beqz	s5,80003554 <_Z20testConsumerProducerv+0x354>
    8000353c:	000a8513          	mv	a0,s5
    80003540:	00002097          	auipc	ra,0x2
    80003544:	870080e7          	jalr	-1936(ra) # 80004db0 <_ZN9BufferCPPD1Ev>
    80003548:	000a8513          	mv	a0,s5
    8000354c:	ffffe097          	auipc	ra,0xffffe
    80003550:	338080e7          	jalr	824(ra) # 80001884 <_ZdlPv>
    80003554:	000c0113          	mv	sp,s8
}
    80003558:	f8040113          	addi	sp,s0,-128
    8000355c:	07813083          	ld	ra,120(sp)
    80003560:	07013403          	ld	s0,112(sp)
    80003564:	06813483          	ld	s1,104(sp)
    80003568:	06013903          	ld	s2,96(sp)
    8000356c:	05813983          	ld	s3,88(sp)
    80003570:	05013a03          	ld	s4,80(sp)
    80003574:	04813a83          	ld	s5,72(sp)
    80003578:	04013b03          	ld	s6,64(sp)
    8000357c:	03813b83          	ld	s7,56(sp)
    80003580:	03013c03          	ld	s8,48(sp)
    80003584:	02813c83          	ld	s9,40(sp)
    80003588:	08010113          	addi	sp,sp,128
    8000358c:	00008067          	ret
    80003590:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003594:	000a8513          	mv	a0,s5
    80003598:	ffffe097          	auipc	ra,0xffffe
    8000359c:	2ec080e7          	jalr	748(ra) # 80001884 <_ZdlPv>
    800035a0:	00048513          	mv	a0,s1
    800035a4:	00008097          	auipc	ra,0x8
    800035a8:	f24080e7          	jalr	-220(ra) # 8000b4c8 <_Unwind_Resume>
    800035ac:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800035b0:	00090513          	mv	a0,s2
    800035b4:	ffffe097          	auipc	ra,0xffffe
    800035b8:	2d0080e7          	jalr	720(ra) # 80001884 <_ZdlPv>
    800035bc:	00048513          	mv	a0,s1
    800035c0:	00008097          	auipc	ra,0x8
    800035c4:	f08080e7          	jalr	-248(ra) # 8000b4c8 <_Unwind_Resume>
    800035c8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800035cc:	000b8513          	mv	a0,s7
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	2b4080e7          	jalr	692(ra) # 80001884 <_ZdlPv>
    800035d8:	00048513          	mv	a0,s1
    800035dc:	00008097          	auipc	ra,0x8
    800035e0:	eec080e7          	jalr	-276(ra) # 8000b4c8 <_Unwind_Resume>
    800035e4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800035e8:	00048513          	mv	a0,s1
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	298080e7          	jalr	664(ra) # 80001884 <_ZdlPv>
    800035f4:	00090513          	mv	a0,s2
    800035f8:	00008097          	auipc	ra,0x8
    800035fc:	ed0080e7          	jalr	-304(ra) # 8000b4c8 <_Unwind_Resume>
    80003600:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003604:	000c8513          	mv	a0,s9
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	27c080e7          	jalr	636(ra) # 80001884 <_ZdlPv>
    80003610:	00048513          	mv	a0,s1
    80003614:	00008097          	auipc	ra,0x8
    80003618:	eb4080e7          	jalr	-332(ra) # 8000b4c8 <_Unwind_Resume>

000000008000361c <_ZN8Consumer3runEv>:
    void run() override {
    8000361c:	fd010113          	addi	sp,sp,-48
    80003620:	02113423          	sd	ra,40(sp)
    80003624:	02813023          	sd	s0,32(sp)
    80003628:	00913c23          	sd	s1,24(sp)
    8000362c:	01213823          	sd	s2,16(sp)
    80003630:	01313423          	sd	s3,8(sp)
    80003634:	03010413          	addi	s0,sp,48
    80003638:	00050913          	mv	s2,a0
        int i = 0;
    8000363c:	00000993          	li	s3,0
    80003640:	0100006f          	j	80003650 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003644:	00a00513          	li	a0,10
    80003648:	ffffe097          	auipc	ra,0xffffe
    8000364c:	4e0080e7          	jalr	1248(ra) # 80001b28 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003650:	00007797          	auipc	a5,0x7
    80003654:	d707a783          	lw	a5,-656(a5) # 8000a3c0 <_ZL9threadEnd>
    80003658:	04079a63          	bnez	a5,800036ac <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    8000365c:	02093783          	ld	a5,32(s2)
    80003660:	0087b503          	ld	a0,8(a5)
    80003664:	00001097          	auipc	ra,0x1
    80003668:	638080e7          	jalr	1592(ra) # 80004c9c <_ZN9BufferCPP3getEv>
            i++;
    8000366c:	0019849b          	addiw	s1,s3,1
    80003670:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003674:	0ff57513          	andi	a0,a0,255
    80003678:	ffffe097          	auipc	ra,0xffffe
    8000367c:	4b0080e7          	jalr	1200(ra) # 80001b28 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003680:	05000793          	li	a5,80
    80003684:	02f4e4bb          	remw	s1,s1,a5
    80003688:	fc0494e3          	bnez	s1,80003650 <_ZN8Consumer3runEv+0x34>
    8000368c:	fb9ff06f          	j	80003644 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003690:	02093783          	ld	a5,32(s2)
    80003694:	0087b503          	ld	a0,8(a5)
    80003698:	00001097          	auipc	ra,0x1
    8000369c:	604080e7          	jalr	1540(ra) # 80004c9c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800036a0:	0ff57513          	andi	a0,a0,255
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	484080e7          	jalr	1156(ra) # 80001b28 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800036ac:	02093783          	ld	a5,32(s2)
    800036b0:	0087b503          	ld	a0,8(a5)
    800036b4:	00001097          	auipc	ra,0x1
    800036b8:	674080e7          	jalr	1652(ra) # 80004d28 <_ZN9BufferCPP6getCntEv>
    800036bc:	fca04ae3          	bgtz	a0,80003690 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800036c0:	02093783          	ld	a5,32(s2)
    800036c4:	0107b503          	ld	a0,16(a5)
    800036c8:	ffffe097          	auipc	ra,0xffffe
    800036cc:	398080e7          	jalr	920(ra) # 80001a60 <_ZN9Semaphore6signalEv>
    }
    800036d0:	02813083          	ld	ra,40(sp)
    800036d4:	02013403          	ld	s0,32(sp)
    800036d8:	01813483          	ld	s1,24(sp)
    800036dc:	01013903          	ld	s2,16(sp)
    800036e0:	00813983          	ld	s3,8(sp)
    800036e4:	03010113          	addi	sp,sp,48
    800036e8:	00008067          	ret

00000000800036ec <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800036ec:	ff010113          	addi	sp,sp,-16
    800036f0:	00113423          	sd	ra,8(sp)
    800036f4:	00813023          	sd	s0,0(sp)
    800036f8:	01010413          	addi	s0,sp,16
    800036fc:	00007797          	auipc	a5,0x7
    80003700:	b6478793          	addi	a5,a5,-1180 # 8000a260 <_ZTV8Consumer+0x10>
    80003704:	00f53023          	sd	a5,0(a0)
    80003708:	ffffe097          	auipc	ra,0xffffe
    8000370c:	09c080e7          	jalr	156(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80003710:	00813083          	ld	ra,8(sp)
    80003714:	00013403          	ld	s0,0(sp)
    80003718:	01010113          	addi	sp,sp,16
    8000371c:	00008067          	ret

0000000080003720 <_ZN8ConsumerD0Ev>:
    80003720:	fe010113          	addi	sp,sp,-32
    80003724:	00113c23          	sd	ra,24(sp)
    80003728:	00813823          	sd	s0,16(sp)
    8000372c:	00913423          	sd	s1,8(sp)
    80003730:	02010413          	addi	s0,sp,32
    80003734:	00050493          	mv	s1,a0
    80003738:	00007797          	auipc	a5,0x7
    8000373c:	b2878793          	addi	a5,a5,-1240 # 8000a260 <_ZTV8Consumer+0x10>
    80003740:	00f53023          	sd	a5,0(a0)
    80003744:	ffffe097          	auipc	ra,0xffffe
    80003748:	060080e7          	jalr	96(ra) # 800017a4 <_ZN6ThreadD1Ev>
    8000374c:	00048513          	mv	a0,s1
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	134080e7          	jalr	308(ra) # 80001884 <_ZdlPv>
    80003758:	01813083          	ld	ra,24(sp)
    8000375c:	01013403          	ld	s0,16(sp)
    80003760:	00813483          	ld	s1,8(sp)
    80003764:	02010113          	addi	sp,sp,32
    80003768:	00008067          	ret

000000008000376c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000376c:	ff010113          	addi	sp,sp,-16
    80003770:	00113423          	sd	ra,8(sp)
    80003774:	00813023          	sd	s0,0(sp)
    80003778:	01010413          	addi	s0,sp,16
    8000377c:	00007797          	auipc	a5,0x7
    80003780:	a9478793          	addi	a5,a5,-1388 # 8000a210 <_ZTV16ProducerKeyborad+0x10>
    80003784:	00f53023          	sd	a5,0(a0)
    80003788:	ffffe097          	auipc	ra,0xffffe
    8000378c:	01c080e7          	jalr	28(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80003790:	00813083          	ld	ra,8(sp)
    80003794:	00013403          	ld	s0,0(sp)
    80003798:	01010113          	addi	sp,sp,16
    8000379c:	00008067          	ret

00000000800037a0 <_ZN16ProducerKeyboradD0Ev>:
    800037a0:	fe010113          	addi	sp,sp,-32
    800037a4:	00113c23          	sd	ra,24(sp)
    800037a8:	00813823          	sd	s0,16(sp)
    800037ac:	00913423          	sd	s1,8(sp)
    800037b0:	02010413          	addi	s0,sp,32
    800037b4:	00050493          	mv	s1,a0
    800037b8:	00007797          	auipc	a5,0x7
    800037bc:	a5878793          	addi	a5,a5,-1448 # 8000a210 <_ZTV16ProducerKeyborad+0x10>
    800037c0:	00f53023          	sd	a5,0(a0)
    800037c4:	ffffe097          	auipc	ra,0xffffe
    800037c8:	fe0080e7          	jalr	-32(ra) # 800017a4 <_ZN6ThreadD1Ev>
    800037cc:	00048513          	mv	a0,s1
    800037d0:	ffffe097          	auipc	ra,0xffffe
    800037d4:	0b4080e7          	jalr	180(ra) # 80001884 <_ZdlPv>
    800037d8:	01813083          	ld	ra,24(sp)
    800037dc:	01013403          	ld	s0,16(sp)
    800037e0:	00813483          	ld	s1,8(sp)
    800037e4:	02010113          	addi	sp,sp,32
    800037e8:	00008067          	ret

00000000800037ec <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800037ec:	ff010113          	addi	sp,sp,-16
    800037f0:	00113423          	sd	ra,8(sp)
    800037f4:	00813023          	sd	s0,0(sp)
    800037f8:	01010413          	addi	s0,sp,16
    800037fc:	00007797          	auipc	a5,0x7
    80003800:	a3c78793          	addi	a5,a5,-1476 # 8000a238 <_ZTV8Producer+0x10>
    80003804:	00f53023          	sd	a5,0(a0)
    80003808:	ffffe097          	auipc	ra,0xffffe
    8000380c:	f9c080e7          	jalr	-100(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80003810:	00813083          	ld	ra,8(sp)
    80003814:	00013403          	ld	s0,0(sp)
    80003818:	01010113          	addi	sp,sp,16
    8000381c:	00008067          	ret

0000000080003820 <_ZN8ProducerD0Ev>:
    80003820:	fe010113          	addi	sp,sp,-32
    80003824:	00113c23          	sd	ra,24(sp)
    80003828:	00813823          	sd	s0,16(sp)
    8000382c:	00913423          	sd	s1,8(sp)
    80003830:	02010413          	addi	s0,sp,32
    80003834:	00050493          	mv	s1,a0
    80003838:	00007797          	auipc	a5,0x7
    8000383c:	a0078793          	addi	a5,a5,-1536 # 8000a238 <_ZTV8Producer+0x10>
    80003840:	00f53023          	sd	a5,0(a0)
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	f60080e7          	jalr	-160(ra) # 800017a4 <_ZN6ThreadD1Ev>
    8000384c:	00048513          	mv	a0,s1
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	034080e7          	jalr	52(ra) # 80001884 <_ZdlPv>
    80003858:	01813083          	ld	ra,24(sp)
    8000385c:	01013403          	ld	s0,16(sp)
    80003860:	00813483          	ld	s1,8(sp)
    80003864:	02010113          	addi	sp,sp,32
    80003868:	00008067          	ret

000000008000386c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    8000386c:	fe010113          	addi	sp,sp,-32
    80003870:	00113c23          	sd	ra,24(sp)
    80003874:	00813823          	sd	s0,16(sp)
    80003878:	00913423          	sd	s1,8(sp)
    8000387c:	02010413          	addi	s0,sp,32
    80003880:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	c00080e7          	jalr	-1024(ra) # 80001484 <_Z4getcv>
    8000388c:	0005059b          	sext.w	a1,a0
    80003890:	01b00793          	li	a5,27
    80003894:	00f58c63          	beq	a1,a5,800038ac <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003898:	0204b783          	ld	a5,32(s1)
    8000389c:	0087b503          	ld	a0,8(a5)
    800038a0:	00001097          	auipc	ra,0x1
    800038a4:	36c080e7          	jalr	876(ra) # 80004c0c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800038a8:	fddff06f          	j	80003884 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800038ac:	00100793          	li	a5,1
    800038b0:	00007717          	auipc	a4,0x7
    800038b4:	b0f72823          	sw	a5,-1264(a4) # 8000a3c0 <_ZL9threadEnd>
        td->buffer->put('!');
    800038b8:	0204b783          	ld	a5,32(s1)
    800038bc:	02100593          	li	a1,33
    800038c0:	0087b503          	ld	a0,8(a5)
    800038c4:	00001097          	auipc	ra,0x1
    800038c8:	348080e7          	jalr	840(ra) # 80004c0c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800038cc:	0204b783          	ld	a5,32(s1)
    800038d0:	0107b503          	ld	a0,16(a5)
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	18c080e7          	jalr	396(ra) # 80001a60 <_ZN9Semaphore6signalEv>
    }
    800038dc:	01813083          	ld	ra,24(sp)
    800038e0:	01013403          	ld	s0,16(sp)
    800038e4:	00813483          	ld	s1,8(sp)
    800038e8:	02010113          	addi	sp,sp,32
    800038ec:	00008067          	ret

00000000800038f0 <_ZN8Producer3runEv>:
    void run() override {
    800038f0:	fe010113          	addi	sp,sp,-32
    800038f4:	00113c23          	sd	ra,24(sp)
    800038f8:	00813823          	sd	s0,16(sp)
    800038fc:	00913423          	sd	s1,8(sp)
    80003900:	01213023          	sd	s2,0(sp)
    80003904:	02010413          	addi	s0,sp,32
    80003908:	00050493          	mv	s1,a0
        int i = 0;
    8000390c:	00000913          	li	s2,0
        while (!threadEnd) {
    80003910:	00007797          	auipc	a5,0x7
    80003914:	ab07a783          	lw	a5,-1360(a5) # 8000a3c0 <_ZL9threadEnd>
    80003918:	04079263          	bnez	a5,8000395c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    8000391c:	0204b783          	ld	a5,32(s1)
    80003920:	0007a583          	lw	a1,0(a5)
    80003924:	0305859b          	addiw	a1,a1,48
    80003928:	0087b503          	ld	a0,8(a5)
    8000392c:	00001097          	auipc	ra,0x1
    80003930:	2e0080e7          	jalr	736(ra) # 80004c0c <_ZN9BufferCPP3putEi>
            i++;
    80003934:	0019071b          	addiw	a4,s2,1
    80003938:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    8000393c:	0204b783          	ld	a5,32(s1)
    80003940:	0007a783          	lw	a5,0(a5)
    80003944:	00e787bb          	addw	a5,a5,a4
    80003948:	00500513          	li	a0,5
    8000394c:	02a7e53b          	remw	a0,a5,a0
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	194080e7          	jalr	404(ra) # 80001ae4 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003958:	fb9ff06f          	j	80003910 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    8000395c:	0204b783          	ld	a5,32(s1)
    80003960:	0107b503          	ld	a0,16(a5)
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	0fc080e7          	jalr	252(ra) # 80001a60 <_ZN9Semaphore6signalEv>
    }
    8000396c:	01813083          	ld	ra,24(sp)
    80003970:	01013403          	ld	s0,16(sp)
    80003974:	00813483          	ld	s1,8(sp)
    80003978:	00013903          	ld	s2,0(sp)
    8000397c:	02010113          	addi	sp,sp,32
    80003980:	00008067          	ret

0000000080003984 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003984:	fe010113          	addi	sp,sp,-32
    80003988:	00113c23          	sd	ra,24(sp)
    8000398c:	00813823          	sd	s0,16(sp)
    80003990:	00913423          	sd	s1,8(sp)
    80003994:	01213023          	sd	s2,0(sp)
    80003998:	02010413          	addi	s0,sp,32
    8000399c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800039a0:	00100793          	li	a5,1
    800039a4:	02a7f863          	bgeu	a5,a0,800039d4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800039a8:	00a00793          	li	a5,10
    800039ac:	02f577b3          	remu	a5,a0,a5
    800039b0:	02078e63          	beqz	a5,800039ec <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800039b4:	fff48513          	addi	a0,s1,-1
    800039b8:	00000097          	auipc	ra,0x0
    800039bc:	fcc080e7          	jalr	-52(ra) # 80003984 <_ZL9fibonaccim>
    800039c0:	00050913          	mv	s2,a0
    800039c4:	ffe48513          	addi	a0,s1,-2
    800039c8:	00000097          	auipc	ra,0x0
    800039cc:	fbc080e7          	jalr	-68(ra) # 80003984 <_ZL9fibonaccim>
    800039d0:	00a90533          	add	a0,s2,a0
}
    800039d4:	01813083          	ld	ra,24(sp)
    800039d8:	01013403          	ld	s0,16(sp)
    800039dc:	00813483          	ld	s1,8(sp)
    800039e0:	00013903          	ld	s2,0(sp)
    800039e4:	02010113          	addi	sp,sp,32
    800039e8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	874080e7          	jalr	-1932(ra) # 80001260 <_Z15thread_dispatchv>
    800039f4:	fc1ff06f          	j	800039b4 <_ZL9fibonaccim+0x30>

00000000800039f8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800039f8:	fe010113          	addi	sp,sp,-32
    800039fc:	00113c23          	sd	ra,24(sp)
    80003a00:	00813823          	sd	s0,16(sp)
    80003a04:	00913423          	sd	s1,8(sp)
    80003a08:	01213023          	sd	s2,0(sp)
    80003a0c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003a10:	00a00493          	li	s1,10
    80003a14:	0400006f          	j	80003a54 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003a18:	00005517          	auipc	a0,0x5
    80003a1c:	86050513          	addi	a0,a0,-1952 # 80008278 <CONSOLE_STATUS+0x268>
    80003a20:	00001097          	auipc	ra,0x1
    80003a24:	dc8080e7          	jalr	-568(ra) # 800047e8 <_Z11printStringPKc>
    80003a28:	00000613          	li	a2,0
    80003a2c:	00a00593          	li	a1,10
    80003a30:	00048513          	mv	a0,s1
    80003a34:	00001097          	auipc	ra,0x1
    80003a38:	f64080e7          	jalr	-156(ra) # 80004998 <_Z8printIntiii>
    80003a3c:	00005517          	auipc	a0,0x5
    80003a40:	a2c50513          	addi	a0,a0,-1492 # 80008468 <CONSOLE_STATUS+0x458>
    80003a44:	00001097          	auipc	ra,0x1
    80003a48:	da4080e7          	jalr	-604(ra) # 800047e8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003a4c:	0014849b          	addiw	s1,s1,1
    80003a50:	0ff4f493          	andi	s1,s1,255
    80003a54:	00c00793          	li	a5,12
    80003a58:	fc97f0e3          	bgeu	a5,s1,80003a18 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003a5c:	00005517          	auipc	a0,0x5
    80003a60:	82450513          	addi	a0,a0,-2012 # 80008280 <CONSOLE_STATUS+0x270>
    80003a64:	00001097          	auipc	ra,0x1
    80003a68:	d84080e7          	jalr	-636(ra) # 800047e8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003a6c:	00500313          	li	t1,5
    thread_dispatch();
    80003a70:	ffffd097          	auipc	ra,0xffffd
    80003a74:	7f0080e7          	jalr	2032(ra) # 80001260 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003a78:	01000513          	li	a0,16
    80003a7c:	00000097          	auipc	ra,0x0
    80003a80:	f08080e7          	jalr	-248(ra) # 80003984 <_ZL9fibonaccim>
    80003a84:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003a88:	00005517          	auipc	a0,0x5
    80003a8c:	80850513          	addi	a0,a0,-2040 # 80008290 <CONSOLE_STATUS+0x280>
    80003a90:	00001097          	auipc	ra,0x1
    80003a94:	d58080e7          	jalr	-680(ra) # 800047e8 <_Z11printStringPKc>
    80003a98:	00000613          	li	a2,0
    80003a9c:	00a00593          	li	a1,10
    80003aa0:	0009051b          	sext.w	a0,s2
    80003aa4:	00001097          	auipc	ra,0x1
    80003aa8:	ef4080e7          	jalr	-268(ra) # 80004998 <_Z8printIntiii>
    80003aac:	00005517          	auipc	a0,0x5
    80003ab0:	9bc50513          	addi	a0,a0,-1604 # 80008468 <CONSOLE_STATUS+0x458>
    80003ab4:	00001097          	auipc	ra,0x1
    80003ab8:	d34080e7          	jalr	-716(ra) # 800047e8 <_Z11printStringPKc>
    80003abc:	0400006f          	j	80003afc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ac0:	00004517          	auipc	a0,0x4
    80003ac4:	7b850513          	addi	a0,a0,1976 # 80008278 <CONSOLE_STATUS+0x268>
    80003ac8:	00001097          	auipc	ra,0x1
    80003acc:	d20080e7          	jalr	-736(ra) # 800047e8 <_Z11printStringPKc>
    80003ad0:	00000613          	li	a2,0
    80003ad4:	00a00593          	li	a1,10
    80003ad8:	00048513          	mv	a0,s1
    80003adc:	00001097          	auipc	ra,0x1
    80003ae0:	ebc080e7          	jalr	-324(ra) # 80004998 <_Z8printIntiii>
    80003ae4:	00005517          	auipc	a0,0x5
    80003ae8:	98450513          	addi	a0,a0,-1660 # 80008468 <CONSOLE_STATUS+0x458>
    80003aec:	00001097          	auipc	ra,0x1
    80003af0:	cfc080e7          	jalr	-772(ra) # 800047e8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003af4:	0014849b          	addiw	s1,s1,1
    80003af8:	0ff4f493          	andi	s1,s1,255
    80003afc:	00f00793          	li	a5,15
    80003b00:	fc97f0e3          	bgeu	a5,s1,80003ac0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003b04:	00004517          	auipc	a0,0x4
    80003b08:	79c50513          	addi	a0,a0,1948 # 800082a0 <CONSOLE_STATUS+0x290>
    80003b0c:	00001097          	auipc	ra,0x1
    80003b10:	cdc080e7          	jalr	-804(ra) # 800047e8 <_Z11printStringPKc>
    finishedD = true;
    80003b14:	00100793          	li	a5,1
    80003b18:	00007717          	auipc	a4,0x7
    80003b1c:	8af70c23          	sb	a5,-1864(a4) # 8000a3d0 <_ZL9finishedD>
    thread_dispatch();
    80003b20:	ffffd097          	auipc	ra,0xffffd
    80003b24:	740080e7          	jalr	1856(ra) # 80001260 <_Z15thread_dispatchv>
}
    80003b28:	01813083          	ld	ra,24(sp)
    80003b2c:	01013403          	ld	s0,16(sp)
    80003b30:	00813483          	ld	s1,8(sp)
    80003b34:	00013903          	ld	s2,0(sp)
    80003b38:	02010113          	addi	sp,sp,32
    80003b3c:	00008067          	ret

0000000080003b40 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003b40:	fe010113          	addi	sp,sp,-32
    80003b44:	00113c23          	sd	ra,24(sp)
    80003b48:	00813823          	sd	s0,16(sp)
    80003b4c:	00913423          	sd	s1,8(sp)
    80003b50:	01213023          	sd	s2,0(sp)
    80003b54:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003b58:	00000493          	li	s1,0
    80003b5c:	0400006f          	j	80003b9c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003b60:	00004517          	auipc	a0,0x4
    80003b64:	6e850513          	addi	a0,a0,1768 # 80008248 <CONSOLE_STATUS+0x238>
    80003b68:	00001097          	auipc	ra,0x1
    80003b6c:	c80080e7          	jalr	-896(ra) # 800047e8 <_Z11printStringPKc>
    80003b70:	00000613          	li	a2,0
    80003b74:	00a00593          	li	a1,10
    80003b78:	00048513          	mv	a0,s1
    80003b7c:	00001097          	auipc	ra,0x1
    80003b80:	e1c080e7          	jalr	-484(ra) # 80004998 <_Z8printIntiii>
    80003b84:	00005517          	auipc	a0,0x5
    80003b88:	8e450513          	addi	a0,a0,-1820 # 80008468 <CONSOLE_STATUS+0x458>
    80003b8c:	00001097          	auipc	ra,0x1
    80003b90:	c5c080e7          	jalr	-932(ra) # 800047e8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003b94:	0014849b          	addiw	s1,s1,1
    80003b98:	0ff4f493          	andi	s1,s1,255
    80003b9c:	00200793          	li	a5,2
    80003ba0:	fc97f0e3          	bgeu	a5,s1,80003b60 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003ba4:	00004517          	auipc	a0,0x4
    80003ba8:	6ac50513          	addi	a0,a0,1708 # 80008250 <CONSOLE_STATUS+0x240>
    80003bac:	00001097          	auipc	ra,0x1
    80003bb0:	c3c080e7          	jalr	-964(ra) # 800047e8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003bb4:	00700313          	li	t1,7
    thread_dispatch();
    80003bb8:	ffffd097          	auipc	ra,0xffffd
    80003bbc:	6a8080e7          	jalr	1704(ra) # 80001260 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003bc0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003bc4:	00004517          	auipc	a0,0x4
    80003bc8:	69c50513          	addi	a0,a0,1692 # 80008260 <CONSOLE_STATUS+0x250>
    80003bcc:	00001097          	auipc	ra,0x1
    80003bd0:	c1c080e7          	jalr	-996(ra) # 800047e8 <_Z11printStringPKc>
    80003bd4:	00000613          	li	a2,0
    80003bd8:	00a00593          	li	a1,10
    80003bdc:	0009051b          	sext.w	a0,s2
    80003be0:	00001097          	auipc	ra,0x1
    80003be4:	db8080e7          	jalr	-584(ra) # 80004998 <_Z8printIntiii>
    80003be8:	00005517          	auipc	a0,0x5
    80003bec:	88050513          	addi	a0,a0,-1920 # 80008468 <CONSOLE_STATUS+0x458>
    80003bf0:	00001097          	auipc	ra,0x1
    80003bf4:	bf8080e7          	jalr	-1032(ra) # 800047e8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003bf8:	00c00513          	li	a0,12
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	d88080e7          	jalr	-632(ra) # 80003984 <_ZL9fibonaccim>
    80003c04:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003c08:	00004517          	auipc	a0,0x4
    80003c0c:	66050513          	addi	a0,a0,1632 # 80008268 <CONSOLE_STATUS+0x258>
    80003c10:	00001097          	auipc	ra,0x1
    80003c14:	bd8080e7          	jalr	-1064(ra) # 800047e8 <_Z11printStringPKc>
    80003c18:	00000613          	li	a2,0
    80003c1c:	00a00593          	li	a1,10
    80003c20:	0009051b          	sext.w	a0,s2
    80003c24:	00001097          	auipc	ra,0x1
    80003c28:	d74080e7          	jalr	-652(ra) # 80004998 <_Z8printIntiii>
    80003c2c:	00005517          	auipc	a0,0x5
    80003c30:	83c50513          	addi	a0,a0,-1988 # 80008468 <CONSOLE_STATUS+0x458>
    80003c34:	00001097          	auipc	ra,0x1
    80003c38:	bb4080e7          	jalr	-1100(ra) # 800047e8 <_Z11printStringPKc>
    80003c3c:	0400006f          	j	80003c7c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003c40:	00004517          	auipc	a0,0x4
    80003c44:	60850513          	addi	a0,a0,1544 # 80008248 <CONSOLE_STATUS+0x238>
    80003c48:	00001097          	auipc	ra,0x1
    80003c4c:	ba0080e7          	jalr	-1120(ra) # 800047e8 <_Z11printStringPKc>
    80003c50:	00000613          	li	a2,0
    80003c54:	00a00593          	li	a1,10
    80003c58:	00048513          	mv	a0,s1
    80003c5c:	00001097          	auipc	ra,0x1
    80003c60:	d3c080e7          	jalr	-708(ra) # 80004998 <_Z8printIntiii>
    80003c64:	00005517          	auipc	a0,0x5
    80003c68:	80450513          	addi	a0,a0,-2044 # 80008468 <CONSOLE_STATUS+0x458>
    80003c6c:	00001097          	auipc	ra,0x1
    80003c70:	b7c080e7          	jalr	-1156(ra) # 800047e8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003c74:	0014849b          	addiw	s1,s1,1
    80003c78:	0ff4f493          	andi	s1,s1,255
    80003c7c:	00500793          	li	a5,5
    80003c80:	fc97f0e3          	bgeu	a5,s1,80003c40 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003c84:	00004517          	auipc	a0,0x4
    80003c88:	59c50513          	addi	a0,a0,1436 # 80008220 <CONSOLE_STATUS+0x210>
    80003c8c:	00001097          	auipc	ra,0x1
    80003c90:	b5c080e7          	jalr	-1188(ra) # 800047e8 <_Z11printStringPKc>
    finishedC = true;
    80003c94:	00100793          	li	a5,1
    80003c98:	00006717          	auipc	a4,0x6
    80003c9c:	72f70ca3          	sb	a5,1849(a4) # 8000a3d1 <_ZL9finishedC>
    thread_dispatch();
    80003ca0:	ffffd097          	auipc	ra,0xffffd
    80003ca4:	5c0080e7          	jalr	1472(ra) # 80001260 <_Z15thread_dispatchv>
}
    80003ca8:	01813083          	ld	ra,24(sp)
    80003cac:	01013403          	ld	s0,16(sp)
    80003cb0:	00813483          	ld	s1,8(sp)
    80003cb4:	00013903          	ld	s2,0(sp)
    80003cb8:	02010113          	addi	sp,sp,32
    80003cbc:	00008067          	ret

0000000080003cc0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003cc0:	fe010113          	addi	sp,sp,-32
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00813823          	sd	s0,16(sp)
    80003ccc:	00913423          	sd	s1,8(sp)
    80003cd0:	01213023          	sd	s2,0(sp)
    80003cd4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003cd8:	00000913          	li	s2,0
    80003cdc:	0380006f          	j	80003d14 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003ce0:	ffffd097          	auipc	ra,0xffffd
    80003ce4:	580080e7          	jalr	1408(ra) # 80001260 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003ce8:	00148493          	addi	s1,s1,1
    80003cec:	000027b7          	lui	a5,0x2
    80003cf0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003cf4:	0097ee63          	bltu	a5,s1,80003d10 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003cf8:	00000713          	li	a4,0
    80003cfc:	000077b7          	lui	a5,0x7
    80003d00:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d04:	fce7eee3          	bltu	a5,a4,80003ce0 <_ZL11workerBodyBPv+0x20>
    80003d08:	00170713          	addi	a4,a4,1
    80003d0c:	ff1ff06f          	j	80003cfc <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003d10:	00190913          	addi	s2,s2,1
    80003d14:	00f00793          	li	a5,15
    80003d18:	0527e063          	bltu	a5,s2,80003d58 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003d1c:	00004517          	auipc	a0,0x4
    80003d20:	51450513          	addi	a0,a0,1300 # 80008230 <CONSOLE_STATUS+0x220>
    80003d24:	00001097          	auipc	ra,0x1
    80003d28:	ac4080e7          	jalr	-1340(ra) # 800047e8 <_Z11printStringPKc>
    80003d2c:	00000613          	li	a2,0
    80003d30:	00a00593          	li	a1,10
    80003d34:	0009051b          	sext.w	a0,s2
    80003d38:	00001097          	auipc	ra,0x1
    80003d3c:	c60080e7          	jalr	-928(ra) # 80004998 <_Z8printIntiii>
    80003d40:	00004517          	auipc	a0,0x4
    80003d44:	72850513          	addi	a0,a0,1832 # 80008468 <CONSOLE_STATUS+0x458>
    80003d48:	00001097          	auipc	ra,0x1
    80003d4c:	aa0080e7          	jalr	-1376(ra) # 800047e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003d50:	00000493          	li	s1,0
    80003d54:	f99ff06f          	j	80003cec <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003d58:	00004517          	auipc	a0,0x4
    80003d5c:	4e050513          	addi	a0,a0,1248 # 80008238 <CONSOLE_STATUS+0x228>
    80003d60:	00001097          	auipc	ra,0x1
    80003d64:	a88080e7          	jalr	-1400(ra) # 800047e8 <_Z11printStringPKc>
    finishedB = true;
    80003d68:	00100793          	li	a5,1
    80003d6c:	00006717          	auipc	a4,0x6
    80003d70:	66f70323          	sb	a5,1638(a4) # 8000a3d2 <_ZL9finishedB>
    thread_dispatch();
    80003d74:	ffffd097          	auipc	ra,0xffffd
    80003d78:	4ec080e7          	jalr	1260(ra) # 80001260 <_Z15thread_dispatchv>
}
    80003d7c:	01813083          	ld	ra,24(sp)
    80003d80:	01013403          	ld	s0,16(sp)
    80003d84:	00813483          	ld	s1,8(sp)
    80003d88:	00013903          	ld	s2,0(sp)
    80003d8c:	02010113          	addi	sp,sp,32
    80003d90:	00008067          	ret

0000000080003d94 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003d94:	fe010113          	addi	sp,sp,-32
    80003d98:	00113c23          	sd	ra,24(sp)
    80003d9c:	00813823          	sd	s0,16(sp)
    80003da0:	00913423          	sd	s1,8(sp)
    80003da4:	01213023          	sd	s2,0(sp)
    80003da8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003dac:	00000913          	li	s2,0
    80003db0:	0380006f          	j	80003de8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003db4:	ffffd097          	auipc	ra,0xffffd
    80003db8:	4ac080e7          	jalr	1196(ra) # 80001260 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003dbc:	00148493          	addi	s1,s1,1
    80003dc0:	000027b7          	lui	a5,0x2
    80003dc4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003dc8:	0097ee63          	bltu	a5,s1,80003de4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003dcc:	00000713          	li	a4,0
    80003dd0:	000077b7          	lui	a5,0x7
    80003dd4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003dd8:	fce7eee3          	bltu	a5,a4,80003db4 <_ZL11workerBodyAPv+0x20>
    80003ddc:	00170713          	addi	a4,a4,1
    80003de0:	ff1ff06f          	j	80003dd0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003de4:	00190913          	addi	s2,s2,1
    80003de8:	00900793          	li	a5,9
    80003dec:	0527e063          	bltu	a5,s2,80003e2c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003df0:	00004517          	auipc	a0,0x4
    80003df4:	42850513          	addi	a0,a0,1064 # 80008218 <CONSOLE_STATUS+0x208>
    80003df8:	00001097          	auipc	ra,0x1
    80003dfc:	9f0080e7          	jalr	-1552(ra) # 800047e8 <_Z11printStringPKc>
    80003e00:	00000613          	li	a2,0
    80003e04:	00a00593          	li	a1,10
    80003e08:	0009051b          	sext.w	a0,s2
    80003e0c:	00001097          	auipc	ra,0x1
    80003e10:	b8c080e7          	jalr	-1140(ra) # 80004998 <_Z8printIntiii>
    80003e14:	00004517          	auipc	a0,0x4
    80003e18:	65450513          	addi	a0,a0,1620 # 80008468 <CONSOLE_STATUS+0x458>
    80003e1c:	00001097          	auipc	ra,0x1
    80003e20:	9cc080e7          	jalr	-1588(ra) # 800047e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e24:	00000493          	li	s1,0
    80003e28:	f99ff06f          	j	80003dc0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003e2c:	00004517          	auipc	a0,0x4
    80003e30:	3f450513          	addi	a0,a0,1012 # 80008220 <CONSOLE_STATUS+0x210>
    80003e34:	00001097          	auipc	ra,0x1
    80003e38:	9b4080e7          	jalr	-1612(ra) # 800047e8 <_Z11printStringPKc>
    finishedA = true;
    80003e3c:	00100793          	li	a5,1
    80003e40:	00006717          	auipc	a4,0x6
    80003e44:	58f709a3          	sb	a5,1427(a4) # 8000a3d3 <_ZL9finishedA>
}
    80003e48:	01813083          	ld	ra,24(sp)
    80003e4c:	01013403          	ld	s0,16(sp)
    80003e50:	00813483          	ld	s1,8(sp)
    80003e54:	00013903          	ld	s2,0(sp)
    80003e58:	02010113          	addi	sp,sp,32
    80003e5c:	00008067          	ret

0000000080003e60 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003e60:	fd010113          	addi	sp,sp,-48
    80003e64:	02113423          	sd	ra,40(sp)
    80003e68:	02813023          	sd	s0,32(sp)
    80003e6c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003e70:	00000613          	li	a2,0
    80003e74:	00000597          	auipc	a1,0x0
    80003e78:	f2058593          	addi	a1,a1,-224 # 80003d94 <_ZL11workerBodyAPv>
    80003e7c:	fd040513          	addi	a0,s0,-48
    80003e80:	ffffd097          	auipc	ra,0xffffd
    80003e84:	350080e7          	jalr	848(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80003e88:	00004517          	auipc	a0,0x4
    80003e8c:	42850513          	addi	a0,a0,1064 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80003e90:	00001097          	auipc	ra,0x1
    80003e94:	958080e7          	jalr	-1704(ra) # 800047e8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003e98:	00000613          	li	a2,0
    80003e9c:	00000597          	auipc	a1,0x0
    80003ea0:	e2458593          	addi	a1,a1,-476 # 80003cc0 <_ZL11workerBodyBPv>
    80003ea4:	fd840513          	addi	a0,s0,-40
    80003ea8:	ffffd097          	auipc	ra,0xffffd
    80003eac:	328080e7          	jalr	808(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003eb0:	00004517          	auipc	a0,0x4
    80003eb4:	41850513          	addi	a0,a0,1048 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80003eb8:	00001097          	auipc	ra,0x1
    80003ebc:	930080e7          	jalr	-1744(ra) # 800047e8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003ec0:	00000613          	li	a2,0
    80003ec4:	00000597          	auipc	a1,0x0
    80003ec8:	c7c58593          	addi	a1,a1,-900 # 80003b40 <_ZL11workerBodyCPv>
    80003ecc:	fe040513          	addi	a0,s0,-32
    80003ed0:	ffffd097          	auipc	ra,0xffffd
    80003ed4:	300080e7          	jalr	768(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80003ed8:	00004517          	auipc	a0,0x4
    80003edc:	40850513          	addi	a0,a0,1032 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80003ee0:	00001097          	auipc	ra,0x1
    80003ee4:	908080e7          	jalr	-1784(ra) # 800047e8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003ee8:	00000613          	li	a2,0
    80003eec:	00000597          	auipc	a1,0x0
    80003ef0:	b0c58593          	addi	a1,a1,-1268 # 800039f8 <_ZL11workerBodyDPv>
    80003ef4:	fe840513          	addi	a0,s0,-24
    80003ef8:	ffffd097          	auipc	ra,0xffffd
    80003efc:	2d8080e7          	jalr	728(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80003f00:	00004517          	auipc	a0,0x4
    80003f04:	3f850513          	addi	a0,a0,1016 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80003f08:	00001097          	auipc	ra,0x1
    80003f0c:	8e0080e7          	jalr	-1824(ra) # 800047e8 <_Z11printStringPKc>
    80003f10:	00c0006f          	j	80003f1c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003f14:	ffffd097          	auipc	ra,0xffffd
    80003f18:	34c080e7          	jalr	844(ra) # 80001260 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003f1c:	00006797          	auipc	a5,0x6
    80003f20:	4b77c783          	lbu	a5,1207(a5) # 8000a3d3 <_ZL9finishedA>
    80003f24:	fe0788e3          	beqz	a5,80003f14 <_Z18Threads_C_API_testv+0xb4>
    80003f28:	00006797          	auipc	a5,0x6
    80003f2c:	4aa7c783          	lbu	a5,1194(a5) # 8000a3d2 <_ZL9finishedB>
    80003f30:	fe0782e3          	beqz	a5,80003f14 <_Z18Threads_C_API_testv+0xb4>
    80003f34:	00006797          	auipc	a5,0x6
    80003f38:	49d7c783          	lbu	a5,1181(a5) # 8000a3d1 <_ZL9finishedC>
    80003f3c:	fc078ce3          	beqz	a5,80003f14 <_Z18Threads_C_API_testv+0xb4>
    80003f40:	00006797          	auipc	a5,0x6
    80003f44:	4907c783          	lbu	a5,1168(a5) # 8000a3d0 <_ZL9finishedD>
    80003f48:	fc0786e3          	beqz	a5,80003f14 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003f4c:	02813083          	ld	ra,40(sp)
    80003f50:	02013403          	ld	s0,32(sp)
    80003f54:	03010113          	addi	sp,sp,48
    80003f58:	00008067          	ret

0000000080003f5c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003f5c:	fd010113          	addi	sp,sp,-48
    80003f60:	02113423          	sd	ra,40(sp)
    80003f64:	02813023          	sd	s0,32(sp)
    80003f68:	00913c23          	sd	s1,24(sp)
    80003f6c:	01213823          	sd	s2,16(sp)
    80003f70:	01313423          	sd	s3,8(sp)
    80003f74:	03010413          	addi	s0,sp,48
    80003f78:	00050993          	mv	s3,a0
    80003f7c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003f80:	00000913          	li	s2,0
    80003f84:	00c0006f          	j	80003f90 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003f88:	ffffe097          	auipc	ra,0xffffe
    80003f8c:	a4c080e7          	jalr	-1460(ra) # 800019d4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80003f90:	ffffd097          	auipc	ra,0xffffd
    80003f94:	4f4080e7          	jalr	1268(ra) # 80001484 <_Z4getcv>
    80003f98:	0005059b          	sext.w	a1,a0
    80003f9c:	01b00793          	li	a5,27
    80003fa0:	02f58a63          	beq	a1,a5,80003fd4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80003fa4:	0084b503          	ld	a0,8(s1)
    80003fa8:	00001097          	auipc	ra,0x1
    80003fac:	c64080e7          	jalr	-924(ra) # 80004c0c <_ZN9BufferCPP3putEi>
        i++;
    80003fb0:	0019071b          	addiw	a4,s2,1
    80003fb4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003fb8:	0004a683          	lw	a3,0(s1)
    80003fbc:	0026979b          	slliw	a5,a3,0x2
    80003fc0:	00d787bb          	addw	a5,a5,a3
    80003fc4:	0017979b          	slliw	a5,a5,0x1
    80003fc8:	02f767bb          	remw	a5,a4,a5
    80003fcc:	fc0792e3          	bnez	a5,80003f90 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80003fd0:	fb9ff06f          	j	80003f88 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80003fd4:	00100793          	li	a5,1
    80003fd8:	00006717          	auipc	a4,0x6
    80003fdc:	40f72023          	sw	a5,1024(a4) # 8000a3d8 <_ZL9threadEnd>
    td->buffer->put('!');
    80003fe0:	0209b783          	ld	a5,32(s3)
    80003fe4:	02100593          	li	a1,33
    80003fe8:	0087b503          	ld	a0,8(a5)
    80003fec:	00001097          	auipc	ra,0x1
    80003ff0:	c20080e7          	jalr	-992(ra) # 80004c0c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80003ff4:	0104b503          	ld	a0,16(s1)
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	a68080e7          	jalr	-1432(ra) # 80001a60 <_ZN9Semaphore6signalEv>
}
    80004000:	02813083          	ld	ra,40(sp)
    80004004:	02013403          	ld	s0,32(sp)
    80004008:	01813483          	ld	s1,24(sp)
    8000400c:	01013903          	ld	s2,16(sp)
    80004010:	00813983          	ld	s3,8(sp)
    80004014:	03010113          	addi	sp,sp,48
    80004018:	00008067          	ret

000000008000401c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000401c:	fe010113          	addi	sp,sp,-32
    80004020:	00113c23          	sd	ra,24(sp)
    80004024:	00813823          	sd	s0,16(sp)
    80004028:	00913423          	sd	s1,8(sp)
    8000402c:	01213023          	sd	s2,0(sp)
    80004030:	02010413          	addi	s0,sp,32
    80004034:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004038:	00000913          	li	s2,0
    8000403c:	00c0006f          	j	80004048 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004040:	ffffe097          	auipc	ra,0xffffe
    80004044:	994080e7          	jalr	-1644(ra) # 800019d4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004048:	00006797          	auipc	a5,0x6
    8000404c:	3907a783          	lw	a5,912(a5) # 8000a3d8 <_ZL9threadEnd>
    80004050:	02079e63          	bnez	a5,8000408c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004054:	0004a583          	lw	a1,0(s1)
    80004058:	0305859b          	addiw	a1,a1,48
    8000405c:	0084b503          	ld	a0,8(s1)
    80004060:	00001097          	auipc	ra,0x1
    80004064:	bac080e7          	jalr	-1108(ra) # 80004c0c <_ZN9BufferCPP3putEi>
        i++;
    80004068:	0019071b          	addiw	a4,s2,1
    8000406c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004070:	0004a683          	lw	a3,0(s1)
    80004074:	0026979b          	slliw	a5,a3,0x2
    80004078:	00d787bb          	addw	a5,a5,a3
    8000407c:	0017979b          	slliw	a5,a5,0x1
    80004080:	02f767bb          	remw	a5,a4,a5
    80004084:	fc0792e3          	bnez	a5,80004048 <_ZN12ProducerSync8producerEPv+0x2c>
    80004088:	fb9ff06f          	j	80004040 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000408c:	0104b503          	ld	a0,16(s1)
    80004090:	ffffe097          	auipc	ra,0xffffe
    80004094:	9d0080e7          	jalr	-1584(ra) # 80001a60 <_ZN9Semaphore6signalEv>
}
    80004098:	01813083          	ld	ra,24(sp)
    8000409c:	01013403          	ld	s0,16(sp)
    800040a0:	00813483          	ld	s1,8(sp)
    800040a4:	00013903          	ld	s2,0(sp)
    800040a8:	02010113          	addi	sp,sp,32
    800040ac:	00008067          	ret

00000000800040b0 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800040b0:	fd010113          	addi	sp,sp,-48
    800040b4:	02113423          	sd	ra,40(sp)
    800040b8:	02813023          	sd	s0,32(sp)
    800040bc:	00913c23          	sd	s1,24(sp)
    800040c0:	01213823          	sd	s2,16(sp)
    800040c4:	01313423          	sd	s3,8(sp)
    800040c8:	01413023          	sd	s4,0(sp)
    800040cc:	03010413          	addi	s0,sp,48
    800040d0:	00050993          	mv	s3,a0
    800040d4:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800040d8:	00000a13          	li	s4,0
    800040dc:	01c0006f          	j	800040f8 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800040e0:	ffffe097          	auipc	ra,0xffffe
    800040e4:	8f4080e7          	jalr	-1804(ra) # 800019d4 <_ZN6Thread8dispatchEv>
    800040e8:	0500006f          	j	80004138 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800040ec:	00a00513          	li	a0,10
    800040f0:	ffffd097          	auipc	ra,0xffffd
    800040f4:	3d4080e7          	jalr	980(ra) # 800014c4 <_Z4putcc>
    while (!threadEnd) {
    800040f8:	00006797          	auipc	a5,0x6
    800040fc:	2e07a783          	lw	a5,736(a5) # 8000a3d8 <_ZL9threadEnd>
    80004100:	06079263          	bnez	a5,80004164 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004104:	00893503          	ld	a0,8(s2)
    80004108:	00001097          	auipc	ra,0x1
    8000410c:	b94080e7          	jalr	-1132(ra) # 80004c9c <_ZN9BufferCPP3getEv>
        i++;
    80004110:	001a049b          	addiw	s1,s4,1
    80004114:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004118:	0ff57513          	andi	a0,a0,255
    8000411c:	ffffd097          	auipc	ra,0xffffd
    80004120:	3a8080e7          	jalr	936(ra) # 800014c4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004124:	00092703          	lw	a4,0(s2)
    80004128:	0027179b          	slliw	a5,a4,0x2
    8000412c:	00e787bb          	addw	a5,a5,a4
    80004130:	02f4e7bb          	remw	a5,s1,a5
    80004134:	fa0786e3          	beqz	a5,800040e0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004138:	05000793          	li	a5,80
    8000413c:	02f4e4bb          	remw	s1,s1,a5
    80004140:	fa049ce3          	bnez	s1,800040f8 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004144:	fa9ff06f          	j	800040ec <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004148:	0209b783          	ld	a5,32(s3)
    8000414c:	0087b503          	ld	a0,8(a5)
    80004150:	00001097          	auipc	ra,0x1
    80004154:	b4c080e7          	jalr	-1204(ra) # 80004c9c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004158:	0ff57513          	andi	a0,a0,255
    8000415c:	ffffe097          	auipc	ra,0xffffe
    80004160:	9cc080e7          	jalr	-1588(ra) # 80001b28 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004164:	0209b783          	ld	a5,32(s3)
    80004168:	0087b503          	ld	a0,8(a5)
    8000416c:	00001097          	auipc	ra,0x1
    80004170:	bbc080e7          	jalr	-1092(ra) # 80004d28 <_ZN9BufferCPP6getCntEv>
    80004174:	fca04ae3          	bgtz	a0,80004148 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004178:	01093503          	ld	a0,16(s2)
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	8e4080e7          	jalr	-1820(ra) # 80001a60 <_ZN9Semaphore6signalEv>
}
    80004184:	02813083          	ld	ra,40(sp)
    80004188:	02013403          	ld	s0,32(sp)
    8000418c:	01813483          	ld	s1,24(sp)
    80004190:	01013903          	ld	s2,16(sp)
    80004194:	00813983          	ld	s3,8(sp)
    80004198:	00013a03          	ld	s4,0(sp)
    8000419c:	03010113          	addi	sp,sp,48
    800041a0:	00008067          	ret

00000000800041a4 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800041a4:	f8010113          	addi	sp,sp,-128
    800041a8:	06113c23          	sd	ra,120(sp)
    800041ac:	06813823          	sd	s0,112(sp)
    800041b0:	06913423          	sd	s1,104(sp)
    800041b4:	07213023          	sd	s2,96(sp)
    800041b8:	05313c23          	sd	s3,88(sp)
    800041bc:	05413823          	sd	s4,80(sp)
    800041c0:	05513423          	sd	s5,72(sp)
    800041c4:	05613023          	sd	s6,64(sp)
    800041c8:	03713c23          	sd	s7,56(sp)
    800041cc:	03813823          	sd	s8,48(sp)
    800041d0:	03913423          	sd	s9,40(sp)
    800041d4:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800041d8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800041dc:	00004517          	auipc	a0,0x4
    800041e0:	f5450513          	addi	a0,a0,-172 # 80008130 <CONSOLE_STATUS+0x120>
    800041e4:	00000097          	auipc	ra,0x0
    800041e8:	604080e7          	jalr	1540(ra) # 800047e8 <_Z11printStringPKc>
    getString(input, 30);
    800041ec:	01e00593          	li	a1,30
    800041f0:	f8040493          	addi	s1,s0,-128
    800041f4:	00048513          	mv	a0,s1
    800041f8:	00000097          	auipc	ra,0x0
    800041fc:	678080e7          	jalr	1656(ra) # 80004870 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004200:	00048513          	mv	a0,s1
    80004204:	00000097          	auipc	ra,0x0
    80004208:	744080e7          	jalr	1860(ra) # 80004948 <_Z11stringToIntPKc>
    8000420c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004210:	00004517          	auipc	a0,0x4
    80004214:	f4050513          	addi	a0,a0,-192 # 80008150 <CONSOLE_STATUS+0x140>
    80004218:	00000097          	auipc	ra,0x0
    8000421c:	5d0080e7          	jalr	1488(ra) # 800047e8 <_Z11printStringPKc>
    getString(input, 30);
    80004220:	01e00593          	li	a1,30
    80004224:	00048513          	mv	a0,s1
    80004228:	00000097          	auipc	ra,0x0
    8000422c:	648080e7          	jalr	1608(ra) # 80004870 <_Z9getStringPci>
    n = stringToInt(input);
    80004230:	00048513          	mv	a0,s1
    80004234:	00000097          	auipc	ra,0x0
    80004238:	714080e7          	jalr	1812(ra) # 80004948 <_Z11stringToIntPKc>
    8000423c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004240:	00004517          	auipc	a0,0x4
    80004244:	f3050513          	addi	a0,a0,-208 # 80008170 <CONSOLE_STATUS+0x160>
    80004248:	00000097          	auipc	ra,0x0
    8000424c:	5a0080e7          	jalr	1440(ra) # 800047e8 <_Z11printStringPKc>
    80004250:	00000613          	li	a2,0
    80004254:	00a00593          	li	a1,10
    80004258:	00090513          	mv	a0,s2
    8000425c:	00000097          	auipc	ra,0x0
    80004260:	73c080e7          	jalr	1852(ra) # 80004998 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004264:	00004517          	auipc	a0,0x4
    80004268:	f2450513          	addi	a0,a0,-220 # 80008188 <CONSOLE_STATUS+0x178>
    8000426c:	00000097          	auipc	ra,0x0
    80004270:	57c080e7          	jalr	1404(ra) # 800047e8 <_Z11printStringPKc>
    80004274:	00000613          	li	a2,0
    80004278:	00a00593          	li	a1,10
    8000427c:	00048513          	mv	a0,s1
    80004280:	00000097          	auipc	ra,0x0
    80004284:	718080e7          	jalr	1816(ra) # 80004998 <_Z8printIntiii>
    printString(".\n");
    80004288:	00004517          	auipc	a0,0x4
    8000428c:	f1850513          	addi	a0,a0,-232 # 800081a0 <CONSOLE_STATUS+0x190>
    80004290:	00000097          	auipc	ra,0x0
    80004294:	558080e7          	jalr	1368(ra) # 800047e8 <_Z11printStringPKc>
    if(threadNum > n) {
    80004298:	0324c463          	blt	s1,s2,800042c0 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000429c:	03205c63          	blez	s2,800042d4 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800042a0:	03800513          	li	a0,56
    800042a4:	ffffd097          	auipc	ra,0xffffd
    800042a8:	590080e7          	jalr	1424(ra) # 80001834 <_Znwm>
    800042ac:	00050a93          	mv	s5,a0
    800042b0:	00048593          	mv	a1,s1
    800042b4:	00001097          	auipc	ra,0x1
    800042b8:	804080e7          	jalr	-2044(ra) # 80004ab8 <_ZN9BufferCPPC1Ei>
    800042bc:	0300006f          	j	800042ec <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800042c0:	00004517          	auipc	a0,0x4
    800042c4:	ee850513          	addi	a0,a0,-280 # 800081a8 <CONSOLE_STATUS+0x198>
    800042c8:	00000097          	auipc	ra,0x0
    800042cc:	520080e7          	jalr	1312(ra) # 800047e8 <_Z11printStringPKc>
        return;
    800042d0:	0140006f          	j	800042e4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800042d4:	00004517          	auipc	a0,0x4
    800042d8:	f1450513          	addi	a0,a0,-236 # 800081e8 <CONSOLE_STATUS+0x1d8>
    800042dc:	00000097          	auipc	ra,0x0
    800042e0:	50c080e7          	jalr	1292(ra) # 800047e8 <_Z11printStringPKc>
        return;
    800042e4:	000b8113          	mv	sp,s7
    800042e8:	2380006f          	j	80004520 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800042ec:	01000513          	li	a0,16
    800042f0:	ffffd097          	auipc	ra,0xffffd
    800042f4:	544080e7          	jalr	1348(ra) # 80001834 <_Znwm>
    800042f8:	00050493          	mv	s1,a0
    800042fc:	00000593          	li	a1,0
    80004300:	ffffd097          	auipc	ra,0xffffd
    80004304:	6fc080e7          	jalr	1788(ra) # 800019fc <_ZN9SemaphoreC1Ej>
    80004308:	00006797          	auipc	a5,0x6
    8000430c:	0c97bc23          	sd	s1,216(a5) # 8000a3e0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004310:	00391793          	slli	a5,s2,0x3
    80004314:	00f78793          	addi	a5,a5,15
    80004318:	ff07f793          	andi	a5,a5,-16
    8000431c:	40f10133          	sub	sp,sp,a5
    80004320:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004324:	0019071b          	addiw	a4,s2,1
    80004328:	00171793          	slli	a5,a4,0x1
    8000432c:	00e787b3          	add	a5,a5,a4
    80004330:	00379793          	slli	a5,a5,0x3
    80004334:	00f78793          	addi	a5,a5,15
    80004338:	ff07f793          	andi	a5,a5,-16
    8000433c:	40f10133          	sub	sp,sp,a5
    80004340:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004344:	00191c13          	slli	s8,s2,0x1
    80004348:	012c07b3          	add	a5,s8,s2
    8000434c:	00379793          	slli	a5,a5,0x3
    80004350:	00fa07b3          	add	a5,s4,a5
    80004354:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004358:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000435c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004360:	02800513          	li	a0,40
    80004364:	ffffd097          	auipc	ra,0xffffd
    80004368:	4d0080e7          	jalr	1232(ra) # 80001834 <_Znwm>
    8000436c:	00050b13          	mv	s6,a0
    80004370:	012c0c33          	add	s8,s8,s2
    80004374:	003c1c13          	slli	s8,s8,0x3
    80004378:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000437c:	ffffd097          	auipc	ra,0xffffd
    80004380:	5f0080e7          	jalr	1520(ra) # 8000196c <_ZN6ThreadC1Ev>
    80004384:	00006797          	auipc	a5,0x6
    80004388:	f5478793          	addi	a5,a5,-172 # 8000a2d8 <_ZTV12ConsumerSync+0x10>
    8000438c:	00fb3023          	sd	a5,0(s6)
    80004390:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004394:	000b0513          	mv	a0,s6
    80004398:	ffffd097          	auipc	ra,0xffffd
    8000439c:	604080e7          	jalr	1540(ra) # 8000199c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800043a0:	00000493          	li	s1,0
    800043a4:	0380006f          	j	800043dc <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800043a8:	00006797          	auipc	a5,0x6
    800043ac:	f0878793          	addi	a5,a5,-248 # 8000a2b0 <_ZTV12ProducerSync+0x10>
    800043b0:	00fcb023          	sd	a5,0(s9)
    800043b4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800043b8:	00349793          	slli	a5,s1,0x3
    800043bc:	00f987b3          	add	a5,s3,a5
    800043c0:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800043c4:	00349793          	slli	a5,s1,0x3
    800043c8:	00f987b3          	add	a5,s3,a5
    800043cc:	0007b503          	ld	a0,0(a5)
    800043d0:	ffffd097          	auipc	ra,0xffffd
    800043d4:	5cc080e7          	jalr	1484(ra) # 8000199c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800043d8:	0014849b          	addiw	s1,s1,1
    800043dc:	0b24d063          	bge	s1,s2,8000447c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800043e0:	00149793          	slli	a5,s1,0x1
    800043e4:	009787b3          	add	a5,a5,s1
    800043e8:	00379793          	slli	a5,a5,0x3
    800043ec:	00fa07b3          	add	a5,s4,a5
    800043f0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800043f4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800043f8:	00006717          	auipc	a4,0x6
    800043fc:	fe873703          	ld	a4,-24(a4) # 8000a3e0 <_ZL10waitForAll>
    80004400:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004404:	02905863          	blez	s1,80004434 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004408:	02800513          	li	a0,40
    8000440c:	ffffd097          	auipc	ra,0xffffd
    80004410:	428080e7          	jalr	1064(ra) # 80001834 <_Znwm>
    80004414:	00050c93          	mv	s9,a0
    80004418:	00149c13          	slli	s8,s1,0x1
    8000441c:	009c0c33          	add	s8,s8,s1
    80004420:	003c1c13          	slli	s8,s8,0x3
    80004424:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004428:	ffffd097          	auipc	ra,0xffffd
    8000442c:	544080e7          	jalr	1348(ra) # 8000196c <_ZN6ThreadC1Ev>
    80004430:	f79ff06f          	j	800043a8 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004434:	02800513          	li	a0,40
    80004438:	ffffd097          	auipc	ra,0xffffd
    8000443c:	3fc080e7          	jalr	1020(ra) # 80001834 <_Znwm>
    80004440:	00050c93          	mv	s9,a0
    80004444:	00149c13          	slli	s8,s1,0x1
    80004448:	009c0c33          	add	s8,s8,s1
    8000444c:	003c1c13          	slli	s8,s8,0x3
    80004450:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004454:	ffffd097          	auipc	ra,0xffffd
    80004458:	518080e7          	jalr	1304(ra) # 8000196c <_ZN6ThreadC1Ev>
    8000445c:	00006797          	auipc	a5,0x6
    80004460:	e2c78793          	addi	a5,a5,-468 # 8000a288 <_ZTV16ProducerKeyboard+0x10>
    80004464:	00fcb023          	sd	a5,0(s9)
    80004468:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000446c:	00349793          	slli	a5,s1,0x3
    80004470:	00f987b3          	add	a5,s3,a5
    80004474:	0197b023          	sd	s9,0(a5)
    80004478:	f4dff06f          	j	800043c4 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000447c:	ffffd097          	auipc	ra,0xffffd
    80004480:	558080e7          	jalr	1368(ra) # 800019d4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004484:	00000493          	li	s1,0
    80004488:	00994e63          	blt	s2,s1,800044a4 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000448c:	00006517          	auipc	a0,0x6
    80004490:	f5453503          	ld	a0,-172(a0) # 8000a3e0 <_ZL10waitForAll>
    80004494:	ffffd097          	auipc	ra,0xffffd
    80004498:	5a0080e7          	jalr	1440(ra) # 80001a34 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000449c:	0014849b          	addiw	s1,s1,1
    800044a0:	fe9ff06f          	j	80004488 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800044a4:	00000493          	li	s1,0
    800044a8:	0080006f          	j	800044b0 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800044ac:	0014849b          	addiw	s1,s1,1
    800044b0:	0324d263          	bge	s1,s2,800044d4 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800044b4:	00349793          	slli	a5,s1,0x3
    800044b8:	00f987b3          	add	a5,s3,a5
    800044bc:	0007b503          	ld	a0,0(a5)
    800044c0:	fe0506e3          	beqz	a0,800044ac <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800044c4:	00053783          	ld	a5,0(a0)
    800044c8:	0087b783          	ld	a5,8(a5)
    800044cc:	000780e7          	jalr	a5
    800044d0:	fddff06f          	j	800044ac <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800044d4:	000b0a63          	beqz	s6,800044e8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800044d8:	000b3783          	ld	a5,0(s6)
    800044dc:	0087b783          	ld	a5,8(a5)
    800044e0:	000b0513          	mv	a0,s6
    800044e4:	000780e7          	jalr	a5
    delete waitForAll;
    800044e8:	00006517          	auipc	a0,0x6
    800044ec:	ef853503          	ld	a0,-264(a0) # 8000a3e0 <_ZL10waitForAll>
    800044f0:	00050863          	beqz	a0,80004500 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800044f4:	00053783          	ld	a5,0(a0)
    800044f8:	0087b783          	ld	a5,8(a5)
    800044fc:	000780e7          	jalr	a5
    delete buffer;
    80004500:	000a8e63          	beqz	s5,8000451c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004504:	000a8513          	mv	a0,s5
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	8a8080e7          	jalr	-1880(ra) # 80004db0 <_ZN9BufferCPPD1Ev>
    80004510:	000a8513          	mv	a0,s5
    80004514:	ffffd097          	auipc	ra,0xffffd
    80004518:	370080e7          	jalr	880(ra) # 80001884 <_ZdlPv>
    8000451c:	000b8113          	mv	sp,s7

}
    80004520:	f8040113          	addi	sp,s0,-128
    80004524:	07813083          	ld	ra,120(sp)
    80004528:	07013403          	ld	s0,112(sp)
    8000452c:	06813483          	ld	s1,104(sp)
    80004530:	06013903          	ld	s2,96(sp)
    80004534:	05813983          	ld	s3,88(sp)
    80004538:	05013a03          	ld	s4,80(sp)
    8000453c:	04813a83          	ld	s5,72(sp)
    80004540:	04013b03          	ld	s6,64(sp)
    80004544:	03813b83          	ld	s7,56(sp)
    80004548:	03013c03          	ld	s8,48(sp)
    8000454c:	02813c83          	ld	s9,40(sp)
    80004550:	08010113          	addi	sp,sp,128
    80004554:	00008067          	ret
    80004558:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000455c:	000a8513          	mv	a0,s5
    80004560:	ffffd097          	auipc	ra,0xffffd
    80004564:	324080e7          	jalr	804(ra) # 80001884 <_ZdlPv>
    80004568:	00048513          	mv	a0,s1
    8000456c:	00007097          	auipc	ra,0x7
    80004570:	f5c080e7          	jalr	-164(ra) # 8000b4c8 <_Unwind_Resume>
    80004574:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004578:	00048513          	mv	a0,s1
    8000457c:	ffffd097          	auipc	ra,0xffffd
    80004580:	308080e7          	jalr	776(ra) # 80001884 <_ZdlPv>
    80004584:	00090513          	mv	a0,s2
    80004588:	00007097          	auipc	ra,0x7
    8000458c:	f40080e7          	jalr	-192(ra) # 8000b4c8 <_Unwind_Resume>
    80004590:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004594:	000b0513          	mv	a0,s6
    80004598:	ffffd097          	auipc	ra,0xffffd
    8000459c:	2ec080e7          	jalr	748(ra) # 80001884 <_ZdlPv>
    800045a0:	00048513          	mv	a0,s1
    800045a4:	00007097          	auipc	ra,0x7
    800045a8:	f24080e7          	jalr	-220(ra) # 8000b4c8 <_Unwind_Resume>
    800045ac:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800045b0:	000c8513          	mv	a0,s9
    800045b4:	ffffd097          	auipc	ra,0xffffd
    800045b8:	2d0080e7          	jalr	720(ra) # 80001884 <_ZdlPv>
    800045bc:	00048513          	mv	a0,s1
    800045c0:	00007097          	auipc	ra,0x7
    800045c4:	f08080e7          	jalr	-248(ra) # 8000b4c8 <_Unwind_Resume>
    800045c8:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800045cc:	000c8513          	mv	a0,s9
    800045d0:	ffffd097          	auipc	ra,0xffffd
    800045d4:	2b4080e7          	jalr	692(ra) # 80001884 <_ZdlPv>
    800045d8:	00048513          	mv	a0,s1
    800045dc:	00007097          	auipc	ra,0x7
    800045e0:	eec080e7          	jalr	-276(ra) # 8000b4c8 <_Unwind_Resume>

00000000800045e4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800045e4:	ff010113          	addi	sp,sp,-16
    800045e8:	00113423          	sd	ra,8(sp)
    800045ec:	00813023          	sd	s0,0(sp)
    800045f0:	01010413          	addi	s0,sp,16
    800045f4:	00006797          	auipc	a5,0x6
    800045f8:	ce478793          	addi	a5,a5,-796 # 8000a2d8 <_ZTV12ConsumerSync+0x10>
    800045fc:	00f53023          	sd	a5,0(a0)
    80004600:	ffffd097          	auipc	ra,0xffffd
    80004604:	1a4080e7          	jalr	420(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80004608:	00813083          	ld	ra,8(sp)
    8000460c:	00013403          	ld	s0,0(sp)
    80004610:	01010113          	addi	sp,sp,16
    80004614:	00008067          	ret

0000000080004618 <_ZN12ConsumerSyncD0Ev>:
    80004618:	fe010113          	addi	sp,sp,-32
    8000461c:	00113c23          	sd	ra,24(sp)
    80004620:	00813823          	sd	s0,16(sp)
    80004624:	00913423          	sd	s1,8(sp)
    80004628:	02010413          	addi	s0,sp,32
    8000462c:	00050493          	mv	s1,a0
    80004630:	00006797          	auipc	a5,0x6
    80004634:	ca878793          	addi	a5,a5,-856 # 8000a2d8 <_ZTV12ConsumerSync+0x10>
    80004638:	00f53023          	sd	a5,0(a0)
    8000463c:	ffffd097          	auipc	ra,0xffffd
    80004640:	168080e7          	jalr	360(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80004644:	00048513          	mv	a0,s1
    80004648:	ffffd097          	auipc	ra,0xffffd
    8000464c:	23c080e7          	jalr	572(ra) # 80001884 <_ZdlPv>
    80004650:	01813083          	ld	ra,24(sp)
    80004654:	01013403          	ld	s0,16(sp)
    80004658:	00813483          	ld	s1,8(sp)
    8000465c:	02010113          	addi	sp,sp,32
    80004660:	00008067          	ret

0000000080004664 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004664:	ff010113          	addi	sp,sp,-16
    80004668:	00113423          	sd	ra,8(sp)
    8000466c:	00813023          	sd	s0,0(sp)
    80004670:	01010413          	addi	s0,sp,16
    80004674:	00006797          	auipc	a5,0x6
    80004678:	c3c78793          	addi	a5,a5,-964 # 8000a2b0 <_ZTV12ProducerSync+0x10>
    8000467c:	00f53023          	sd	a5,0(a0)
    80004680:	ffffd097          	auipc	ra,0xffffd
    80004684:	124080e7          	jalr	292(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80004688:	00813083          	ld	ra,8(sp)
    8000468c:	00013403          	ld	s0,0(sp)
    80004690:	01010113          	addi	sp,sp,16
    80004694:	00008067          	ret

0000000080004698 <_ZN12ProducerSyncD0Ev>:
    80004698:	fe010113          	addi	sp,sp,-32
    8000469c:	00113c23          	sd	ra,24(sp)
    800046a0:	00813823          	sd	s0,16(sp)
    800046a4:	00913423          	sd	s1,8(sp)
    800046a8:	02010413          	addi	s0,sp,32
    800046ac:	00050493          	mv	s1,a0
    800046b0:	00006797          	auipc	a5,0x6
    800046b4:	c0078793          	addi	a5,a5,-1024 # 8000a2b0 <_ZTV12ProducerSync+0x10>
    800046b8:	00f53023          	sd	a5,0(a0)
    800046bc:	ffffd097          	auipc	ra,0xffffd
    800046c0:	0e8080e7          	jalr	232(ra) # 800017a4 <_ZN6ThreadD1Ev>
    800046c4:	00048513          	mv	a0,s1
    800046c8:	ffffd097          	auipc	ra,0xffffd
    800046cc:	1bc080e7          	jalr	444(ra) # 80001884 <_ZdlPv>
    800046d0:	01813083          	ld	ra,24(sp)
    800046d4:	01013403          	ld	s0,16(sp)
    800046d8:	00813483          	ld	s1,8(sp)
    800046dc:	02010113          	addi	sp,sp,32
    800046e0:	00008067          	ret

00000000800046e4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800046e4:	ff010113          	addi	sp,sp,-16
    800046e8:	00113423          	sd	ra,8(sp)
    800046ec:	00813023          	sd	s0,0(sp)
    800046f0:	01010413          	addi	s0,sp,16
    800046f4:	00006797          	auipc	a5,0x6
    800046f8:	b9478793          	addi	a5,a5,-1132 # 8000a288 <_ZTV16ProducerKeyboard+0x10>
    800046fc:	00f53023          	sd	a5,0(a0)
    80004700:	ffffd097          	auipc	ra,0xffffd
    80004704:	0a4080e7          	jalr	164(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80004708:	00813083          	ld	ra,8(sp)
    8000470c:	00013403          	ld	s0,0(sp)
    80004710:	01010113          	addi	sp,sp,16
    80004714:	00008067          	ret

0000000080004718 <_ZN16ProducerKeyboardD0Ev>:
    80004718:	fe010113          	addi	sp,sp,-32
    8000471c:	00113c23          	sd	ra,24(sp)
    80004720:	00813823          	sd	s0,16(sp)
    80004724:	00913423          	sd	s1,8(sp)
    80004728:	02010413          	addi	s0,sp,32
    8000472c:	00050493          	mv	s1,a0
    80004730:	00006797          	auipc	a5,0x6
    80004734:	b5878793          	addi	a5,a5,-1192 # 8000a288 <_ZTV16ProducerKeyboard+0x10>
    80004738:	00f53023          	sd	a5,0(a0)
    8000473c:	ffffd097          	auipc	ra,0xffffd
    80004740:	068080e7          	jalr	104(ra) # 800017a4 <_ZN6ThreadD1Ev>
    80004744:	00048513          	mv	a0,s1
    80004748:	ffffd097          	auipc	ra,0xffffd
    8000474c:	13c080e7          	jalr	316(ra) # 80001884 <_ZdlPv>
    80004750:	01813083          	ld	ra,24(sp)
    80004754:	01013403          	ld	s0,16(sp)
    80004758:	00813483          	ld	s1,8(sp)
    8000475c:	02010113          	addi	sp,sp,32
    80004760:	00008067          	ret

0000000080004764 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004764:	ff010113          	addi	sp,sp,-16
    80004768:	00113423          	sd	ra,8(sp)
    8000476c:	00813023          	sd	s0,0(sp)
    80004770:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004774:	02053583          	ld	a1,32(a0)
    80004778:	fffff097          	auipc	ra,0xfffff
    8000477c:	7e4080e7          	jalr	2020(ra) # 80003f5c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004780:	00813083          	ld	ra,8(sp)
    80004784:	00013403          	ld	s0,0(sp)
    80004788:	01010113          	addi	sp,sp,16
    8000478c:	00008067          	ret

0000000080004790 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004790:	ff010113          	addi	sp,sp,-16
    80004794:	00113423          	sd	ra,8(sp)
    80004798:	00813023          	sd	s0,0(sp)
    8000479c:	01010413          	addi	s0,sp,16
        producer(td);
    800047a0:	02053583          	ld	a1,32(a0)
    800047a4:	00000097          	auipc	ra,0x0
    800047a8:	878080e7          	jalr	-1928(ra) # 8000401c <_ZN12ProducerSync8producerEPv>
    }
    800047ac:	00813083          	ld	ra,8(sp)
    800047b0:	00013403          	ld	s0,0(sp)
    800047b4:	01010113          	addi	sp,sp,16
    800047b8:	00008067          	ret

00000000800047bc <_ZN12ConsumerSync3runEv>:
    void run() override {
    800047bc:	ff010113          	addi	sp,sp,-16
    800047c0:	00113423          	sd	ra,8(sp)
    800047c4:	00813023          	sd	s0,0(sp)
    800047c8:	01010413          	addi	s0,sp,16
        consumer(td);
    800047cc:	02053583          	ld	a1,32(a0)
    800047d0:	00000097          	auipc	ra,0x0
    800047d4:	8e0080e7          	jalr	-1824(ra) # 800040b0 <_ZN12ConsumerSync8consumerEPv>
    }
    800047d8:	00813083          	ld	ra,8(sp)
    800047dc:	00013403          	ld	s0,0(sp)
    800047e0:	01010113          	addi	sp,sp,16
    800047e4:	00008067          	ret

00000000800047e8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800047e8:	fe010113          	addi	sp,sp,-32
    800047ec:	00113c23          	sd	ra,24(sp)
    800047f0:	00813823          	sd	s0,16(sp)
    800047f4:	00913423          	sd	s1,8(sp)
    800047f8:	02010413          	addi	s0,sp,32
    800047fc:	00050493          	mv	s1,a0
    LOCK();
    80004800:	00100613          	li	a2,1
    80004804:	00000593          	li	a1,0
    80004808:	00006517          	auipc	a0,0x6
    8000480c:	be050513          	addi	a0,a0,-1056 # 8000a3e8 <lockPrint>
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	914080e7          	jalr	-1772(ra) # 80001124 <copy_and_swap>
    80004818:	00050863          	beqz	a0,80004828 <_Z11printStringPKc+0x40>
    8000481c:	ffffd097          	auipc	ra,0xffffd
    80004820:	a44080e7          	jalr	-1468(ra) # 80001260 <_Z15thread_dispatchv>
    80004824:	fddff06f          	j	80004800 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004828:	0004c503          	lbu	a0,0(s1)
    8000482c:	00050a63          	beqz	a0,80004840 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004830:	ffffd097          	auipc	ra,0xffffd
    80004834:	c94080e7          	jalr	-876(ra) # 800014c4 <_Z4putcc>
        string++;
    80004838:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000483c:	fedff06f          	j	80004828 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004840:	00000613          	li	a2,0
    80004844:	00100593          	li	a1,1
    80004848:	00006517          	auipc	a0,0x6
    8000484c:	ba050513          	addi	a0,a0,-1120 # 8000a3e8 <lockPrint>
    80004850:	ffffd097          	auipc	ra,0xffffd
    80004854:	8d4080e7          	jalr	-1836(ra) # 80001124 <copy_and_swap>
    80004858:	fe0514e3          	bnez	a0,80004840 <_Z11printStringPKc+0x58>
}
    8000485c:	01813083          	ld	ra,24(sp)
    80004860:	01013403          	ld	s0,16(sp)
    80004864:	00813483          	ld	s1,8(sp)
    80004868:	02010113          	addi	sp,sp,32
    8000486c:	00008067          	ret

0000000080004870 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004870:	fd010113          	addi	sp,sp,-48
    80004874:	02113423          	sd	ra,40(sp)
    80004878:	02813023          	sd	s0,32(sp)
    8000487c:	00913c23          	sd	s1,24(sp)
    80004880:	01213823          	sd	s2,16(sp)
    80004884:	01313423          	sd	s3,8(sp)
    80004888:	01413023          	sd	s4,0(sp)
    8000488c:	03010413          	addi	s0,sp,48
    80004890:	00050993          	mv	s3,a0
    80004894:	00058a13          	mv	s4,a1
    LOCK();
    80004898:	00100613          	li	a2,1
    8000489c:	00000593          	li	a1,0
    800048a0:	00006517          	auipc	a0,0x6
    800048a4:	b4850513          	addi	a0,a0,-1208 # 8000a3e8 <lockPrint>
    800048a8:	ffffd097          	auipc	ra,0xffffd
    800048ac:	87c080e7          	jalr	-1924(ra) # 80001124 <copy_and_swap>
    800048b0:	00050863          	beqz	a0,800048c0 <_Z9getStringPci+0x50>
    800048b4:	ffffd097          	auipc	ra,0xffffd
    800048b8:	9ac080e7          	jalr	-1620(ra) # 80001260 <_Z15thread_dispatchv>
    800048bc:	fddff06f          	j	80004898 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800048c0:	00000913          	li	s2,0
    800048c4:	00090493          	mv	s1,s2
    800048c8:	0019091b          	addiw	s2,s2,1
    800048cc:	03495a63          	bge	s2,s4,80004900 <_Z9getStringPci+0x90>
        cc = getc();
    800048d0:	ffffd097          	auipc	ra,0xffffd
    800048d4:	bb4080e7          	jalr	-1100(ra) # 80001484 <_Z4getcv>
        if(cc < 1)
    800048d8:	02050463          	beqz	a0,80004900 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800048dc:	009984b3          	add	s1,s3,s1
    800048e0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800048e4:	00a00793          	li	a5,10
    800048e8:	00f50a63          	beq	a0,a5,800048fc <_Z9getStringPci+0x8c>
    800048ec:	00d00793          	li	a5,13
    800048f0:	fcf51ae3          	bne	a0,a5,800048c4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800048f4:	00090493          	mv	s1,s2
    800048f8:	0080006f          	j	80004900 <_Z9getStringPci+0x90>
    800048fc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004900:	009984b3          	add	s1,s3,s1
    80004904:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004908:	00000613          	li	a2,0
    8000490c:	00100593          	li	a1,1
    80004910:	00006517          	auipc	a0,0x6
    80004914:	ad850513          	addi	a0,a0,-1320 # 8000a3e8 <lockPrint>
    80004918:	ffffd097          	auipc	ra,0xffffd
    8000491c:	80c080e7          	jalr	-2036(ra) # 80001124 <copy_and_swap>
    80004920:	fe0514e3          	bnez	a0,80004908 <_Z9getStringPci+0x98>
    return buf;
}
    80004924:	00098513          	mv	a0,s3
    80004928:	02813083          	ld	ra,40(sp)
    8000492c:	02013403          	ld	s0,32(sp)
    80004930:	01813483          	ld	s1,24(sp)
    80004934:	01013903          	ld	s2,16(sp)
    80004938:	00813983          	ld	s3,8(sp)
    8000493c:	00013a03          	ld	s4,0(sp)
    80004940:	03010113          	addi	sp,sp,48
    80004944:	00008067          	ret

0000000080004948 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004948:	ff010113          	addi	sp,sp,-16
    8000494c:	00813423          	sd	s0,8(sp)
    80004950:	01010413          	addi	s0,sp,16
    80004954:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004958:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000495c:	0006c603          	lbu	a2,0(a3)
    80004960:	fd06071b          	addiw	a4,a2,-48
    80004964:	0ff77713          	andi	a4,a4,255
    80004968:	00900793          	li	a5,9
    8000496c:	02e7e063          	bltu	a5,a4,8000498c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004970:	0025179b          	slliw	a5,a0,0x2
    80004974:	00a787bb          	addw	a5,a5,a0
    80004978:	0017979b          	slliw	a5,a5,0x1
    8000497c:	00168693          	addi	a3,a3,1
    80004980:	00c787bb          	addw	a5,a5,a2
    80004984:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004988:	fd5ff06f          	j	8000495c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000498c:	00813403          	ld	s0,8(sp)
    80004990:	01010113          	addi	sp,sp,16
    80004994:	00008067          	ret

0000000080004998 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004998:	fc010113          	addi	sp,sp,-64
    8000499c:	02113c23          	sd	ra,56(sp)
    800049a0:	02813823          	sd	s0,48(sp)
    800049a4:	02913423          	sd	s1,40(sp)
    800049a8:	03213023          	sd	s2,32(sp)
    800049ac:	01313c23          	sd	s3,24(sp)
    800049b0:	04010413          	addi	s0,sp,64
    800049b4:	00050493          	mv	s1,a0
    800049b8:	00058913          	mv	s2,a1
    800049bc:	00060993          	mv	s3,a2
    LOCK();
    800049c0:	00100613          	li	a2,1
    800049c4:	00000593          	li	a1,0
    800049c8:	00006517          	auipc	a0,0x6
    800049cc:	a2050513          	addi	a0,a0,-1504 # 8000a3e8 <lockPrint>
    800049d0:	ffffc097          	auipc	ra,0xffffc
    800049d4:	754080e7          	jalr	1876(ra) # 80001124 <copy_and_swap>
    800049d8:	00050863          	beqz	a0,800049e8 <_Z8printIntiii+0x50>
    800049dc:	ffffd097          	auipc	ra,0xffffd
    800049e0:	884080e7          	jalr	-1916(ra) # 80001260 <_Z15thread_dispatchv>
    800049e4:	fddff06f          	j	800049c0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800049e8:	00098463          	beqz	s3,800049f0 <_Z8printIntiii+0x58>
    800049ec:	0804c463          	bltz	s1,80004a74 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800049f0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800049f4:	00000593          	li	a1,0
    }

    i = 0;
    800049f8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800049fc:	0009079b          	sext.w	a5,s2
    80004a00:	0325773b          	remuw	a4,a0,s2
    80004a04:	00048613          	mv	a2,s1
    80004a08:	0014849b          	addiw	s1,s1,1
    80004a0c:	02071693          	slli	a3,a4,0x20
    80004a10:	0206d693          	srli	a3,a3,0x20
    80004a14:	00006717          	auipc	a4,0x6
    80004a18:	8dc70713          	addi	a4,a4,-1828 # 8000a2f0 <digits>
    80004a1c:	00d70733          	add	a4,a4,a3
    80004a20:	00074683          	lbu	a3,0(a4)
    80004a24:	fd040713          	addi	a4,s0,-48
    80004a28:	00c70733          	add	a4,a4,a2
    80004a2c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004a30:	0005071b          	sext.w	a4,a0
    80004a34:	0325553b          	divuw	a0,a0,s2
    80004a38:	fcf772e3          	bgeu	a4,a5,800049fc <_Z8printIntiii+0x64>
    if(neg)
    80004a3c:	00058c63          	beqz	a1,80004a54 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004a40:	fd040793          	addi	a5,s0,-48
    80004a44:	009784b3          	add	s1,a5,s1
    80004a48:	02d00793          	li	a5,45
    80004a4c:	fef48823          	sb	a5,-16(s1)
    80004a50:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004a54:	fff4849b          	addiw	s1,s1,-1
    80004a58:	0204c463          	bltz	s1,80004a80 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004a5c:	fd040793          	addi	a5,s0,-48
    80004a60:	009787b3          	add	a5,a5,s1
    80004a64:	ff07c503          	lbu	a0,-16(a5)
    80004a68:	ffffd097          	auipc	ra,0xffffd
    80004a6c:	a5c080e7          	jalr	-1444(ra) # 800014c4 <_Z4putcc>
    80004a70:	fe5ff06f          	j	80004a54 <_Z8printIntiii+0xbc>
        x = -xx;
    80004a74:	4090053b          	negw	a0,s1
        neg = 1;
    80004a78:	00100593          	li	a1,1
        x = -xx;
    80004a7c:	f7dff06f          	j	800049f8 <_Z8printIntiii+0x60>

    UNLOCK();
    80004a80:	00000613          	li	a2,0
    80004a84:	00100593          	li	a1,1
    80004a88:	00006517          	auipc	a0,0x6
    80004a8c:	96050513          	addi	a0,a0,-1696 # 8000a3e8 <lockPrint>
    80004a90:	ffffc097          	auipc	ra,0xffffc
    80004a94:	694080e7          	jalr	1684(ra) # 80001124 <copy_and_swap>
    80004a98:	fe0514e3          	bnez	a0,80004a80 <_Z8printIntiii+0xe8>
    80004a9c:	03813083          	ld	ra,56(sp)
    80004aa0:	03013403          	ld	s0,48(sp)
    80004aa4:	02813483          	ld	s1,40(sp)
    80004aa8:	02013903          	ld	s2,32(sp)
    80004aac:	01813983          	ld	s3,24(sp)
    80004ab0:	04010113          	addi	sp,sp,64
    80004ab4:	00008067          	ret

0000000080004ab8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004ab8:	fd010113          	addi	sp,sp,-48
    80004abc:	02113423          	sd	ra,40(sp)
    80004ac0:	02813023          	sd	s0,32(sp)
    80004ac4:	00913c23          	sd	s1,24(sp)
    80004ac8:	01213823          	sd	s2,16(sp)
    80004acc:	01313423          	sd	s3,8(sp)
    80004ad0:	03010413          	addi	s0,sp,48
    80004ad4:	00050493          	mv	s1,a0
    80004ad8:	00058913          	mv	s2,a1
    80004adc:	0015879b          	addiw	a5,a1,1
    80004ae0:	0007851b          	sext.w	a0,a5
    80004ae4:	00f4a023          	sw	a5,0(s1)
    80004ae8:	0004a823          	sw	zero,16(s1)
    80004aec:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004af0:	00251513          	slli	a0,a0,0x2
    80004af4:	ffffc097          	auipc	ra,0xffffc
    80004af8:	650080e7          	jalr	1616(ra) # 80001144 <_Z9mem_allocm>
    80004afc:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004b00:	01000513          	li	a0,16
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	d30080e7          	jalr	-720(ra) # 80001834 <_Znwm>
    80004b0c:	00050993          	mv	s3,a0
    80004b10:	00000593          	li	a1,0
    80004b14:	ffffd097          	auipc	ra,0xffffd
    80004b18:	ee8080e7          	jalr	-280(ra) # 800019fc <_ZN9SemaphoreC1Ej>
    80004b1c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004b20:	01000513          	li	a0,16
    80004b24:	ffffd097          	auipc	ra,0xffffd
    80004b28:	d10080e7          	jalr	-752(ra) # 80001834 <_Znwm>
    80004b2c:	00050993          	mv	s3,a0
    80004b30:	00090593          	mv	a1,s2
    80004b34:	ffffd097          	auipc	ra,0xffffd
    80004b38:	ec8080e7          	jalr	-312(ra) # 800019fc <_ZN9SemaphoreC1Ej>
    80004b3c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004b40:	01000513          	li	a0,16
    80004b44:	ffffd097          	auipc	ra,0xffffd
    80004b48:	cf0080e7          	jalr	-784(ra) # 80001834 <_Znwm>
    80004b4c:	00050913          	mv	s2,a0
    80004b50:	00100593          	li	a1,1
    80004b54:	ffffd097          	auipc	ra,0xffffd
    80004b58:	ea8080e7          	jalr	-344(ra) # 800019fc <_ZN9SemaphoreC1Ej>
    80004b5c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004b60:	01000513          	li	a0,16
    80004b64:	ffffd097          	auipc	ra,0xffffd
    80004b68:	cd0080e7          	jalr	-816(ra) # 80001834 <_Znwm>
    80004b6c:	00050913          	mv	s2,a0
    80004b70:	00100593          	li	a1,1
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	e88080e7          	jalr	-376(ra) # 800019fc <_ZN9SemaphoreC1Ej>
    80004b7c:	0324b823          	sd	s2,48(s1)
}
    80004b80:	02813083          	ld	ra,40(sp)
    80004b84:	02013403          	ld	s0,32(sp)
    80004b88:	01813483          	ld	s1,24(sp)
    80004b8c:	01013903          	ld	s2,16(sp)
    80004b90:	00813983          	ld	s3,8(sp)
    80004b94:	03010113          	addi	sp,sp,48
    80004b98:	00008067          	ret
    80004b9c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004ba0:	00098513          	mv	a0,s3
    80004ba4:	ffffd097          	auipc	ra,0xffffd
    80004ba8:	ce0080e7          	jalr	-800(ra) # 80001884 <_ZdlPv>
    80004bac:	00048513          	mv	a0,s1
    80004bb0:	00007097          	auipc	ra,0x7
    80004bb4:	918080e7          	jalr	-1768(ra) # 8000b4c8 <_Unwind_Resume>
    80004bb8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004bbc:	00098513          	mv	a0,s3
    80004bc0:	ffffd097          	auipc	ra,0xffffd
    80004bc4:	cc4080e7          	jalr	-828(ra) # 80001884 <_ZdlPv>
    80004bc8:	00048513          	mv	a0,s1
    80004bcc:	00007097          	auipc	ra,0x7
    80004bd0:	8fc080e7          	jalr	-1796(ra) # 8000b4c8 <_Unwind_Resume>
    80004bd4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004bd8:	00090513          	mv	a0,s2
    80004bdc:	ffffd097          	auipc	ra,0xffffd
    80004be0:	ca8080e7          	jalr	-856(ra) # 80001884 <_ZdlPv>
    80004be4:	00048513          	mv	a0,s1
    80004be8:	00007097          	auipc	ra,0x7
    80004bec:	8e0080e7          	jalr	-1824(ra) # 8000b4c8 <_Unwind_Resume>
    80004bf0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004bf4:	00090513          	mv	a0,s2
    80004bf8:	ffffd097          	auipc	ra,0xffffd
    80004bfc:	c8c080e7          	jalr	-884(ra) # 80001884 <_ZdlPv>
    80004c00:	00048513          	mv	a0,s1
    80004c04:	00007097          	auipc	ra,0x7
    80004c08:	8c4080e7          	jalr	-1852(ra) # 8000b4c8 <_Unwind_Resume>

0000000080004c0c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004c0c:	fe010113          	addi	sp,sp,-32
    80004c10:	00113c23          	sd	ra,24(sp)
    80004c14:	00813823          	sd	s0,16(sp)
    80004c18:	00913423          	sd	s1,8(sp)
    80004c1c:	01213023          	sd	s2,0(sp)
    80004c20:	02010413          	addi	s0,sp,32
    80004c24:	00050493          	mv	s1,a0
    80004c28:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004c2c:	01853503          	ld	a0,24(a0)
    80004c30:	ffffd097          	auipc	ra,0xffffd
    80004c34:	e04080e7          	jalr	-508(ra) # 80001a34 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004c38:	0304b503          	ld	a0,48(s1)
    80004c3c:	ffffd097          	auipc	ra,0xffffd
    80004c40:	df8080e7          	jalr	-520(ra) # 80001a34 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004c44:	0084b783          	ld	a5,8(s1)
    80004c48:	0144a703          	lw	a4,20(s1)
    80004c4c:	00271713          	slli	a4,a4,0x2
    80004c50:	00e787b3          	add	a5,a5,a4
    80004c54:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004c58:	0144a783          	lw	a5,20(s1)
    80004c5c:	0017879b          	addiw	a5,a5,1
    80004c60:	0004a703          	lw	a4,0(s1)
    80004c64:	02e7e7bb          	remw	a5,a5,a4
    80004c68:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004c6c:	0304b503          	ld	a0,48(s1)
    80004c70:	ffffd097          	auipc	ra,0xffffd
    80004c74:	df0080e7          	jalr	-528(ra) # 80001a60 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004c78:	0204b503          	ld	a0,32(s1)
    80004c7c:	ffffd097          	auipc	ra,0xffffd
    80004c80:	de4080e7          	jalr	-540(ra) # 80001a60 <_ZN9Semaphore6signalEv>

}
    80004c84:	01813083          	ld	ra,24(sp)
    80004c88:	01013403          	ld	s0,16(sp)
    80004c8c:	00813483          	ld	s1,8(sp)
    80004c90:	00013903          	ld	s2,0(sp)
    80004c94:	02010113          	addi	sp,sp,32
    80004c98:	00008067          	ret

0000000080004c9c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004c9c:	fe010113          	addi	sp,sp,-32
    80004ca0:	00113c23          	sd	ra,24(sp)
    80004ca4:	00813823          	sd	s0,16(sp)
    80004ca8:	00913423          	sd	s1,8(sp)
    80004cac:	01213023          	sd	s2,0(sp)
    80004cb0:	02010413          	addi	s0,sp,32
    80004cb4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004cb8:	02053503          	ld	a0,32(a0)
    80004cbc:	ffffd097          	auipc	ra,0xffffd
    80004cc0:	d78080e7          	jalr	-648(ra) # 80001a34 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004cc4:	0284b503          	ld	a0,40(s1)
    80004cc8:	ffffd097          	auipc	ra,0xffffd
    80004ccc:	d6c080e7          	jalr	-660(ra) # 80001a34 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004cd0:	0084b703          	ld	a4,8(s1)
    80004cd4:	0104a783          	lw	a5,16(s1)
    80004cd8:	00279693          	slli	a3,a5,0x2
    80004cdc:	00d70733          	add	a4,a4,a3
    80004ce0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004ce4:	0017879b          	addiw	a5,a5,1
    80004ce8:	0004a703          	lw	a4,0(s1)
    80004cec:	02e7e7bb          	remw	a5,a5,a4
    80004cf0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004cf4:	0284b503          	ld	a0,40(s1)
    80004cf8:	ffffd097          	auipc	ra,0xffffd
    80004cfc:	d68080e7          	jalr	-664(ra) # 80001a60 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004d00:	0184b503          	ld	a0,24(s1)
    80004d04:	ffffd097          	auipc	ra,0xffffd
    80004d08:	d5c080e7          	jalr	-676(ra) # 80001a60 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004d0c:	00090513          	mv	a0,s2
    80004d10:	01813083          	ld	ra,24(sp)
    80004d14:	01013403          	ld	s0,16(sp)
    80004d18:	00813483          	ld	s1,8(sp)
    80004d1c:	00013903          	ld	s2,0(sp)
    80004d20:	02010113          	addi	sp,sp,32
    80004d24:	00008067          	ret

0000000080004d28 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004d28:	fe010113          	addi	sp,sp,-32
    80004d2c:	00113c23          	sd	ra,24(sp)
    80004d30:	00813823          	sd	s0,16(sp)
    80004d34:	00913423          	sd	s1,8(sp)
    80004d38:	01213023          	sd	s2,0(sp)
    80004d3c:	02010413          	addi	s0,sp,32
    80004d40:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004d44:	02853503          	ld	a0,40(a0)
    80004d48:	ffffd097          	auipc	ra,0xffffd
    80004d4c:	cec080e7          	jalr	-788(ra) # 80001a34 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004d50:	0304b503          	ld	a0,48(s1)
    80004d54:	ffffd097          	auipc	ra,0xffffd
    80004d58:	ce0080e7          	jalr	-800(ra) # 80001a34 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004d5c:	0144a783          	lw	a5,20(s1)
    80004d60:	0104a903          	lw	s2,16(s1)
    80004d64:	0327ce63          	blt	a5,s2,80004da0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004d68:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004d6c:	0304b503          	ld	a0,48(s1)
    80004d70:	ffffd097          	auipc	ra,0xffffd
    80004d74:	cf0080e7          	jalr	-784(ra) # 80001a60 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004d78:	0284b503          	ld	a0,40(s1)
    80004d7c:	ffffd097          	auipc	ra,0xffffd
    80004d80:	ce4080e7          	jalr	-796(ra) # 80001a60 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004d84:	00090513          	mv	a0,s2
    80004d88:	01813083          	ld	ra,24(sp)
    80004d8c:	01013403          	ld	s0,16(sp)
    80004d90:	00813483          	ld	s1,8(sp)
    80004d94:	00013903          	ld	s2,0(sp)
    80004d98:	02010113          	addi	sp,sp,32
    80004d9c:	00008067          	ret
        ret = cap - head + tail;
    80004da0:	0004a703          	lw	a4,0(s1)
    80004da4:	4127093b          	subw	s2,a4,s2
    80004da8:	00f9093b          	addw	s2,s2,a5
    80004dac:	fc1ff06f          	j	80004d6c <_ZN9BufferCPP6getCntEv+0x44>

0000000080004db0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004db0:	fe010113          	addi	sp,sp,-32
    80004db4:	00113c23          	sd	ra,24(sp)
    80004db8:	00813823          	sd	s0,16(sp)
    80004dbc:	00913423          	sd	s1,8(sp)
    80004dc0:	02010413          	addi	s0,sp,32
    80004dc4:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004dc8:	00a00513          	li	a0,10
    80004dcc:	ffffd097          	auipc	ra,0xffffd
    80004dd0:	d5c080e7          	jalr	-676(ra) # 80001b28 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004dd4:	00003517          	auipc	a0,0x3
    80004dd8:	53c50513          	addi	a0,a0,1340 # 80008310 <CONSOLE_STATUS+0x300>
    80004ddc:	00000097          	auipc	ra,0x0
    80004de0:	a0c080e7          	jalr	-1524(ra) # 800047e8 <_Z11printStringPKc>
    while (getCnt()) {
    80004de4:	00048513          	mv	a0,s1
    80004de8:	00000097          	auipc	ra,0x0
    80004dec:	f40080e7          	jalr	-192(ra) # 80004d28 <_ZN9BufferCPP6getCntEv>
    80004df0:	02050c63          	beqz	a0,80004e28 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004df4:	0084b783          	ld	a5,8(s1)
    80004df8:	0104a703          	lw	a4,16(s1)
    80004dfc:	00271713          	slli	a4,a4,0x2
    80004e00:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004e04:	0007c503          	lbu	a0,0(a5)
    80004e08:	ffffd097          	auipc	ra,0xffffd
    80004e0c:	d20080e7          	jalr	-736(ra) # 80001b28 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004e10:	0104a783          	lw	a5,16(s1)
    80004e14:	0017879b          	addiw	a5,a5,1
    80004e18:	0004a703          	lw	a4,0(s1)
    80004e1c:	02e7e7bb          	remw	a5,a5,a4
    80004e20:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004e24:	fc1ff06f          	j	80004de4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004e28:	02100513          	li	a0,33
    80004e2c:	ffffd097          	auipc	ra,0xffffd
    80004e30:	cfc080e7          	jalr	-772(ra) # 80001b28 <_ZN7Console4putcEc>
    Console::putc('\n');
    80004e34:	00a00513          	li	a0,10
    80004e38:	ffffd097          	auipc	ra,0xffffd
    80004e3c:	cf0080e7          	jalr	-784(ra) # 80001b28 <_ZN7Console4putcEc>
    mem_free(buffer);
    80004e40:	0084b503          	ld	a0,8(s1)
    80004e44:	ffffc097          	auipc	ra,0xffffc
    80004e48:	348080e7          	jalr	840(ra) # 8000118c <_Z8mem_freePv>
    delete itemAvailable;
    80004e4c:	0204b503          	ld	a0,32(s1)
    80004e50:	00050863          	beqz	a0,80004e60 <_ZN9BufferCPPD1Ev+0xb0>
    80004e54:	00053783          	ld	a5,0(a0)
    80004e58:	0087b783          	ld	a5,8(a5)
    80004e5c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004e60:	0184b503          	ld	a0,24(s1)
    80004e64:	00050863          	beqz	a0,80004e74 <_ZN9BufferCPPD1Ev+0xc4>
    80004e68:	00053783          	ld	a5,0(a0)
    80004e6c:	0087b783          	ld	a5,8(a5)
    80004e70:	000780e7          	jalr	a5
    delete mutexTail;
    80004e74:	0304b503          	ld	a0,48(s1)
    80004e78:	00050863          	beqz	a0,80004e88 <_ZN9BufferCPPD1Ev+0xd8>
    80004e7c:	00053783          	ld	a5,0(a0)
    80004e80:	0087b783          	ld	a5,8(a5)
    80004e84:	000780e7          	jalr	a5
    delete mutexHead;
    80004e88:	0284b503          	ld	a0,40(s1)
    80004e8c:	00050863          	beqz	a0,80004e9c <_ZN9BufferCPPD1Ev+0xec>
    80004e90:	00053783          	ld	a5,0(a0)
    80004e94:	0087b783          	ld	a5,8(a5)
    80004e98:	000780e7          	jalr	a5
}
    80004e9c:	01813083          	ld	ra,24(sp)
    80004ea0:	01013403          	ld	s0,16(sp)
    80004ea4:	00813483          	ld	s1,8(sp)
    80004ea8:	02010113          	addi	sp,sp,32
    80004eac:	00008067          	ret

0000000080004eb0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80004eb0:	fe010113          	addi	sp,sp,-32
    80004eb4:	00113c23          	sd	ra,24(sp)
    80004eb8:	00813823          	sd	s0,16(sp)
    80004ebc:	00913423          	sd	s1,8(sp)
    80004ec0:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004ec4:	00003517          	auipc	a0,0x3
    80004ec8:	46450513          	addi	a0,a0,1124 # 80008328 <CONSOLE_STATUS+0x318>
    80004ecc:	00000097          	auipc	ra,0x0
    80004ed0:	91c080e7          	jalr	-1764(ra) # 800047e8 <_Z11printStringPKc>
    int test = getc() - '0';
    80004ed4:	ffffc097          	auipc	ra,0xffffc
    80004ed8:	5b0080e7          	jalr	1456(ra) # 80001484 <_Z4getcv>
    80004edc:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80004ee0:	ffffc097          	auipc	ra,0xffffc
    80004ee4:	5a4080e7          	jalr	1444(ra) # 80001484 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80004ee8:	00700793          	li	a5,7
    80004eec:	0c97e663          	bltu	a5,s1,80004fb8 <_Z8userMainv+0x108>
    80004ef0:	00249493          	slli	s1,s1,0x2
    80004ef4:	00003717          	auipc	a4,0x3
    80004ef8:	61c70713          	addi	a4,a4,1564 # 80008510 <CONSOLE_STATUS+0x500>
    80004efc:	00e484b3          	add	s1,s1,a4
    80004f00:	0004a783          	lw	a5,0(s1)
    80004f04:	00e787b3          	add	a5,a5,a4
    80004f08:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80004f0c:	fffff097          	auipc	ra,0xfffff
    80004f10:	f54080e7          	jalr	-172(ra) # 80003e60 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004f14:	00003517          	auipc	a0,0x3
    80004f18:	43450513          	addi	a0,a0,1076 # 80008348 <CONSOLE_STATUS+0x338>
    80004f1c:	00000097          	auipc	ra,0x0
    80004f20:	8cc080e7          	jalr	-1844(ra) # 800047e8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80004f24:	01813083          	ld	ra,24(sp)
    80004f28:	01013403          	ld	s0,16(sp)
    80004f2c:	00813483          	ld	s1,8(sp)
    80004f30:	02010113          	addi	sp,sp,32
    80004f34:	00008067          	ret
            Threads_CPP_API_test();
    80004f38:	ffffe097          	auipc	ra,0xffffe
    80004f3c:	e08080e7          	jalr	-504(ra) # 80002d40 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80004f40:	00003517          	auipc	a0,0x3
    80004f44:	44850513          	addi	a0,a0,1096 # 80008388 <CONSOLE_STATUS+0x378>
    80004f48:	00000097          	auipc	ra,0x0
    80004f4c:	8a0080e7          	jalr	-1888(ra) # 800047e8 <_Z11printStringPKc>
            break;
    80004f50:	fd5ff06f          	j	80004f24 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80004f54:	ffffd097          	auipc	ra,0xffffd
    80004f58:	640080e7          	jalr	1600(ra) # 80002594 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004f5c:	00003517          	auipc	a0,0x3
    80004f60:	46c50513          	addi	a0,a0,1132 # 800083c8 <CONSOLE_STATUS+0x3b8>
    80004f64:	00000097          	auipc	ra,0x0
    80004f68:	884080e7          	jalr	-1916(ra) # 800047e8 <_Z11printStringPKc>
            break;
    80004f6c:	fb9ff06f          	j	80004f24 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80004f70:	fffff097          	auipc	ra,0xfffff
    80004f74:	234080e7          	jalr	564(ra) # 800041a4 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80004f78:	00003517          	auipc	a0,0x3
    80004f7c:	4a050513          	addi	a0,a0,1184 # 80008418 <CONSOLE_STATUS+0x408>
    80004f80:	00000097          	auipc	ra,0x0
    80004f84:	868080e7          	jalr	-1944(ra) # 800047e8 <_Z11printStringPKc>
            break;
    80004f88:	f9dff06f          	j	80004f24 <_Z8userMainv+0x74>
            System_Mode_test();
    80004f8c:	00000097          	auipc	ra,0x0
    80004f90:	64c080e7          	jalr	1612(ra) # 800055d8 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004f94:	00003517          	auipc	a0,0x3
    80004f98:	4dc50513          	addi	a0,a0,1244 # 80008470 <CONSOLE_STATUS+0x460>
    80004f9c:	00000097          	auipc	ra,0x0
    80004fa0:	84c080e7          	jalr	-1972(ra) # 800047e8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80004fa4:	00003517          	auipc	a0,0x3
    80004fa8:	4ec50513          	addi	a0,a0,1260 # 80008490 <CONSOLE_STATUS+0x480>
    80004fac:	00000097          	auipc	ra,0x0
    80004fb0:	83c080e7          	jalr	-1988(ra) # 800047e8 <_Z11printStringPKc>
            break;
    80004fb4:	f71ff06f          	j	80004f24 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80004fb8:	00003517          	auipc	a0,0x3
    80004fbc:	53050513          	addi	a0,a0,1328 # 800084e8 <CONSOLE_STATUS+0x4d8>
    80004fc0:	00000097          	auipc	ra,0x0
    80004fc4:	828080e7          	jalr	-2008(ra) # 800047e8 <_Z11printStringPKc>
    80004fc8:	f5dff06f          	j	80004f24 <_Z8userMainv+0x74>

0000000080004fcc <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80004fcc:	fe010113          	addi	sp,sp,-32
    80004fd0:	00113c23          	sd	ra,24(sp)
    80004fd4:	00813823          	sd	s0,16(sp)
    80004fd8:	00913423          	sd	s1,8(sp)
    80004fdc:	01213023          	sd	s2,0(sp)
    80004fe0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80004fe4:	00053903          	ld	s2,0(a0)
    int i = 6;
    80004fe8:	00600493          	li	s1,6
    while (--i > 0) {
    80004fec:	fff4849b          	addiw	s1,s1,-1
    80004ff0:	02905e63          	blez	s1,8000502c <_ZL9sleepyRunPv+0x60>

        printString("Hello ");
    80004ff4:	00003517          	auipc	a0,0x3
    80004ff8:	53c50513          	addi	a0,a0,1340 # 80008530 <CONSOLE_STATUS+0x520>
    80004ffc:	fffff097          	auipc	ra,0xfffff
    80005000:	7ec080e7          	jalr	2028(ra) # 800047e8 <_Z11printStringPKc>
        printInt(sleep_time);
    80005004:	00000613          	li	a2,0
    80005008:	00a00593          	li	a1,10
    8000500c:	0009051b          	sext.w	a0,s2
    80005010:	00000097          	auipc	ra,0x0
    80005014:	988080e7          	jalr	-1656(ra) # 80004998 <_Z8printIntiii>
        printString(" !\n");
    80005018:	00003517          	auipc	a0,0x3
    8000501c:	52050513          	addi	a0,a0,1312 # 80008538 <CONSOLE_STATUS+0x528>
    80005020:	fffff097          	auipc	ra,0xfffff
    80005024:	7c8080e7          	jalr	1992(ra) # 800047e8 <_Z11printStringPKc>
    while (--i > 0) {
    80005028:	fc5ff06f          	j	80004fec <_ZL9sleepyRunPv+0x20>
        //time_sleep(sleep_time);
    }
    finished[sleep_time/10-1] = true;
    8000502c:	00a00793          	li	a5,10
    80005030:	02f95933          	divu	s2,s2,a5
    80005034:	fff90913          	addi	s2,s2,-1
    80005038:	00005797          	auipc	a5,0x5
    8000503c:	3b878793          	addi	a5,a5,952 # 8000a3f0 <_ZL8finished>
    80005040:	01278933          	add	s2,a5,s2
    80005044:	00100793          	li	a5,1
    80005048:	00f90023          	sb	a5,0(s2)
}
    8000504c:	01813083          	ld	ra,24(sp)
    80005050:	01013403          	ld	s0,16(sp)
    80005054:	00813483          	ld	s1,8(sp)
    80005058:	00013903          	ld	s2,0(sp)
    8000505c:	02010113          	addi	sp,sp,32
    80005060:	00008067          	ret

0000000080005064 <_Z12testSleepingv>:

void testSleeping() {
    80005064:	fc010113          	addi	sp,sp,-64
    80005068:	02113c23          	sd	ra,56(sp)
    8000506c:	02813823          	sd	s0,48(sp)
    80005070:	02913423          	sd	s1,40(sp)
    80005074:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005078:	00a00793          	li	a5,10
    8000507c:	fcf43823          	sd	a5,-48(s0)
    80005080:	01400793          	li	a5,20
    80005084:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005088:	00000493          	li	s1,0
    8000508c:	02c0006f          	j	800050b8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005090:	00349793          	slli	a5,s1,0x3
    80005094:	fd040613          	addi	a2,s0,-48
    80005098:	00f60633          	add	a2,a2,a5
    8000509c:	00000597          	auipc	a1,0x0
    800050a0:	f3058593          	addi	a1,a1,-208 # 80004fcc <_ZL9sleepyRunPv>
    800050a4:	fc040513          	addi	a0,s0,-64
    800050a8:	00f50533          	add	a0,a0,a5
    800050ac:	ffffc097          	auipc	ra,0xffffc
    800050b0:	124080e7          	jalr	292(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800050b4:	0014849b          	addiw	s1,s1,1
    800050b8:	00100793          	li	a5,1
    800050bc:	fc97dae3          	bge	a5,s1,80005090 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800050c0:	00005797          	auipc	a5,0x5
    800050c4:	3307c783          	lbu	a5,816(a5) # 8000a3f0 <_ZL8finished>
    800050c8:	fe078ce3          	beqz	a5,800050c0 <_Z12testSleepingv+0x5c>
    800050cc:	00005797          	auipc	a5,0x5
    800050d0:	3257c783          	lbu	a5,805(a5) # 8000a3f1 <_ZL8finished+0x1>
    800050d4:	fe0786e3          	beqz	a5,800050c0 <_Z12testSleepingv+0x5c>
}
    800050d8:	03813083          	ld	ra,56(sp)
    800050dc:	03013403          	ld	s0,48(sp)
    800050e0:	02813483          	ld	s1,40(sp)
    800050e4:	04010113          	addi	sp,sp,64
    800050e8:	00008067          	ret

00000000800050ec <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800050ec:	fe010113          	addi	sp,sp,-32
    800050f0:	00113c23          	sd	ra,24(sp)
    800050f4:	00813823          	sd	s0,16(sp)
    800050f8:	00913423          	sd	s1,8(sp)
    800050fc:	01213023          	sd	s2,0(sp)
    80005100:	02010413          	addi	s0,sp,32
    80005104:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005108:	00100793          	li	a5,1
    8000510c:	02a7f863          	bgeu	a5,a0,8000513c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005110:	00a00793          	li	a5,10
    80005114:	02f577b3          	remu	a5,a0,a5
    80005118:	02078e63          	beqz	a5,80005154 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000511c:	fff48513          	addi	a0,s1,-1
    80005120:	00000097          	auipc	ra,0x0
    80005124:	fcc080e7          	jalr	-52(ra) # 800050ec <_ZL9fibonaccim>
    80005128:	00050913          	mv	s2,a0
    8000512c:	ffe48513          	addi	a0,s1,-2
    80005130:	00000097          	auipc	ra,0x0
    80005134:	fbc080e7          	jalr	-68(ra) # 800050ec <_ZL9fibonaccim>
    80005138:	00a90533          	add	a0,s2,a0
}
    8000513c:	01813083          	ld	ra,24(sp)
    80005140:	01013403          	ld	s0,16(sp)
    80005144:	00813483          	ld	s1,8(sp)
    80005148:	00013903          	ld	s2,0(sp)
    8000514c:	02010113          	addi	sp,sp,32
    80005150:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005154:	ffffc097          	auipc	ra,0xffffc
    80005158:	10c080e7          	jalr	268(ra) # 80001260 <_Z15thread_dispatchv>
    8000515c:	fc1ff06f          	j	8000511c <_ZL9fibonaccim+0x30>

0000000080005160 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005160:	fe010113          	addi	sp,sp,-32
    80005164:	00113c23          	sd	ra,24(sp)
    80005168:	00813823          	sd	s0,16(sp)
    8000516c:	00913423          	sd	s1,8(sp)
    80005170:	01213023          	sd	s2,0(sp)
    80005174:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005178:	00a00493          	li	s1,10
    8000517c:	0400006f          	j	800051bc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005180:	00003517          	auipc	a0,0x3
    80005184:	0f850513          	addi	a0,a0,248 # 80008278 <CONSOLE_STATUS+0x268>
    80005188:	fffff097          	auipc	ra,0xfffff
    8000518c:	660080e7          	jalr	1632(ra) # 800047e8 <_Z11printStringPKc>
    80005190:	00000613          	li	a2,0
    80005194:	00a00593          	li	a1,10
    80005198:	00048513          	mv	a0,s1
    8000519c:	fffff097          	auipc	ra,0xfffff
    800051a0:	7fc080e7          	jalr	2044(ra) # 80004998 <_Z8printIntiii>
    800051a4:	00003517          	auipc	a0,0x3
    800051a8:	2c450513          	addi	a0,a0,708 # 80008468 <CONSOLE_STATUS+0x458>
    800051ac:	fffff097          	auipc	ra,0xfffff
    800051b0:	63c080e7          	jalr	1596(ra) # 800047e8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800051b4:	0014849b          	addiw	s1,s1,1
    800051b8:	0ff4f493          	andi	s1,s1,255
    800051bc:	00c00793          	li	a5,12
    800051c0:	fc97f0e3          	bgeu	a5,s1,80005180 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800051c4:	00003517          	auipc	a0,0x3
    800051c8:	0bc50513          	addi	a0,a0,188 # 80008280 <CONSOLE_STATUS+0x270>
    800051cc:	fffff097          	auipc	ra,0xfffff
    800051d0:	61c080e7          	jalr	1564(ra) # 800047e8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800051d4:	00500313          	li	t1,5
    thread_dispatch();
    800051d8:	ffffc097          	auipc	ra,0xffffc
    800051dc:	088080e7          	jalr	136(ra) # 80001260 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800051e0:	01000513          	li	a0,16
    800051e4:	00000097          	auipc	ra,0x0
    800051e8:	f08080e7          	jalr	-248(ra) # 800050ec <_ZL9fibonaccim>
    800051ec:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800051f0:	00003517          	auipc	a0,0x3
    800051f4:	0a050513          	addi	a0,a0,160 # 80008290 <CONSOLE_STATUS+0x280>
    800051f8:	fffff097          	auipc	ra,0xfffff
    800051fc:	5f0080e7          	jalr	1520(ra) # 800047e8 <_Z11printStringPKc>
    80005200:	00000613          	li	a2,0
    80005204:	00a00593          	li	a1,10
    80005208:	0009051b          	sext.w	a0,s2
    8000520c:	fffff097          	auipc	ra,0xfffff
    80005210:	78c080e7          	jalr	1932(ra) # 80004998 <_Z8printIntiii>
    80005214:	00003517          	auipc	a0,0x3
    80005218:	25450513          	addi	a0,a0,596 # 80008468 <CONSOLE_STATUS+0x458>
    8000521c:	fffff097          	auipc	ra,0xfffff
    80005220:	5cc080e7          	jalr	1484(ra) # 800047e8 <_Z11printStringPKc>
    80005224:	0400006f          	j	80005264 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005228:	00003517          	auipc	a0,0x3
    8000522c:	05050513          	addi	a0,a0,80 # 80008278 <CONSOLE_STATUS+0x268>
    80005230:	fffff097          	auipc	ra,0xfffff
    80005234:	5b8080e7          	jalr	1464(ra) # 800047e8 <_Z11printStringPKc>
    80005238:	00000613          	li	a2,0
    8000523c:	00a00593          	li	a1,10
    80005240:	00048513          	mv	a0,s1
    80005244:	fffff097          	auipc	ra,0xfffff
    80005248:	754080e7          	jalr	1876(ra) # 80004998 <_Z8printIntiii>
    8000524c:	00003517          	auipc	a0,0x3
    80005250:	21c50513          	addi	a0,a0,540 # 80008468 <CONSOLE_STATUS+0x458>
    80005254:	fffff097          	auipc	ra,0xfffff
    80005258:	594080e7          	jalr	1428(ra) # 800047e8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000525c:	0014849b          	addiw	s1,s1,1
    80005260:	0ff4f493          	andi	s1,s1,255
    80005264:	00f00793          	li	a5,15
    80005268:	fc97f0e3          	bgeu	a5,s1,80005228 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000526c:	00003517          	auipc	a0,0x3
    80005270:	03450513          	addi	a0,a0,52 # 800082a0 <CONSOLE_STATUS+0x290>
    80005274:	fffff097          	auipc	ra,0xfffff
    80005278:	574080e7          	jalr	1396(ra) # 800047e8 <_Z11printStringPKc>
    finishedD = true;
    8000527c:	00100793          	li	a5,1
    80005280:	00005717          	auipc	a4,0x5
    80005284:	16f70923          	sb	a5,370(a4) # 8000a3f2 <_ZL9finishedD>
    thread_dispatch();
    80005288:	ffffc097          	auipc	ra,0xffffc
    8000528c:	fd8080e7          	jalr	-40(ra) # 80001260 <_Z15thread_dispatchv>
}
    80005290:	01813083          	ld	ra,24(sp)
    80005294:	01013403          	ld	s0,16(sp)
    80005298:	00813483          	ld	s1,8(sp)
    8000529c:	00013903          	ld	s2,0(sp)
    800052a0:	02010113          	addi	sp,sp,32
    800052a4:	00008067          	ret

00000000800052a8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800052a8:	fe010113          	addi	sp,sp,-32
    800052ac:	00113c23          	sd	ra,24(sp)
    800052b0:	00813823          	sd	s0,16(sp)
    800052b4:	00913423          	sd	s1,8(sp)
    800052b8:	01213023          	sd	s2,0(sp)
    800052bc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800052c0:	00000493          	li	s1,0
    800052c4:	0400006f          	j	80005304 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800052c8:	00003517          	auipc	a0,0x3
    800052cc:	f8050513          	addi	a0,a0,-128 # 80008248 <CONSOLE_STATUS+0x238>
    800052d0:	fffff097          	auipc	ra,0xfffff
    800052d4:	518080e7          	jalr	1304(ra) # 800047e8 <_Z11printStringPKc>
    800052d8:	00000613          	li	a2,0
    800052dc:	00a00593          	li	a1,10
    800052e0:	00048513          	mv	a0,s1
    800052e4:	fffff097          	auipc	ra,0xfffff
    800052e8:	6b4080e7          	jalr	1716(ra) # 80004998 <_Z8printIntiii>
    800052ec:	00003517          	auipc	a0,0x3
    800052f0:	17c50513          	addi	a0,a0,380 # 80008468 <CONSOLE_STATUS+0x458>
    800052f4:	fffff097          	auipc	ra,0xfffff
    800052f8:	4f4080e7          	jalr	1268(ra) # 800047e8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800052fc:	0014849b          	addiw	s1,s1,1
    80005300:	0ff4f493          	andi	s1,s1,255
    80005304:	00200793          	li	a5,2
    80005308:	fc97f0e3          	bgeu	a5,s1,800052c8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000530c:	00003517          	auipc	a0,0x3
    80005310:	f4450513          	addi	a0,a0,-188 # 80008250 <CONSOLE_STATUS+0x240>
    80005314:	fffff097          	auipc	ra,0xfffff
    80005318:	4d4080e7          	jalr	1236(ra) # 800047e8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000531c:	00700313          	li	t1,7
    thread_dispatch();
    80005320:	ffffc097          	auipc	ra,0xffffc
    80005324:	f40080e7          	jalr	-192(ra) # 80001260 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005328:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000532c:	00003517          	auipc	a0,0x3
    80005330:	f3450513          	addi	a0,a0,-204 # 80008260 <CONSOLE_STATUS+0x250>
    80005334:	fffff097          	auipc	ra,0xfffff
    80005338:	4b4080e7          	jalr	1204(ra) # 800047e8 <_Z11printStringPKc>
    8000533c:	00000613          	li	a2,0
    80005340:	00a00593          	li	a1,10
    80005344:	0009051b          	sext.w	a0,s2
    80005348:	fffff097          	auipc	ra,0xfffff
    8000534c:	650080e7          	jalr	1616(ra) # 80004998 <_Z8printIntiii>
    80005350:	00003517          	auipc	a0,0x3
    80005354:	11850513          	addi	a0,a0,280 # 80008468 <CONSOLE_STATUS+0x458>
    80005358:	fffff097          	auipc	ra,0xfffff
    8000535c:	490080e7          	jalr	1168(ra) # 800047e8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005360:	00c00513          	li	a0,12
    80005364:	00000097          	auipc	ra,0x0
    80005368:	d88080e7          	jalr	-632(ra) # 800050ec <_ZL9fibonaccim>
    8000536c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005370:	00003517          	auipc	a0,0x3
    80005374:	ef850513          	addi	a0,a0,-264 # 80008268 <CONSOLE_STATUS+0x258>
    80005378:	fffff097          	auipc	ra,0xfffff
    8000537c:	470080e7          	jalr	1136(ra) # 800047e8 <_Z11printStringPKc>
    80005380:	00000613          	li	a2,0
    80005384:	00a00593          	li	a1,10
    80005388:	0009051b          	sext.w	a0,s2
    8000538c:	fffff097          	auipc	ra,0xfffff
    80005390:	60c080e7          	jalr	1548(ra) # 80004998 <_Z8printIntiii>
    80005394:	00003517          	auipc	a0,0x3
    80005398:	0d450513          	addi	a0,a0,212 # 80008468 <CONSOLE_STATUS+0x458>
    8000539c:	fffff097          	auipc	ra,0xfffff
    800053a0:	44c080e7          	jalr	1100(ra) # 800047e8 <_Z11printStringPKc>
    800053a4:	0400006f          	j	800053e4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800053a8:	00003517          	auipc	a0,0x3
    800053ac:	ea050513          	addi	a0,a0,-352 # 80008248 <CONSOLE_STATUS+0x238>
    800053b0:	fffff097          	auipc	ra,0xfffff
    800053b4:	438080e7          	jalr	1080(ra) # 800047e8 <_Z11printStringPKc>
    800053b8:	00000613          	li	a2,0
    800053bc:	00a00593          	li	a1,10
    800053c0:	00048513          	mv	a0,s1
    800053c4:	fffff097          	auipc	ra,0xfffff
    800053c8:	5d4080e7          	jalr	1492(ra) # 80004998 <_Z8printIntiii>
    800053cc:	00003517          	auipc	a0,0x3
    800053d0:	09c50513          	addi	a0,a0,156 # 80008468 <CONSOLE_STATUS+0x458>
    800053d4:	fffff097          	auipc	ra,0xfffff
    800053d8:	414080e7          	jalr	1044(ra) # 800047e8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800053dc:	0014849b          	addiw	s1,s1,1
    800053e0:	0ff4f493          	andi	s1,s1,255
    800053e4:	00500793          	li	a5,5
    800053e8:	fc97f0e3          	bgeu	a5,s1,800053a8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800053ec:	00003517          	auipc	a0,0x3
    800053f0:	e3450513          	addi	a0,a0,-460 # 80008220 <CONSOLE_STATUS+0x210>
    800053f4:	fffff097          	auipc	ra,0xfffff
    800053f8:	3f4080e7          	jalr	1012(ra) # 800047e8 <_Z11printStringPKc>
    finishedC = true;
    800053fc:	00100793          	li	a5,1
    80005400:	00005717          	auipc	a4,0x5
    80005404:	fef709a3          	sb	a5,-13(a4) # 8000a3f3 <_ZL9finishedC>
    thread_dispatch();
    80005408:	ffffc097          	auipc	ra,0xffffc
    8000540c:	e58080e7          	jalr	-424(ra) # 80001260 <_Z15thread_dispatchv>
}
    80005410:	01813083          	ld	ra,24(sp)
    80005414:	01013403          	ld	s0,16(sp)
    80005418:	00813483          	ld	s1,8(sp)
    8000541c:	00013903          	ld	s2,0(sp)
    80005420:	02010113          	addi	sp,sp,32
    80005424:	00008067          	ret

0000000080005428 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005428:	fe010113          	addi	sp,sp,-32
    8000542c:	00113c23          	sd	ra,24(sp)
    80005430:	00813823          	sd	s0,16(sp)
    80005434:	00913423          	sd	s1,8(sp)
    80005438:	01213023          	sd	s2,0(sp)
    8000543c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005440:	00000913          	li	s2,0
    80005444:	0400006f          	j	80005484 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005448:	ffffc097          	auipc	ra,0xffffc
    8000544c:	e18080e7          	jalr	-488(ra) # 80001260 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005450:	00148493          	addi	s1,s1,1
    80005454:	000027b7          	lui	a5,0x2
    80005458:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000545c:	0097ee63          	bltu	a5,s1,80005478 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005460:	00000713          	li	a4,0
    80005464:	000077b7          	lui	a5,0x7
    80005468:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000546c:	fce7eee3          	bltu	a5,a4,80005448 <_ZL11workerBodyBPv+0x20>
    80005470:	00170713          	addi	a4,a4,1
    80005474:	ff1ff06f          	j	80005464 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005478:	00a00793          	li	a5,10
    8000547c:	04f90663          	beq	s2,a5,800054c8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005480:	00190913          	addi	s2,s2,1
    80005484:	00f00793          	li	a5,15
    80005488:	0527e463          	bltu	a5,s2,800054d0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000548c:	00003517          	auipc	a0,0x3
    80005490:	da450513          	addi	a0,a0,-604 # 80008230 <CONSOLE_STATUS+0x220>
    80005494:	fffff097          	auipc	ra,0xfffff
    80005498:	354080e7          	jalr	852(ra) # 800047e8 <_Z11printStringPKc>
    8000549c:	00000613          	li	a2,0
    800054a0:	00a00593          	li	a1,10
    800054a4:	0009051b          	sext.w	a0,s2
    800054a8:	fffff097          	auipc	ra,0xfffff
    800054ac:	4f0080e7          	jalr	1264(ra) # 80004998 <_Z8printIntiii>
    800054b0:	00003517          	auipc	a0,0x3
    800054b4:	fb850513          	addi	a0,a0,-72 # 80008468 <CONSOLE_STATUS+0x458>
    800054b8:	fffff097          	auipc	ra,0xfffff
    800054bc:	330080e7          	jalr	816(ra) # 800047e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800054c0:	00000493          	li	s1,0
    800054c4:	f91ff06f          	j	80005454 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800054c8:	14102ff3          	csrr	t6,sepc
    800054cc:	fb5ff06f          	j	80005480 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800054d0:	00003517          	auipc	a0,0x3
    800054d4:	d6850513          	addi	a0,a0,-664 # 80008238 <CONSOLE_STATUS+0x228>
    800054d8:	fffff097          	auipc	ra,0xfffff
    800054dc:	310080e7          	jalr	784(ra) # 800047e8 <_Z11printStringPKc>
    finishedB = true;
    800054e0:	00100793          	li	a5,1
    800054e4:	00005717          	auipc	a4,0x5
    800054e8:	f0f70823          	sb	a5,-240(a4) # 8000a3f4 <_ZL9finishedB>
    thread_dispatch();
    800054ec:	ffffc097          	auipc	ra,0xffffc
    800054f0:	d74080e7          	jalr	-652(ra) # 80001260 <_Z15thread_dispatchv>
}
    800054f4:	01813083          	ld	ra,24(sp)
    800054f8:	01013403          	ld	s0,16(sp)
    800054fc:	00813483          	ld	s1,8(sp)
    80005500:	00013903          	ld	s2,0(sp)
    80005504:	02010113          	addi	sp,sp,32
    80005508:	00008067          	ret

000000008000550c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000550c:	fe010113          	addi	sp,sp,-32
    80005510:	00113c23          	sd	ra,24(sp)
    80005514:	00813823          	sd	s0,16(sp)
    80005518:	00913423          	sd	s1,8(sp)
    8000551c:	01213023          	sd	s2,0(sp)
    80005520:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005524:	00000913          	li	s2,0
    80005528:	0380006f          	j	80005560 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000552c:	ffffc097          	auipc	ra,0xffffc
    80005530:	d34080e7          	jalr	-716(ra) # 80001260 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005534:	00148493          	addi	s1,s1,1
    80005538:	000027b7          	lui	a5,0x2
    8000553c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005540:	0097ee63          	bltu	a5,s1,8000555c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005544:	00000713          	li	a4,0
    80005548:	000077b7          	lui	a5,0x7
    8000554c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005550:	fce7eee3          	bltu	a5,a4,8000552c <_ZL11workerBodyAPv+0x20>
    80005554:	00170713          	addi	a4,a4,1
    80005558:	ff1ff06f          	j	80005548 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000555c:	00190913          	addi	s2,s2,1
    80005560:	00900793          	li	a5,9
    80005564:	0527e063          	bltu	a5,s2,800055a4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005568:	00003517          	auipc	a0,0x3
    8000556c:	cb050513          	addi	a0,a0,-848 # 80008218 <CONSOLE_STATUS+0x208>
    80005570:	fffff097          	auipc	ra,0xfffff
    80005574:	278080e7          	jalr	632(ra) # 800047e8 <_Z11printStringPKc>
    80005578:	00000613          	li	a2,0
    8000557c:	00a00593          	li	a1,10
    80005580:	0009051b          	sext.w	a0,s2
    80005584:	fffff097          	auipc	ra,0xfffff
    80005588:	414080e7          	jalr	1044(ra) # 80004998 <_Z8printIntiii>
    8000558c:	00003517          	auipc	a0,0x3
    80005590:	edc50513          	addi	a0,a0,-292 # 80008468 <CONSOLE_STATUS+0x458>
    80005594:	fffff097          	auipc	ra,0xfffff
    80005598:	254080e7          	jalr	596(ra) # 800047e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000559c:	00000493          	li	s1,0
    800055a0:	f99ff06f          	j	80005538 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800055a4:	00003517          	auipc	a0,0x3
    800055a8:	c7c50513          	addi	a0,a0,-900 # 80008220 <CONSOLE_STATUS+0x210>
    800055ac:	fffff097          	auipc	ra,0xfffff
    800055b0:	23c080e7          	jalr	572(ra) # 800047e8 <_Z11printStringPKc>
    finishedA = true;
    800055b4:	00100793          	li	a5,1
    800055b8:	00005717          	auipc	a4,0x5
    800055bc:	e2f70ea3          	sb	a5,-451(a4) # 8000a3f5 <_ZL9finishedA>
}
    800055c0:	01813083          	ld	ra,24(sp)
    800055c4:	01013403          	ld	s0,16(sp)
    800055c8:	00813483          	ld	s1,8(sp)
    800055cc:	00013903          	ld	s2,0(sp)
    800055d0:	02010113          	addi	sp,sp,32
    800055d4:	00008067          	ret

00000000800055d8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800055d8:	fd010113          	addi	sp,sp,-48
    800055dc:	02113423          	sd	ra,40(sp)
    800055e0:	02813023          	sd	s0,32(sp)
    800055e4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800055e8:	00000613          	li	a2,0
    800055ec:	00000597          	auipc	a1,0x0
    800055f0:	f2058593          	addi	a1,a1,-224 # 8000550c <_ZL11workerBodyAPv>
    800055f4:	fd040513          	addi	a0,s0,-48
    800055f8:	ffffc097          	auipc	ra,0xffffc
    800055fc:	bd8080e7          	jalr	-1064(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005600:	00003517          	auipc	a0,0x3
    80005604:	cb050513          	addi	a0,a0,-848 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80005608:	fffff097          	auipc	ra,0xfffff
    8000560c:	1e0080e7          	jalr	480(ra) # 800047e8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005610:	00000613          	li	a2,0
    80005614:	00000597          	auipc	a1,0x0
    80005618:	e1458593          	addi	a1,a1,-492 # 80005428 <_ZL11workerBodyBPv>
    8000561c:	fd840513          	addi	a0,s0,-40
    80005620:	ffffc097          	auipc	ra,0xffffc
    80005624:	bb0080e7          	jalr	-1104(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005628:	00003517          	auipc	a0,0x3
    8000562c:	ca050513          	addi	a0,a0,-864 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80005630:	fffff097          	auipc	ra,0xfffff
    80005634:	1b8080e7          	jalr	440(ra) # 800047e8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005638:	00000613          	li	a2,0
    8000563c:	00000597          	auipc	a1,0x0
    80005640:	c6c58593          	addi	a1,a1,-916 # 800052a8 <_ZL11workerBodyCPv>
    80005644:	fe040513          	addi	a0,s0,-32
    80005648:	ffffc097          	auipc	ra,0xffffc
    8000564c:	b88080e7          	jalr	-1144(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005650:	00003517          	auipc	a0,0x3
    80005654:	c9050513          	addi	a0,a0,-880 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80005658:	fffff097          	auipc	ra,0xfffff
    8000565c:	190080e7          	jalr	400(ra) # 800047e8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005660:	00000613          	li	a2,0
    80005664:	00000597          	auipc	a1,0x0
    80005668:	afc58593          	addi	a1,a1,-1284 # 80005160 <_ZL11workerBodyDPv>
    8000566c:	fe840513          	addi	a0,s0,-24
    80005670:	ffffc097          	auipc	ra,0xffffc
    80005674:	b60080e7          	jalr	-1184(ra) # 800011d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005678:	00003517          	auipc	a0,0x3
    8000567c:	c8050513          	addi	a0,a0,-896 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80005680:	fffff097          	auipc	ra,0xfffff
    80005684:	168080e7          	jalr	360(ra) # 800047e8 <_Z11printStringPKc>
    80005688:	00c0006f          	j	80005694 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000568c:	ffffc097          	auipc	ra,0xffffc
    80005690:	bd4080e7          	jalr	-1068(ra) # 80001260 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005694:	00005797          	auipc	a5,0x5
    80005698:	d617c783          	lbu	a5,-671(a5) # 8000a3f5 <_ZL9finishedA>
    8000569c:	fe0788e3          	beqz	a5,8000568c <_Z16System_Mode_testv+0xb4>
    800056a0:	00005797          	auipc	a5,0x5
    800056a4:	d547c783          	lbu	a5,-684(a5) # 8000a3f4 <_ZL9finishedB>
    800056a8:	fe0782e3          	beqz	a5,8000568c <_Z16System_Mode_testv+0xb4>
    800056ac:	00005797          	auipc	a5,0x5
    800056b0:	d477c783          	lbu	a5,-697(a5) # 8000a3f3 <_ZL9finishedC>
    800056b4:	fc078ce3          	beqz	a5,8000568c <_Z16System_Mode_testv+0xb4>
    800056b8:	00005797          	auipc	a5,0x5
    800056bc:	d3a7c783          	lbu	a5,-710(a5) # 8000a3f2 <_ZL9finishedD>
    800056c0:	fc0786e3          	beqz	a5,8000568c <_Z16System_Mode_testv+0xb4>
    }

}
    800056c4:	02813083          	ld	ra,40(sp)
    800056c8:	02013403          	ld	s0,32(sp)
    800056cc:	03010113          	addi	sp,sp,48
    800056d0:	00008067          	ret

00000000800056d4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800056d4:	fe010113          	addi	sp,sp,-32
    800056d8:	00113c23          	sd	ra,24(sp)
    800056dc:	00813823          	sd	s0,16(sp)
    800056e0:	00913423          	sd	s1,8(sp)
    800056e4:	01213023          	sd	s2,0(sp)
    800056e8:	02010413          	addi	s0,sp,32
    800056ec:	00050493          	mv	s1,a0
    800056f0:	00058913          	mv	s2,a1
    800056f4:	0015879b          	addiw	a5,a1,1
    800056f8:	0007851b          	sext.w	a0,a5
    800056fc:	00f4a023          	sw	a5,0(s1)
    80005700:	0004a823          	sw	zero,16(s1)
    80005704:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005708:	00251513          	slli	a0,a0,0x2
    8000570c:	ffffc097          	auipc	ra,0xffffc
    80005710:	a38080e7          	jalr	-1480(ra) # 80001144 <_Z9mem_allocm>
    80005714:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005718:	00000593          	li	a1,0
    8000571c:	02048513          	addi	a0,s1,32
    80005720:	ffffc097          	auipc	ra,0xffffc
    80005724:	bbc080e7          	jalr	-1092(ra) # 800012dc <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80005728:	00090593          	mv	a1,s2
    8000572c:	01848513          	addi	a0,s1,24
    80005730:	ffffc097          	auipc	ra,0xffffc
    80005734:	bac080e7          	jalr	-1108(ra) # 800012dc <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80005738:	00100593          	li	a1,1
    8000573c:	02848513          	addi	a0,s1,40
    80005740:	ffffc097          	auipc	ra,0xffffc
    80005744:	b9c080e7          	jalr	-1124(ra) # 800012dc <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80005748:	00100593          	li	a1,1
    8000574c:	03048513          	addi	a0,s1,48
    80005750:	ffffc097          	auipc	ra,0xffffc
    80005754:	b8c080e7          	jalr	-1140(ra) # 800012dc <_Z8sem_openPP3Semj>
}
    80005758:	01813083          	ld	ra,24(sp)
    8000575c:	01013403          	ld	s0,16(sp)
    80005760:	00813483          	ld	s1,8(sp)
    80005764:	00013903          	ld	s2,0(sp)
    80005768:	02010113          	addi	sp,sp,32
    8000576c:	00008067          	ret

0000000080005770 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005770:	fe010113          	addi	sp,sp,-32
    80005774:	00113c23          	sd	ra,24(sp)
    80005778:	00813823          	sd	s0,16(sp)
    8000577c:	00913423          	sd	s1,8(sp)
    80005780:	01213023          	sd	s2,0(sp)
    80005784:	02010413          	addi	s0,sp,32
    80005788:	00050493          	mv	s1,a0
    8000578c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005790:	01853503          	ld	a0,24(a0)
    80005794:	ffffc097          	auipc	ra,0xffffc
    80005798:	bd8080e7          	jalr	-1064(ra) # 8000136c <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    8000579c:	0304b503          	ld	a0,48(s1)
    800057a0:	ffffc097          	auipc	ra,0xffffc
    800057a4:	bcc080e7          	jalr	-1076(ra) # 8000136c <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    800057a8:	0084b783          	ld	a5,8(s1)
    800057ac:	0144a703          	lw	a4,20(s1)
    800057b0:	00271713          	slli	a4,a4,0x2
    800057b4:	00e787b3          	add	a5,a5,a4
    800057b8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800057bc:	0144a783          	lw	a5,20(s1)
    800057c0:	0017879b          	addiw	a5,a5,1
    800057c4:	0004a703          	lw	a4,0(s1)
    800057c8:	02e7e7bb          	remw	a5,a5,a4
    800057cc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800057d0:	0304b503          	ld	a0,48(s1)
    800057d4:	ffffc097          	auipc	ra,0xffffc
    800057d8:	bdc080e7          	jalr	-1060(ra) # 800013b0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    800057dc:	0204b503          	ld	a0,32(s1)
    800057e0:	ffffc097          	auipc	ra,0xffffc
    800057e4:	bd0080e7          	jalr	-1072(ra) # 800013b0 <_Z10sem_signalP3Sem>

}
    800057e8:	01813083          	ld	ra,24(sp)
    800057ec:	01013403          	ld	s0,16(sp)
    800057f0:	00813483          	ld	s1,8(sp)
    800057f4:	00013903          	ld	s2,0(sp)
    800057f8:	02010113          	addi	sp,sp,32
    800057fc:	00008067          	ret

0000000080005800 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005800:	fe010113          	addi	sp,sp,-32
    80005804:	00113c23          	sd	ra,24(sp)
    80005808:	00813823          	sd	s0,16(sp)
    8000580c:	00913423          	sd	s1,8(sp)
    80005810:	01213023          	sd	s2,0(sp)
    80005814:	02010413          	addi	s0,sp,32
    80005818:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000581c:	02053503          	ld	a0,32(a0)
    80005820:	ffffc097          	auipc	ra,0xffffc
    80005824:	b4c080e7          	jalr	-1204(ra) # 8000136c <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80005828:	0284b503          	ld	a0,40(s1)
    8000582c:	ffffc097          	auipc	ra,0xffffc
    80005830:	b40080e7          	jalr	-1216(ra) # 8000136c <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80005834:	0084b703          	ld	a4,8(s1)
    80005838:	0104a783          	lw	a5,16(s1)
    8000583c:	00279693          	slli	a3,a5,0x2
    80005840:	00d70733          	add	a4,a4,a3
    80005844:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005848:	0017879b          	addiw	a5,a5,1
    8000584c:	0004a703          	lw	a4,0(s1)
    80005850:	02e7e7bb          	remw	a5,a5,a4
    80005854:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005858:	0284b503          	ld	a0,40(s1)
    8000585c:	ffffc097          	auipc	ra,0xffffc
    80005860:	b54080e7          	jalr	-1196(ra) # 800013b0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80005864:	0184b503          	ld	a0,24(s1)
    80005868:	ffffc097          	auipc	ra,0xffffc
    8000586c:	b48080e7          	jalr	-1208(ra) # 800013b0 <_Z10sem_signalP3Sem>

    return ret;
}
    80005870:	00090513          	mv	a0,s2
    80005874:	01813083          	ld	ra,24(sp)
    80005878:	01013403          	ld	s0,16(sp)
    8000587c:	00813483          	ld	s1,8(sp)
    80005880:	00013903          	ld	s2,0(sp)
    80005884:	02010113          	addi	sp,sp,32
    80005888:	00008067          	ret

000000008000588c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000588c:	fe010113          	addi	sp,sp,-32
    80005890:	00113c23          	sd	ra,24(sp)
    80005894:	00813823          	sd	s0,16(sp)
    80005898:	00913423          	sd	s1,8(sp)
    8000589c:	01213023          	sd	s2,0(sp)
    800058a0:	02010413          	addi	s0,sp,32
    800058a4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800058a8:	02853503          	ld	a0,40(a0)
    800058ac:	ffffc097          	auipc	ra,0xffffc
    800058b0:	ac0080e7          	jalr	-1344(ra) # 8000136c <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    800058b4:	0304b503          	ld	a0,48(s1)
    800058b8:	ffffc097          	auipc	ra,0xffffc
    800058bc:	ab4080e7          	jalr	-1356(ra) # 8000136c <_Z8sem_waitP3Sem>

    if (tail >= head) {
    800058c0:	0144a783          	lw	a5,20(s1)
    800058c4:	0104a903          	lw	s2,16(s1)
    800058c8:	0327ce63          	blt	a5,s2,80005904 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800058cc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800058d0:	0304b503          	ld	a0,48(s1)
    800058d4:	ffffc097          	auipc	ra,0xffffc
    800058d8:	adc080e7          	jalr	-1316(ra) # 800013b0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    800058dc:	0284b503          	ld	a0,40(s1)
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	ad0080e7          	jalr	-1328(ra) # 800013b0 <_Z10sem_signalP3Sem>

    return ret;
}
    800058e8:	00090513          	mv	a0,s2
    800058ec:	01813083          	ld	ra,24(sp)
    800058f0:	01013403          	ld	s0,16(sp)
    800058f4:	00813483          	ld	s1,8(sp)
    800058f8:	00013903          	ld	s2,0(sp)
    800058fc:	02010113          	addi	sp,sp,32
    80005900:	00008067          	ret
        ret = cap - head + tail;
    80005904:	0004a703          	lw	a4,0(s1)
    80005908:	4127093b          	subw	s2,a4,s2
    8000590c:	00f9093b          	addw	s2,s2,a5
    80005910:	fc1ff06f          	j	800058d0 <_ZN6Buffer6getCntEv+0x44>

0000000080005914 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005914:	fe010113          	addi	sp,sp,-32
    80005918:	00113c23          	sd	ra,24(sp)
    8000591c:	00813823          	sd	s0,16(sp)
    80005920:	00913423          	sd	s1,8(sp)
    80005924:	02010413          	addi	s0,sp,32
    80005928:	00050493          	mv	s1,a0
    putc('\n');
    8000592c:	00a00513          	li	a0,10
    80005930:	ffffc097          	auipc	ra,0xffffc
    80005934:	b94080e7          	jalr	-1132(ra) # 800014c4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005938:	00003517          	auipc	a0,0x3
    8000593c:	9d850513          	addi	a0,a0,-1576 # 80008310 <CONSOLE_STATUS+0x300>
    80005940:	fffff097          	auipc	ra,0xfffff
    80005944:	ea8080e7          	jalr	-344(ra) # 800047e8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005948:	00048513          	mv	a0,s1
    8000594c:	00000097          	auipc	ra,0x0
    80005950:	f40080e7          	jalr	-192(ra) # 8000588c <_ZN6Buffer6getCntEv>
    80005954:	02a05c63          	blez	a0,8000598c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005958:	0084b783          	ld	a5,8(s1)
    8000595c:	0104a703          	lw	a4,16(s1)
    80005960:	00271713          	slli	a4,a4,0x2
    80005964:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005968:	0007c503          	lbu	a0,0(a5)
    8000596c:	ffffc097          	auipc	ra,0xffffc
    80005970:	b58080e7          	jalr	-1192(ra) # 800014c4 <_Z4putcc>
        head = (head + 1) % cap;
    80005974:	0104a783          	lw	a5,16(s1)
    80005978:	0017879b          	addiw	a5,a5,1
    8000597c:	0004a703          	lw	a4,0(s1)
    80005980:	02e7e7bb          	remw	a5,a5,a4
    80005984:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005988:	fc1ff06f          	j	80005948 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000598c:	02100513          	li	a0,33
    80005990:	ffffc097          	auipc	ra,0xffffc
    80005994:	b34080e7          	jalr	-1228(ra) # 800014c4 <_Z4putcc>
    putc('\n');
    80005998:	00a00513          	li	a0,10
    8000599c:	ffffc097          	auipc	ra,0xffffc
    800059a0:	b28080e7          	jalr	-1240(ra) # 800014c4 <_Z4putcc>
    mem_free(buffer);
    800059a4:	0084b503          	ld	a0,8(s1)
    800059a8:	ffffb097          	auipc	ra,0xffffb
    800059ac:	7e4080e7          	jalr	2020(ra) # 8000118c <_Z8mem_freePv>
    sem_close(itemAvailable);
    800059b0:	0204b503          	ld	a0,32(s1)
    800059b4:	ffffc097          	auipc	ra,0xffffc
    800059b8:	974080e7          	jalr	-1676(ra) # 80001328 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    800059bc:	0184b503          	ld	a0,24(s1)
    800059c0:	ffffc097          	auipc	ra,0xffffc
    800059c4:	968080e7          	jalr	-1688(ra) # 80001328 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    800059c8:	0304b503          	ld	a0,48(s1)
    800059cc:	ffffc097          	auipc	ra,0xffffc
    800059d0:	95c080e7          	jalr	-1700(ra) # 80001328 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    800059d4:	0284b503          	ld	a0,40(s1)
    800059d8:	ffffc097          	auipc	ra,0xffffc
    800059dc:	950080e7          	jalr	-1712(ra) # 80001328 <_Z9sem_closeP3Sem>
}
    800059e0:	01813083          	ld	ra,24(sp)
    800059e4:	01013403          	ld	s0,16(sp)
    800059e8:	00813483          	ld	s1,8(sp)
    800059ec:	02010113          	addi	sp,sp,32
    800059f0:	00008067          	ret

00000000800059f4 <start>:
    800059f4:	ff010113          	addi	sp,sp,-16
    800059f8:	00813423          	sd	s0,8(sp)
    800059fc:	01010413          	addi	s0,sp,16
    80005a00:	300027f3          	csrr	a5,mstatus
    80005a04:	ffffe737          	lui	a4,0xffffe
    80005a08:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff319f>
    80005a0c:	00e7f7b3          	and	a5,a5,a4
    80005a10:	00001737          	lui	a4,0x1
    80005a14:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005a18:	00e7e7b3          	or	a5,a5,a4
    80005a1c:	30079073          	csrw	mstatus,a5
    80005a20:	00000797          	auipc	a5,0x0
    80005a24:	16078793          	addi	a5,a5,352 # 80005b80 <system_main>
    80005a28:	34179073          	csrw	mepc,a5
    80005a2c:	00000793          	li	a5,0
    80005a30:	18079073          	csrw	satp,a5
    80005a34:	000107b7          	lui	a5,0x10
    80005a38:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005a3c:	30279073          	csrw	medeleg,a5
    80005a40:	30379073          	csrw	mideleg,a5
    80005a44:	104027f3          	csrr	a5,sie
    80005a48:	2227e793          	ori	a5,a5,546
    80005a4c:	10479073          	csrw	sie,a5
    80005a50:	fff00793          	li	a5,-1
    80005a54:	00a7d793          	srli	a5,a5,0xa
    80005a58:	3b079073          	csrw	pmpaddr0,a5
    80005a5c:	00f00793          	li	a5,15
    80005a60:	3a079073          	csrw	pmpcfg0,a5
    80005a64:	f14027f3          	csrr	a5,mhartid
    80005a68:	0200c737          	lui	a4,0x200c
    80005a6c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005a70:	0007869b          	sext.w	a3,a5
    80005a74:	00269713          	slli	a4,a3,0x2
    80005a78:	000f4637          	lui	a2,0xf4
    80005a7c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005a80:	00d70733          	add	a4,a4,a3
    80005a84:	0037979b          	slliw	a5,a5,0x3
    80005a88:	020046b7          	lui	a3,0x2004
    80005a8c:	00d787b3          	add	a5,a5,a3
    80005a90:	00c585b3          	add	a1,a1,a2
    80005a94:	00371693          	slli	a3,a4,0x3
    80005a98:	00005717          	auipc	a4,0x5
    80005a9c:	96870713          	addi	a4,a4,-1688 # 8000a400 <timer_scratch>
    80005aa0:	00b7b023          	sd	a1,0(a5)
    80005aa4:	00d70733          	add	a4,a4,a3
    80005aa8:	00f73c23          	sd	a5,24(a4)
    80005aac:	02c73023          	sd	a2,32(a4)
    80005ab0:	34071073          	csrw	mscratch,a4
    80005ab4:	00000797          	auipc	a5,0x0
    80005ab8:	6ec78793          	addi	a5,a5,1772 # 800061a0 <timervec>
    80005abc:	30579073          	csrw	mtvec,a5
    80005ac0:	300027f3          	csrr	a5,mstatus
    80005ac4:	0087e793          	ori	a5,a5,8
    80005ac8:	30079073          	csrw	mstatus,a5
    80005acc:	304027f3          	csrr	a5,mie
    80005ad0:	0807e793          	ori	a5,a5,128
    80005ad4:	30479073          	csrw	mie,a5
    80005ad8:	f14027f3          	csrr	a5,mhartid
    80005adc:	0007879b          	sext.w	a5,a5
    80005ae0:	00078213          	mv	tp,a5
    80005ae4:	30200073          	mret
    80005ae8:	00813403          	ld	s0,8(sp)
    80005aec:	01010113          	addi	sp,sp,16
    80005af0:	00008067          	ret

0000000080005af4 <timerinit>:
    80005af4:	ff010113          	addi	sp,sp,-16
    80005af8:	00813423          	sd	s0,8(sp)
    80005afc:	01010413          	addi	s0,sp,16
    80005b00:	f14027f3          	csrr	a5,mhartid
    80005b04:	0200c737          	lui	a4,0x200c
    80005b08:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005b0c:	0007869b          	sext.w	a3,a5
    80005b10:	00269713          	slli	a4,a3,0x2
    80005b14:	000f4637          	lui	a2,0xf4
    80005b18:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005b1c:	00d70733          	add	a4,a4,a3
    80005b20:	0037979b          	slliw	a5,a5,0x3
    80005b24:	020046b7          	lui	a3,0x2004
    80005b28:	00d787b3          	add	a5,a5,a3
    80005b2c:	00c585b3          	add	a1,a1,a2
    80005b30:	00371693          	slli	a3,a4,0x3
    80005b34:	00005717          	auipc	a4,0x5
    80005b38:	8cc70713          	addi	a4,a4,-1844 # 8000a400 <timer_scratch>
    80005b3c:	00b7b023          	sd	a1,0(a5)
    80005b40:	00d70733          	add	a4,a4,a3
    80005b44:	00f73c23          	sd	a5,24(a4)
    80005b48:	02c73023          	sd	a2,32(a4)
    80005b4c:	34071073          	csrw	mscratch,a4
    80005b50:	00000797          	auipc	a5,0x0
    80005b54:	65078793          	addi	a5,a5,1616 # 800061a0 <timervec>
    80005b58:	30579073          	csrw	mtvec,a5
    80005b5c:	300027f3          	csrr	a5,mstatus
    80005b60:	0087e793          	ori	a5,a5,8
    80005b64:	30079073          	csrw	mstatus,a5
    80005b68:	304027f3          	csrr	a5,mie
    80005b6c:	0807e793          	ori	a5,a5,128
    80005b70:	30479073          	csrw	mie,a5
    80005b74:	00813403          	ld	s0,8(sp)
    80005b78:	01010113          	addi	sp,sp,16
    80005b7c:	00008067          	ret

0000000080005b80 <system_main>:
    80005b80:	fe010113          	addi	sp,sp,-32
    80005b84:	00813823          	sd	s0,16(sp)
    80005b88:	00913423          	sd	s1,8(sp)
    80005b8c:	00113c23          	sd	ra,24(sp)
    80005b90:	02010413          	addi	s0,sp,32
    80005b94:	00000097          	auipc	ra,0x0
    80005b98:	0c4080e7          	jalr	196(ra) # 80005c58 <cpuid>
    80005b9c:	00004497          	auipc	s1,0x4
    80005ba0:	7b448493          	addi	s1,s1,1972 # 8000a350 <started>
    80005ba4:	02050263          	beqz	a0,80005bc8 <system_main+0x48>
    80005ba8:	0004a783          	lw	a5,0(s1)
    80005bac:	0007879b          	sext.w	a5,a5
    80005bb0:	fe078ce3          	beqz	a5,80005ba8 <system_main+0x28>
    80005bb4:	0ff0000f          	fence
    80005bb8:	00003517          	auipc	a0,0x3
    80005bbc:	9b850513          	addi	a0,a0,-1608 # 80008570 <CONSOLE_STATUS+0x560>
    80005bc0:	00001097          	auipc	ra,0x1
    80005bc4:	a7c080e7          	jalr	-1412(ra) # 8000663c <panic>
    80005bc8:	00001097          	auipc	ra,0x1
    80005bcc:	9d0080e7          	jalr	-1584(ra) # 80006598 <consoleinit>
    80005bd0:	00001097          	auipc	ra,0x1
    80005bd4:	15c080e7          	jalr	348(ra) # 80006d2c <printfinit>
    80005bd8:	00003517          	auipc	a0,0x3
    80005bdc:	89050513          	addi	a0,a0,-1904 # 80008468 <CONSOLE_STATUS+0x458>
    80005be0:	00001097          	auipc	ra,0x1
    80005be4:	ab8080e7          	jalr	-1352(ra) # 80006698 <__printf>
    80005be8:	00003517          	auipc	a0,0x3
    80005bec:	95850513          	addi	a0,a0,-1704 # 80008540 <CONSOLE_STATUS+0x530>
    80005bf0:	00001097          	auipc	ra,0x1
    80005bf4:	aa8080e7          	jalr	-1368(ra) # 80006698 <__printf>
    80005bf8:	00003517          	auipc	a0,0x3
    80005bfc:	87050513          	addi	a0,a0,-1936 # 80008468 <CONSOLE_STATUS+0x458>
    80005c00:	00001097          	auipc	ra,0x1
    80005c04:	a98080e7          	jalr	-1384(ra) # 80006698 <__printf>
    80005c08:	00001097          	auipc	ra,0x1
    80005c0c:	4b0080e7          	jalr	1200(ra) # 800070b8 <kinit>
    80005c10:	00000097          	auipc	ra,0x0
    80005c14:	148080e7          	jalr	328(ra) # 80005d58 <trapinit>
    80005c18:	00000097          	auipc	ra,0x0
    80005c1c:	16c080e7          	jalr	364(ra) # 80005d84 <trapinithart>
    80005c20:	00000097          	auipc	ra,0x0
    80005c24:	5c0080e7          	jalr	1472(ra) # 800061e0 <plicinit>
    80005c28:	00000097          	auipc	ra,0x0
    80005c2c:	5e0080e7          	jalr	1504(ra) # 80006208 <plicinithart>
    80005c30:	00000097          	auipc	ra,0x0
    80005c34:	078080e7          	jalr	120(ra) # 80005ca8 <userinit>
    80005c38:	0ff0000f          	fence
    80005c3c:	00100793          	li	a5,1
    80005c40:	00003517          	auipc	a0,0x3
    80005c44:	91850513          	addi	a0,a0,-1768 # 80008558 <CONSOLE_STATUS+0x548>
    80005c48:	00f4a023          	sw	a5,0(s1)
    80005c4c:	00001097          	auipc	ra,0x1
    80005c50:	a4c080e7          	jalr	-1460(ra) # 80006698 <__printf>
    80005c54:	0000006f          	j	80005c54 <system_main+0xd4>

0000000080005c58 <cpuid>:
    80005c58:	ff010113          	addi	sp,sp,-16
    80005c5c:	00813423          	sd	s0,8(sp)
    80005c60:	01010413          	addi	s0,sp,16
    80005c64:	00020513          	mv	a0,tp
    80005c68:	00813403          	ld	s0,8(sp)
    80005c6c:	0005051b          	sext.w	a0,a0
    80005c70:	01010113          	addi	sp,sp,16
    80005c74:	00008067          	ret

0000000080005c78 <mycpu>:
    80005c78:	ff010113          	addi	sp,sp,-16
    80005c7c:	00813423          	sd	s0,8(sp)
    80005c80:	01010413          	addi	s0,sp,16
    80005c84:	00020793          	mv	a5,tp
    80005c88:	00813403          	ld	s0,8(sp)
    80005c8c:	0007879b          	sext.w	a5,a5
    80005c90:	00779793          	slli	a5,a5,0x7
    80005c94:	00005517          	auipc	a0,0x5
    80005c98:	79c50513          	addi	a0,a0,1948 # 8000b430 <cpus>
    80005c9c:	00f50533          	add	a0,a0,a5
    80005ca0:	01010113          	addi	sp,sp,16
    80005ca4:	00008067          	ret

0000000080005ca8 <userinit>:
    80005ca8:	ff010113          	addi	sp,sp,-16
    80005cac:	00813423          	sd	s0,8(sp)
    80005cb0:	01010413          	addi	s0,sp,16
    80005cb4:	00813403          	ld	s0,8(sp)
    80005cb8:	01010113          	addi	sp,sp,16
    80005cbc:	ffffc317          	auipc	t1,0xffffc
    80005cc0:	87030067          	jr	-1936(t1) # 8000152c <main>

0000000080005cc4 <either_copyout>:
    80005cc4:	ff010113          	addi	sp,sp,-16
    80005cc8:	00813023          	sd	s0,0(sp)
    80005ccc:	00113423          	sd	ra,8(sp)
    80005cd0:	01010413          	addi	s0,sp,16
    80005cd4:	02051663          	bnez	a0,80005d00 <either_copyout+0x3c>
    80005cd8:	00058513          	mv	a0,a1
    80005cdc:	00060593          	mv	a1,a2
    80005ce0:	0006861b          	sext.w	a2,a3
    80005ce4:	00002097          	auipc	ra,0x2
    80005ce8:	c60080e7          	jalr	-928(ra) # 80007944 <__memmove>
    80005cec:	00813083          	ld	ra,8(sp)
    80005cf0:	00013403          	ld	s0,0(sp)
    80005cf4:	00000513          	li	a0,0
    80005cf8:	01010113          	addi	sp,sp,16
    80005cfc:	00008067          	ret
    80005d00:	00003517          	auipc	a0,0x3
    80005d04:	89850513          	addi	a0,a0,-1896 # 80008598 <CONSOLE_STATUS+0x588>
    80005d08:	00001097          	auipc	ra,0x1
    80005d0c:	934080e7          	jalr	-1740(ra) # 8000663c <panic>

0000000080005d10 <either_copyin>:
    80005d10:	ff010113          	addi	sp,sp,-16
    80005d14:	00813023          	sd	s0,0(sp)
    80005d18:	00113423          	sd	ra,8(sp)
    80005d1c:	01010413          	addi	s0,sp,16
    80005d20:	02059463          	bnez	a1,80005d48 <either_copyin+0x38>
    80005d24:	00060593          	mv	a1,a2
    80005d28:	0006861b          	sext.w	a2,a3
    80005d2c:	00002097          	auipc	ra,0x2
    80005d30:	c18080e7          	jalr	-1000(ra) # 80007944 <__memmove>
    80005d34:	00813083          	ld	ra,8(sp)
    80005d38:	00013403          	ld	s0,0(sp)
    80005d3c:	00000513          	li	a0,0
    80005d40:	01010113          	addi	sp,sp,16
    80005d44:	00008067          	ret
    80005d48:	00003517          	auipc	a0,0x3
    80005d4c:	87850513          	addi	a0,a0,-1928 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80005d50:	00001097          	auipc	ra,0x1
    80005d54:	8ec080e7          	jalr	-1812(ra) # 8000663c <panic>

0000000080005d58 <trapinit>:
    80005d58:	ff010113          	addi	sp,sp,-16
    80005d5c:	00813423          	sd	s0,8(sp)
    80005d60:	01010413          	addi	s0,sp,16
    80005d64:	00813403          	ld	s0,8(sp)
    80005d68:	00003597          	auipc	a1,0x3
    80005d6c:	88058593          	addi	a1,a1,-1920 # 800085e8 <CONSOLE_STATUS+0x5d8>
    80005d70:	00005517          	auipc	a0,0x5
    80005d74:	74050513          	addi	a0,a0,1856 # 8000b4b0 <tickslock>
    80005d78:	01010113          	addi	sp,sp,16
    80005d7c:	00001317          	auipc	t1,0x1
    80005d80:	5cc30067          	jr	1484(t1) # 80007348 <initlock>

0000000080005d84 <trapinithart>:
    80005d84:	ff010113          	addi	sp,sp,-16
    80005d88:	00813423          	sd	s0,8(sp)
    80005d8c:	01010413          	addi	s0,sp,16
    80005d90:	00000797          	auipc	a5,0x0
    80005d94:	30078793          	addi	a5,a5,768 # 80006090 <kernelvec>
    80005d98:	10579073          	csrw	stvec,a5
    80005d9c:	00813403          	ld	s0,8(sp)
    80005da0:	01010113          	addi	sp,sp,16
    80005da4:	00008067          	ret

0000000080005da8 <usertrap>:
    80005da8:	ff010113          	addi	sp,sp,-16
    80005dac:	00813423          	sd	s0,8(sp)
    80005db0:	01010413          	addi	s0,sp,16
    80005db4:	00813403          	ld	s0,8(sp)
    80005db8:	01010113          	addi	sp,sp,16
    80005dbc:	00008067          	ret

0000000080005dc0 <usertrapret>:
    80005dc0:	ff010113          	addi	sp,sp,-16
    80005dc4:	00813423          	sd	s0,8(sp)
    80005dc8:	01010413          	addi	s0,sp,16
    80005dcc:	00813403          	ld	s0,8(sp)
    80005dd0:	01010113          	addi	sp,sp,16
    80005dd4:	00008067          	ret

0000000080005dd8 <kerneltrap>:
    80005dd8:	fe010113          	addi	sp,sp,-32
    80005ddc:	00813823          	sd	s0,16(sp)
    80005de0:	00113c23          	sd	ra,24(sp)
    80005de4:	00913423          	sd	s1,8(sp)
    80005de8:	02010413          	addi	s0,sp,32
    80005dec:	142025f3          	csrr	a1,scause
    80005df0:	100027f3          	csrr	a5,sstatus
    80005df4:	0027f793          	andi	a5,a5,2
    80005df8:	10079c63          	bnez	a5,80005f10 <kerneltrap+0x138>
    80005dfc:	142027f3          	csrr	a5,scause
    80005e00:	0207ce63          	bltz	a5,80005e3c <kerneltrap+0x64>
    80005e04:	00003517          	auipc	a0,0x3
    80005e08:	82c50513          	addi	a0,a0,-2004 # 80008630 <CONSOLE_STATUS+0x620>
    80005e0c:	00001097          	auipc	ra,0x1
    80005e10:	88c080e7          	jalr	-1908(ra) # 80006698 <__printf>
    80005e14:	141025f3          	csrr	a1,sepc
    80005e18:	14302673          	csrr	a2,stval
    80005e1c:	00003517          	auipc	a0,0x3
    80005e20:	82450513          	addi	a0,a0,-2012 # 80008640 <CONSOLE_STATUS+0x630>
    80005e24:	00001097          	auipc	ra,0x1
    80005e28:	874080e7          	jalr	-1932(ra) # 80006698 <__printf>
    80005e2c:	00003517          	auipc	a0,0x3
    80005e30:	82c50513          	addi	a0,a0,-2004 # 80008658 <CONSOLE_STATUS+0x648>
    80005e34:	00001097          	auipc	ra,0x1
    80005e38:	808080e7          	jalr	-2040(ra) # 8000663c <panic>
    80005e3c:	0ff7f713          	andi	a4,a5,255
    80005e40:	00900693          	li	a3,9
    80005e44:	04d70063          	beq	a4,a3,80005e84 <kerneltrap+0xac>
    80005e48:	fff00713          	li	a4,-1
    80005e4c:	03f71713          	slli	a4,a4,0x3f
    80005e50:	00170713          	addi	a4,a4,1
    80005e54:	fae798e3          	bne	a5,a4,80005e04 <kerneltrap+0x2c>
    80005e58:	00000097          	auipc	ra,0x0
    80005e5c:	e00080e7          	jalr	-512(ra) # 80005c58 <cpuid>
    80005e60:	06050663          	beqz	a0,80005ecc <kerneltrap+0xf4>
    80005e64:	144027f3          	csrr	a5,sip
    80005e68:	ffd7f793          	andi	a5,a5,-3
    80005e6c:	14479073          	csrw	sip,a5
    80005e70:	01813083          	ld	ra,24(sp)
    80005e74:	01013403          	ld	s0,16(sp)
    80005e78:	00813483          	ld	s1,8(sp)
    80005e7c:	02010113          	addi	sp,sp,32
    80005e80:	00008067          	ret
    80005e84:	00000097          	auipc	ra,0x0
    80005e88:	3d0080e7          	jalr	976(ra) # 80006254 <plic_claim>
    80005e8c:	00a00793          	li	a5,10
    80005e90:	00050493          	mv	s1,a0
    80005e94:	06f50863          	beq	a0,a5,80005f04 <kerneltrap+0x12c>
    80005e98:	fc050ce3          	beqz	a0,80005e70 <kerneltrap+0x98>
    80005e9c:	00050593          	mv	a1,a0
    80005ea0:	00002517          	auipc	a0,0x2
    80005ea4:	77050513          	addi	a0,a0,1904 # 80008610 <CONSOLE_STATUS+0x600>
    80005ea8:	00000097          	auipc	ra,0x0
    80005eac:	7f0080e7          	jalr	2032(ra) # 80006698 <__printf>
    80005eb0:	01013403          	ld	s0,16(sp)
    80005eb4:	01813083          	ld	ra,24(sp)
    80005eb8:	00048513          	mv	a0,s1
    80005ebc:	00813483          	ld	s1,8(sp)
    80005ec0:	02010113          	addi	sp,sp,32
    80005ec4:	00000317          	auipc	t1,0x0
    80005ec8:	3c830067          	jr	968(t1) # 8000628c <plic_complete>
    80005ecc:	00005517          	auipc	a0,0x5
    80005ed0:	5e450513          	addi	a0,a0,1508 # 8000b4b0 <tickslock>
    80005ed4:	00001097          	auipc	ra,0x1
    80005ed8:	498080e7          	jalr	1176(ra) # 8000736c <acquire>
    80005edc:	00004717          	auipc	a4,0x4
    80005ee0:	47870713          	addi	a4,a4,1144 # 8000a354 <ticks>
    80005ee4:	00072783          	lw	a5,0(a4)
    80005ee8:	00005517          	auipc	a0,0x5
    80005eec:	5c850513          	addi	a0,a0,1480 # 8000b4b0 <tickslock>
    80005ef0:	0017879b          	addiw	a5,a5,1
    80005ef4:	00f72023          	sw	a5,0(a4)
    80005ef8:	00001097          	auipc	ra,0x1
    80005efc:	540080e7          	jalr	1344(ra) # 80007438 <release>
    80005f00:	f65ff06f          	j	80005e64 <kerneltrap+0x8c>
    80005f04:	00001097          	auipc	ra,0x1
    80005f08:	09c080e7          	jalr	156(ra) # 80006fa0 <uartintr>
    80005f0c:	fa5ff06f          	j	80005eb0 <kerneltrap+0xd8>
    80005f10:	00002517          	auipc	a0,0x2
    80005f14:	6e050513          	addi	a0,a0,1760 # 800085f0 <CONSOLE_STATUS+0x5e0>
    80005f18:	00000097          	auipc	ra,0x0
    80005f1c:	724080e7          	jalr	1828(ra) # 8000663c <panic>

0000000080005f20 <clockintr>:
    80005f20:	fe010113          	addi	sp,sp,-32
    80005f24:	00813823          	sd	s0,16(sp)
    80005f28:	00913423          	sd	s1,8(sp)
    80005f2c:	00113c23          	sd	ra,24(sp)
    80005f30:	02010413          	addi	s0,sp,32
    80005f34:	00005497          	auipc	s1,0x5
    80005f38:	57c48493          	addi	s1,s1,1404 # 8000b4b0 <tickslock>
    80005f3c:	00048513          	mv	a0,s1
    80005f40:	00001097          	auipc	ra,0x1
    80005f44:	42c080e7          	jalr	1068(ra) # 8000736c <acquire>
    80005f48:	00004717          	auipc	a4,0x4
    80005f4c:	40c70713          	addi	a4,a4,1036 # 8000a354 <ticks>
    80005f50:	00072783          	lw	a5,0(a4)
    80005f54:	01013403          	ld	s0,16(sp)
    80005f58:	01813083          	ld	ra,24(sp)
    80005f5c:	00048513          	mv	a0,s1
    80005f60:	0017879b          	addiw	a5,a5,1
    80005f64:	00813483          	ld	s1,8(sp)
    80005f68:	00f72023          	sw	a5,0(a4)
    80005f6c:	02010113          	addi	sp,sp,32
    80005f70:	00001317          	auipc	t1,0x1
    80005f74:	4c830067          	jr	1224(t1) # 80007438 <release>

0000000080005f78 <devintr>:
    80005f78:	142027f3          	csrr	a5,scause
    80005f7c:	00000513          	li	a0,0
    80005f80:	0007c463          	bltz	a5,80005f88 <devintr+0x10>
    80005f84:	00008067          	ret
    80005f88:	fe010113          	addi	sp,sp,-32
    80005f8c:	00813823          	sd	s0,16(sp)
    80005f90:	00113c23          	sd	ra,24(sp)
    80005f94:	00913423          	sd	s1,8(sp)
    80005f98:	02010413          	addi	s0,sp,32
    80005f9c:	0ff7f713          	andi	a4,a5,255
    80005fa0:	00900693          	li	a3,9
    80005fa4:	04d70c63          	beq	a4,a3,80005ffc <devintr+0x84>
    80005fa8:	fff00713          	li	a4,-1
    80005fac:	03f71713          	slli	a4,a4,0x3f
    80005fb0:	00170713          	addi	a4,a4,1
    80005fb4:	00e78c63          	beq	a5,a4,80005fcc <devintr+0x54>
    80005fb8:	01813083          	ld	ra,24(sp)
    80005fbc:	01013403          	ld	s0,16(sp)
    80005fc0:	00813483          	ld	s1,8(sp)
    80005fc4:	02010113          	addi	sp,sp,32
    80005fc8:	00008067          	ret
    80005fcc:	00000097          	auipc	ra,0x0
    80005fd0:	c8c080e7          	jalr	-884(ra) # 80005c58 <cpuid>
    80005fd4:	06050663          	beqz	a0,80006040 <devintr+0xc8>
    80005fd8:	144027f3          	csrr	a5,sip
    80005fdc:	ffd7f793          	andi	a5,a5,-3
    80005fe0:	14479073          	csrw	sip,a5
    80005fe4:	01813083          	ld	ra,24(sp)
    80005fe8:	01013403          	ld	s0,16(sp)
    80005fec:	00813483          	ld	s1,8(sp)
    80005ff0:	00200513          	li	a0,2
    80005ff4:	02010113          	addi	sp,sp,32
    80005ff8:	00008067          	ret
    80005ffc:	00000097          	auipc	ra,0x0
    80006000:	258080e7          	jalr	600(ra) # 80006254 <plic_claim>
    80006004:	00a00793          	li	a5,10
    80006008:	00050493          	mv	s1,a0
    8000600c:	06f50663          	beq	a0,a5,80006078 <devintr+0x100>
    80006010:	00100513          	li	a0,1
    80006014:	fa0482e3          	beqz	s1,80005fb8 <devintr+0x40>
    80006018:	00048593          	mv	a1,s1
    8000601c:	00002517          	auipc	a0,0x2
    80006020:	5f450513          	addi	a0,a0,1524 # 80008610 <CONSOLE_STATUS+0x600>
    80006024:	00000097          	auipc	ra,0x0
    80006028:	674080e7          	jalr	1652(ra) # 80006698 <__printf>
    8000602c:	00048513          	mv	a0,s1
    80006030:	00000097          	auipc	ra,0x0
    80006034:	25c080e7          	jalr	604(ra) # 8000628c <plic_complete>
    80006038:	00100513          	li	a0,1
    8000603c:	f7dff06f          	j	80005fb8 <devintr+0x40>
    80006040:	00005517          	auipc	a0,0x5
    80006044:	47050513          	addi	a0,a0,1136 # 8000b4b0 <tickslock>
    80006048:	00001097          	auipc	ra,0x1
    8000604c:	324080e7          	jalr	804(ra) # 8000736c <acquire>
    80006050:	00004717          	auipc	a4,0x4
    80006054:	30470713          	addi	a4,a4,772 # 8000a354 <ticks>
    80006058:	00072783          	lw	a5,0(a4)
    8000605c:	00005517          	auipc	a0,0x5
    80006060:	45450513          	addi	a0,a0,1108 # 8000b4b0 <tickslock>
    80006064:	0017879b          	addiw	a5,a5,1
    80006068:	00f72023          	sw	a5,0(a4)
    8000606c:	00001097          	auipc	ra,0x1
    80006070:	3cc080e7          	jalr	972(ra) # 80007438 <release>
    80006074:	f65ff06f          	j	80005fd8 <devintr+0x60>
    80006078:	00001097          	auipc	ra,0x1
    8000607c:	f28080e7          	jalr	-216(ra) # 80006fa0 <uartintr>
    80006080:	fadff06f          	j	8000602c <devintr+0xb4>
	...

0000000080006090 <kernelvec>:
    80006090:	f0010113          	addi	sp,sp,-256
    80006094:	00113023          	sd	ra,0(sp)
    80006098:	00213423          	sd	sp,8(sp)
    8000609c:	00313823          	sd	gp,16(sp)
    800060a0:	00413c23          	sd	tp,24(sp)
    800060a4:	02513023          	sd	t0,32(sp)
    800060a8:	02613423          	sd	t1,40(sp)
    800060ac:	02713823          	sd	t2,48(sp)
    800060b0:	02813c23          	sd	s0,56(sp)
    800060b4:	04913023          	sd	s1,64(sp)
    800060b8:	04a13423          	sd	a0,72(sp)
    800060bc:	04b13823          	sd	a1,80(sp)
    800060c0:	04c13c23          	sd	a2,88(sp)
    800060c4:	06d13023          	sd	a3,96(sp)
    800060c8:	06e13423          	sd	a4,104(sp)
    800060cc:	06f13823          	sd	a5,112(sp)
    800060d0:	07013c23          	sd	a6,120(sp)
    800060d4:	09113023          	sd	a7,128(sp)
    800060d8:	09213423          	sd	s2,136(sp)
    800060dc:	09313823          	sd	s3,144(sp)
    800060e0:	09413c23          	sd	s4,152(sp)
    800060e4:	0b513023          	sd	s5,160(sp)
    800060e8:	0b613423          	sd	s6,168(sp)
    800060ec:	0b713823          	sd	s7,176(sp)
    800060f0:	0b813c23          	sd	s8,184(sp)
    800060f4:	0d913023          	sd	s9,192(sp)
    800060f8:	0da13423          	sd	s10,200(sp)
    800060fc:	0db13823          	sd	s11,208(sp)
    80006100:	0dc13c23          	sd	t3,216(sp)
    80006104:	0fd13023          	sd	t4,224(sp)
    80006108:	0fe13423          	sd	t5,232(sp)
    8000610c:	0ff13823          	sd	t6,240(sp)
    80006110:	cc9ff0ef          	jal	ra,80005dd8 <kerneltrap>
    80006114:	00013083          	ld	ra,0(sp)
    80006118:	00813103          	ld	sp,8(sp)
    8000611c:	01013183          	ld	gp,16(sp)
    80006120:	02013283          	ld	t0,32(sp)
    80006124:	02813303          	ld	t1,40(sp)
    80006128:	03013383          	ld	t2,48(sp)
    8000612c:	03813403          	ld	s0,56(sp)
    80006130:	04013483          	ld	s1,64(sp)
    80006134:	04813503          	ld	a0,72(sp)
    80006138:	05013583          	ld	a1,80(sp)
    8000613c:	05813603          	ld	a2,88(sp)
    80006140:	06013683          	ld	a3,96(sp)
    80006144:	06813703          	ld	a4,104(sp)
    80006148:	07013783          	ld	a5,112(sp)
    8000614c:	07813803          	ld	a6,120(sp)
    80006150:	08013883          	ld	a7,128(sp)
    80006154:	08813903          	ld	s2,136(sp)
    80006158:	09013983          	ld	s3,144(sp)
    8000615c:	09813a03          	ld	s4,152(sp)
    80006160:	0a013a83          	ld	s5,160(sp)
    80006164:	0a813b03          	ld	s6,168(sp)
    80006168:	0b013b83          	ld	s7,176(sp)
    8000616c:	0b813c03          	ld	s8,184(sp)
    80006170:	0c013c83          	ld	s9,192(sp)
    80006174:	0c813d03          	ld	s10,200(sp)
    80006178:	0d013d83          	ld	s11,208(sp)
    8000617c:	0d813e03          	ld	t3,216(sp)
    80006180:	0e013e83          	ld	t4,224(sp)
    80006184:	0e813f03          	ld	t5,232(sp)
    80006188:	0f013f83          	ld	t6,240(sp)
    8000618c:	10010113          	addi	sp,sp,256
    80006190:	10200073          	sret
    80006194:	00000013          	nop
    80006198:	00000013          	nop
    8000619c:	00000013          	nop

00000000800061a0 <timervec>:
    800061a0:	34051573          	csrrw	a0,mscratch,a0
    800061a4:	00b53023          	sd	a1,0(a0)
    800061a8:	00c53423          	sd	a2,8(a0)
    800061ac:	00d53823          	sd	a3,16(a0)
    800061b0:	01853583          	ld	a1,24(a0)
    800061b4:	02053603          	ld	a2,32(a0)
    800061b8:	0005b683          	ld	a3,0(a1)
    800061bc:	00c686b3          	add	a3,a3,a2
    800061c0:	00d5b023          	sd	a3,0(a1)
    800061c4:	00200593          	li	a1,2
    800061c8:	14459073          	csrw	sip,a1
    800061cc:	01053683          	ld	a3,16(a0)
    800061d0:	00853603          	ld	a2,8(a0)
    800061d4:	00053583          	ld	a1,0(a0)
    800061d8:	34051573          	csrrw	a0,mscratch,a0
    800061dc:	30200073          	mret

00000000800061e0 <plicinit>:
    800061e0:	ff010113          	addi	sp,sp,-16
    800061e4:	00813423          	sd	s0,8(sp)
    800061e8:	01010413          	addi	s0,sp,16
    800061ec:	00813403          	ld	s0,8(sp)
    800061f0:	0c0007b7          	lui	a5,0xc000
    800061f4:	00100713          	li	a4,1
    800061f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800061fc:	00e7a223          	sw	a4,4(a5)
    80006200:	01010113          	addi	sp,sp,16
    80006204:	00008067          	ret

0000000080006208 <plicinithart>:
    80006208:	ff010113          	addi	sp,sp,-16
    8000620c:	00813023          	sd	s0,0(sp)
    80006210:	00113423          	sd	ra,8(sp)
    80006214:	01010413          	addi	s0,sp,16
    80006218:	00000097          	auipc	ra,0x0
    8000621c:	a40080e7          	jalr	-1472(ra) # 80005c58 <cpuid>
    80006220:	0085171b          	slliw	a4,a0,0x8
    80006224:	0c0027b7          	lui	a5,0xc002
    80006228:	00e787b3          	add	a5,a5,a4
    8000622c:	40200713          	li	a4,1026
    80006230:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006234:	00813083          	ld	ra,8(sp)
    80006238:	00013403          	ld	s0,0(sp)
    8000623c:	00d5151b          	slliw	a0,a0,0xd
    80006240:	0c2017b7          	lui	a5,0xc201
    80006244:	00a78533          	add	a0,a5,a0
    80006248:	00052023          	sw	zero,0(a0)
    8000624c:	01010113          	addi	sp,sp,16
    80006250:	00008067          	ret

0000000080006254 <plic_claim>:
    80006254:	ff010113          	addi	sp,sp,-16
    80006258:	00813023          	sd	s0,0(sp)
    8000625c:	00113423          	sd	ra,8(sp)
    80006260:	01010413          	addi	s0,sp,16
    80006264:	00000097          	auipc	ra,0x0
    80006268:	9f4080e7          	jalr	-1548(ra) # 80005c58 <cpuid>
    8000626c:	00813083          	ld	ra,8(sp)
    80006270:	00013403          	ld	s0,0(sp)
    80006274:	00d5151b          	slliw	a0,a0,0xd
    80006278:	0c2017b7          	lui	a5,0xc201
    8000627c:	00a78533          	add	a0,a5,a0
    80006280:	00452503          	lw	a0,4(a0)
    80006284:	01010113          	addi	sp,sp,16
    80006288:	00008067          	ret

000000008000628c <plic_complete>:
    8000628c:	fe010113          	addi	sp,sp,-32
    80006290:	00813823          	sd	s0,16(sp)
    80006294:	00913423          	sd	s1,8(sp)
    80006298:	00113c23          	sd	ra,24(sp)
    8000629c:	02010413          	addi	s0,sp,32
    800062a0:	00050493          	mv	s1,a0
    800062a4:	00000097          	auipc	ra,0x0
    800062a8:	9b4080e7          	jalr	-1612(ra) # 80005c58 <cpuid>
    800062ac:	01813083          	ld	ra,24(sp)
    800062b0:	01013403          	ld	s0,16(sp)
    800062b4:	00d5179b          	slliw	a5,a0,0xd
    800062b8:	0c201737          	lui	a4,0xc201
    800062bc:	00f707b3          	add	a5,a4,a5
    800062c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800062c4:	00813483          	ld	s1,8(sp)
    800062c8:	02010113          	addi	sp,sp,32
    800062cc:	00008067          	ret

00000000800062d0 <consolewrite>:
    800062d0:	fb010113          	addi	sp,sp,-80
    800062d4:	04813023          	sd	s0,64(sp)
    800062d8:	04113423          	sd	ra,72(sp)
    800062dc:	02913c23          	sd	s1,56(sp)
    800062e0:	03213823          	sd	s2,48(sp)
    800062e4:	03313423          	sd	s3,40(sp)
    800062e8:	03413023          	sd	s4,32(sp)
    800062ec:	01513c23          	sd	s5,24(sp)
    800062f0:	05010413          	addi	s0,sp,80
    800062f4:	06c05c63          	blez	a2,8000636c <consolewrite+0x9c>
    800062f8:	00060993          	mv	s3,a2
    800062fc:	00050a13          	mv	s4,a0
    80006300:	00058493          	mv	s1,a1
    80006304:	00000913          	li	s2,0
    80006308:	fff00a93          	li	s5,-1
    8000630c:	01c0006f          	j	80006328 <consolewrite+0x58>
    80006310:	fbf44503          	lbu	a0,-65(s0)
    80006314:	0019091b          	addiw	s2,s2,1
    80006318:	00148493          	addi	s1,s1,1
    8000631c:	00001097          	auipc	ra,0x1
    80006320:	a9c080e7          	jalr	-1380(ra) # 80006db8 <uartputc>
    80006324:	03298063          	beq	s3,s2,80006344 <consolewrite+0x74>
    80006328:	00048613          	mv	a2,s1
    8000632c:	00100693          	li	a3,1
    80006330:	000a0593          	mv	a1,s4
    80006334:	fbf40513          	addi	a0,s0,-65
    80006338:	00000097          	auipc	ra,0x0
    8000633c:	9d8080e7          	jalr	-1576(ra) # 80005d10 <either_copyin>
    80006340:	fd5518e3          	bne	a0,s5,80006310 <consolewrite+0x40>
    80006344:	04813083          	ld	ra,72(sp)
    80006348:	04013403          	ld	s0,64(sp)
    8000634c:	03813483          	ld	s1,56(sp)
    80006350:	02813983          	ld	s3,40(sp)
    80006354:	02013a03          	ld	s4,32(sp)
    80006358:	01813a83          	ld	s5,24(sp)
    8000635c:	00090513          	mv	a0,s2
    80006360:	03013903          	ld	s2,48(sp)
    80006364:	05010113          	addi	sp,sp,80
    80006368:	00008067          	ret
    8000636c:	00000913          	li	s2,0
    80006370:	fd5ff06f          	j	80006344 <consolewrite+0x74>

0000000080006374 <consoleread>:
    80006374:	f9010113          	addi	sp,sp,-112
    80006378:	06813023          	sd	s0,96(sp)
    8000637c:	04913c23          	sd	s1,88(sp)
    80006380:	05213823          	sd	s2,80(sp)
    80006384:	05313423          	sd	s3,72(sp)
    80006388:	05413023          	sd	s4,64(sp)
    8000638c:	03513c23          	sd	s5,56(sp)
    80006390:	03613823          	sd	s6,48(sp)
    80006394:	03713423          	sd	s7,40(sp)
    80006398:	03813023          	sd	s8,32(sp)
    8000639c:	06113423          	sd	ra,104(sp)
    800063a0:	01913c23          	sd	s9,24(sp)
    800063a4:	07010413          	addi	s0,sp,112
    800063a8:	00060b93          	mv	s7,a2
    800063ac:	00050913          	mv	s2,a0
    800063b0:	00058c13          	mv	s8,a1
    800063b4:	00060b1b          	sext.w	s6,a2
    800063b8:	00005497          	auipc	s1,0x5
    800063bc:	12048493          	addi	s1,s1,288 # 8000b4d8 <cons>
    800063c0:	00400993          	li	s3,4
    800063c4:	fff00a13          	li	s4,-1
    800063c8:	00a00a93          	li	s5,10
    800063cc:	05705e63          	blez	s7,80006428 <consoleread+0xb4>
    800063d0:	09c4a703          	lw	a4,156(s1)
    800063d4:	0984a783          	lw	a5,152(s1)
    800063d8:	0007071b          	sext.w	a4,a4
    800063dc:	08e78463          	beq	a5,a4,80006464 <consoleread+0xf0>
    800063e0:	07f7f713          	andi	a4,a5,127
    800063e4:	00e48733          	add	a4,s1,a4
    800063e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800063ec:	0017869b          	addiw	a3,a5,1
    800063f0:	08d4ac23          	sw	a3,152(s1)
    800063f4:	00070c9b          	sext.w	s9,a4
    800063f8:	0b370663          	beq	a4,s3,800064a4 <consoleread+0x130>
    800063fc:	00100693          	li	a3,1
    80006400:	f9f40613          	addi	a2,s0,-97
    80006404:	000c0593          	mv	a1,s8
    80006408:	00090513          	mv	a0,s2
    8000640c:	f8e40fa3          	sb	a4,-97(s0)
    80006410:	00000097          	auipc	ra,0x0
    80006414:	8b4080e7          	jalr	-1868(ra) # 80005cc4 <either_copyout>
    80006418:	01450863          	beq	a0,s4,80006428 <consoleread+0xb4>
    8000641c:	001c0c13          	addi	s8,s8,1
    80006420:	fffb8b9b          	addiw	s7,s7,-1
    80006424:	fb5c94e3          	bne	s9,s5,800063cc <consoleread+0x58>
    80006428:	000b851b          	sext.w	a0,s7
    8000642c:	06813083          	ld	ra,104(sp)
    80006430:	06013403          	ld	s0,96(sp)
    80006434:	05813483          	ld	s1,88(sp)
    80006438:	05013903          	ld	s2,80(sp)
    8000643c:	04813983          	ld	s3,72(sp)
    80006440:	04013a03          	ld	s4,64(sp)
    80006444:	03813a83          	ld	s5,56(sp)
    80006448:	02813b83          	ld	s7,40(sp)
    8000644c:	02013c03          	ld	s8,32(sp)
    80006450:	01813c83          	ld	s9,24(sp)
    80006454:	40ab053b          	subw	a0,s6,a0
    80006458:	03013b03          	ld	s6,48(sp)
    8000645c:	07010113          	addi	sp,sp,112
    80006460:	00008067          	ret
    80006464:	00001097          	auipc	ra,0x1
    80006468:	1d8080e7          	jalr	472(ra) # 8000763c <push_on>
    8000646c:	0984a703          	lw	a4,152(s1)
    80006470:	09c4a783          	lw	a5,156(s1)
    80006474:	0007879b          	sext.w	a5,a5
    80006478:	fef70ce3          	beq	a4,a5,80006470 <consoleread+0xfc>
    8000647c:	00001097          	auipc	ra,0x1
    80006480:	234080e7          	jalr	564(ra) # 800076b0 <pop_on>
    80006484:	0984a783          	lw	a5,152(s1)
    80006488:	07f7f713          	andi	a4,a5,127
    8000648c:	00e48733          	add	a4,s1,a4
    80006490:	01874703          	lbu	a4,24(a4)
    80006494:	0017869b          	addiw	a3,a5,1
    80006498:	08d4ac23          	sw	a3,152(s1)
    8000649c:	00070c9b          	sext.w	s9,a4
    800064a0:	f5371ee3          	bne	a4,s3,800063fc <consoleread+0x88>
    800064a4:	000b851b          	sext.w	a0,s7
    800064a8:	f96bf2e3          	bgeu	s7,s6,8000642c <consoleread+0xb8>
    800064ac:	08f4ac23          	sw	a5,152(s1)
    800064b0:	f7dff06f          	j	8000642c <consoleread+0xb8>

00000000800064b4 <consputc>:
    800064b4:	10000793          	li	a5,256
    800064b8:	00f50663          	beq	a0,a5,800064c4 <consputc+0x10>
    800064bc:	00001317          	auipc	t1,0x1
    800064c0:	9f430067          	jr	-1548(t1) # 80006eb0 <uartputc_sync>
    800064c4:	ff010113          	addi	sp,sp,-16
    800064c8:	00113423          	sd	ra,8(sp)
    800064cc:	00813023          	sd	s0,0(sp)
    800064d0:	01010413          	addi	s0,sp,16
    800064d4:	00800513          	li	a0,8
    800064d8:	00001097          	auipc	ra,0x1
    800064dc:	9d8080e7          	jalr	-1576(ra) # 80006eb0 <uartputc_sync>
    800064e0:	02000513          	li	a0,32
    800064e4:	00001097          	auipc	ra,0x1
    800064e8:	9cc080e7          	jalr	-1588(ra) # 80006eb0 <uartputc_sync>
    800064ec:	00013403          	ld	s0,0(sp)
    800064f0:	00813083          	ld	ra,8(sp)
    800064f4:	00800513          	li	a0,8
    800064f8:	01010113          	addi	sp,sp,16
    800064fc:	00001317          	auipc	t1,0x1
    80006500:	9b430067          	jr	-1612(t1) # 80006eb0 <uartputc_sync>

0000000080006504 <consoleintr>:
    80006504:	fe010113          	addi	sp,sp,-32
    80006508:	00813823          	sd	s0,16(sp)
    8000650c:	00913423          	sd	s1,8(sp)
    80006510:	01213023          	sd	s2,0(sp)
    80006514:	00113c23          	sd	ra,24(sp)
    80006518:	02010413          	addi	s0,sp,32
    8000651c:	00005917          	auipc	s2,0x5
    80006520:	fbc90913          	addi	s2,s2,-68 # 8000b4d8 <cons>
    80006524:	00050493          	mv	s1,a0
    80006528:	00090513          	mv	a0,s2
    8000652c:	00001097          	auipc	ra,0x1
    80006530:	e40080e7          	jalr	-448(ra) # 8000736c <acquire>
    80006534:	02048c63          	beqz	s1,8000656c <consoleintr+0x68>
    80006538:	0a092783          	lw	a5,160(s2)
    8000653c:	09892703          	lw	a4,152(s2)
    80006540:	07f00693          	li	a3,127
    80006544:	40e7873b          	subw	a4,a5,a4
    80006548:	02e6e263          	bltu	a3,a4,8000656c <consoleintr+0x68>
    8000654c:	00d00713          	li	a4,13
    80006550:	04e48063          	beq	s1,a4,80006590 <consoleintr+0x8c>
    80006554:	07f7f713          	andi	a4,a5,127
    80006558:	00e90733          	add	a4,s2,a4
    8000655c:	0017879b          	addiw	a5,a5,1
    80006560:	0af92023          	sw	a5,160(s2)
    80006564:	00970c23          	sb	s1,24(a4)
    80006568:	08f92e23          	sw	a5,156(s2)
    8000656c:	01013403          	ld	s0,16(sp)
    80006570:	01813083          	ld	ra,24(sp)
    80006574:	00813483          	ld	s1,8(sp)
    80006578:	00013903          	ld	s2,0(sp)
    8000657c:	00005517          	auipc	a0,0x5
    80006580:	f5c50513          	addi	a0,a0,-164 # 8000b4d8 <cons>
    80006584:	02010113          	addi	sp,sp,32
    80006588:	00001317          	auipc	t1,0x1
    8000658c:	eb030067          	jr	-336(t1) # 80007438 <release>
    80006590:	00a00493          	li	s1,10
    80006594:	fc1ff06f          	j	80006554 <consoleintr+0x50>

0000000080006598 <consoleinit>:
    80006598:	fe010113          	addi	sp,sp,-32
    8000659c:	00113c23          	sd	ra,24(sp)
    800065a0:	00813823          	sd	s0,16(sp)
    800065a4:	00913423          	sd	s1,8(sp)
    800065a8:	02010413          	addi	s0,sp,32
    800065ac:	00005497          	auipc	s1,0x5
    800065b0:	f2c48493          	addi	s1,s1,-212 # 8000b4d8 <cons>
    800065b4:	00048513          	mv	a0,s1
    800065b8:	00002597          	auipc	a1,0x2
    800065bc:	0b058593          	addi	a1,a1,176 # 80008668 <CONSOLE_STATUS+0x658>
    800065c0:	00001097          	auipc	ra,0x1
    800065c4:	d88080e7          	jalr	-632(ra) # 80007348 <initlock>
    800065c8:	00000097          	auipc	ra,0x0
    800065cc:	7ac080e7          	jalr	1964(ra) # 80006d74 <uartinit>
    800065d0:	01813083          	ld	ra,24(sp)
    800065d4:	01013403          	ld	s0,16(sp)
    800065d8:	00000797          	auipc	a5,0x0
    800065dc:	d9c78793          	addi	a5,a5,-612 # 80006374 <consoleread>
    800065e0:	0af4bc23          	sd	a5,184(s1)
    800065e4:	00000797          	auipc	a5,0x0
    800065e8:	cec78793          	addi	a5,a5,-788 # 800062d0 <consolewrite>
    800065ec:	0cf4b023          	sd	a5,192(s1)
    800065f0:	00813483          	ld	s1,8(sp)
    800065f4:	02010113          	addi	sp,sp,32
    800065f8:	00008067          	ret

00000000800065fc <console_read>:
    800065fc:	ff010113          	addi	sp,sp,-16
    80006600:	00813423          	sd	s0,8(sp)
    80006604:	01010413          	addi	s0,sp,16
    80006608:	00813403          	ld	s0,8(sp)
    8000660c:	00005317          	auipc	t1,0x5
    80006610:	f8433303          	ld	t1,-124(t1) # 8000b590 <devsw+0x10>
    80006614:	01010113          	addi	sp,sp,16
    80006618:	00030067          	jr	t1

000000008000661c <console_write>:
    8000661c:	ff010113          	addi	sp,sp,-16
    80006620:	00813423          	sd	s0,8(sp)
    80006624:	01010413          	addi	s0,sp,16
    80006628:	00813403          	ld	s0,8(sp)
    8000662c:	00005317          	auipc	t1,0x5
    80006630:	f6c33303          	ld	t1,-148(t1) # 8000b598 <devsw+0x18>
    80006634:	01010113          	addi	sp,sp,16
    80006638:	00030067          	jr	t1

000000008000663c <panic>:
    8000663c:	fe010113          	addi	sp,sp,-32
    80006640:	00113c23          	sd	ra,24(sp)
    80006644:	00813823          	sd	s0,16(sp)
    80006648:	00913423          	sd	s1,8(sp)
    8000664c:	02010413          	addi	s0,sp,32
    80006650:	00050493          	mv	s1,a0
    80006654:	00002517          	auipc	a0,0x2
    80006658:	01c50513          	addi	a0,a0,28 # 80008670 <CONSOLE_STATUS+0x660>
    8000665c:	00005797          	auipc	a5,0x5
    80006660:	fc07ae23          	sw	zero,-36(a5) # 8000b638 <pr+0x18>
    80006664:	00000097          	auipc	ra,0x0
    80006668:	034080e7          	jalr	52(ra) # 80006698 <__printf>
    8000666c:	00048513          	mv	a0,s1
    80006670:	00000097          	auipc	ra,0x0
    80006674:	028080e7          	jalr	40(ra) # 80006698 <__printf>
    80006678:	00002517          	auipc	a0,0x2
    8000667c:	df050513          	addi	a0,a0,-528 # 80008468 <CONSOLE_STATUS+0x458>
    80006680:	00000097          	auipc	ra,0x0
    80006684:	018080e7          	jalr	24(ra) # 80006698 <__printf>
    80006688:	00100793          	li	a5,1
    8000668c:	00004717          	auipc	a4,0x4
    80006690:	ccf72623          	sw	a5,-820(a4) # 8000a358 <panicked>
    80006694:	0000006f          	j	80006694 <panic+0x58>

0000000080006698 <__printf>:
    80006698:	f3010113          	addi	sp,sp,-208
    8000669c:	08813023          	sd	s0,128(sp)
    800066a0:	07313423          	sd	s3,104(sp)
    800066a4:	09010413          	addi	s0,sp,144
    800066a8:	05813023          	sd	s8,64(sp)
    800066ac:	08113423          	sd	ra,136(sp)
    800066b0:	06913c23          	sd	s1,120(sp)
    800066b4:	07213823          	sd	s2,112(sp)
    800066b8:	07413023          	sd	s4,96(sp)
    800066bc:	05513c23          	sd	s5,88(sp)
    800066c0:	05613823          	sd	s6,80(sp)
    800066c4:	05713423          	sd	s7,72(sp)
    800066c8:	03913c23          	sd	s9,56(sp)
    800066cc:	03a13823          	sd	s10,48(sp)
    800066d0:	03b13423          	sd	s11,40(sp)
    800066d4:	00005317          	auipc	t1,0x5
    800066d8:	f4c30313          	addi	t1,t1,-180 # 8000b620 <pr>
    800066dc:	01832c03          	lw	s8,24(t1)
    800066e0:	00b43423          	sd	a1,8(s0)
    800066e4:	00c43823          	sd	a2,16(s0)
    800066e8:	00d43c23          	sd	a3,24(s0)
    800066ec:	02e43023          	sd	a4,32(s0)
    800066f0:	02f43423          	sd	a5,40(s0)
    800066f4:	03043823          	sd	a6,48(s0)
    800066f8:	03143c23          	sd	a7,56(s0)
    800066fc:	00050993          	mv	s3,a0
    80006700:	4a0c1663          	bnez	s8,80006bac <__printf+0x514>
    80006704:	60098c63          	beqz	s3,80006d1c <__printf+0x684>
    80006708:	0009c503          	lbu	a0,0(s3)
    8000670c:	00840793          	addi	a5,s0,8
    80006710:	f6f43c23          	sd	a5,-136(s0)
    80006714:	00000493          	li	s1,0
    80006718:	22050063          	beqz	a0,80006938 <__printf+0x2a0>
    8000671c:	00002a37          	lui	s4,0x2
    80006720:	00018ab7          	lui	s5,0x18
    80006724:	000f4b37          	lui	s6,0xf4
    80006728:	00989bb7          	lui	s7,0x989
    8000672c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006730:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006734:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006738:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000673c:	00148c9b          	addiw	s9,s1,1
    80006740:	02500793          	li	a5,37
    80006744:	01998933          	add	s2,s3,s9
    80006748:	38f51263          	bne	a0,a5,80006acc <__printf+0x434>
    8000674c:	00094783          	lbu	a5,0(s2)
    80006750:	00078c9b          	sext.w	s9,a5
    80006754:	1e078263          	beqz	a5,80006938 <__printf+0x2a0>
    80006758:	0024849b          	addiw	s1,s1,2
    8000675c:	07000713          	li	a4,112
    80006760:	00998933          	add	s2,s3,s1
    80006764:	38e78a63          	beq	a5,a4,80006af8 <__printf+0x460>
    80006768:	20f76863          	bltu	a4,a5,80006978 <__printf+0x2e0>
    8000676c:	42a78863          	beq	a5,a0,80006b9c <__printf+0x504>
    80006770:	06400713          	li	a4,100
    80006774:	40e79663          	bne	a5,a4,80006b80 <__printf+0x4e8>
    80006778:	f7843783          	ld	a5,-136(s0)
    8000677c:	0007a603          	lw	a2,0(a5)
    80006780:	00878793          	addi	a5,a5,8
    80006784:	f6f43c23          	sd	a5,-136(s0)
    80006788:	42064a63          	bltz	a2,80006bbc <__printf+0x524>
    8000678c:	00a00713          	li	a4,10
    80006790:	02e677bb          	remuw	a5,a2,a4
    80006794:	00002d97          	auipc	s11,0x2
    80006798:	f04d8d93          	addi	s11,s11,-252 # 80008698 <digits>
    8000679c:	00900593          	li	a1,9
    800067a0:	0006051b          	sext.w	a0,a2
    800067a4:	00000c93          	li	s9,0
    800067a8:	02079793          	slli	a5,a5,0x20
    800067ac:	0207d793          	srli	a5,a5,0x20
    800067b0:	00fd87b3          	add	a5,s11,a5
    800067b4:	0007c783          	lbu	a5,0(a5)
    800067b8:	02e656bb          	divuw	a3,a2,a4
    800067bc:	f8f40023          	sb	a5,-128(s0)
    800067c0:	14c5d863          	bge	a1,a2,80006910 <__printf+0x278>
    800067c4:	06300593          	li	a1,99
    800067c8:	00100c93          	li	s9,1
    800067cc:	02e6f7bb          	remuw	a5,a3,a4
    800067d0:	02079793          	slli	a5,a5,0x20
    800067d4:	0207d793          	srli	a5,a5,0x20
    800067d8:	00fd87b3          	add	a5,s11,a5
    800067dc:	0007c783          	lbu	a5,0(a5)
    800067e0:	02e6d73b          	divuw	a4,a3,a4
    800067e4:	f8f400a3          	sb	a5,-127(s0)
    800067e8:	12a5f463          	bgeu	a1,a0,80006910 <__printf+0x278>
    800067ec:	00a00693          	li	a3,10
    800067f0:	00900593          	li	a1,9
    800067f4:	02d777bb          	remuw	a5,a4,a3
    800067f8:	02079793          	slli	a5,a5,0x20
    800067fc:	0207d793          	srli	a5,a5,0x20
    80006800:	00fd87b3          	add	a5,s11,a5
    80006804:	0007c503          	lbu	a0,0(a5)
    80006808:	02d757bb          	divuw	a5,a4,a3
    8000680c:	f8a40123          	sb	a0,-126(s0)
    80006810:	48e5f263          	bgeu	a1,a4,80006c94 <__printf+0x5fc>
    80006814:	06300513          	li	a0,99
    80006818:	02d7f5bb          	remuw	a1,a5,a3
    8000681c:	02059593          	slli	a1,a1,0x20
    80006820:	0205d593          	srli	a1,a1,0x20
    80006824:	00bd85b3          	add	a1,s11,a1
    80006828:	0005c583          	lbu	a1,0(a1)
    8000682c:	02d7d7bb          	divuw	a5,a5,a3
    80006830:	f8b401a3          	sb	a1,-125(s0)
    80006834:	48e57263          	bgeu	a0,a4,80006cb8 <__printf+0x620>
    80006838:	3e700513          	li	a0,999
    8000683c:	02d7f5bb          	remuw	a1,a5,a3
    80006840:	02059593          	slli	a1,a1,0x20
    80006844:	0205d593          	srli	a1,a1,0x20
    80006848:	00bd85b3          	add	a1,s11,a1
    8000684c:	0005c583          	lbu	a1,0(a1)
    80006850:	02d7d7bb          	divuw	a5,a5,a3
    80006854:	f8b40223          	sb	a1,-124(s0)
    80006858:	46e57663          	bgeu	a0,a4,80006cc4 <__printf+0x62c>
    8000685c:	02d7f5bb          	remuw	a1,a5,a3
    80006860:	02059593          	slli	a1,a1,0x20
    80006864:	0205d593          	srli	a1,a1,0x20
    80006868:	00bd85b3          	add	a1,s11,a1
    8000686c:	0005c583          	lbu	a1,0(a1)
    80006870:	02d7d7bb          	divuw	a5,a5,a3
    80006874:	f8b402a3          	sb	a1,-123(s0)
    80006878:	46ea7863          	bgeu	s4,a4,80006ce8 <__printf+0x650>
    8000687c:	02d7f5bb          	remuw	a1,a5,a3
    80006880:	02059593          	slli	a1,a1,0x20
    80006884:	0205d593          	srli	a1,a1,0x20
    80006888:	00bd85b3          	add	a1,s11,a1
    8000688c:	0005c583          	lbu	a1,0(a1)
    80006890:	02d7d7bb          	divuw	a5,a5,a3
    80006894:	f8b40323          	sb	a1,-122(s0)
    80006898:	3eeaf863          	bgeu	s5,a4,80006c88 <__printf+0x5f0>
    8000689c:	02d7f5bb          	remuw	a1,a5,a3
    800068a0:	02059593          	slli	a1,a1,0x20
    800068a4:	0205d593          	srli	a1,a1,0x20
    800068a8:	00bd85b3          	add	a1,s11,a1
    800068ac:	0005c583          	lbu	a1,0(a1)
    800068b0:	02d7d7bb          	divuw	a5,a5,a3
    800068b4:	f8b403a3          	sb	a1,-121(s0)
    800068b8:	42eb7e63          	bgeu	s6,a4,80006cf4 <__printf+0x65c>
    800068bc:	02d7f5bb          	remuw	a1,a5,a3
    800068c0:	02059593          	slli	a1,a1,0x20
    800068c4:	0205d593          	srli	a1,a1,0x20
    800068c8:	00bd85b3          	add	a1,s11,a1
    800068cc:	0005c583          	lbu	a1,0(a1)
    800068d0:	02d7d7bb          	divuw	a5,a5,a3
    800068d4:	f8b40423          	sb	a1,-120(s0)
    800068d8:	42ebfc63          	bgeu	s7,a4,80006d10 <__printf+0x678>
    800068dc:	02079793          	slli	a5,a5,0x20
    800068e0:	0207d793          	srli	a5,a5,0x20
    800068e4:	00fd8db3          	add	s11,s11,a5
    800068e8:	000dc703          	lbu	a4,0(s11)
    800068ec:	00a00793          	li	a5,10
    800068f0:	00900c93          	li	s9,9
    800068f4:	f8e404a3          	sb	a4,-119(s0)
    800068f8:	00065c63          	bgez	a2,80006910 <__printf+0x278>
    800068fc:	f9040713          	addi	a4,s0,-112
    80006900:	00f70733          	add	a4,a4,a5
    80006904:	02d00693          	li	a3,45
    80006908:	fed70823          	sb	a3,-16(a4)
    8000690c:	00078c93          	mv	s9,a5
    80006910:	f8040793          	addi	a5,s0,-128
    80006914:	01978cb3          	add	s9,a5,s9
    80006918:	f7f40d13          	addi	s10,s0,-129
    8000691c:	000cc503          	lbu	a0,0(s9)
    80006920:	fffc8c93          	addi	s9,s9,-1
    80006924:	00000097          	auipc	ra,0x0
    80006928:	b90080e7          	jalr	-1136(ra) # 800064b4 <consputc>
    8000692c:	ffac98e3          	bne	s9,s10,8000691c <__printf+0x284>
    80006930:	00094503          	lbu	a0,0(s2)
    80006934:	e00514e3          	bnez	a0,8000673c <__printf+0xa4>
    80006938:	1a0c1663          	bnez	s8,80006ae4 <__printf+0x44c>
    8000693c:	08813083          	ld	ra,136(sp)
    80006940:	08013403          	ld	s0,128(sp)
    80006944:	07813483          	ld	s1,120(sp)
    80006948:	07013903          	ld	s2,112(sp)
    8000694c:	06813983          	ld	s3,104(sp)
    80006950:	06013a03          	ld	s4,96(sp)
    80006954:	05813a83          	ld	s5,88(sp)
    80006958:	05013b03          	ld	s6,80(sp)
    8000695c:	04813b83          	ld	s7,72(sp)
    80006960:	04013c03          	ld	s8,64(sp)
    80006964:	03813c83          	ld	s9,56(sp)
    80006968:	03013d03          	ld	s10,48(sp)
    8000696c:	02813d83          	ld	s11,40(sp)
    80006970:	0d010113          	addi	sp,sp,208
    80006974:	00008067          	ret
    80006978:	07300713          	li	a4,115
    8000697c:	1ce78a63          	beq	a5,a4,80006b50 <__printf+0x4b8>
    80006980:	07800713          	li	a4,120
    80006984:	1ee79e63          	bne	a5,a4,80006b80 <__printf+0x4e8>
    80006988:	f7843783          	ld	a5,-136(s0)
    8000698c:	0007a703          	lw	a4,0(a5)
    80006990:	00878793          	addi	a5,a5,8
    80006994:	f6f43c23          	sd	a5,-136(s0)
    80006998:	28074263          	bltz	a4,80006c1c <__printf+0x584>
    8000699c:	00002d97          	auipc	s11,0x2
    800069a0:	cfcd8d93          	addi	s11,s11,-772 # 80008698 <digits>
    800069a4:	00f77793          	andi	a5,a4,15
    800069a8:	00fd87b3          	add	a5,s11,a5
    800069ac:	0007c683          	lbu	a3,0(a5)
    800069b0:	00f00613          	li	a2,15
    800069b4:	0007079b          	sext.w	a5,a4
    800069b8:	f8d40023          	sb	a3,-128(s0)
    800069bc:	0047559b          	srliw	a1,a4,0x4
    800069c0:	0047569b          	srliw	a3,a4,0x4
    800069c4:	00000c93          	li	s9,0
    800069c8:	0ee65063          	bge	a2,a4,80006aa8 <__printf+0x410>
    800069cc:	00f6f693          	andi	a3,a3,15
    800069d0:	00dd86b3          	add	a3,s11,a3
    800069d4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800069d8:	0087d79b          	srliw	a5,a5,0x8
    800069dc:	00100c93          	li	s9,1
    800069e0:	f8d400a3          	sb	a3,-127(s0)
    800069e4:	0cb67263          	bgeu	a2,a1,80006aa8 <__printf+0x410>
    800069e8:	00f7f693          	andi	a3,a5,15
    800069ec:	00dd86b3          	add	a3,s11,a3
    800069f0:	0006c583          	lbu	a1,0(a3)
    800069f4:	00f00613          	li	a2,15
    800069f8:	0047d69b          	srliw	a3,a5,0x4
    800069fc:	f8b40123          	sb	a1,-126(s0)
    80006a00:	0047d593          	srli	a1,a5,0x4
    80006a04:	28f67e63          	bgeu	a2,a5,80006ca0 <__printf+0x608>
    80006a08:	00f6f693          	andi	a3,a3,15
    80006a0c:	00dd86b3          	add	a3,s11,a3
    80006a10:	0006c503          	lbu	a0,0(a3)
    80006a14:	0087d813          	srli	a6,a5,0x8
    80006a18:	0087d69b          	srliw	a3,a5,0x8
    80006a1c:	f8a401a3          	sb	a0,-125(s0)
    80006a20:	28b67663          	bgeu	a2,a1,80006cac <__printf+0x614>
    80006a24:	00f6f693          	andi	a3,a3,15
    80006a28:	00dd86b3          	add	a3,s11,a3
    80006a2c:	0006c583          	lbu	a1,0(a3)
    80006a30:	00c7d513          	srli	a0,a5,0xc
    80006a34:	00c7d69b          	srliw	a3,a5,0xc
    80006a38:	f8b40223          	sb	a1,-124(s0)
    80006a3c:	29067a63          	bgeu	a2,a6,80006cd0 <__printf+0x638>
    80006a40:	00f6f693          	andi	a3,a3,15
    80006a44:	00dd86b3          	add	a3,s11,a3
    80006a48:	0006c583          	lbu	a1,0(a3)
    80006a4c:	0107d813          	srli	a6,a5,0x10
    80006a50:	0107d69b          	srliw	a3,a5,0x10
    80006a54:	f8b402a3          	sb	a1,-123(s0)
    80006a58:	28a67263          	bgeu	a2,a0,80006cdc <__printf+0x644>
    80006a5c:	00f6f693          	andi	a3,a3,15
    80006a60:	00dd86b3          	add	a3,s11,a3
    80006a64:	0006c683          	lbu	a3,0(a3)
    80006a68:	0147d79b          	srliw	a5,a5,0x14
    80006a6c:	f8d40323          	sb	a3,-122(s0)
    80006a70:	21067663          	bgeu	a2,a6,80006c7c <__printf+0x5e4>
    80006a74:	02079793          	slli	a5,a5,0x20
    80006a78:	0207d793          	srli	a5,a5,0x20
    80006a7c:	00fd8db3          	add	s11,s11,a5
    80006a80:	000dc683          	lbu	a3,0(s11)
    80006a84:	00800793          	li	a5,8
    80006a88:	00700c93          	li	s9,7
    80006a8c:	f8d403a3          	sb	a3,-121(s0)
    80006a90:	00075c63          	bgez	a4,80006aa8 <__printf+0x410>
    80006a94:	f9040713          	addi	a4,s0,-112
    80006a98:	00f70733          	add	a4,a4,a5
    80006a9c:	02d00693          	li	a3,45
    80006aa0:	fed70823          	sb	a3,-16(a4)
    80006aa4:	00078c93          	mv	s9,a5
    80006aa8:	f8040793          	addi	a5,s0,-128
    80006aac:	01978cb3          	add	s9,a5,s9
    80006ab0:	f7f40d13          	addi	s10,s0,-129
    80006ab4:	000cc503          	lbu	a0,0(s9)
    80006ab8:	fffc8c93          	addi	s9,s9,-1
    80006abc:	00000097          	auipc	ra,0x0
    80006ac0:	9f8080e7          	jalr	-1544(ra) # 800064b4 <consputc>
    80006ac4:	ff9d18e3          	bne	s10,s9,80006ab4 <__printf+0x41c>
    80006ac8:	0100006f          	j	80006ad8 <__printf+0x440>
    80006acc:	00000097          	auipc	ra,0x0
    80006ad0:	9e8080e7          	jalr	-1560(ra) # 800064b4 <consputc>
    80006ad4:	000c8493          	mv	s1,s9
    80006ad8:	00094503          	lbu	a0,0(s2)
    80006adc:	c60510e3          	bnez	a0,8000673c <__printf+0xa4>
    80006ae0:	e40c0ee3          	beqz	s8,8000693c <__printf+0x2a4>
    80006ae4:	00005517          	auipc	a0,0x5
    80006ae8:	b3c50513          	addi	a0,a0,-1220 # 8000b620 <pr>
    80006aec:	00001097          	auipc	ra,0x1
    80006af0:	94c080e7          	jalr	-1716(ra) # 80007438 <release>
    80006af4:	e49ff06f          	j	8000693c <__printf+0x2a4>
    80006af8:	f7843783          	ld	a5,-136(s0)
    80006afc:	03000513          	li	a0,48
    80006b00:	01000d13          	li	s10,16
    80006b04:	00878713          	addi	a4,a5,8
    80006b08:	0007bc83          	ld	s9,0(a5)
    80006b0c:	f6e43c23          	sd	a4,-136(s0)
    80006b10:	00000097          	auipc	ra,0x0
    80006b14:	9a4080e7          	jalr	-1628(ra) # 800064b4 <consputc>
    80006b18:	07800513          	li	a0,120
    80006b1c:	00000097          	auipc	ra,0x0
    80006b20:	998080e7          	jalr	-1640(ra) # 800064b4 <consputc>
    80006b24:	00002d97          	auipc	s11,0x2
    80006b28:	b74d8d93          	addi	s11,s11,-1164 # 80008698 <digits>
    80006b2c:	03ccd793          	srli	a5,s9,0x3c
    80006b30:	00fd87b3          	add	a5,s11,a5
    80006b34:	0007c503          	lbu	a0,0(a5)
    80006b38:	fffd0d1b          	addiw	s10,s10,-1
    80006b3c:	004c9c93          	slli	s9,s9,0x4
    80006b40:	00000097          	auipc	ra,0x0
    80006b44:	974080e7          	jalr	-1676(ra) # 800064b4 <consputc>
    80006b48:	fe0d12e3          	bnez	s10,80006b2c <__printf+0x494>
    80006b4c:	f8dff06f          	j	80006ad8 <__printf+0x440>
    80006b50:	f7843783          	ld	a5,-136(s0)
    80006b54:	0007bc83          	ld	s9,0(a5)
    80006b58:	00878793          	addi	a5,a5,8
    80006b5c:	f6f43c23          	sd	a5,-136(s0)
    80006b60:	000c9a63          	bnez	s9,80006b74 <__printf+0x4dc>
    80006b64:	1080006f          	j	80006c6c <__printf+0x5d4>
    80006b68:	001c8c93          	addi	s9,s9,1
    80006b6c:	00000097          	auipc	ra,0x0
    80006b70:	948080e7          	jalr	-1720(ra) # 800064b4 <consputc>
    80006b74:	000cc503          	lbu	a0,0(s9)
    80006b78:	fe0518e3          	bnez	a0,80006b68 <__printf+0x4d0>
    80006b7c:	f5dff06f          	j	80006ad8 <__printf+0x440>
    80006b80:	02500513          	li	a0,37
    80006b84:	00000097          	auipc	ra,0x0
    80006b88:	930080e7          	jalr	-1744(ra) # 800064b4 <consputc>
    80006b8c:	000c8513          	mv	a0,s9
    80006b90:	00000097          	auipc	ra,0x0
    80006b94:	924080e7          	jalr	-1756(ra) # 800064b4 <consputc>
    80006b98:	f41ff06f          	j	80006ad8 <__printf+0x440>
    80006b9c:	02500513          	li	a0,37
    80006ba0:	00000097          	auipc	ra,0x0
    80006ba4:	914080e7          	jalr	-1772(ra) # 800064b4 <consputc>
    80006ba8:	f31ff06f          	j	80006ad8 <__printf+0x440>
    80006bac:	00030513          	mv	a0,t1
    80006bb0:	00000097          	auipc	ra,0x0
    80006bb4:	7bc080e7          	jalr	1980(ra) # 8000736c <acquire>
    80006bb8:	b4dff06f          	j	80006704 <__printf+0x6c>
    80006bbc:	40c0053b          	negw	a0,a2
    80006bc0:	00a00713          	li	a4,10
    80006bc4:	02e576bb          	remuw	a3,a0,a4
    80006bc8:	00002d97          	auipc	s11,0x2
    80006bcc:	ad0d8d93          	addi	s11,s11,-1328 # 80008698 <digits>
    80006bd0:	ff700593          	li	a1,-9
    80006bd4:	02069693          	slli	a3,a3,0x20
    80006bd8:	0206d693          	srli	a3,a3,0x20
    80006bdc:	00dd86b3          	add	a3,s11,a3
    80006be0:	0006c683          	lbu	a3,0(a3)
    80006be4:	02e557bb          	divuw	a5,a0,a4
    80006be8:	f8d40023          	sb	a3,-128(s0)
    80006bec:	10b65e63          	bge	a2,a1,80006d08 <__printf+0x670>
    80006bf0:	06300593          	li	a1,99
    80006bf4:	02e7f6bb          	remuw	a3,a5,a4
    80006bf8:	02069693          	slli	a3,a3,0x20
    80006bfc:	0206d693          	srli	a3,a3,0x20
    80006c00:	00dd86b3          	add	a3,s11,a3
    80006c04:	0006c683          	lbu	a3,0(a3)
    80006c08:	02e7d73b          	divuw	a4,a5,a4
    80006c0c:	00200793          	li	a5,2
    80006c10:	f8d400a3          	sb	a3,-127(s0)
    80006c14:	bca5ece3          	bltu	a1,a0,800067ec <__printf+0x154>
    80006c18:	ce5ff06f          	j	800068fc <__printf+0x264>
    80006c1c:	40e007bb          	negw	a5,a4
    80006c20:	00002d97          	auipc	s11,0x2
    80006c24:	a78d8d93          	addi	s11,s11,-1416 # 80008698 <digits>
    80006c28:	00f7f693          	andi	a3,a5,15
    80006c2c:	00dd86b3          	add	a3,s11,a3
    80006c30:	0006c583          	lbu	a1,0(a3)
    80006c34:	ff100613          	li	a2,-15
    80006c38:	0047d69b          	srliw	a3,a5,0x4
    80006c3c:	f8b40023          	sb	a1,-128(s0)
    80006c40:	0047d59b          	srliw	a1,a5,0x4
    80006c44:	0ac75e63          	bge	a4,a2,80006d00 <__printf+0x668>
    80006c48:	00f6f693          	andi	a3,a3,15
    80006c4c:	00dd86b3          	add	a3,s11,a3
    80006c50:	0006c603          	lbu	a2,0(a3)
    80006c54:	00f00693          	li	a3,15
    80006c58:	0087d79b          	srliw	a5,a5,0x8
    80006c5c:	f8c400a3          	sb	a2,-127(s0)
    80006c60:	d8b6e4e3          	bltu	a3,a1,800069e8 <__printf+0x350>
    80006c64:	00200793          	li	a5,2
    80006c68:	e2dff06f          	j	80006a94 <__printf+0x3fc>
    80006c6c:	00002c97          	auipc	s9,0x2
    80006c70:	a0cc8c93          	addi	s9,s9,-1524 # 80008678 <CONSOLE_STATUS+0x668>
    80006c74:	02800513          	li	a0,40
    80006c78:	ef1ff06f          	j	80006b68 <__printf+0x4d0>
    80006c7c:	00700793          	li	a5,7
    80006c80:	00600c93          	li	s9,6
    80006c84:	e0dff06f          	j	80006a90 <__printf+0x3f8>
    80006c88:	00700793          	li	a5,7
    80006c8c:	00600c93          	li	s9,6
    80006c90:	c69ff06f          	j	800068f8 <__printf+0x260>
    80006c94:	00300793          	li	a5,3
    80006c98:	00200c93          	li	s9,2
    80006c9c:	c5dff06f          	j	800068f8 <__printf+0x260>
    80006ca0:	00300793          	li	a5,3
    80006ca4:	00200c93          	li	s9,2
    80006ca8:	de9ff06f          	j	80006a90 <__printf+0x3f8>
    80006cac:	00400793          	li	a5,4
    80006cb0:	00300c93          	li	s9,3
    80006cb4:	dddff06f          	j	80006a90 <__printf+0x3f8>
    80006cb8:	00400793          	li	a5,4
    80006cbc:	00300c93          	li	s9,3
    80006cc0:	c39ff06f          	j	800068f8 <__printf+0x260>
    80006cc4:	00500793          	li	a5,5
    80006cc8:	00400c93          	li	s9,4
    80006ccc:	c2dff06f          	j	800068f8 <__printf+0x260>
    80006cd0:	00500793          	li	a5,5
    80006cd4:	00400c93          	li	s9,4
    80006cd8:	db9ff06f          	j	80006a90 <__printf+0x3f8>
    80006cdc:	00600793          	li	a5,6
    80006ce0:	00500c93          	li	s9,5
    80006ce4:	dadff06f          	j	80006a90 <__printf+0x3f8>
    80006ce8:	00600793          	li	a5,6
    80006cec:	00500c93          	li	s9,5
    80006cf0:	c09ff06f          	j	800068f8 <__printf+0x260>
    80006cf4:	00800793          	li	a5,8
    80006cf8:	00700c93          	li	s9,7
    80006cfc:	bfdff06f          	j	800068f8 <__printf+0x260>
    80006d00:	00100793          	li	a5,1
    80006d04:	d91ff06f          	j	80006a94 <__printf+0x3fc>
    80006d08:	00100793          	li	a5,1
    80006d0c:	bf1ff06f          	j	800068fc <__printf+0x264>
    80006d10:	00900793          	li	a5,9
    80006d14:	00800c93          	li	s9,8
    80006d18:	be1ff06f          	j	800068f8 <__printf+0x260>
    80006d1c:	00002517          	auipc	a0,0x2
    80006d20:	96450513          	addi	a0,a0,-1692 # 80008680 <CONSOLE_STATUS+0x670>
    80006d24:	00000097          	auipc	ra,0x0
    80006d28:	918080e7          	jalr	-1768(ra) # 8000663c <panic>

0000000080006d2c <printfinit>:
    80006d2c:	fe010113          	addi	sp,sp,-32
    80006d30:	00813823          	sd	s0,16(sp)
    80006d34:	00913423          	sd	s1,8(sp)
    80006d38:	00113c23          	sd	ra,24(sp)
    80006d3c:	02010413          	addi	s0,sp,32
    80006d40:	00005497          	auipc	s1,0x5
    80006d44:	8e048493          	addi	s1,s1,-1824 # 8000b620 <pr>
    80006d48:	00048513          	mv	a0,s1
    80006d4c:	00002597          	auipc	a1,0x2
    80006d50:	94458593          	addi	a1,a1,-1724 # 80008690 <CONSOLE_STATUS+0x680>
    80006d54:	00000097          	auipc	ra,0x0
    80006d58:	5f4080e7          	jalr	1524(ra) # 80007348 <initlock>
    80006d5c:	01813083          	ld	ra,24(sp)
    80006d60:	01013403          	ld	s0,16(sp)
    80006d64:	0004ac23          	sw	zero,24(s1)
    80006d68:	00813483          	ld	s1,8(sp)
    80006d6c:	02010113          	addi	sp,sp,32
    80006d70:	00008067          	ret

0000000080006d74 <uartinit>:
    80006d74:	ff010113          	addi	sp,sp,-16
    80006d78:	00813423          	sd	s0,8(sp)
    80006d7c:	01010413          	addi	s0,sp,16
    80006d80:	100007b7          	lui	a5,0x10000
    80006d84:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006d88:	f8000713          	li	a4,-128
    80006d8c:	00e781a3          	sb	a4,3(a5)
    80006d90:	00300713          	li	a4,3
    80006d94:	00e78023          	sb	a4,0(a5)
    80006d98:	000780a3          	sb	zero,1(a5)
    80006d9c:	00e781a3          	sb	a4,3(a5)
    80006da0:	00700693          	li	a3,7
    80006da4:	00d78123          	sb	a3,2(a5)
    80006da8:	00e780a3          	sb	a4,1(a5)
    80006dac:	00813403          	ld	s0,8(sp)
    80006db0:	01010113          	addi	sp,sp,16
    80006db4:	00008067          	ret

0000000080006db8 <uartputc>:
    80006db8:	00003797          	auipc	a5,0x3
    80006dbc:	5a07a783          	lw	a5,1440(a5) # 8000a358 <panicked>
    80006dc0:	00078463          	beqz	a5,80006dc8 <uartputc+0x10>
    80006dc4:	0000006f          	j	80006dc4 <uartputc+0xc>
    80006dc8:	fd010113          	addi	sp,sp,-48
    80006dcc:	02813023          	sd	s0,32(sp)
    80006dd0:	00913c23          	sd	s1,24(sp)
    80006dd4:	01213823          	sd	s2,16(sp)
    80006dd8:	01313423          	sd	s3,8(sp)
    80006ddc:	02113423          	sd	ra,40(sp)
    80006de0:	03010413          	addi	s0,sp,48
    80006de4:	00003917          	auipc	s2,0x3
    80006de8:	57c90913          	addi	s2,s2,1404 # 8000a360 <uart_tx_r>
    80006dec:	00093783          	ld	a5,0(s2)
    80006df0:	00003497          	auipc	s1,0x3
    80006df4:	57848493          	addi	s1,s1,1400 # 8000a368 <uart_tx_w>
    80006df8:	0004b703          	ld	a4,0(s1)
    80006dfc:	02078693          	addi	a3,a5,32
    80006e00:	00050993          	mv	s3,a0
    80006e04:	02e69c63          	bne	a3,a4,80006e3c <uartputc+0x84>
    80006e08:	00001097          	auipc	ra,0x1
    80006e0c:	834080e7          	jalr	-1996(ra) # 8000763c <push_on>
    80006e10:	00093783          	ld	a5,0(s2)
    80006e14:	0004b703          	ld	a4,0(s1)
    80006e18:	02078793          	addi	a5,a5,32
    80006e1c:	00e79463          	bne	a5,a4,80006e24 <uartputc+0x6c>
    80006e20:	0000006f          	j	80006e20 <uartputc+0x68>
    80006e24:	00001097          	auipc	ra,0x1
    80006e28:	88c080e7          	jalr	-1908(ra) # 800076b0 <pop_on>
    80006e2c:	00093783          	ld	a5,0(s2)
    80006e30:	0004b703          	ld	a4,0(s1)
    80006e34:	02078693          	addi	a3,a5,32
    80006e38:	fce688e3          	beq	a3,a4,80006e08 <uartputc+0x50>
    80006e3c:	01f77693          	andi	a3,a4,31
    80006e40:	00005597          	auipc	a1,0x5
    80006e44:	80058593          	addi	a1,a1,-2048 # 8000b640 <uart_tx_buf>
    80006e48:	00d586b3          	add	a3,a1,a3
    80006e4c:	00170713          	addi	a4,a4,1
    80006e50:	01368023          	sb	s3,0(a3)
    80006e54:	00e4b023          	sd	a4,0(s1)
    80006e58:	10000637          	lui	a2,0x10000
    80006e5c:	02f71063          	bne	a4,a5,80006e7c <uartputc+0xc4>
    80006e60:	0340006f          	j	80006e94 <uartputc+0xdc>
    80006e64:	00074703          	lbu	a4,0(a4)
    80006e68:	00f93023          	sd	a5,0(s2)
    80006e6c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006e70:	00093783          	ld	a5,0(s2)
    80006e74:	0004b703          	ld	a4,0(s1)
    80006e78:	00f70e63          	beq	a4,a5,80006e94 <uartputc+0xdc>
    80006e7c:	00564683          	lbu	a3,5(a2)
    80006e80:	01f7f713          	andi	a4,a5,31
    80006e84:	00e58733          	add	a4,a1,a4
    80006e88:	0206f693          	andi	a3,a3,32
    80006e8c:	00178793          	addi	a5,a5,1
    80006e90:	fc069ae3          	bnez	a3,80006e64 <uartputc+0xac>
    80006e94:	02813083          	ld	ra,40(sp)
    80006e98:	02013403          	ld	s0,32(sp)
    80006e9c:	01813483          	ld	s1,24(sp)
    80006ea0:	01013903          	ld	s2,16(sp)
    80006ea4:	00813983          	ld	s3,8(sp)
    80006ea8:	03010113          	addi	sp,sp,48
    80006eac:	00008067          	ret

0000000080006eb0 <uartputc_sync>:
    80006eb0:	ff010113          	addi	sp,sp,-16
    80006eb4:	00813423          	sd	s0,8(sp)
    80006eb8:	01010413          	addi	s0,sp,16
    80006ebc:	00003717          	auipc	a4,0x3
    80006ec0:	49c72703          	lw	a4,1180(a4) # 8000a358 <panicked>
    80006ec4:	02071663          	bnez	a4,80006ef0 <uartputc_sync+0x40>
    80006ec8:	00050793          	mv	a5,a0
    80006ecc:	100006b7          	lui	a3,0x10000
    80006ed0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006ed4:	02077713          	andi	a4,a4,32
    80006ed8:	fe070ce3          	beqz	a4,80006ed0 <uartputc_sync+0x20>
    80006edc:	0ff7f793          	andi	a5,a5,255
    80006ee0:	00f68023          	sb	a5,0(a3)
    80006ee4:	00813403          	ld	s0,8(sp)
    80006ee8:	01010113          	addi	sp,sp,16
    80006eec:	00008067          	ret
    80006ef0:	0000006f          	j	80006ef0 <uartputc_sync+0x40>

0000000080006ef4 <uartstart>:
    80006ef4:	ff010113          	addi	sp,sp,-16
    80006ef8:	00813423          	sd	s0,8(sp)
    80006efc:	01010413          	addi	s0,sp,16
    80006f00:	00003617          	auipc	a2,0x3
    80006f04:	46060613          	addi	a2,a2,1120 # 8000a360 <uart_tx_r>
    80006f08:	00003517          	auipc	a0,0x3
    80006f0c:	46050513          	addi	a0,a0,1120 # 8000a368 <uart_tx_w>
    80006f10:	00063783          	ld	a5,0(a2)
    80006f14:	00053703          	ld	a4,0(a0)
    80006f18:	04f70263          	beq	a4,a5,80006f5c <uartstart+0x68>
    80006f1c:	100005b7          	lui	a1,0x10000
    80006f20:	00004817          	auipc	a6,0x4
    80006f24:	72080813          	addi	a6,a6,1824 # 8000b640 <uart_tx_buf>
    80006f28:	01c0006f          	j	80006f44 <uartstart+0x50>
    80006f2c:	0006c703          	lbu	a4,0(a3)
    80006f30:	00f63023          	sd	a5,0(a2)
    80006f34:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006f38:	00063783          	ld	a5,0(a2)
    80006f3c:	00053703          	ld	a4,0(a0)
    80006f40:	00f70e63          	beq	a4,a5,80006f5c <uartstart+0x68>
    80006f44:	01f7f713          	andi	a4,a5,31
    80006f48:	00e806b3          	add	a3,a6,a4
    80006f4c:	0055c703          	lbu	a4,5(a1)
    80006f50:	00178793          	addi	a5,a5,1
    80006f54:	02077713          	andi	a4,a4,32
    80006f58:	fc071ae3          	bnez	a4,80006f2c <uartstart+0x38>
    80006f5c:	00813403          	ld	s0,8(sp)
    80006f60:	01010113          	addi	sp,sp,16
    80006f64:	00008067          	ret

0000000080006f68 <uartgetc>:
    80006f68:	ff010113          	addi	sp,sp,-16
    80006f6c:	00813423          	sd	s0,8(sp)
    80006f70:	01010413          	addi	s0,sp,16
    80006f74:	10000737          	lui	a4,0x10000
    80006f78:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006f7c:	0017f793          	andi	a5,a5,1
    80006f80:	00078c63          	beqz	a5,80006f98 <uartgetc+0x30>
    80006f84:	00074503          	lbu	a0,0(a4)
    80006f88:	0ff57513          	andi	a0,a0,255
    80006f8c:	00813403          	ld	s0,8(sp)
    80006f90:	01010113          	addi	sp,sp,16
    80006f94:	00008067          	ret
    80006f98:	fff00513          	li	a0,-1
    80006f9c:	ff1ff06f          	j	80006f8c <uartgetc+0x24>

0000000080006fa0 <uartintr>:
    80006fa0:	100007b7          	lui	a5,0x10000
    80006fa4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006fa8:	0017f793          	andi	a5,a5,1
    80006fac:	0a078463          	beqz	a5,80007054 <uartintr+0xb4>
    80006fb0:	fe010113          	addi	sp,sp,-32
    80006fb4:	00813823          	sd	s0,16(sp)
    80006fb8:	00913423          	sd	s1,8(sp)
    80006fbc:	00113c23          	sd	ra,24(sp)
    80006fc0:	02010413          	addi	s0,sp,32
    80006fc4:	100004b7          	lui	s1,0x10000
    80006fc8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006fcc:	0ff57513          	andi	a0,a0,255
    80006fd0:	fffff097          	auipc	ra,0xfffff
    80006fd4:	534080e7          	jalr	1332(ra) # 80006504 <consoleintr>
    80006fd8:	0054c783          	lbu	a5,5(s1)
    80006fdc:	0017f793          	andi	a5,a5,1
    80006fe0:	fe0794e3          	bnez	a5,80006fc8 <uartintr+0x28>
    80006fe4:	00003617          	auipc	a2,0x3
    80006fe8:	37c60613          	addi	a2,a2,892 # 8000a360 <uart_tx_r>
    80006fec:	00003517          	auipc	a0,0x3
    80006ff0:	37c50513          	addi	a0,a0,892 # 8000a368 <uart_tx_w>
    80006ff4:	00063783          	ld	a5,0(a2)
    80006ff8:	00053703          	ld	a4,0(a0)
    80006ffc:	04f70263          	beq	a4,a5,80007040 <uartintr+0xa0>
    80007000:	100005b7          	lui	a1,0x10000
    80007004:	00004817          	auipc	a6,0x4
    80007008:	63c80813          	addi	a6,a6,1596 # 8000b640 <uart_tx_buf>
    8000700c:	01c0006f          	j	80007028 <uartintr+0x88>
    80007010:	0006c703          	lbu	a4,0(a3)
    80007014:	00f63023          	sd	a5,0(a2)
    80007018:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000701c:	00063783          	ld	a5,0(a2)
    80007020:	00053703          	ld	a4,0(a0)
    80007024:	00f70e63          	beq	a4,a5,80007040 <uartintr+0xa0>
    80007028:	01f7f713          	andi	a4,a5,31
    8000702c:	00e806b3          	add	a3,a6,a4
    80007030:	0055c703          	lbu	a4,5(a1)
    80007034:	00178793          	addi	a5,a5,1
    80007038:	02077713          	andi	a4,a4,32
    8000703c:	fc071ae3          	bnez	a4,80007010 <uartintr+0x70>
    80007040:	01813083          	ld	ra,24(sp)
    80007044:	01013403          	ld	s0,16(sp)
    80007048:	00813483          	ld	s1,8(sp)
    8000704c:	02010113          	addi	sp,sp,32
    80007050:	00008067          	ret
    80007054:	00003617          	auipc	a2,0x3
    80007058:	30c60613          	addi	a2,a2,780 # 8000a360 <uart_tx_r>
    8000705c:	00003517          	auipc	a0,0x3
    80007060:	30c50513          	addi	a0,a0,780 # 8000a368 <uart_tx_w>
    80007064:	00063783          	ld	a5,0(a2)
    80007068:	00053703          	ld	a4,0(a0)
    8000706c:	04f70263          	beq	a4,a5,800070b0 <uartintr+0x110>
    80007070:	100005b7          	lui	a1,0x10000
    80007074:	00004817          	auipc	a6,0x4
    80007078:	5cc80813          	addi	a6,a6,1484 # 8000b640 <uart_tx_buf>
    8000707c:	01c0006f          	j	80007098 <uartintr+0xf8>
    80007080:	0006c703          	lbu	a4,0(a3)
    80007084:	00f63023          	sd	a5,0(a2)
    80007088:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000708c:	00063783          	ld	a5,0(a2)
    80007090:	00053703          	ld	a4,0(a0)
    80007094:	02f70063          	beq	a4,a5,800070b4 <uartintr+0x114>
    80007098:	01f7f713          	andi	a4,a5,31
    8000709c:	00e806b3          	add	a3,a6,a4
    800070a0:	0055c703          	lbu	a4,5(a1)
    800070a4:	00178793          	addi	a5,a5,1
    800070a8:	02077713          	andi	a4,a4,32
    800070ac:	fc071ae3          	bnez	a4,80007080 <uartintr+0xe0>
    800070b0:	00008067          	ret
    800070b4:	00008067          	ret

00000000800070b8 <kinit>:
    800070b8:	fc010113          	addi	sp,sp,-64
    800070bc:	02913423          	sd	s1,40(sp)
    800070c0:	fffff7b7          	lui	a5,0xfffff
    800070c4:	00005497          	auipc	s1,0x5
    800070c8:	59b48493          	addi	s1,s1,1435 # 8000c65f <end+0xfff>
    800070cc:	02813823          	sd	s0,48(sp)
    800070d0:	01313c23          	sd	s3,24(sp)
    800070d4:	00f4f4b3          	and	s1,s1,a5
    800070d8:	02113c23          	sd	ra,56(sp)
    800070dc:	03213023          	sd	s2,32(sp)
    800070e0:	01413823          	sd	s4,16(sp)
    800070e4:	01513423          	sd	s5,8(sp)
    800070e8:	04010413          	addi	s0,sp,64
    800070ec:	000017b7          	lui	a5,0x1
    800070f0:	01100993          	li	s3,17
    800070f4:	00f487b3          	add	a5,s1,a5
    800070f8:	01b99993          	slli	s3,s3,0x1b
    800070fc:	06f9e063          	bltu	s3,a5,8000715c <kinit+0xa4>
    80007100:	00004a97          	auipc	s5,0x4
    80007104:	560a8a93          	addi	s5,s5,1376 # 8000b660 <end>
    80007108:	0754ec63          	bltu	s1,s5,80007180 <kinit+0xc8>
    8000710c:	0734fa63          	bgeu	s1,s3,80007180 <kinit+0xc8>
    80007110:	00088a37          	lui	s4,0x88
    80007114:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007118:	00003917          	auipc	s2,0x3
    8000711c:	25890913          	addi	s2,s2,600 # 8000a370 <kmem>
    80007120:	00ca1a13          	slli	s4,s4,0xc
    80007124:	0140006f          	j	80007138 <kinit+0x80>
    80007128:	000017b7          	lui	a5,0x1
    8000712c:	00f484b3          	add	s1,s1,a5
    80007130:	0554e863          	bltu	s1,s5,80007180 <kinit+0xc8>
    80007134:	0534f663          	bgeu	s1,s3,80007180 <kinit+0xc8>
    80007138:	00001637          	lui	a2,0x1
    8000713c:	00100593          	li	a1,1
    80007140:	00048513          	mv	a0,s1
    80007144:	00000097          	auipc	ra,0x0
    80007148:	5e4080e7          	jalr	1508(ra) # 80007728 <__memset>
    8000714c:	00093783          	ld	a5,0(s2)
    80007150:	00f4b023          	sd	a5,0(s1)
    80007154:	00993023          	sd	s1,0(s2)
    80007158:	fd4498e3          	bne	s1,s4,80007128 <kinit+0x70>
    8000715c:	03813083          	ld	ra,56(sp)
    80007160:	03013403          	ld	s0,48(sp)
    80007164:	02813483          	ld	s1,40(sp)
    80007168:	02013903          	ld	s2,32(sp)
    8000716c:	01813983          	ld	s3,24(sp)
    80007170:	01013a03          	ld	s4,16(sp)
    80007174:	00813a83          	ld	s5,8(sp)
    80007178:	04010113          	addi	sp,sp,64
    8000717c:	00008067          	ret
    80007180:	00001517          	auipc	a0,0x1
    80007184:	53050513          	addi	a0,a0,1328 # 800086b0 <digits+0x18>
    80007188:	fffff097          	auipc	ra,0xfffff
    8000718c:	4b4080e7          	jalr	1204(ra) # 8000663c <panic>

0000000080007190 <freerange>:
    80007190:	fc010113          	addi	sp,sp,-64
    80007194:	000017b7          	lui	a5,0x1
    80007198:	02913423          	sd	s1,40(sp)
    8000719c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800071a0:	009504b3          	add	s1,a0,s1
    800071a4:	fffff537          	lui	a0,0xfffff
    800071a8:	02813823          	sd	s0,48(sp)
    800071ac:	02113c23          	sd	ra,56(sp)
    800071b0:	03213023          	sd	s2,32(sp)
    800071b4:	01313c23          	sd	s3,24(sp)
    800071b8:	01413823          	sd	s4,16(sp)
    800071bc:	01513423          	sd	s5,8(sp)
    800071c0:	01613023          	sd	s6,0(sp)
    800071c4:	04010413          	addi	s0,sp,64
    800071c8:	00a4f4b3          	and	s1,s1,a0
    800071cc:	00f487b3          	add	a5,s1,a5
    800071d0:	06f5e463          	bltu	a1,a5,80007238 <freerange+0xa8>
    800071d4:	00004a97          	auipc	s5,0x4
    800071d8:	48ca8a93          	addi	s5,s5,1164 # 8000b660 <end>
    800071dc:	0954e263          	bltu	s1,s5,80007260 <freerange+0xd0>
    800071e0:	01100993          	li	s3,17
    800071e4:	01b99993          	slli	s3,s3,0x1b
    800071e8:	0734fc63          	bgeu	s1,s3,80007260 <freerange+0xd0>
    800071ec:	00058a13          	mv	s4,a1
    800071f0:	00003917          	auipc	s2,0x3
    800071f4:	18090913          	addi	s2,s2,384 # 8000a370 <kmem>
    800071f8:	00002b37          	lui	s6,0x2
    800071fc:	0140006f          	j	80007210 <freerange+0x80>
    80007200:	000017b7          	lui	a5,0x1
    80007204:	00f484b3          	add	s1,s1,a5
    80007208:	0554ec63          	bltu	s1,s5,80007260 <freerange+0xd0>
    8000720c:	0534fa63          	bgeu	s1,s3,80007260 <freerange+0xd0>
    80007210:	00001637          	lui	a2,0x1
    80007214:	00100593          	li	a1,1
    80007218:	00048513          	mv	a0,s1
    8000721c:	00000097          	auipc	ra,0x0
    80007220:	50c080e7          	jalr	1292(ra) # 80007728 <__memset>
    80007224:	00093703          	ld	a4,0(s2)
    80007228:	016487b3          	add	a5,s1,s6
    8000722c:	00e4b023          	sd	a4,0(s1)
    80007230:	00993023          	sd	s1,0(s2)
    80007234:	fcfa76e3          	bgeu	s4,a5,80007200 <freerange+0x70>
    80007238:	03813083          	ld	ra,56(sp)
    8000723c:	03013403          	ld	s0,48(sp)
    80007240:	02813483          	ld	s1,40(sp)
    80007244:	02013903          	ld	s2,32(sp)
    80007248:	01813983          	ld	s3,24(sp)
    8000724c:	01013a03          	ld	s4,16(sp)
    80007250:	00813a83          	ld	s5,8(sp)
    80007254:	00013b03          	ld	s6,0(sp)
    80007258:	04010113          	addi	sp,sp,64
    8000725c:	00008067          	ret
    80007260:	00001517          	auipc	a0,0x1
    80007264:	45050513          	addi	a0,a0,1104 # 800086b0 <digits+0x18>
    80007268:	fffff097          	auipc	ra,0xfffff
    8000726c:	3d4080e7          	jalr	980(ra) # 8000663c <panic>

0000000080007270 <kfree>:
    80007270:	fe010113          	addi	sp,sp,-32
    80007274:	00813823          	sd	s0,16(sp)
    80007278:	00113c23          	sd	ra,24(sp)
    8000727c:	00913423          	sd	s1,8(sp)
    80007280:	02010413          	addi	s0,sp,32
    80007284:	03451793          	slli	a5,a0,0x34
    80007288:	04079c63          	bnez	a5,800072e0 <kfree+0x70>
    8000728c:	00004797          	auipc	a5,0x4
    80007290:	3d478793          	addi	a5,a5,980 # 8000b660 <end>
    80007294:	00050493          	mv	s1,a0
    80007298:	04f56463          	bltu	a0,a5,800072e0 <kfree+0x70>
    8000729c:	01100793          	li	a5,17
    800072a0:	01b79793          	slli	a5,a5,0x1b
    800072a4:	02f57e63          	bgeu	a0,a5,800072e0 <kfree+0x70>
    800072a8:	00001637          	lui	a2,0x1
    800072ac:	00100593          	li	a1,1
    800072b0:	00000097          	auipc	ra,0x0
    800072b4:	478080e7          	jalr	1144(ra) # 80007728 <__memset>
    800072b8:	00003797          	auipc	a5,0x3
    800072bc:	0b878793          	addi	a5,a5,184 # 8000a370 <kmem>
    800072c0:	0007b703          	ld	a4,0(a5)
    800072c4:	01813083          	ld	ra,24(sp)
    800072c8:	01013403          	ld	s0,16(sp)
    800072cc:	00e4b023          	sd	a4,0(s1)
    800072d0:	0097b023          	sd	s1,0(a5)
    800072d4:	00813483          	ld	s1,8(sp)
    800072d8:	02010113          	addi	sp,sp,32
    800072dc:	00008067          	ret
    800072e0:	00001517          	auipc	a0,0x1
    800072e4:	3d050513          	addi	a0,a0,976 # 800086b0 <digits+0x18>
    800072e8:	fffff097          	auipc	ra,0xfffff
    800072ec:	354080e7          	jalr	852(ra) # 8000663c <panic>

00000000800072f0 <kalloc>:
    800072f0:	fe010113          	addi	sp,sp,-32
    800072f4:	00813823          	sd	s0,16(sp)
    800072f8:	00913423          	sd	s1,8(sp)
    800072fc:	00113c23          	sd	ra,24(sp)
    80007300:	02010413          	addi	s0,sp,32
    80007304:	00003797          	auipc	a5,0x3
    80007308:	06c78793          	addi	a5,a5,108 # 8000a370 <kmem>
    8000730c:	0007b483          	ld	s1,0(a5)
    80007310:	02048063          	beqz	s1,80007330 <kalloc+0x40>
    80007314:	0004b703          	ld	a4,0(s1)
    80007318:	00001637          	lui	a2,0x1
    8000731c:	00500593          	li	a1,5
    80007320:	00048513          	mv	a0,s1
    80007324:	00e7b023          	sd	a4,0(a5)
    80007328:	00000097          	auipc	ra,0x0
    8000732c:	400080e7          	jalr	1024(ra) # 80007728 <__memset>
    80007330:	01813083          	ld	ra,24(sp)
    80007334:	01013403          	ld	s0,16(sp)
    80007338:	00048513          	mv	a0,s1
    8000733c:	00813483          	ld	s1,8(sp)
    80007340:	02010113          	addi	sp,sp,32
    80007344:	00008067          	ret

0000000080007348 <initlock>:
    80007348:	ff010113          	addi	sp,sp,-16
    8000734c:	00813423          	sd	s0,8(sp)
    80007350:	01010413          	addi	s0,sp,16
    80007354:	00813403          	ld	s0,8(sp)
    80007358:	00b53423          	sd	a1,8(a0)
    8000735c:	00052023          	sw	zero,0(a0)
    80007360:	00053823          	sd	zero,16(a0)
    80007364:	01010113          	addi	sp,sp,16
    80007368:	00008067          	ret

000000008000736c <acquire>:
    8000736c:	fe010113          	addi	sp,sp,-32
    80007370:	00813823          	sd	s0,16(sp)
    80007374:	00913423          	sd	s1,8(sp)
    80007378:	00113c23          	sd	ra,24(sp)
    8000737c:	01213023          	sd	s2,0(sp)
    80007380:	02010413          	addi	s0,sp,32
    80007384:	00050493          	mv	s1,a0
    80007388:	10002973          	csrr	s2,sstatus
    8000738c:	100027f3          	csrr	a5,sstatus
    80007390:	ffd7f793          	andi	a5,a5,-3
    80007394:	10079073          	csrw	sstatus,a5
    80007398:	fffff097          	auipc	ra,0xfffff
    8000739c:	8e0080e7          	jalr	-1824(ra) # 80005c78 <mycpu>
    800073a0:	07852783          	lw	a5,120(a0)
    800073a4:	06078e63          	beqz	a5,80007420 <acquire+0xb4>
    800073a8:	fffff097          	auipc	ra,0xfffff
    800073ac:	8d0080e7          	jalr	-1840(ra) # 80005c78 <mycpu>
    800073b0:	07852783          	lw	a5,120(a0)
    800073b4:	0004a703          	lw	a4,0(s1)
    800073b8:	0017879b          	addiw	a5,a5,1
    800073bc:	06f52c23          	sw	a5,120(a0)
    800073c0:	04071063          	bnez	a4,80007400 <acquire+0x94>
    800073c4:	00100713          	li	a4,1
    800073c8:	00070793          	mv	a5,a4
    800073cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800073d0:	0007879b          	sext.w	a5,a5
    800073d4:	fe079ae3          	bnez	a5,800073c8 <acquire+0x5c>
    800073d8:	0ff0000f          	fence
    800073dc:	fffff097          	auipc	ra,0xfffff
    800073e0:	89c080e7          	jalr	-1892(ra) # 80005c78 <mycpu>
    800073e4:	01813083          	ld	ra,24(sp)
    800073e8:	01013403          	ld	s0,16(sp)
    800073ec:	00a4b823          	sd	a0,16(s1)
    800073f0:	00013903          	ld	s2,0(sp)
    800073f4:	00813483          	ld	s1,8(sp)
    800073f8:	02010113          	addi	sp,sp,32
    800073fc:	00008067          	ret
    80007400:	0104b903          	ld	s2,16(s1)
    80007404:	fffff097          	auipc	ra,0xfffff
    80007408:	874080e7          	jalr	-1932(ra) # 80005c78 <mycpu>
    8000740c:	faa91ce3          	bne	s2,a0,800073c4 <acquire+0x58>
    80007410:	00001517          	auipc	a0,0x1
    80007414:	2a850513          	addi	a0,a0,680 # 800086b8 <digits+0x20>
    80007418:	fffff097          	auipc	ra,0xfffff
    8000741c:	224080e7          	jalr	548(ra) # 8000663c <panic>
    80007420:	00195913          	srli	s2,s2,0x1
    80007424:	fffff097          	auipc	ra,0xfffff
    80007428:	854080e7          	jalr	-1964(ra) # 80005c78 <mycpu>
    8000742c:	00197913          	andi	s2,s2,1
    80007430:	07252e23          	sw	s2,124(a0)
    80007434:	f75ff06f          	j	800073a8 <acquire+0x3c>

0000000080007438 <release>:
    80007438:	fe010113          	addi	sp,sp,-32
    8000743c:	00813823          	sd	s0,16(sp)
    80007440:	00113c23          	sd	ra,24(sp)
    80007444:	00913423          	sd	s1,8(sp)
    80007448:	01213023          	sd	s2,0(sp)
    8000744c:	02010413          	addi	s0,sp,32
    80007450:	00052783          	lw	a5,0(a0)
    80007454:	00079a63          	bnez	a5,80007468 <release+0x30>
    80007458:	00001517          	auipc	a0,0x1
    8000745c:	26850513          	addi	a0,a0,616 # 800086c0 <digits+0x28>
    80007460:	fffff097          	auipc	ra,0xfffff
    80007464:	1dc080e7          	jalr	476(ra) # 8000663c <panic>
    80007468:	01053903          	ld	s2,16(a0)
    8000746c:	00050493          	mv	s1,a0
    80007470:	fffff097          	auipc	ra,0xfffff
    80007474:	808080e7          	jalr	-2040(ra) # 80005c78 <mycpu>
    80007478:	fea910e3          	bne	s2,a0,80007458 <release+0x20>
    8000747c:	0004b823          	sd	zero,16(s1)
    80007480:	0ff0000f          	fence
    80007484:	0f50000f          	fence	iorw,ow
    80007488:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000748c:	ffffe097          	auipc	ra,0xffffe
    80007490:	7ec080e7          	jalr	2028(ra) # 80005c78 <mycpu>
    80007494:	100027f3          	csrr	a5,sstatus
    80007498:	0027f793          	andi	a5,a5,2
    8000749c:	04079a63          	bnez	a5,800074f0 <release+0xb8>
    800074a0:	07852783          	lw	a5,120(a0)
    800074a4:	02f05e63          	blez	a5,800074e0 <release+0xa8>
    800074a8:	fff7871b          	addiw	a4,a5,-1
    800074ac:	06e52c23          	sw	a4,120(a0)
    800074b0:	00071c63          	bnez	a4,800074c8 <release+0x90>
    800074b4:	07c52783          	lw	a5,124(a0)
    800074b8:	00078863          	beqz	a5,800074c8 <release+0x90>
    800074bc:	100027f3          	csrr	a5,sstatus
    800074c0:	0027e793          	ori	a5,a5,2
    800074c4:	10079073          	csrw	sstatus,a5
    800074c8:	01813083          	ld	ra,24(sp)
    800074cc:	01013403          	ld	s0,16(sp)
    800074d0:	00813483          	ld	s1,8(sp)
    800074d4:	00013903          	ld	s2,0(sp)
    800074d8:	02010113          	addi	sp,sp,32
    800074dc:	00008067          	ret
    800074e0:	00001517          	auipc	a0,0x1
    800074e4:	20050513          	addi	a0,a0,512 # 800086e0 <digits+0x48>
    800074e8:	fffff097          	auipc	ra,0xfffff
    800074ec:	154080e7          	jalr	340(ra) # 8000663c <panic>
    800074f0:	00001517          	auipc	a0,0x1
    800074f4:	1d850513          	addi	a0,a0,472 # 800086c8 <digits+0x30>
    800074f8:	fffff097          	auipc	ra,0xfffff
    800074fc:	144080e7          	jalr	324(ra) # 8000663c <panic>

0000000080007500 <holding>:
    80007500:	00052783          	lw	a5,0(a0)
    80007504:	00079663          	bnez	a5,80007510 <holding+0x10>
    80007508:	00000513          	li	a0,0
    8000750c:	00008067          	ret
    80007510:	fe010113          	addi	sp,sp,-32
    80007514:	00813823          	sd	s0,16(sp)
    80007518:	00913423          	sd	s1,8(sp)
    8000751c:	00113c23          	sd	ra,24(sp)
    80007520:	02010413          	addi	s0,sp,32
    80007524:	01053483          	ld	s1,16(a0)
    80007528:	ffffe097          	auipc	ra,0xffffe
    8000752c:	750080e7          	jalr	1872(ra) # 80005c78 <mycpu>
    80007530:	01813083          	ld	ra,24(sp)
    80007534:	01013403          	ld	s0,16(sp)
    80007538:	40a48533          	sub	a0,s1,a0
    8000753c:	00153513          	seqz	a0,a0
    80007540:	00813483          	ld	s1,8(sp)
    80007544:	02010113          	addi	sp,sp,32
    80007548:	00008067          	ret

000000008000754c <push_off>:
    8000754c:	fe010113          	addi	sp,sp,-32
    80007550:	00813823          	sd	s0,16(sp)
    80007554:	00113c23          	sd	ra,24(sp)
    80007558:	00913423          	sd	s1,8(sp)
    8000755c:	02010413          	addi	s0,sp,32
    80007560:	100024f3          	csrr	s1,sstatus
    80007564:	100027f3          	csrr	a5,sstatus
    80007568:	ffd7f793          	andi	a5,a5,-3
    8000756c:	10079073          	csrw	sstatus,a5
    80007570:	ffffe097          	auipc	ra,0xffffe
    80007574:	708080e7          	jalr	1800(ra) # 80005c78 <mycpu>
    80007578:	07852783          	lw	a5,120(a0)
    8000757c:	02078663          	beqz	a5,800075a8 <push_off+0x5c>
    80007580:	ffffe097          	auipc	ra,0xffffe
    80007584:	6f8080e7          	jalr	1784(ra) # 80005c78 <mycpu>
    80007588:	07852783          	lw	a5,120(a0)
    8000758c:	01813083          	ld	ra,24(sp)
    80007590:	01013403          	ld	s0,16(sp)
    80007594:	0017879b          	addiw	a5,a5,1
    80007598:	06f52c23          	sw	a5,120(a0)
    8000759c:	00813483          	ld	s1,8(sp)
    800075a0:	02010113          	addi	sp,sp,32
    800075a4:	00008067          	ret
    800075a8:	0014d493          	srli	s1,s1,0x1
    800075ac:	ffffe097          	auipc	ra,0xffffe
    800075b0:	6cc080e7          	jalr	1740(ra) # 80005c78 <mycpu>
    800075b4:	0014f493          	andi	s1,s1,1
    800075b8:	06952e23          	sw	s1,124(a0)
    800075bc:	fc5ff06f          	j	80007580 <push_off+0x34>

00000000800075c0 <pop_off>:
    800075c0:	ff010113          	addi	sp,sp,-16
    800075c4:	00813023          	sd	s0,0(sp)
    800075c8:	00113423          	sd	ra,8(sp)
    800075cc:	01010413          	addi	s0,sp,16
    800075d0:	ffffe097          	auipc	ra,0xffffe
    800075d4:	6a8080e7          	jalr	1704(ra) # 80005c78 <mycpu>
    800075d8:	100027f3          	csrr	a5,sstatus
    800075dc:	0027f793          	andi	a5,a5,2
    800075e0:	04079663          	bnez	a5,8000762c <pop_off+0x6c>
    800075e4:	07852783          	lw	a5,120(a0)
    800075e8:	02f05a63          	blez	a5,8000761c <pop_off+0x5c>
    800075ec:	fff7871b          	addiw	a4,a5,-1
    800075f0:	06e52c23          	sw	a4,120(a0)
    800075f4:	00071c63          	bnez	a4,8000760c <pop_off+0x4c>
    800075f8:	07c52783          	lw	a5,124(a0)
    800075fc:	00078863          	beqz	a5,8000760c <pop_off+0x4c>
    80007600:	100027f3          	csrr	a5,sstatus
    80007604:	0027e793          	ori	a5,a5,2
    80007608:	10079073          	csrw	sstatus,a5
    8000760c:	00813083          	ld	ra,8(sp)
    80007610:	00013403          	ld	s0,0(sp)
    80007614:	01010113          	addi	sp,sp,16
    80007618:	00008067          	ret
    8000761c:	00001517          	auipc	a0,0x1
    80007620:	0c450513          	addi	a0,a0,196 # 800086e0 <digits+0x48>
    80007624:	fffff097          	auipc	ra,0xfffff
    80007628:	018080e7          	jalr	24(ra) # 8000663c <panic>
    8000762c:	00001517          	auipc	a0,0x1
    80007630:	09c50513          	addi	a0,a0,156 # 800086c8 <digits+0x30>
    80007634:	fffff097          	auipc	ra,0xfffff
    80007638:	008080e7          	jalr	8(ra) # 8000663c <panic>

000000008000763c <push_on>:
    8000763c:	fe010113          	addi	sp,sp,-32
    80007640:	00813823          	sd	s0,16(sp)
    80007644:	00113c23          	sd	ra,24(sp)
    80007648:	00913423          	sd	s1,8(sp)
    8000764c:	02010413          	addi	s0,sp,32
    80007650:	100024f3          	csrr	s1,sstatus
    80007654:	100027f3          	csrr	a5,sstatus
    80007658:	0027e793          	ori	a5,a5,2
    8000765c:	10079073          	csrw	sstatus,a5
    80007660:	ffffe097          	auipc	ra,0xffffe
    80007664:	618080e7          	jalr	1560(ra) # 80005c78 <mycpu>
    80007668:	07852783          	lw	a5,120(a0)
    8000766c:	02078663          	beqz	a5,80007698 <push_on+0x5c>
    80007670:	ffffe097          	auipc	ra,0xffffe
    80007674:	608080e7          	jalr	1544(ra) # 80005c78 <mycpu>
    80007678:	07852783          	lw	a5,120(a0)
    8000767c:	01813083          	ld	ra,24(sp)
    80007680:	01013403          	ld	s0,16(sp)
    80007684:	0017879b          	addiw	a5,a5,1
    80007688:	06f52c23          	sw	a5,120(a0)
    8000768c:	00813483          	ld	s1,8(sp)
    80007690:	02010113          	addi	sp,sp,32
    80007694:	00008067          	ret
    80007698:	0014d493          	srli	s1,s1,0x1
    8000769c:	ffffe097          	auipc	ra,0xffffe
    800076a0:	5dc080e7          	jalr	1500(ra) # 80005c78 <mycpu>
    800076a4:	0014f493          	andi	s1,s1,1
    800076a8:	06952e23          	sw	s1,124(a0)
    800076ac:	fc5ff06f          	j	80007670 <push_on+0x34>

00000000800076b0 <pop_on>:
    800076b0:	ff010113          	addi	sp,sp,-16
    800076b4:	00813023          	sd	s0,0(sp)
    800076b8:	00113423          	sd	ra,8(sp)
    800076bc:	01010413          	addi	s0,sp,16
    800076c0:	ffffe097          	auipc	ra,0xffffe
    800076c4:	5b8080e7          	jalr	1464(ra) # 80005c78 <mycpu>
    800076c8:	100027f3          	csrr	a5,sstatus
    800076cc:	0027f793          	andi	a5,a5,2
    800076d0:	04078463          	beqz	a5,80007718 <pop_on+0x68>
    800076d4:	07852783          	lw	a5,120(a0)
    800076d8:	02f05863          	blez	a5,80007708 <pop_on+0x58>
    800076dc:	fff7879b          	addiw	a5,a5,-1
    800076e0:	06f52c23          	sw	a5,120(a0)
    800076e4:	07853783          	ld	a5,120(a0)
    800076e8:	00079863          	bnez	a5,800076f8 <pop_on+0x48>
    800076ec:	100027f3          	csrr	a5,sstatus
    800076f0:	ffd7f793          	andi	a5,a5,-3
    800076f4:	10079073          	csrw	sstatus,a5
    800076f8:	00813083          	ld	ra,8(sp)
    800076fc:	00013403          	ld	s0,0(sp)
    80007700:	01010113          	addi	sp,sp,16
    80007704:	00008067          	ret
    80007708:	00001517          	auipc	a0,0x1
    8000770c:	00050513          	mv	a0,a0
    80007710:	fffff097          	auipc	ra,0xfffff
    80007714:	f2c080e7          	jalr	-212(ra) # 8000663c <panic>
    80007718:	00001517          	auipc	a0,0x1
    8000771c:	fd050513          	addi	a0,a0,-48 # 800086e8 <digits+0x50>
    80007720:	fffff097          	auipc	ra,0xfffff
    80007724:	f1c080e7          	jalr	-228(ra) # 8000663c <panic>

0000000080007728 <__memset>:
    80007728:	ff010113          	addi	sp,sp,-16
    8000772c:	00813423          	sd	s0,8(sp)
    80007730:	01010413          	addi	s0,sp,16
    80007734:	1a060e63          	beqz	a2,800078f0 <__memset+0x1c8>
    80007738:	40a007b3          	neg	a5,a0
    8000773c:	0077f793          	andi	a5,a5,7
    80007740:	00778693          	addi	a3,a5,7
    80007744:	00b00813          	li	a6,11
    80007748:	0ff5f593          	andi	a1,a1,255
    8000774c:	fff6071b          	addiw	a4,a2,-1
    80007750:	1b06e663          	bltu	a3,a6,800078fc <__memset+0x1d4>
    80007754:	1cd76463          	bltu	a4,a3,8000791c <__memset+0x1f4>
    80007758:	1a078e63          	beqz	a5,80007914 <__memset+0x1ec>
    8000775c:	00b50023          	sb	a1,0(a0)
    80007760:	00100713          	li	a4,1
    80007764:	1ae78463          	beq	a5,a4,8000790c <__memset+0x1e4>
    80007768:	00b500a3          	sb	a1,1(a0)
    8000776c:	00200713          	li	a4,2
    80007770:	1ae78a63          	beq	a5,a4,80007924 <__memset+0x1fc>
    80007774:	00b50123          	sb	a1,2(a0)
    80007778:	00300713          	li	a4,3
    8000777c:	18e78463          	beq	a5,a4,80007904 <__memset+0x1dc>
    80007780:	00b501a3          	sb	a1,3(a0)
    80007784:	00400713          	li	a4,4
    80007788:	1ae78263          	beq	a5,a4,8000792c <__memset+0x204>
    8000778c:	00b50223          	sb	a1,4(a0)
    80007790:	00500713          	li	a4,5
    80007794:	1ae78063          	beq	a5,a4,80007934 <__memset+0x20c>
    80007798:	00b502a3          	sb	a1,5(a0)
    8000779c:	00700713          	li	a4,7
    800077a0:	18e79e63          	bne	a5,a4,8000793c <__memset+0x214>
    800077a4:	00b50323          	sb	a1,6(a0)
    800077a8:	00700e93          	li	t4,7
    800077ac:	00859713          	slli	a4,a1,0x8
    800077b0:	00e5e733          	or	a4,a1,a4
    800077b4:	01059e13          	slli	t3,a1,0x10
    800077b8:	01c76e33          	or	t3,a4,t3
    800077bc:	01859313          	slli	t1,a1,0x18
    800077c0:	006e6333          	or	t1,t3,t1
    800077c4:	02059893          	slli	a7,a1,0x20
    800077c8:	40f60e3b          	subw	t3,a2,a5
    800077cc:	011368b3          	or	a7,t1,a7
    800077d0:	02859813          	slli	a6,a1,0x28
    800077d4:	0108e833          	or	a6,a7,a6
    800077d8:	03059693          	slli	a3,a1,0x30
    800077dc:	003e589b          	srliw	a7,t3,0x3
    800077e0:	00d866b3          	or	a3,a6,a3
    800077e4:	03859713          	slli	a4,a1,0x38
    800077e8:	00389813          	slli	a6,a7,0x3
    800077ec:	00f507b3          	add	a5,a0,a5
    800077f0:	00e6e733          	or	a4,a3,a4
    800077f4:	000e089b          	sext.w	a7,t3
    800077f8:	00f806b3          	add	a3,a6,a5
    800077fc:	00e7b023          	sd	a4,0(a5)
    80007800:	00878793          	addi	a5,a5,8
    80007804:	fed79ce3          	bne	a5,a3,800077fc <__memset+0xd4>
    80007808:	ff8e7793          	andi	a5,t3,-8
    8000780c:	0007871b          	sext.w	a4,a5
    80007810:	01d787bb          	addw	a5,a5,t4
    80007814:	0ce88e63          	beq	a7,a4,800078f0 <__memset+0x1c8>
    80007818:	00f50733          	add	a4,a0,a5
    8000781c:	00b70023          	sb	a1,0(a4)
    80007820:	0017871b          	addiw	a4,a5,1
    80007824:	0cc77663          	bgeu	a4,a2,800078f0 <__memset+0x1c8>
    80007828:	00e50733          	add	a4,a0,a4
    8000782c:	00b70023          	sb	a1,0(a4)
    80007830:	0027871b          	addiw	a4,a5,2
    80007834:	0ac77e63          	bgeu	a4,a2,800078f0 <__memset+0x1c8>
    80007838:	00e50733          	add	a4,a0,a4
    8000783c:	00b70023          	sb	a1,0(a4)
    80007840:	0037871b          	addiw	a4,a5,3
    80007844:	0ac77663          	bgeu	a4,a2,800078f0 <__memset+0x1c8>
    80007848:	00e50733          	add	a4,a0,a4
    8000784c:	00b70023          	sb	a1,0(a4)
    80007850:	0047871b          	addiw	a4,a5,4
    80007854:	08c77e63          	bgeu	a4,a2,800078f0 <__memset+0x1c8>
    80007858:	00e50733          	add	a4,a0,a4
    8000785c:	00b70023          	sb	a1,0(a4)
    80007860:	0057871b          	addiw	a4,a5,5
    80007864:	08c77663          	bgeu	a4,a2,800078f0 <__memset+0x1c8>
    80007868:	00e50733          	add	a4,a0,a4
    8000786c:	00b70023          	sb	a1,0(a4)
    80007870:	0067871b          	addiw	a4,a5,6
    80007874:	06c77e63          	bgeu	a4,a2,800078f0 <__memset+0x1c8>
    80007878:	00e50733          	add	a4,a0,a4
    8000787c:	00b70023          	sb	a1,0(a4)
    80007880:	0077871b          	addiw	a4,a5,7
    80007884:	06c77663          	bgeu	a4,a2,800078f0 <__memset+0x1c8>
    80007888:	00e50733          	add	a4,a0,a4
    8000788c:	00b70023          	sb	a1,0(a4)
    80007890:	0087871b          	addiw	a4,a5,8
    80007894:	04c77e63          	bgeu	a4,a2,800078f0 <__memset+0x1c8>
    80007898:	00e50733          	add	a4,a0,a4
    8000789c:	00b70023          	sb	a1,0(a4)
    800078a0:	0097871b          	addiw	a4,a5,9
    800078a4:	04c77663          	bgeu	a4,a2,800078f0 <__memset+0x1c8>
    800078a8:	00e50733          	add	a4,a0,a4
    800078ac:	00b70023          	sb	a1,0(a4)
    800078b0:	00a7871b          	addiw	a4,a5,10
    800078b4:	02c77e63          	bgeu	a4,a2,800078f0 <__memset+0x1c8>
    800078b8:	00e50733          	add	a4,a0,a4
    800078bc:	00b70023          	sb	a1,0(a4)
    800078c0:	00b7871b          	addiw	a4,a5,11
    800078c4:	02c77663          	bgeu	a4,a2,800078f0 <__memset+0x1c8>
    800078c8:	00e50733          	add	a4,a0,a4
    800078cc:	00b70023          	sb	a1,0(a4)
    800078d0:	00c7871b          	addiw	a4,a5,12
    800078d4:	00c77e63          	bgeu	a4,a2,800078f0 <__memset+0x1c8>
    800078d8:	00e50733          	add	a4,a0,a4
    800078dc:	00b70023          	sb	a1,0(a4)
    800078e0:	00d7879b          	addiw	a5,a5,13
    800078e4:	00c7f663          	bgeu	a5,a2,800078f0 <__memset+0x1c8>
    800078e8:	00f507b3          	add	a5,a0,a5
    800078ec:	00b78023          	sb	a1,0(a5)
    800078f0:	00813403          	ld	s0,8(sp)
    800078f4:	01010113          	addi	sp,sp,16
    800078f8:	00008067          	ret
    800078fc:	00b00693          	li	a3,11
    80007900:	e55ff06f          	j	80007754 <__memset+0x2c>
    80007904:	00300e93          	li	t4,3
    80007908:	ea5ff06f          	j	800077ac <__memset+0x84>
    8000790c:	00100e93          	li	t4,1
    80007910:	e9dff06f          	j	800077ac <__memset+0x84>
    80007914:	00000e93          	li	t4,0
    80007918:	e95ff06f          	j	800077ac <__memset+0x84>
    8000791c:	00000793          	li	a5,0
    80007920:	ef9ff06f          	j	80007818 <__memset+0xf0>
    80007924:	00200e93          	li	t4,2
    80007928:	e85ff06f          	j	800077ac <__memset+0x84>
    8000792c:	00400e93          	li	t4,4
    80007930:	e7dff06f          	j	800077ac <__memset+0x84>
    80007934:	00500e93          	li	t4,5
    80007938:	e75ff06f          	j	800077ac <__memset+0x84>
    8000793c:	00600e93          	li	t4,6
    80007940:	e6dff06f          	j	800077ac <__memset+0x84>

0000000080007944 <__memmove>:
    80007944:	ff010113          	addi	sp,sp,-16
    80007948:	00813423          	sd	s0,8(sp)
    8000794c:	01010413          	addi	s0,sp,16
    80007950:	0e060863          	beqz	a2,80007a40 <__memmove+0xfc>
    80007954:	fff6069b          	addiw	a3,a2,-1
    80007958:	0006881b          	sext.w	a6,a3
    8000795c:	0ea5e863          	bltu	a1,a0,80007a4c <__memmove+0x108>
    80007960:	00758713          	addi	a4,a1,7
    80007964:	00a5e7b3          	or	a5,a1,a0
    80007968:	40a70733          	sub	a4,a4,a0
    8000796c:	0077f793          	andi	a5,a5,7
    80007970:	00f73713          	sltiu	a4,a4,15
    80007974:	00174713          	xori	a4,a4,1
    80007978:	0017b793          	seqz	a5,a5
    8000797c:	00e7f7b3          	and	a5,a5,a4
    80007980:	10078863          	beqz	a5,80007a90 <__memmove+0x14c>
    80007984:	00900793          	li	a5,9
    80007988:	1107f463          	bgeu	a5,a6,80007a90 <__memmove+0x14c>
    8000798c:	0036581b          	srliw	a6,a2,0x3
    80007990:	fff8081b          	addiw	a6,a6,-1
    80007994:	02081813          	slli	a6,a6,0x20
    80007998:	01d85893          	srli	a7,a6,0x1d
    8000799c:	00858813          	addi	a6,a1,8
    800079a0:	00058793          	mv	a5,a1
    800079a4:	00050713          	mv	a4,a0
    800079a8:	01088833          	add	a6,a7,a6
    800079ac:	0007b883          	ld	a7,0(a5)
    800079b0:	00878793          	addi	a5,a5,8
    800079b4:	00870713          	addi	a4,a4,8
    800079b8:	ff173c23          	sd	a7,-8(a4)
    800079bc:	ff0798e3          	bne	a5,a6,800079ac <__memmove+0x68>
    800079c0:	ff867713          	andi	a4,a2,-8
    800079c4:	02071793          	slli	a5,a4,0x20
    800079c8:	0207d793          	srli	a5,a5,0x20
    800079cc:	00f585b3          	add	a1,a1,a5
    800079d0:	40e686bb          	subw	a3,a3,a4
    800079d4:	00f507b3          	add	a5,a0,a5
    800079d8:	06e60463          	beq	a2,a4,80007a40 <__memmove+0xfc>
    800079dc:	0005c703          	lbu	a4,0(a1)
    800079e0:	00e78023          	sb	a4,0(a5)
    800079e4:	04068e63          	beqz	a3,80007a40 <__memmove+0xfc>
    800079e8:	0015c603          	lbu	a2,1(a1)
    800079ec:	00100713          	li	a4,1
    800079f0:	00c780a3          	sb	a2,1(a5)
    800079f4:	04e68663          	beq	a3,a4,80007a40 <__memmove+0xfc>
    800079f8:	0025c603          	lbu	a2,2(a1)
    800079fc:	00200713          	li	a4,2
    80007a00:	00c78123          	sb	a2,2(a5)
    80007a04:	02e68e63          	beq	a3,a4,80007a40 <__memmove+0xfc>
    80007a08:	0035c603          	lbu	a2,3(a1)
    80007a0c:	00300713          	li	a4,3
    80007a10:	00c781a3          	sb	a2,3(a5)
    80007a14:	02e68663          	beq	a3,a4,80007a40 <__memmove+0xfc>
    80007a18:	0045c603          	lbu	a2,4(a1)
    80007a1c:	00400713          	li	a4,4
    80007a20:	00c78223          	sb	a2,4(a5)
    80007a24:	00e68e63          	beq	a3,a4,80007a40 <__memmove+0xfc>
    80007a28:	0055c603          	lbu	a2,5(a1)
    80007a2c:	00500713          	li	a4,5
    80007a30:	00c782a3          	sb	a2,5(a5)
    80007a34:	00e68663          	beq	a3,a4,80007a40 <__memmove+0xfc>
    80007a38:	0065c703          	lbu	a4,6(a1)
    80007a3c:	00e78323          	sb	a4,6(a5)
    80007a40:	00813403          	ld	s0,8(sp)
    80007a44:	01010113          	addi	sp,sp,16
    80007a48:	00008067          	ret
    80007a4c:	02061713          	slli	a4,a2,0x20
    80007a50:	02075713          	srli	a4,a4,0x20
    80007a54:	00e587b3          	add	a5,a1,a4
    80007a58:	f0f574e3          	bgeu	a0,a5,80007960 <__memmove+0x1c>
    80007a5c:	02069613          	slli	a2,a3,0x20
    80007a60:	02065613          	srli	a2,a2,0x20
    80007a64:	fff64613          	not	a2,a2
    80007a68:	00e50733          	add	a4,a0,a4
    80007a6c:	00c78633          	add	a2,a5,a2
    80007a70:	fff7c683          	lbu	a3,-1(a5)
    80007a74:	fff78793          	addi	a5,a5,-1
    80007a78:	fff70713          	addi	a4,a4,-1
    80007a7c:	00d70023          	sb	a3,0(a4)
    80007a80:	fec798e3          	bne	a5,a2,80007a70 <__memmove+0x12c>
    80007a84:	00813403          	ld	s0,8(sp)
    80007a88:	01010113          	addi	sp,sp,16
    80007a8c:	00008067          	ret
    80007a90:	02069713          	slli	a4,a3,0x20
    80007a94:	02075713          	srli	a4,a4,0x20
    80007a98:	00170713          	addi	a4,a4,1
    80007a9c:	00e50733          	add	a4,a0,a4
    80007aa0:	00050793          	mv	a5,a0
    80007aa4:	0005c683          	lbu	a3,0(a1)
    80007aa8:	00178793          	addi	a5,a5,1
    80007aac:	00158593          	addi	a1,a1,1
    80007ab0:	fed78fa3          	sb	a3,-1(a5)
    80007ab4:	fee798e3          	bne	a5,a4,80007aa4 <__memmove+0x160>
    80007ab8:	f89ff06f          	j	80007a40 <__memmove+0xfc>

0000000080007abc <__putc>:
    80007abc:	fe010113          	addi	sp,sp,-32
    80007ac0:	00813823          	sd	s0,16(sp)
    80007ac4:	00113c23          	sd	ra,24(sp)
    80007ac8:	02010413          	addi	s0,sp,32
    80007acc:	00050793          	mv	a5,a0
    80007ad0:	fef40593          	addi	a1,s0,-17
    80007ad4:	00100613          	li	a2,1
    80007ad8:	00000513          	li	a0,0
    80007adc:	fef407a3          	sb	a5,-17(s0)
    80007ae0:	fffff097          	auipc	ra,0xfffff
    80007ae4:	b3c080e7          	jalr	-1220(ra) # 8000661c <console_write>
    80007ae8:	01813083          	ld	ra,24(sp)
    80007aec:	01013403          	ld	s0,16(sp)
    80007af0:	02010113          	addi	sp,sp,32
    80007af4:	00008067          	ret

0000000080007af8 <__getc>:
    80007af8:	fe010113          	addi	sp,sp,-32
    80007afc:	00813823          	sd	s0,16(sp)
    80007b00:	00113c23          	sd	ra,24(sp)
    80007b04:	02010413          	addi	s0,sp,32
    80007b08:	fe840593          	addi	a1,s0,-24
    80007b0c:	00100613          	li	a2,1
    80007b10:	00000513          	li	a0,0
    80007b14:	fffff097          	auipc	ra,0xfffff
    80007b18:	ae8080e7          	jalr	-1304(ra) # 800065fc <console_read>
    80007b1c:	fe844503          	lbu	a0,-24(s0)
    80007b20:	01813083          	ld	ra,24(sp)
    80007b24:	01013403          	ld	s0,16(sp)
    80007b28:	02010113          	addi	sp,sp,32
    80007b2c:	00008067          	ret

0000000080007b30 <console_handler>:
    80007b30:	fe010113          	addi	sp,sp,-32
    80007b34:	00813823          	sd	s0,16(sp)
    80007b38:	00113c23          	sd	ra,24(sp)
    80007b3c:	00913423          	sd	s1,8(sp)
    80007b40:	02010413          	addi	s0,sp,32
    80007b44:	14202773          	csrr	a4,scause
    80007b48:	100027f3          	csrr	a5,sstatus
    80007b4c:	0027f793          	andi	a5,a5,2
    80007b50:	06079e63          	bnez	a5,80007bcc <console_handler+0x9c>
    80007b54:	00074c63          	bltz	a4,80007b6c <console_handler+0x3c>
    80007b58:	01813083          	ld	ra,24(sp)
    80007b5c:	01013403          	ld	s0,16(sp)
    80007b60:	00813483          	ld	s1,8(sp)
    80007b64:	02010113          	addi	sp,sp,32
    80007b68:	00008067          	ret
    80007b6c:	0ff77713          	andi	a4,a4,255
    80007b70:	00900793          	li	a5,9
    80007b74:	fef712e3          	bne	a4,a5,80007b58 <console_handler+0x28>
    80007b78:	ffffe097          	auipc	ra,0xffffe
    80007b7c:	6dc080e7          	jalr	1756(ra) # 80006254 <plic_claim>
    80007b80:	00a00793          	li	a5,10
    80007b84:	00050493          	mv	s1,a0
    80007b88:	02f50c63          	beq	a0,a5,80007bc0 <console_handler+0x90>
    80007b8c:	fc0506e3          	beqz	a0,80007b58 <console_handler+0x28>
    80007b90:	00050593          	mv	a1,a0
    80007b94:	00001517          	auipc	a0,0x1
    80007b98:	a7c50513          	addi	a0,a0,-1412 # 80008610 <CONSOLE_STATUS+0x600>
    80007b9c:	fffff097          	auipc	ra,0xfffff
    80007ba0:	afc080e7          	jalr	-1284(ra) # 80006698 <__printf>
    80007ba4:	01013403          	ld	s0,16(sp)
    80007ba8:	01813083          	ld	ra,24(sp)
    80007bac:	00048513          	mv	a0,s1
    80007bb0:	00813483          	ld	s1,8(sp)
    80007bb4:	02010113          	addi	sp,sp,32
    80007bb8:	ffffe317          	auipc	t1,0xffffe
    80007bbc:	6d430067          	jr	1748(t1) # 8000628c <plic_complete>
    80007bc0:	fffff097          	auipc	ra,0xfffff
    80007bc4:	3e0080e7          	jalr	992(ra) # 80006fa0 <uartintr>
    80007bc8:	fddff06f          	j	80007ba4 <console_handler+0x74>
    80007bcc:	00001517          	auipc	a0,0x1
    80007bd0:	b4450513          	addi	a0,a0,-1212 # 80008710 <digits+0x78>
    80007bd4:	fffff097          	auipc	ra,0xfffff
    80007bd8:	a68080e7          	jalr	-1432(ra) # 8000663c <panic>
	...
