#include "textflag.h"

// func BenchmarkStart() uint64
TEXT ·BenchmarkStart(SB), NOSPLIT, $0
    MRS CNTVCT_EL0, R0
    MOVD R0, ret+0(FP)
    RET

// func BenchmarkEnd() uint64
TEXT ·BenchmarkEnd(SB), NOSPLIT, $0
    MRS CNTVCT_EL0, R0
    MOVD R0, ret+0(FP)
    RET

// func Rdtscp() (ret uint64, cpu uint32)
TEXT ·Rdtscp(SB), NOSPLIT, $0
    MRS CNTVCT_EL0, R0
    MOVD R0, ret+0(FP)
    //MOVD $0, cpu+8(FP)
    RET

// func Ticks() uint64
TEXT ·Ticks(SB), NOSPLIT, $0
    MRS CNTVCT_EL0, R0
    MOVD R0, ret+0(FP)
    RET

// func Cpuid() uint64
TEXT ·Cpuid(SB), NOSPLIT, $0
    // ARM doesn't have CPUID, so just return 0
    MOVD $0, ret+0(FP)
    RET

