#!/usr/bin/env bash
set -e
# 批量修改
scripts/config --enable CONFIG_HAVE_KERNEL_GZIP
scripts/config --enable CONFIG_HAVE_KERNEL_BZIP2
scripts/config --enable CONFIG_HAVE_KERNEL_LZMA
scripts/config --enable CONFIG_HAVE_KERNEL_XZ
scripts/config --enable CONFIG_HAVE_KERNEL_LZO
scripts/config --enable CONFIG_HAVE_KERNEL_LZ4
scripts/config --enable CONFIG_HAVE_KERNEL_ZSTD
# scripts/config --disable CONFIG_KERNEL_GZIP
# scripts/config --disable CONFIG_KERNEL_BZIP2
# scripts/config --disable CONFIG_KERNEL_LZMA
# scripts/config --disable CONFIG_KERNEL_XZ
# scripts/config --disable CONFIG_KERNEL_LZO
# scripts/config --disable CONFIG_KERNEL_LZ4
scripts/config --enable CONFIG_KERNEL_ZSTD
# scripts/config --set-val CONFIG_DEFAULT_INIT ""
# scripts/config --set-val CONFIG_DEFAULT_HOSTNAME "(none)"
scripts/config --enable CONFIG_SYSVIPC
scripts/config --enable CONFIG_SYSVIPC_SYSCTL
scripts/config --enable CONFIG_SYSVIPC_COMPAT
scripts/config --enable CONFIG_POSIX_MQUEUE
scripts/config --enable CONFIG_POSIX_MQUEUE_SYSCTL
scripts/config --enable CONFIG_WATCH_QUEUE
scripts/config --enable CONFIG_CROSS_MEMORY_ATTACH
scripts/config --disable CONFIG_USELIB
# scripts/config --enable CONFIG_AUDIT
# scripts/config --enable CONFIG_HAVE_ARCH_AUDITSYSCALL
# scripts/config --enable CONFIG_AUDITSYSCALL
# scripts/config --enable CONFIG_GENERIC_IRQ_PROBE
# scripts/config --enable CONFIG_GENERIC_IRQ_SHOW
# scripts/config --enable CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK
# scripts/config --enable CONFIG_GENERIC_PENDING_IRQ
# scripts/config --enable CONFIG_GENERIC_IRQ_MIGRATION
# scripts/config --enable CONFIG_HARDIRQS_SW_RESEND

#
# IRQ subsystem（中断子系统）
#
# scripts/config --enable CONFIG_IRQ_DOMAIN
# scripts/config --enable CONFIG_IRQ_DOMAIN_HIERARCHY
# scripts/config --enable CONFIG_GENERIC_MSI_IRQ
# scripts/config --enable CONFIG_IRQ_MSI_IOMMU
# scripts/config --enable CONFIG_GENERIC_IRQ_MATRIX_ALLOCATOR
# scripts/config --enable CONFIG_GENERIC_IRQ_RESERVATION_MODE
# scripts/config --enable CONFIG_IRQ_FORCED_THREADING
# scripts/config --enable CONFIG_SPARSE_IRQ
# scripts/config --disable CONFIG_GENERIC_IRQ_DEBUGFS
# scripts/config --enable CONFIG_CLOCKSOURCE_WATCHDOG
# scripts/config --enable CONFIG_ARCH_CLOCKSOURCE_INIT
# scripts/config --enable CONFIG_GENERIC_TIME_VSYSCALL
# scripts/config --enable CONFIG_GENERIC_CLOCKEVENTS
# scripts/config --enable CONFIG_GENERIC_CLOCKEVENTS_BROADCAST
# scripts/config --enable CONFIG_GENERIC_CLOCKEVENTS_BROADCAST_IDLE
# scripts/config --enable CONFIG_GENERIC_CLOCKEVENTS_MIN_ADJUST
# scripts/config --enable CONFIG_GENERIC_CMOS_UPDATE
# scripts/config --enable CONFIG_HAVE_POSIX_CPU_TIMERS_TASK_WORK
# scripts/config --enable CONFIG_POSIX_CPU_TIMERS_TASK_WORK
# scripts/config --enable CONFIG_CONTEXT_TRACKING
# scripts/config --enable CONFIG_CONTEXT_TRACKING_IDLE
# scripts/config --enable CONFIG_TICK_ONESHOT
# scripts/config --enable CONFIG_NO_HZ_COMMON
# scripts/config --disable CONFIG_HZ_PERIODIC
scripts/config --disable CONFIG_NO_HZ_IDLE
scripts/config --disable CONFIG_NO_HZ_FULL
# scripts/config --disable CONFIG_NO_HZ
# scripts/config --enable CONFIG_HIGH_RES_TIMERS
# scripts/config --set-val CONFIG_CLOCKSOURCE_WATCHDOG_MAX_SKEW_US 100
# scripts/config --enable CONFIG_BPF
# scripts/config --enable CONFIG_HAVE_EBPF_JIT
# scripts/config --enable CONFIG_ARCH_WANT_DEFAULT_BPF_JIT
# scripts/config --enable CONFIG_BPF_SYSCALL
# scripts/config --enable CONFIG_BPF_JIT
# scripts/config --enable CONFIG_BPF_JIT_ALWAYS_ON
# scripts/config --enable CONFIG_BPF_JIT_DEFAULT_ON
# scripts/config --enable CONFIG_BPF_UNPRIV_DEFAULT_OFF
# scripts/config --disable CONFIG_BPF_PRELOAD
scripts/config --disable CONFIG_BPF_LSM
# scripts/config --enable CONFIG_PREEMPT_BUILD
# scripts/config --disable CONFIG_PREEMPT_NONE
# scripts/config --disable CONFIG_PREEMPT_VOLUNTARY
# scripts/config --enable CONFIG_PREEMPT
# scripts/config --enable CONFIG_PREEMPT_COUNT
# scripts/config --enable CONFIG_PREEMPTION
scripts/config --disable CONFIG_PREEMPT_DYNAMIC
scripts/config --disable CONFIG_SCHED_CORE
# scripts/config --enable CONFIG_SCHED_CLASS_EXT
# scripts/config --enable CONFIG_TICK_CPU_ACCOUNTING
# scripts/config --disable CONFIG_VIRT_CPU_ACCOUNTING_GEN
# scripts/config --disable CONFIG_IRQ_TIME_ACCOUNTING
scripts/config --disable CONFIG_BSD_PROCESS_ACCT
scripts/config --disable CONFIG_TASKSTATS
scripts/config --disable CONFIG_PSI
scripts/config --disable CONFIG_CPU_ISOLATION
# scripts/config --enable CONFIG_TREE_RCU
# scripts/config --enable CONFIG_PREEMPT_RCU
# scripts/config --enable CONFIG_RCU_EXPERT
# scripts/config --enable CONFIG_TREE_SRCU
# scripts/config --enable CONFIG_TASKS_RCU_GENERIC
# scripts/config --disable CONFIG_FORCE_TASKS_RCU
# scripts/config --enable CONFIG_NEED_TASKS_RCU
# scripts/config --enable CONFIG_TASKS_RCU
# scripts/config --disable CONFIG_FORCE_TASKS_RUDE_RCU
# scripts/config --enable CONFIG_TASKS_RUDE_RCU
# scripts/config --disable CONFIG_FORCE_TASKS_TRACE_RCU
# scripts/config --enable CONFIG_TASKS_TRACE_RCU
# scripts/config --enable CONFIG_RCU_STALL_COMMON
# scripts/config --enable CONFIG_RCU_NEED_SEGCBLIST
# scripts/config --set-val CONFIG_RCU_FANOUT 64
# scripts/config --set-val CONFIG_RCU_FANOUT_LEAF 16
# scripts/config --enable CONFIG_RCU_BOOST
# scripts/config --set-val CONFIG_RCU_BOOST_DELAY 0
# scripts/config --enable CONFIG_RCU_EXP_KTHREAD
scripts/config --disable CONFIG_RCU_NOCB_CPU
# scripts/config --disable CONFIG_TASKS_TRACE_RCU_READ_MB
# scripts/config --disable CONFIG_RCU_DOUBLE_CHECK_CB_TIME
# scripts/config --disable CONFIG_IKCONFIG
scripts/config --disable CONFIG_IKHEADERS
scripts/config --set-val CONFIG_LOG_BUF_SHIFT 17
# scripts/config --set-val CONFIG_LOG_CPU_MAX_BUF_SHIFT 12
# scripts/config --disable CONFIG_PRINTK_INDEX
# scripts/config --enable CONFIG_HAVE_UNSTABLE_SCHED_CLOCK
# scripts/config --enable CONFIG_ARCH_SUPPORTS_NUMA_BALANCING
# scripts/config --enable CONFIG_ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH
# scripts/config --enable CONFIG_CC_HAS_INT128
# scripts/config --set-val CONFIG_CC_IMPLICIT_FALLTHROUGH "-Wimplicit-fallthrough"
# scripts/config --enable CONFIG_GCC10_NO_ARRAY_BOUNDS
# scripts/config --enable CONFIG_GCC_NO_STRINGOP_OVERFLOW
# scripts/config --enable CONFIG_ARCH_SUPPORTS_INT128
scripts/config --disable CONFIG_NUMA_BALANCING
# scripts/config --enable CONFIG_SLAB_OBJ_EXT
scripts/config --enable CONFIG_CGROUPS
# scripts/config --enable CONFIG_PAGE_COUNTER
# scripts/config --disable CONFIG_CGROUP_FAVOR_DYNMODS
scripts/config --enable CONFIG_MEMCG
# scripts/config --disable CONFIG_MEMCG_V1
# scripts/config --enable CONFIG_BLK_CGROUP
# scripts/config --enable CONFIG_CGROUP_WRITEBACK
# scripts/config --enable CONFIG_CGROUP_SCHED
# scripts/config --enable CONFIG_GROUP_SCHED_WEIGHT
# scripts/config --enable CONFIG_FAIR_GROUP_SCHED
# scripts/config --enable CONFIG_CFS_BANDWIDTH
# scripts/config --disable CONFIG_RT_GROUP_SCHED
# scripts/config --enable CONFIG_EXT_GROUP_SCHED
# scripts/config --enable CONFIG_SCHED_MM_CID
scripts/config --enable CONFIG_CGROUP_PIDS
# scripts/config --enable CONFIG_CGROUP_RDMA
scripts/config --enable CONFIG_CGROUP_FREEZER
# scripts/config --enable CONFIG_CGROUP_HUGETLB
# scripts/config --enable CONFIG_CPUSETS
# scripts/config --disable CONFIG_CPUSETS_V1
# scripts/config --enable CONFIG_PROC_PID_CPUSET
scripts/config --enable CONFIG_CGROUP_DEVICE
# scripts/config --enable CONFIG_CGROUP_CPUACCT
# scripts/config --enable CONFIG_CGROUP_PERF
# scripts/config --enable CONFIG_CGROUP_BPF
# scripts/config --enable CONFIG_CGROUP_MISC
# scripts/config --disable CONFIG_CGROUP_DEBUG
# scripts/config --enable CONFIG_SOCK_CGROUP_DATA
# scripts/config --enable CONFIG_NAMESPACES
# scripts/config --enable CONFIG_UTS_NS
# scripts/config --enable CONFIG_TIME_NS
# scripts/config --enable CONFIG_IPC_NS
# scripts/config --enable CONFIG_USER_NS
# scripts/config --enable CONFIG_PID_NS
# scripts/config --enable CONFIG_NET_NS
scripts/config --disable CONFIG_CHECKPOINT_RESTORE
# scripts/config --enable CONFIG_SCHED_AUTOGROUP
# scripts/config --enable CONFIG_SCHED_AUTOGROUP_DEFAULT_ENABLED
# scripts/config --enable CONFIG_RELAY
# scripts/config --enable CONFIG_BLK_DEV_INITRD
# scripts/config --set-val CONFIG_INITRAMFS_SOURCE ""
scripts/config --disable CONFIG_RD_GZIP
scripts/config --disable CONFIG_RD_BZIP2
scripts/config --disable CONFIG_RD_LZMA
scripts/config --disable CONFIG_RD_XZ
scripts/config --disable CONFIG_RD_LZO
scripts/config --enable CONFIG_RD_LZ4
scripts/config --enable CONFIG_RD_ZSTD
# scripts/config --enable CONFIG_BOOT_CONFIG
# scripts/config --disable CONFIG_BOOT_CONFIG_FORCE
# scripts/config --disable CONFIG_BOOT_CONFIG_EMBED
# scripts/config --enable CONFIG_INITRAMFS_PRESERVE_MTIME
# scripts/config --enable CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE
# scripts/config --disable CONFIG_CC_OPTIMIZE_FOR_SIZE
# scripts/config --enable CONFIG_LD_ORPHAN_WARN
# scripts/config --set-val CONFIG_LD_ORPHAN_WARN_LEVEL "warn"
# scripts/config --enable CONFIG_SYSCTL
# scripts/config --enable CONFIG_HAVE_UID16
# scripts/config --enable CONFIG_SYSCTL_EXCEPTION_TRACE
# scripts/config --enable CONFIG_HAVE_PCSPKR_PLATFORM
scripts/config --disable CONFIG_EXPERT
# scripts/config --enable CONFIG_UID16
# scripts/config --enable CONFIG_MULTIUSER
# scripts/config --enable CONFIG_SGETMASK_SYSCALL
# scripts/config --enable CONFIG_SYSFS_SYSCALL
# scripts/config --enable CONFIG_FHANDLE
# scripts/config --enable CONFIG_POSIX_TIMERS
# scripts/config --enable CONFIG_PRINTK
# scripts/config --enable CONFIG_BUG
# scripts/config --enable CONFIG_ELF_CORE
# scripts/config --enable CONFIG_PCSPKR_PLATFORM
# scripts/config --enable CONFIG_FUTEX
# scripts/config --enable CONFIG_FUTEX_PI
# scripts/config --enable CONFIG_EPOLL
# scripts/config --enable CONFIG_SIGNALFD
# scripts/config --enable CONFIG_TIMERFD
# scripts/config --enable CONFIG_EVENTFD
# scripts/config --enable CONFIG_SHMEM
# scripts/config --enable CONFIG_AIO
# scripts/config --enable CONFIG_IO_URING
# scripts/config --enable CONFIG_ADVISE_SYSCALLS
# scripts/config --enable CONFIG_MEMBARRIER
# scripts/config --enable CONFIG_RSEQ
# scripts/config --enable CONFIG_CACHESTAT_SYSCALL
# scripts/config --enable CONFIG_KALLSYMS
# scripts/config --disable CONFIG_KALLSYMS_SELFTEST
scripts/config --disable CONFIG_KALLSYMS_ALL
# scripts/config --enable CONFIG_KALLSYMS_ABSOLUTE_PERCPU
# scripts/config --enable CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE
# scripts/config --enable CONFIG_HAVE_PERF_EVENTS
# scripts/config --enable CONFIG_GUEST_PERF_EVENTS
# scripts/config --enable CONFIG_PERF_EVENTS
# scripts/config --disable CONFIG_DEBUG_PERF_USE_VMALLOC
# scripts/config --enable CONFIG_SYSTEM_DATA_VERIFICATION
scripts/config --disable CONFIG_PROFILING
# scripts/config --enable CONFIG_TRACEPOINTS
# scripts/config --enable CONFIG_VMCORE_INFO
scripts/config --disable CONFIG_KEXEC
scripts/config --disable CONFIG_KEXEC_FILE
# scripts/config --enable CONFIG_64BIT
# scripts/config --enable CONFIG_X86_64
# scripts/config --enable CONFIG_X86
# scripts/config --enable CONFIG_INSTRUCTION_DECODER
# scripts/config --set-val CONFIG_OUTPUT_FORMAT "elf64-x86-64"
# scripts/config --enable CONFIG_LOCKDEP_SUPPORT
# scripts/config --enable CONFIG_STACKTRACE_SUPPORT
# scripts/config --enable CONFIG_MMU
# scripts/config --set-val CONFIG_ARCH_MMAP_RND_BITS_MIN 28
# scripts/config --set-val CONFIG_ARCH_MMAP_RND_BITS_MAX 32
# scripts/config --set-val CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN 8
# scripts/config --set-val CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX 16
# scripts/config --enable CONFIG_GENERIC_ISA_DMA
# scripts/config --enable CONFIG_GENERIC_BUG
# scripts/config --enable CONFIG_GENERIC_BUG_RELATIVE_POINTERS
# scripts/config --enable CONFIG_ARCH_MAY_HAVE_PC_FDC
# scripts/config --enable CONFIG_GENERIC_CALIBRATE_DELAY
# scripts/config --enable CONFIG_ARCH_HAS_CPU_RELAX
# scripts/config --enable CONFIG_ARCH_HIBERNATION_POSSIBLE
# scripts/config --enable CONFIG_ARCH_SUSPEND_POSSIBLE
# scripts/config --enable CONFIG_AUDIT_ARCH
# scripts/config --enable CONFIG_HAVE_INTEL_TXT
# scripts/config --enable CONFIG_X86_64_SMP
# scripts/config --enable CONFIG_ARCH_SUPPORTS_UPROBES
# scripts/config --enable CONFIG_FIX_EARLYCON_MEM
# scripts/config --set-val CONFIG_PGTABLE_LEVELS 5
# scripts/config --enable CONFIG_CC_HAS_SANE_STACKPROTECTOR
# scripts/config --enable CONFIG_SMP
# scripts/config --enable CONFIG_X86_X2APIC
# scripts/config --disable CONFIG_X86_POSTED_MSI
# scripts/config --enable CONFIG_X86_MPPARSE
# scripts/config --enable CONFIG_X86_CPU_RESCTRL
# scripts/config --enable CONFIG_X86_FRED
# scripts/config --enable CONFIG_X86_EXTENDED_PLATFORM
# scripts/config --disable CONFIG_X86_VSMP
# scripts/config --disable CONFIG_X86_GOLDFISH
# scripts/config --disable CONFIG_X86_INTEL_MID
# scripts/config --enable CONFIG_X86_INTEL_LPSS
# scripts/config --enable CONFIG_X86_AMD_PLATFORM_DEVICE
# scripts/config --enable CONFIG_IOSF_MBI
scripts/config --disable CONFIG_IOSF_MBI_DEBUG
# scripts/config --enable CONFIG_SCHED_OMIT_FRAME_POINTER
# scripts/config --enable CONFIG_HYPERVISOR_GUEST
# scripts/config --enable CONFIG_PARAVIRT
# scripts/config --enable CONFIG_PARAVIRT_XXL
# scripts/config --disable CONFIG_PARAVIRT_DEBUG
# scripts/config --enable CONFIG_PARAVIRT_SPINLOCKS
# scripts/config --enable CONFIG_X86_HV_CALLBACK_VECTOR
# scripts/config --enable CONFIG_XEN
# scripts/config --enable CONFIG_XEN_PV
# scripts/config --enable CONFIG_XEN_512GB
# scripts/config --enable CONFIG_XEN_PV_SMP
# scripts/config --enable CONFIG_XEN_PV_DOM0
# scripts/config --enable CONFIG_XEN_PVHVM
# scripts/config --enable CONFIG_XEN_PVHVM_SMP
# scripts/config --enable CONFIG_XEN_PVHVM_GUEST
# scripts/config --enable CONFIG_XEN_SAVE_RESTORE
# scripts/config --disable CONFIG_XEN_DEBUG_FS
# scripts/config --enable CONFIG_XEN_PVH
# scripts/config --enable CONFIG_XEN_DOM0
# scripts/config --enable CONFIG_XEN_PV_MSR_SAFE
# scripts/config --enable CONFIG_KVM_GUEST
# scripts/config --enable CONFIG_ARCH_CPUIDLE_HALTPOLL
# scripts/config --enable CONFIG_PVH
# scripts/config --disable CONFIG_PARAVIRT_TIME_ACCOUNTING
# scripts/config --enable CONFIG_PARAVIRT_CLOCK
scripts/config --disable CONFIG_JAILHOUSE_GUEST
scripts/config --disable CONFIG_ACRN_GUEST
scripts/config --disable CONFIG_INTEL_TDX_GUEST
# scripts/config --disable CONFIG_MK8
# scripts/config --disable CONFIG_MK8SSE3
# scripts/config --disable CONFIG_MK10
# scripts/config --disable CONFIG_MBARCELONA
# scripts/config --disable CONFIG_MBOBCAT
# scripts/config --disable CONFIG_MJAGUAR
# scripts/config --disable CONFIG_MBULLDOZER
# scripts/config --disable CONFIG_MPILEDRIVER
# scripts/config --disable CONFIG_MSTEAMROLLER
# scripts/config --disable CONFIG_MEXCAVATOR
# scripts/config --disable CONFIG_MZEN
# scripts/config --disable CONFIG_MZEN2
# scripts/config --disable CONFIG_MZEN3
# scripts/config --disable CONFIG_MZEN4
# scripts/config --disable CONFIG_MZEN5
# scripts/config --disable CONFIG_MPSC
# scripts/config --disable CONFIG_MATOM
# scripts/config --disable CONFIG_MCORE2
# scripts/config --disable CONFIG_MNEHALEM
# scripts/config --disable CONFIG_MWESTMERE
# scripts/config --disable CONFIG_MSILVERMONT
# scripts/config --disable CONFIG_MGOLDMONT
# scripts/config --disable CONFIG_MGOLDMONTPLUS
# scripts/config --disable CONFIG_MSANDYBRIDGE
# scripts/config --disable CONFIG_MIVYBRIDGE
# scripts/config --disable CONFIG_MHASWELL
# scripts/config --disable CONFIG_MBROADWELL
# scripts/config --disable CONFIG_MSKYLAKE
# scripts/config --disable CONFIG_MSKYLAKEX
# scripts/config --disable CONFIG_MCANNONLAKE
# scripts/config --disable CONFIG_MICELAKE
# scripts/config --disable CONFIG_MCASCADELAKE
# scripts/config --disable CONFIG_MCOOPERLAKE
# scripts/config --disable CONFIG_MTIGERLAKE
# scripts/config --disable CONFIG_MSAPPHIRERAPIDS
# scripts/config --disable CONFIG_MROCKETLAKE
# scripts/config --disable CONFIG_MALDERLAKE
# scripts/config --disable CONFIG_MRAPTORLAKE
# scripts/config --disable CONFIG_MMETEORLAKE
# scripts/config --disable CONFIG_MEMERALDRAPIDS
scripts/config --enable CONFIG_GENERIC_CPU
# scripts/config --disable CONFIG_MNATIVE_INTEL
# scripts/config --disable CONFIG_MNATIVE_AMD
scripts/config --set-val CONFIG_X86_64_VERSION 3
# scripts/config --set-val CONFIG_X86_INTERNODE_CACHE_SHIFT 6
# scripts/config --set-val CONFIG_X86_L1_CACHE_SHIFT 6
# scripts/config --enable CONFIG_X86_TSC
# scripts/config --enable CONFIG_X86_HAVE_PAE
# scripts/config --enable CONFIG_X86_CMPXCHG64
# scripts/config --enable CONFIG_X86_CMOV
# scripts/config --set-val CONFIG_X86_MINIMUM_CPU_FAMILY 64
# scripts/config --enable CONFIG_X86_DEBUGCTLMSR
# scripts/config --enable CONFIG_IA32_FEAT_CTL
# scripts/config --enable CONFIG_X86_VMX_FEATURE_NAMES
scripts/config --disable CONFIG_CPU_SUP_INTEL
scripts/config --disable CONFIG_CPU_SUP_AMD
# scripts/config --enable CONFIG_CPU_SUP_HYGON
# scripts/config --enable CONFIG_CPU_SUP_CENTAUR
# scripts/config --enable CONFIG_CPU_SUP_ZHAOXIN
# scripts/config --enable CONFIG_HPET_TIMER
# scripts/config --enable CONFIG_HPET_EMULATE_RTC
# scripts/config --enable CONFIG_DMI
# scripts/config --enable CONFIG_GART_IOMMU
# scripts/config --enable CONFIG_BOOT_VESA_SUPPORT
scripts/config --disable CONFIG_MAXSMP
# scripts/config --set-val CONFIG_NR_CPUS_RANGE_BEGIN 2
# scripts/config --set-val CONFIG_NR_CPUS_RANGE_END 512
# scripts/config --set-val CONFIG_NR_CPUS_DEFAULT 64
scripts/config --set-val CONFIG_NR_CPUS 8
scripts/config --disable CONFIG_SCHED_CLUSTER
# scripts/config --enable CONFIG_SCHED_SMT
scripts/config --disable CONFIG_SCHED_MC
# scripts/config --enable CONFIG_X86_LOCAL_APIC
# scripts/config --enable CONFIG_ACPI_MADT_WAKEUP
# scripts/config --enable CONFIG_X86_IO_APIC
# scripts/config --enable CONFIG_X86_REROUTE_FOR_BROKEN_BOOT_IRQS
scripts/config --disable CONFIG_X86_MCE
scripts/config --disable CONFIG_PERF_EVENTS_INTEL_UNCORE
scripts/config --disable CONFIG_PERF_EVENTS_INTEL_RAPL
scripts/config --disable CONFIG_PERF_EVENTS_INTEL_CSTATE
# scripts/config --disable CONFIG_PERF_EVENTS_AMD_POWER
scripts/config --disable CONFIG_PERF_EVENTS_AMD_UNCORE
scripts/config --disable CONFIG_PERF_EVENTS_AMD_BRS
# scripts/config --enable CONFIG_X86_16BIT
# scripts/config --enable CONFIG_X86_ESPFIX64
# scripts/config --enable CONFIG_X86_VSYSCALL_EMULATION
# scripts/config --enable CONFIG_X86_IOPL_IOPERM
# scripts/config --enable CONFIG_MICROCODE
# scripts/config --disable CONFIG_MICROCODE_LATE_LOADING
# scripts/config --set-val CONFIG_X86_MSR m
# scripts/config --set-val CONFIG_X86_CPUID m
# scripts/config --enable CONFIG_X86_5LEVEL
# scripts/config --enable CONFIG_X86_DIRECT_GBPAGES
# scripts/config --disable CONFIG_X86_CPA_STATISTICS
scripts/config --disable CONFIG_AMD_MEM_ENCRYPT
# scripts/config --enable CONFIG_NUMA
# scripts/config --enable CONFIG_AMD_NUMA
# scripts/config --enable CONFIG_X86_64_ACPI_NUMA
# scripts/config --set-val CONFIG_NODES_SHIFT 10
# scripts/config --enable CONFIG_ARCH_SPARSEMEM_ENABLE
# scripts/config --enable CONFIG_ARCH_SPARSEMEM_DEFAULT
# scripts/config --enable CONFIG_ARCH_MEMORY_PROBE
# scripts/config --enable CONFIG_ARCH_PROC_KCORE_TEXT
# scripts/config --set-val CONFIG_ILLEGAL_POINTER_VALUE 0xdead000000000000
# scripts/config --enable CONFIG_X86_PMEM_LEGACY_DEVICE
# scripts/config --enable CONFIG_X86_PMEM_LEGACY
# scripts/config --enable CONFIG_X86_CHECK_BIOS_CORRUPTION
# scripts/config --enable CONFIG_X86_BOOTPARAM_MEMORY_CORRUPTION_CHECK
# scripts/config --enable CONFIG_MTRR
scripts/config --disable CONFIG_MTRR_SANITIZER
# scripts/config --enable CONFIG_X86_PAT
# scripts/config --enable CONFIG_X86_UMIP
# scripts/config --enable CONFIG_CC_HAS_IBT
# scripts/config --disable CONFIG_X86_KERNEL_IBT
scripts/config --disable CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS
# scripts/config --set-val CONFIG_ARCH_PKEY_BITS 4
# scripts/config --enable CONFIG_X86_INTEL_TSX_MODE_OFF
# scripts/config --disable CONFIG_X86_INTEL_TSX_MODE_ON
# scripts/config --disable CONFIG_X86_INTEL_TSX_MODE_AUTO
scripts/config --disable CONFIG_X86_SGX
scripts/config --disable CONFIG_X86_USER_SHADOW_STACK
# scripts/config --enable CONFIG_EFI
# scripts/config --enable CONFIG_EFI_STUB
# scripts/config --enable CONFIG_EFI_HANDOVER_PROTOCOL
# scripts/config --enable CONFIG_EFI_MIXED
# scripts/config --disable CONFIG_HZ_100
# scripts/config --enable CONFIG_HZ_250
# scripts/config --disable CONFIG_HZ_300
# scripts/config --disable CONFIG_HZ_500
scripts/config --enable CONFIG_HZ_1000
scripts/config --set-val CONFIG_HZ 1000
# scripts/config --enable CONFIG_SCHED_HRTICK
# scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC
# scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC_FILE
# scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC_PURGATORY
# scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC_SIG
# scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC_SIG_FORCE
# scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC_BZIMAGE_VERIFY_SIG
# scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC_JUMP
# scripts/config --enable CONFIG_ARCH_SUPPORTS_CRASH_DUMP
# scripts/config --enable CONFIG_ARCH_DEFAULT_CRASH_DUMP
# scripts/config --enable CONFIG_ARCH_SUPPORTS_CRASH_HOTPLUG
# scripts/config --set-val CONFIG_PHYSICAL_START 0x1000000
# scripts/config --enable CONFIG_RELOCATABLE
# scripts/config --enable CONFIG_RANDOMIZE_BASE
# scripts/config --enable CONFIG_X86_NEED_RELOCS
# scripts/config --set-val CONFIG_PHYSICAL_ALIGN 0x200000
# scripts/config --enable CONFIG_DYNAMIC_MEMORY_LAYOUT
# scripts/config --enable CONFIG_RANDOMIZE_MEMORY
# scripts/config --set-val CONFIG_RANDOMIZE_MEMORY_PHYSICAL_PADDING 0xa
# scripts/config --disable CONFIG_ADDRESS_MASKING
# scripts/config --enable CONFIG_HOTPLUG_CPU
# scripts/config --disable CONFIG_COMPAT_VDSO
# scripts/config --enable CONFIG_LEGACY_VSYSCALL_XONLY
# scripts/config --disable CONFIG_LEGACY_VSYSCALL_NONE
# scripts/config --disable CONFIG_CMDLINE_BOOL
# scripts/config --enable CONFIG_MODIFY_LDT_SYSCALL
# scripts/config --disable CONFIG_STRICT_SIGALTSTACK_SIZE
# scripts/config --enable CONFIG_HAVE_LIVEPATCH
# scripts/config --enable CONFIG_CC_HAS_NAMED_AS_FIXED_SANITIZERS
# scripts/config --enable CONFIG_CC_HAS_SLS
# scripts/config --enable CONFIG_CC_HAS_RETURN_THUNK
# scripts/config --enable CONFIG_CC_HAS_ENTRY_PADDING
# scripts/config --set-val CONFIG_FUNCTION_PADDING_CFI 11
# scripts/config --set-val CONFIG_FUNCTION_PADDING_BYTES 16
scripts/config --disable CONFIG_CPU_MITIGATIONS
# scripts/config --enable CONFIG_ARCH_HAS_ADD_PAGES
# scripts/config --enable CONFIG_ARCH_HIBERNATION_HEADER
scripts/config --disable CONFIG_SUSPEND
# scripts/config --enable CONFIG_HIBERNATE_CALLBACKS
# scripts/config --enable CONFIG_HIBERNATION
scripts/config --disable CONFIG_HIBERNATION_SNAPSHOT_DEV
# scripts/config --enable CONFIG_HIBERNATION_COMP_LZO
# scripts/config --disable CONFIG_HIBERNATION_COMP_LZ4
# scripts/config --set-val CONFIG_HIBERNATION_DEF_COMP "lzo"
# scripts/config --set-val CONFIG_PM_STD_PARTITION ""
# scripts/config --enable CONFIG_PM_SLEEP
# scripts/config --enable CONFIG_PM_SLEEP_SMP
# scripts/config --disable CONFIG_PM_AUTOSLEEP
# scripts/config --disable CONFIG_PM_USERSPACE_AUTOSLEEP
# scripts/config --enable CONFIG_PM_WAKELOCKS
# scripts/config --set-val CONFIG_PM_WAKELOCKS_LIMIT 100
# scripts/config --enable CONFIG_PM_WAKELOCKS_GC
# scripts/config --enable CONFIG_PM
scripts/config --disable CONFIG_PM_DEBUG
# scripts/config --enable CONFIG_PM_CLK
# scripts/config --enable CONFIG_WQ_POWER_EFFICIENT_DEFAULT
# scripts/config --enable CONFIG_ARCH_SUPPORTS_ACPI
# scripts/config --enable CONFIG_ACPI
# scripts/config --enable CONFIG_ACPI_LEGACY_TABLES_LOOKUP
# scripts/config --enable CONFIG_ARCH_MIGHT_HAVE_ACPI_PDC
# scripts/config --enable CONFIG_ACPI_SYSTEM_POWER_STATES_SUPPORT
# scripts/config --enable CONFIG_ACPI_TABLE_LIB
scripts/config --disable CONFIG_ACPI_DEBUGGER
# scripts/config --enable CONFIG_ACPI_SPCR_TABLE
# scripts/config --enable CONFIG_ACPI_FPDT
# scripts/config --enable CONFIG_ACPI_LPIT
# scripts/config --enable CONFIG_ACPI_SLEEP
# scripts/config --enable CONFIG_ACPI_REV_OVERRIDE_POSSIBLE
# scripts/config --set-val CONFIG_ACPI_EC_DEBUGFS m
# scripts/config --enable CONFIG_ACPI_AC
scripts/config --disable CONFIG_ACPI_BATTERY
scripts/config --disable CONFIG_ACPI_BUTTON
# scripts/config --disable CONFIG_ACPI_TINY_POWER_BUTTON
# scripts/config --set-val CONFIG_ACPI_VIDEO m
scripts/config --disable CONFIG_ACPI_FAN
# scripts/config --set-val CONFIG_ACPI_TAD m
# scripts/config --enable CONFIG_ACPI_DOCK
# scripts/config --enable CONFIG_ACPI_CPU_FREQ_PSS
# scripts/config --enable CONFIG_ACPI_PROCESSOR_CSTATE
# scripts/config --enable CONFIG_ACPI_PROCESSOR_IDLE
# scripts/config --enable CONFIG_ACPI_PROCESSOR
# scripts/config --enable CONFIG_ACPI_HOTPLUG_CPU
# scripts/config --set-val CONFIG_ACPI_PROCESSOR_AGGREGATOR m
scripts/config --disable CONFIG_ACPI_THERMAL
# scripts/config --set-val CONFIG_ACPI_PLATFORM_PROFILE m
# scripts/config --set-val CONFIG_ACPI_CUSTOM_DSDT_FILE ""
# scripts/config --enable CONFIG_ARCH_HAS_ACPI_TABLE_UPGRADE
# scripts/config --enable CONFIG_ACPI_TABLE_UPGRADE
# scripts/config --enable CONFIG_ACPI_DEBUG
# scripts/config --enable CONFIG_ACPI_PCI_SLOT
# scripts/config --enable CONFIG_ACPI_CONTAINER
scripts/config --disable CONFIG_ACPI_HOTPLUG_MEMORY
# scripts/config --enable CONFIG_ACPI_HOTPLUG_IOAPIC
# scripts/config --set-val CONFIG_ACPI_SBS m
# scripts/config --enable CONFIG_ACPI_HED
# scripts/config --enable CONFIG_ACPI_BGRT
# scripts/config --set-val CONFIG_ACPI_NFIT m
# scripts/config --disable CONFIG_NFIT_SECURITY_DEBUG
# scripts/config --enable CONFIG_ACPI_NUMA
# scripts/config --enable CONFIG_ACPI_HMAT
# scripts/config --enable CONFIG_HAVE_ACPI_APEI
# scripts/config --enable CONFIG_HAVE_ACPI_APEI_NMI
# scripts/config --enable CONFIG_ACPI_APEI
# scripts/config --enable CONFIG_ACPI_APEI_GHES
# scripts/config --enable CONFIG_ACPI_APEI_PCIEAER
# scripts/config --set-val CONFIG_ACPI_APEI_EINJ m
# scripts/config --enable CONFIG_ACPI_APEI_EINJ_CXL
# scripts/config --disable CONFIG_ACPI_APEI_ERST_DEBUG
# scripts/config --enable CONFIG_ACPI_DPTF
scripts/config --disable CONFIG_DPTF_POWER
scripts/config --disable CONFIG_DPTF_PCH_FIVR
# scripts/config --set-val CONFIG_ACPI_CONFIGFS m
# scripts/config --set-val CONFIG_ACPI_PFRUT m
# scripts/config --enable CONFIG_ACPI_PCC
# scripts/config --enable CONFIG_ACPI_FFH
scripts/config --disable CONFIG_PMIC_OPREGION
scripts/config --disable CONFIG_TPS68470_PMIC_OPREGION
# scripts/config --enable CONFIG_ACPI_VIOT
# scripts/config --enable CONFIG_ACPI_PRMT
# scripts/config --enable CONFIG_X86_PM_TIMER
scripts/config --disable CONFIG_CPU_FREQ
# scripts/config --enable CONFIG_CPU_IDLE
scripts/config --disable CONFIG_CPU_IDLE_GOV_LADDER
# scripts/config --enable CONFIG_CPU_IDLE_GOV_MENU
scripts/config --disable CONFIG_CPU_IDLE_GOV_TEO
scripts/config --disable CONFIG_CPU_IDLE_GOV_HALTPOLL
scripts/config --disable CONFIG_HALTPOLL_CPUIDLE
scripts/config --disable CONFIG_INTEL_IDLE
# scripts/config --enable CONFIG_PCI_DIRECT
scripts/config --disable CONFIG_PCI_MMCONFIG
# scripts/config --enable CONFIG_PCI_XEN
# scripts/config --enable CONFIG_ISA_DMA_API
# scripts/config --enable CONFIG_AMD_NB
# scripts/config --enable CONFIG_IA32_EMULATION
# scripts/config --disable CONFIG_IA32_EMULATION_DEFAULT_DISABLED
# scripts/config --enable CONFIG_COMPAT_32
# scripts/config --enable CONFIG_COMPAT
# scripts/config --enable CONFIG_COMPAT_FOR_U64_ALIGNMENT
# scripts/config --enable CONFIG_KVM_COMMON
# scripts/config --enable CONFIG_HAVE_KVM_PFNCACHE
# scripts/config --enable CONFIG_HAVE_KVM_IRQCHIP
# scripts/config --enable CONFIG_HAVE_KVM_IRQ_ROUTING
# scripts/config --enable CONFIG_HAVE_KVM_DIRTY_RING
# scripts/config --enable CONFIG_HAVE_KVM_DIRTY_RING_TSO
# scripts/config --enable CONFIG_HAVE_KVM_DIRTY_RING_ACQ_REL
# scripts/config --enable CONFIG_KVM_MMIO
# scripts/config --enable CONFIG_KVM_ASYNC_PF
# scripts/config --enable CONFIG_HAVE_KVM_MSI
# scripts/config --enable CONFIG_HAVE_KVM_READONLY_MEM
# scripts/config --enable CONFIG_HAVE_KVM_CPU_RELAX_INTERCEPT
# scripts/config --enable CONFIG_KVM_VFIO
# scripts/config --enable CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT
# scripts/config --enable CONFIG_KVM_GENERIC_PRE_FAULT_MEMORY
# scripts/config --enable CONFIG_KVM_COMPAT
# scripts/config --set-val CONFIG_HAVE_KVM_IRQ_BYPASS m
# scripts/config --enable CONFIG_HAVE_KVM_NO_POLL
# scripts/config --enable CONFIG_KVM_XFER_TO_GUEST_WORK
# scripts/config --enable CONFIG_HAVE_KVM_PM_NOTIFIER
# scripts/config --enable CONFIG_KVM_GENERIC_HARDWARE_ENABLING
# scripts/config --enable CONFIG_KVM_GENERIC_MMU_NOTIFIER
# scripts/config --enable CONFIG_KVM_GENERIC_MEMORY_ATTRIBUTES
# scripts/config --enable CONFIG_KVM_PRIVATE_MEM
# scripts/config --enable CONFIG_KVM_GENERIC_PRIVATE_MEM
# scripts/config --enable CONFIG_HAVE_KVM_ARCH_GMEM_PREPARE
# scripts/config --enable CONFIG_HAVE_KVM_ARCH_GMEM_INVALIDATE
# scripts/config --enable CONFIG_VIRTUALIZATION
# scripts/config --set-val CONFIG_KVM_X86 m
# scripts/config --set-val CONFIG_KVM m
# scripts/config --set-val CONFIG_KVM_INTEL m
# scripts/config --set-val CONFIG_KVM_AMD m
# scripts/config --enable CONFIG_KVM_AMD_SEV
# scripts/config --enable CONFIG_KVM_SMM
# scripts/config --enable CONFIG_KVM_HYPERV
# scripts/config --enable CONFIG_KVM_XEN
# scripts/config --set-val CONFIG_KVM_MAX_NR_VCPUS 4096
# scripts/config --enable CONFIG_AS_AVX512
# scripts/config --enable CONFIG_AS_SHA1_NI
# scripts/config --enable CONFIG_AS_SHA256_NI
# scripts/config --enable CONFIG_AS_TPAUSE
# scripts/config --enable CONFIG_AS_GFNI
# scripts/config --enable CONFIG_AS_VAES
# scripts/config --enable CONFIG_AS_VPCLMULQDQ
# scripts/config --enable CONFIG_AS_WRUSS
# scripts/config --enable CONFIG_ARCH_CONFIGURES_CPU_MITIGATIONS
# scripts/config --enable CONFIG_ARCH_HAS_DMA_OPS
# scripts/config --enable CONFIG_HOTPLUG_SMT
# scripts/config --enable CONFIG_HOTPLUG_CORE_SYNC
# scripts/config --enable CONFIG_HOTPLUG_CORE_SYNC_DEAD
# scripts/config --enable CONFIG_HOTPLUG_CORE_SYNC_FULL
# scripts/config --enable CONFIG_HOTPLUG_SPLIT_STARTUP
# scripts/config --enable CONFIG_HOTPLUG_PARALLEL
# scripts/config --enable CONFIG_GENERIC_ENTRY
scripts/config --disable CONFIG_KPROBES
# scripts/config --enable CONFIG_JUMP_LABEL
# scripts/config --disable CONFIG_STATIC_KEYS_SELFTEST
# scripts/config --disable CONFIG_STATIC_CALL_SELFTEST
# scripts/config --enable CONFIG_UPROBES
# scripts/config --enable CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
# scripts/config --enable CONFIG_ARCH_USE_BUILTIN_BSWAP
# scripts/config --enable CONFIG_USER_RETURN_NOTIFIER
# scripts/config --enable CONFIG_HAVE_IOREMAP_PROT
# scripts/config --enable CONFIG_HAVE_KPROBES
# scripts/config --enable CONFIG_HAVE_KRETPROBES
# scripts/config --enable CONFIG_HAVE_OPTPROBES
# scripts/config --enable CONFIG_HAVE_KPROBES_ON_FTRACE
# scripts/config --enable CONFIG_ARCH_CORRECT_STACKTRACE_ON_KRETPROBE
# scripts/config --enable CONFIG_HAVE_FUNCTION_ERROR_INJECTION
# scripts/config --enable CONFIG_HAVE_NMI
# scripts/config --enable CONFIG_TRACE_IRQFLAGS_SUPPORT
# scripts/config --enable CONFIG_TRACE_IRQFLAGS_NMI_SUPPORT
# scripts/config --enable CONFIG_HAVE_ARCH_TRACEHOOK
# scripts/config --enable CONFIG_HAVE_DMA_CONTIGUOUS
# scripts/config --enable CONFIG_GENERIC_SMP_IDLE_THREAD
# scripts/config --enable CONFIG_ARCH_HAS_FORTIFY_SOURCE
# scripts/config --enable CONFIG_ARCH_HAS_SET_MEMORY
# scripts/config --enable CONFIG_ARCH_HAS_SET_DIRECT_MAP
# scripts/config --enable CONFIG_ARCH_HAS_CPU_FINALIZE_INIT
# scripts/config --enable CONFIG_ARCH_HAS_CPU_PASID
# scripts/config --enable CONFIG_HAVE_ARCH_THREAD_STRUCT_WHITELIST
# scripts/config --enable CONFIG_ARCH_WANTS_DYNAMIC_TASK_STRUCT
# scripts/config --enable CONFIG_ARCH_WANTS_NO_INSTR
# scripts/config --enable CONFIG_HAVE_ASM_MODVERSIONS
# scripts/config --enable CONFIG_HAVE_REGS_AND_STACK_ACCESS_API
# scripts/config --enable CONFIG_HAVE_RSEQ
# scripts/config --enable CONFIG_HAVE_RUST
# scripts/config --enable CONFIG_HAVE_FUNCTION_ARG_ACCESS_API
# scripts/config --enable CONFIG_HAVE_HW_BREAKPOINT
# scripts/config --enable CONFIG_HAVE_MIXED_BREAKPOINTS_REGS
# scripts/config --enable CONFIG_HAVE_USER_RETURN_NOTIFIER
# scripts/config --enable CONFIG_HAVE_PERF_EVENTS_NMI
# scripts/config --enable CONFIG_HAVE_HARDLOCKUP_DETECTOR_PERF
# scripts/config --enable CONFIG_HAVE_PERF_REGS
# scripts/config --enable CONFIG_HAVE_PERF_USER_STACK_DUMP
# scripts/config --enable CONFIG_HAVE_ARCH_JUMP_LABEL
# scripts/config --enable CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE
# scripts/config --enable CONFIG_MMU_GATHER_TABLE_FREE
# scripts/config --enable CONFIG_MMU_GATHER_RCU_TABLE_FREE
# scripts/config --enable CONFIG_MMU_GATHER_MERGE_VMAS
# scripts/config --enable CONFIG_MMU_LAZY_TLB_REFCOUNT
# scripts/config --enable CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG
# scripts/config --enable CONFIG_ARCH_HAVE_EXTRA_ELF_NOTES
# scripts/config --enable CONFIG_ARCH_HAS_NMI_SAFE_THIS_CPU_OPS
# scripts/config --enable CONFIG_HAVE_ALIGNED_STRUCT_PAGE
# scripts/config --enable CONFIG_HAVE_CMPXCHG_LOCAL
# scripts/config --enable CONFIG_HAVE_CMPXCHG_DOUBLE
# scripts/config --enable CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION
# scripts/config --enable CONFIG_ARCH_WANT_OLD_COMPAT_IPC
# scripts/config --enable CONFIG_HAVE_ARCH_SECCOMP
# scripts/config --enable CONFIG_HAVE_ARCH_SECCOMP_FILTER
# scripts/config --enable CONFIG_SECCOMP
# scripts/config --enable CONFIG_SECCOMP_FILTER
# scripts/config --disable CONFIG_SECCOMP_CACHE_DEBUG
# scripts/config --enable CONFIG_HAVE_ARCH_STACKLEAK
# scripts/config --enable CONFIG_HAVE_STACKPROTECTOR
# scripts/config --enable CONFIG_STACKPROTECTOR
# scripts/config --enable CONFIG_STACKPROTECTOR_STRONG
# scripts/config --enable CONFIG_LTO
# scripts/config --enable CONFIG_LTO_CLANG
# scripts/config --enable CONFIG_ARCH_SUPPORTS_LTO_CLANG
# scripts/config --enable CONFIG_ARCH_SUPPORTS_LTO_CLANG_THIN
# scripts/config --enable CONFIG_HAS_LTO_CLANG
scripts/config --disable CONFIG_LTO_NONE
scripts/config --enable CONFIG_LTO_CLANG_FULL
scripts/config --disable CONFIG_LTO_CLANG_THIN
# scripts/config --enable CONFIG_ARCH_SUPPORTS_CFI_CLANG
# scripts/config --disable CONFIG_CFI_CLANG
# scripts/config --enable CONFIG_HAVE_CFI_ICALL_NORMALIZE_INTEGERS_CLANG
# scripts/config --enable CONFIG_HAVE_CFI_ICALL_NORMALIZE_INTEGERS_RUSTC
# scripts/config --enable CONFIG_HAVE_ARCH_WITHIN_STACK_FRAMES
# scripts/config --enable CONFIG_HAVE_CONTEXT_TRACKING_USER
# scripts/config --enable CONFIG_HAVE_CONTEXT_TRACKING_USER_OFFSTACK
# scripts/config --enable CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN
# scripts/config --enable CONFIG_HAVE_IRQ_TIME_ACCOUNTING
# scripts/config --enable CONFIG_HAVE_MOVE_PUD
# scripts/config --enable CONFIG_HAVE_MOVE_PMD
# scripts/config --enable CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE
# scripts/config --enable CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
# scripts/config --enable CONFIG_HAVE_ARCH_HUGE_VMAP
# scripts/config --enable CONFIG_HAVE_ARCH_HUGE_VMALLOC
# scripts/config --enable CONFIG_ARCH_WANT_HUGE_PMD_SHARE
# scripts/config --enable CONFIG_ARCH_WANT_PMD_MKWRITE
# scripts/config --enable CONFIG_HAVE_ARCH_SOFT_DIRTY
# scripts/config --enable CONFIG_HAVE_MOD_ARCH_SPECIFIC
# scripts/config --enable CONFIG_MODULES_USE_ELF_RELA
# scripts/config --enable CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK
# scripts/config --enable CONFIG_HAVE_SOFTIRQ_ON_OWN_STACK
# scripts/config --enable CONFIG_SOFTIRQ_ON_OWN_STACK
# scripts/config --enable CONFIG_ARCH_HAS_ELF_RANDOMIZE
# scripts/config --enable CONFIG_HAVE_ARCH_MMAP_RND_BITS
# scripts/config --enable CONFIG_HAVE_EXIT_THREAD
# scripts/config --set-val CONFIG_ARCH_MMAP_RND_BITS 28
# scripts/config --enable CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS
# scripts/config --set-val CONFIG_ARCH_MMAP_RND_COMPAT_BITS 8
# scripts/config --enable CONFIG_HAVE_ARCH_COMPAT_MMAP_BASES
# scripts/config --enable CONFIG_HAVE_PAGE_SIZE_4KB
# scripts/config --enable CONFIG_PAGE_SIZE_4KB
# scripts/config --enable CONFIG_PAGE_SIZE_LESS_THAN_64KB
# scripts/config --enable CONFIG_PAGE_SIZE_LESS_THAN_256KB
# scripts/config --set-val CONFIG_PAGE_SHIFT 12
# scripts/config --enable CONFIG_HAVE_OBJTOOL
# scripts/config --enable CONFIG_HAVE_JUMP_LABEL_HACK
# scripts/config --enable CONFIG_HAVE_NOINSTR_HACK
# scripts/config --enable CONFIG_HAVE_NOINSTR_VALIDATION
# scripts/config --enable CONFIG_HAVE_UACCESS_VALIDATION
# scripts/config --enable CONFIG_HAVE_STACK_VALIDATION
# scripts/config --enable CONFIG_HAVE_RELIABLE_STACKTRACE
# scripts/config --enable CONFIG_OLD_SIGSUSPEND3
# scripts/config --enable CONFIG_COMPAT_OLD_SIGACTION
# scripts/config --enable CONFIG_COMPAT_32BIT_TIME
# scripts/config --enable CONFIG_ARCH_SUPPORTS_RT
# scripts/config --enable CONFIG_HAVE_ARCH_VMAP_STACK
# scripts/config --enable CONFIG_VMAP_STACK
# scripts/config --enable CONFIG_HAVE_ARCH_RANDOMIZE_KSTACK_OFFSET
# scripts/config --enable CONFIG_RANDOMIZE_KSTACK_OFFSET
# scripts/config --enable CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT
# scripts/config --enable CONFIG_ARCH_HAS_STRICT_KERNEL_RWX
# scripts/config --enable CONFIG_STRICT_KERNEL_RWX
# scripts/config --enable CONFIG_ARCH_HAS_STRICT_MODULE_RWX
# scripts/config --enable CONFIG_STRICT_MODULE_RWX
# scripts/config --enable CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
# scripts/config --enable CONFIG_ARCH_USE_MEMREMAP_PROT
# scripts/config --disable CONFIG_LOCK_EVENT_COUNTS
# scripts/config --enable CONFIG_ARCH_HAS_MEM_ENCRYPT
# scripts/config --enable CONFIG_ARCH_HAS_CC_PLATFORM
# scripts/config --enable CONFIG_HAVE_STATIC_CALL
# scripts/config --enable CONFIG_HAVE_STATIC_CALL_INLINE
# scripts/config --enable CONFIG_HAVE_PREEMPT_DYNAMIC
# scripts/config --enable CONFIG_HAVE_PREEMPT_DYNAMIC_CALL
# scripts/config --enable CONFIG_ARCH_WANT_LD_ORPHAN_WARN
# scripts/config --enable CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC
# scripts/config --enable CONFIG_ARCH_SUPPORTS_PAGE_TABLE_CHECK
# scripts/config --enable CONFIG_ARCH_HAS_ELFCORE_COMPAT
# scripts/config --enable CONFIG_ARCH_HAS_PARANOID_L1D_FLUSH
# scripts/config --enable CONFIG_DYNAMIC_SIGFRAME
# scripts/config --enable CONFIG_ARCH_HAS_HW_PTE_YOUNG
# scripts/config --enable CONFIG_ARCH_HAS_NONLEAF_PMD_YOUNG
# scripts/config --enable CONFIG_ARCH_HAS_KERNEL_FPU_SUPPORT
# scripts/config --disable CONFIG_GCOV_KERNEL
# scripts/config --enable CONFIG_ARCH_HAS_GCOV_PROFILE_ALL
# scripts/config --enable CONFIG_HAVE_GCC_PLUGINS
# scripts/config --enable CONFIG_FUNCTION_ALIGNMENT_4B
# scripts/config --enable CONFIG_FUNCTION_ALIGNMENT_16B
# scripts/config --set-val CONFIG_FUNCTION_ALIGNMENT 16
# scripts/config --enable CONFIG_RT_MUTEXES
# scripts/config --enable CONFIG_MODULE_SIG_FORMAT
# scripts/config --enable CONFIG_MODULES
# scripts/config --disable CONFIG_MODULE_DEBUG
# scripts/config --disable CONFIG_MODULE_FORCE_LOAD
# scripts/config --enable CONFIG_MODULE_UNLOAD
# scripts/config --disable CONFIG_MODULE_FORCE_UNLOAD
# scripts/config --disable CONFIG_MODULE_UNLOAD_TAINT_TRACKING
# scripts/config --enable CONFIG_MODVERSIONS
# scripts/config --enable CONFIG_ASM_MODVERSIONS
# scripts/config --enable CONFIG_MODULE_SRCVERSION_ALL
# scripts/config --enable CONFIG_MODULE_SIG
# scripts/config --disable CONFIG_MODULE_SIG_FORCE
# scripts/config --enable CONFIG_MODULE_SIG_ALL
# scripts/config --disable CONFIG_MODULE_SIG_SHA1
# scripts/config --disable CONFIG_MODULE_SIG_SHA256
# scripts/config --disable CONFIG_MODULE_SIG_SHA384
# scripts/config --enable CONFIG_MODULE_SIG_SHA512
# scripts/config --disable CONFIG_MODULE_SIG_SHA3_256
# scripts/config --disable CONFIG_MODULE_SIG_SHA3_384
# scripts/config --disable CONFIG_MODULE_SIG_SHA3_512
# scripts/config --set-val CONFIG_MODULE_SIG_HASH "sha512"
# scripts/config --disable CONFIG_MODULE_COMPRESS
# scripts/config --disable CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
# scripts/config --set-val CONFIG_MODPROBE_PATH "/sbin/modprobe"
# scripts/config --disable CONFIG_TRIM_UNUSED_KSYMS
# scripts/config --enable CONFIG_MODULES_TREE_LOOKUP
# scripts/config --enable CONFIG_BLOCK
# scripts/config --enable CONFIG_BLOCK_LEGACY_AUTOLOAD
# scripts/config --enable CONFIG_BLK_RQ_ALLOC_TIME
# scripts/config --enable CONFIG_BLK_CGROUP_RWSTAT
# scripts/config --enable CONFIG_BLK_CGROUP_PUNT_BIO
# scripts/config --enable CONFIG_BLK_DEV_BSG_COMMON
# scripts/config --enable CONFIG_BLK_ICQ
# scripts/config --enable CONFIG_BLK_DEV_BSGLIB
# scripts/config --enable CONFIG_BLK_DEV_INTEGRITY
# scripts/config --enable CONFIG_BLK_DEV_WRITE_MOUNTED
# scripts/config --enable CONFIG_BLK_DEV_ZONED
# scripts/config --enable CONFIG_BLK_DEV_THROTTLING
# scripts/config --enable CONFIG_BLK_WBT
# scripts/config --enable CONFIG_BLK_WBT_MQ
# scripts/config --disable CONFIG_BLK_CGROUP_IOLATENCY
# scripts/config --enable CONFIG_BLK_CGROUP_FC_APPID
# scripts/config --enable CONFIG_BLK_CGROUP_IOCOST
# scripts/config --enable CONFIG_BLK_CGROUP_IOPRIO
# scripts/config --enable CONFIG_BLK_DEBUG_FS
# scripts/config --enable CONFIG_BLK_SED_OPAL
# scripts/config --enable CONFIG_BLK_INLINE_ENCRYPTION
# scripts/config --enable CONFIG_BLK_INLINE_ENCRYPTION_FALLBACK
# scripts/config --enable CONFIG_PARTITION_ADVANCED
# scripts/config --disable CONFIG_ACORN_PARTITION
# scripts/config --enable CONFIG_AIX_PARTITION
# scripts/config --enable CONFIG_OSF_PARTITION
# scripts/config --enable CONFIG_AMIGA_PARTITION
# scripts/config --enable CONFIG_ATARI_PARTITION
# scripts/config --enable CONFIG_MAC_PARTITION
# scripts/config --enable CONFIG_MSDOS_PARTITION
# scripts/config --enable CONFIG_BSD_DISKLABEL
# scripts/config --enable CONFIG_MINIX_SUBPARTITION
# scripts/config --enable CONFIG_SOLARIS_X86_PARTITION
# scripts/config --enable CONFIG_UNIXWARE_DISKLABEL
# scripts/config --enable CONFIG_LDM_PARTITION
# scripts/config --disable CONFIG_LDM_DEBUG
# scripts/config --enable CONFIG_SGI_PARTITION
# scripts/config --enable CONFIG_ULTRIX_PARTITION
# scripts/config --enable CONFIG_SUN_PARTITION
# scripts/config --enable CONFIG_KARMA_PARTITION
# scripts/config --enable CONFIG_EFI_PARTITION
# scripts/config --enable CONFIG_SYSV68_PARTITION
# scripts/config --enable CONFIG_CMDLINE_PARTITION
# scripts/config --enable CONFIG_BLK_MQ_PCI
# scripts/config --enable CONFIG_BLK_MQ_VIRTIO
# scripts/config --enable CONFIG_BLK_PM
# scripts/config --enable CONFIG_BLOCK_HOLDER_DEPRECATED
# scripts/config --enable CONFIG_BLK_MQ_STACKING
# scripts/config --enable CONFIG_MQ_IOSCHED_DEADLINE
# scripts/config --set-val CONFIG_MQ_IOSCHED_KYBER m
# scripts/config --set-val CONFIG_IOSCHED_BFQ m
# scripts/config --enable CONFIG_BFQ_GROUP_IOSCHED
# scripts/config --disable CONFIG_BFQ_CGROUP_DEBUG
# scripts/config --enable CONFIG_PREEMPT_NOTIFIERS
# scripts/config --enable CONFIG_PADATA
# scripts/config --enable CONFIG_ASN1
# scripts/config --enable CONFIG_UNINLINE_SPIN_UNLOCK
# scripts/config --enable CONFIG_ARCH_SUPPORTS_ATOMIC_RMW
# scripts/config --enable CONFIG_MUTEX_SPIN_ON_OWNER
# scripts/config --enable CONFIG_RWSEM_SPIN_ON_OWNER
# scripts/config --enable CONFIG_LOCK_SPIN_ON_OWNER
# scripts/config --enable CONFIG_ARCH_USE_QUEUED_SPINLOCKS
# scripts/config --enable CONFIG_QUEUED_SPINLOCKS
# scripts/config --enable CONFIG_ARCH_USE_QUEUED_RWLOCKS
# scripts/config --enable CONFIG_QUEUED_RWLOCKS
# scripts/config --enable CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
# scripts/config --enable CONFIG_ARCH_HAS_SYNC_CORE_BEFORE_USERMODE
# scripts/config --enable CONFIG_ARCH_HAS_SYSCALL_WRAPPER
# scripts/config --enable CONFIG_FREEZER
# scripts/config --enable CONFIG_BINFMT_ELF
# scripts/config --enable CONFIG_COMPAT_BINFMT_ELF
# scripts/config --enable CONFIG_ELFCORE
# scripts/config --enable CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS
# scripts/config --enable CONFIG_BINFMT_SCRIPT
# scripts/config --set-val CONFIG_BINFMT_MISC m
# scripts/config --enable CONFIG_COREDUMP
# scripts/config --enable CONFIG_ZPOOL
# scripts/config --enable CONFIG_SWAP
# scripts/config --enable CONFIG_ZSWAP
# scripts/config --disable CONFIG_ZSWAP_DEFAULT_ON
# scripts/config --enable CONFIG_ZSWAP_SHRINKER_DEFAULT_ON
# scripts/config --disable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_DEFLATE
# scripts/config --disable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZO
# scripts/config --disable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_842
# scripts/config --enable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4
# scripts/config --disable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4HC
# scripts/config --disable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_ZSTD
# scripts/config --set-val CONFIG_ZSWAP_COMPRESSOR_DEFAULT "lz4"
# scripts/config --enable CONFIG_ZSWAP_ZPOOL_DEFAULT_ZBUD
# scripts/config --disable CONFIG_ZSWAP_ZPOOL_DEFAULT_Z3FOLD_DEPRECATED
# scripts/config --disable CONFIG_ZSWAP_ZPOOL_DEFAULT_ZSMALLOC
# scripts/config --set-val CONFIG_ZSWAP_ZPOOL_DEFAULT "zbud"
# scripts/config --enable CONFIG_ZBUD
# scripts/config --disable CONFIG_Z3FOLD_DEPRECATED
# scripts/config --set-val CONFIG_ZSMALLOC m
# scripts/config --disable CONFIG_ZSMALLOC_STAT
# scripts/config --set-val CONFIG_ZSMALLOC_CHAIN_SIZE 8
# scripts/config --enable CONFIG_SLUB
# scripts/config --enable CONFIG_SLAB_MERGE_DEFAULT
# scripts/config --enable CONFIG_SLAB_FREELIST_RANDOM
# scripts/config --enable CONFIG_SLAB_FREELIST_HARDENED
# scripts/config --enable CONFIG_SLAB_BUCKETS
# scripts/config --disable CONFIG_SLUB_STATS
# scripts/config --enable CONFIG_SLUB_CPU_PARTIAL
# scripts/config --enable CONFIG_RANDOM_KMALLOC_CACHES
# scripts/config --enable CONFIG_SHUFFLE_PAGE_ALLOCATOR
# scripts/config --disable CONFIG_COMPAT_BRK
# scripts/config --enable CONFIG_SPARSEMEM
# scripts/config --enable CONFIG_SPARSEMEM_EXTREME
# scripts/config --enable CONFIG_SPARSEMEM_VMEMMAP_ENABLE
# scripts/config --enable CONFIG_SPARSEMEM_VMEMMAP
# scripts/config --enable CONFIG_ARCH_WANT_OPTIMIZE_DAX_VMEMMAP
# scripts/config --enable CONFIG_ARCH_WANT_OPTIMIZE_HUGETLB_VMEMMAP
# scripts/config --enable CONFIG_HAVE_GUP_FAST
# scripts/config --enable CONFIG_NUMA_KEEP_MEMINFO
# scripts/config --enable CONFIG_MEMORY_ISOLATION
# scripts/config --enable CONFIG_EXCLUSIVE_SYSTEM_RAM
# scripts/config --enable CONFIG_HAVE_BOOTMEM_INFO_NODE
# scripts/config --enable CONFIG_ARCH_ENABLE_MEMORY_HOTPLUG
# scripts/config --enable CONFIG_ARCH_ENABLE_MEMORY_HOTREMOVE
# scripts/config --enable CONFIG_MEMORY_HOTPLUG
# scripts/config --enable CONFIG_MEMORY_HOTPLUG_DEFAULT_ONLINE
# scripts/config --enable CONFIG_MEMORY_HOTREMOVE
# scripts/config --enable CONFIG_MHP_MEMMAP_ON_MEMORY
# scripts/config --enable CONFIG_ARCH_MHP_MEMMAP_ON_MEMORY_ENABLE
# scripts/config --enable CONFIG_SPLIT_PTE_PTLOCKS
# scripts/config --enable CONFIG_ARCH_ENABLE_SPLIT_PMD_PTLOCK
# scripts/config --enable CONFIG_SPLIT_PMD_PTLOCKS
# scripts/config --enable CONFIG_MEMORY_BALLOON
# scripts/config --enable CONFIG_BALLOON_COMPACTION
# scripts/config --enable CONFIG_COMPACTION
# scripts/config --set-val CONFIG_COMPACT_UNEVICTABLE_DEFAULT 1
# scripts/config --enable CONFIG_PAGE_REPORTING
# scripts/config --enable CONFIG_MIGRATION
# scripts/config --enable CONFIG_DEVICE_MIGRATION
# scripts/config --enable CONFIG_ARCH_ENABLE_HUGEPAGE_MIGRATION
# scripts/config --enable CONFIG_ARCH_ENABLE_THP_MIGRATION
# scripts/config --enable CONFIG_CONTIG_ALLOC
# scripts/config --set-val CONFIG_PCP_BATCH_SCALE_MAX 5
# scripts/config --enable CONFIG_PHYS_ADDR_T_64BIT
# scripts/config --enable CONFIG_MMU_NOTIFIER
# scripts/config --enable CONFIG_KSM
# scripts/config --set-val CONFIG_DEFAULT_MMAP_MIN_ADDR 65536
# scripts/config --enable CONFIG_ARCH_WANT_GENERAL_HUGETLB
# scripts/config --enable CONFIG_ARCH_WANTS_THP_SWAP
# scripts/config --enable CONFIG_TRANSPARENT_HUGEPAGE
# scripts/config --disable CONFIG_TRANSPARENT_HUGEPAGE_ALWAYS
# scripts/config --enable CONFIG_TRANSPARENT_HUGEPAGE_MADVISE
# scripts/config --disable CONFIG_TRANSPARENT_HUGEPAGE_NEVER
# scripts/config --enable CONFIG_THP_SWAP
# scripts/config --disable CONFIG_READ_ONLY_THP_FOR_FS
# scripts/config --enable CONFIG_PGTABLE_HAS_HUGE_LEAVES
# scripts/config --enable CONFIG_ARCH_SUPPORTS_HUGE_PFNMAP
# scripts/config --enable CONFIG_ARCH_SUPPORTS_PMD_PFNMAP
# scripts/config --enable CONFIG_ARCH_SUPPORTS_PUD_PFNMAP
# scripts/config --enable CONFIG_NEED_PER_CPU_EMBED_FIRST_CHUNK
# scripts/config --enable CONFIG_NEED_PER_CPU_PAGE_FIRST_CHUNK
# scripts/config --enable CONFIG_USE_PERCPU_NUMA_NODE_ID
# scripts/config --enable CONFIG_HAVE_SETUP_PER_CPU_AREA
# scripts/config --disable CONFIG_CMA
# scripts/config --enable CONFIG_GENERIC_EARLY_IOREMAP
# scripts/config --disable CONFIG_DEFERRED_STRUCT_PAGE_INIT
# scripts/config --enable CONFIG_PAGE_IDLE_FLAG
# scripts/config --enable CONFIG_IDLE_PAGE_TRACKING
# scripts/config --enable CONFIG_ARCH_HAS_CACHE_LINE_SIZE
# scripts/config --enable CONFIG_ARCH_HAS_CURRENT_STACK_POINTER
# scripts/config --enable CONFIG_ARCH_HAS_PTE_DEVMAP
# scripts/config --enable CONFIG_ZONE_DMA
# scripts/config --enable CONFIG_ZONE_DMA32
# scripts/config --enable CONFIG_ZONE_DEVICE
# scripts/config --enable CONFIG_HMM_MIRROR
# scripts/config --enable CONFIG_GET_FREE_REGION
# scripts/config --enable CONFIG_DEVICE_PRIVATE
# scripts/config --enable CONFIG_ARCH_USES_PG_ARCH_2
# scripts/config --enable CONFIG_VM_EVENT_COUNTERS
# scripts/config --disable CONFIG_PERCPU_STATS
# scripts/config --disable CONFIG_GUP_TEST
# scripts/config --disable CONFIG_DMAPOOL_TEST
# scripts/config --enable CONFIG_ARCH_HAS_PTE_SPECIAL
# scripts/config --enable CONFIG_MEMFD_CREATE
# scripts/config --enable CONFIG_SECRETMEM
# scripts/config --enable CONFIG_ANON_VMA_NAME
# scripts/config --enable CONFIG_HAVE_ARCH_USERFAULTFD_WP
# scripts/config --enable CONFIG_HAVE_ARCH_USERFAULTFD_MINOR
# scripts/config --enable CONFIG_USERFAULTFD
# scripts/config --enable CONFIG_PTE_MARKER_UFFD_WP
# scripts/config --enable CONFIG_LRU_GEN
# scripts/config --enable CONFIG_LRU_GEN_ENABLED
# scripts/config --disable CONFIG_LRU_GEN_STATS
# scripts/config --enable CONFIG_LRU_GEN_WALKS_MMU
# scripts/config --enable CONFIG_ARCH_SUPPORTS_PER_VMA_LOCK
# scripts/config --enable CONFIG_PER_VMA_LOCK
# scripts/config --enable CONFIG_LOCK_MM_AND_FIND_VMA
# scripts/config --enable CONFIG_IOMMU_MM_DATA
# scripts/config --enable CONFIG_EXECMEM
# scripts/config --enable CONFIG_NUMA_MEMBLKS
# scripts/config --disable CONFIG_NUMA_EMU
# scripts/config --disable CONFIG_DAMON
# scripts/config --enable CONFIG_NET
# scripts/config --enable CONFIG_WANT_COMPAT_NETLINK_MESSAGES
# scripts/config --enable CONFIG_COMPAT_NETLINK_MESSAGES
# scripts/config --enable CONFIG_NET_INGRESS
# scripts/config --enable CONFIG_NET_EGRESS
# scripts/config --enable CONFIG_NET_XGRESS
# scripts/config --enable CONFIG_NET_REDIRECT
# scripts/config --enable CONFIG_SKB_DECRYPTED
# scripts/config --enable CONFIG_SKB_EXTENSIONS
# scripts/config --enable CONFIG_NET_DEVMEM
# scripts/config --enable CONFIG_PACKET
# scripts/config --set-val CONFIG_PACKET_DIAG m
# scripts/config --enable CONFIG_UNIX
# scripts/config --enable CONFIG_AF_UNIX_OOB
# scripts/config --set-val CONFIG_UNIX_DIAG m
# scripts/config --set-val CONFIG_TLS m
# scripts/config --enable CONFIG_TLS_DEVICE
# scripts/config --disable CONFIG_TLS_TOE
# scripts/config --enable CONFIG_XFRM
# scripts/config --enable CONFIG_XFRM_OFFLOAD
# scripts/config --set-val CONFIG_XFRM_ALGO m
# scripts/config --set-val CONFIG_XFRM_USER m
# scripts/config --set-val CONFIG_XFRM_USER_COMPAT m
# scripts/config --set-val CONFIG_XFRM_INTERFACE m
# scripts/config --disable CONFIG_XFRM_SUB_POLICY
# scripts/config --disable CONFIG_XFRM_MIGRATE
# scripts/config --enable CONFIG_XFRM_STATISTICS
# scripts/config --set-val CONFIG_XFRM_AH m
# scripts/config --set-val CONFIG_XFRM_ESP m
# scripts/config --set-val CONFIG_XFRM_IPCOMP m
# scripts/config --set-val CONFIG_NET_KEY m
# scripts/config --disable CONFIG_NET_KEY_MIGRATE
# scripts/config --enable CONFIG_XFRM_ESPINTCP
# scripts/config --set-val CONFIG_SMC m
# scripts/config --set-val CONFIG_SMC_DIAG m
# scripts/config --disable CONFIG_SMC_LO
# scripts/config --enable CONFIG_XDP_SOCKETS
# scripts/config --set-val CONFIG_XDP_SOCKETS_DIAG m
# scripts/config --enable CONFIG_NET_HANDSHAKE
# scripts/config --enable CONFIG_INET
# scripts/config --enable CONFIG_IP_MULTICAST
# scripts/config --enable CONFIG_IP_ADVANCED_ROUTER
# scripts/config --enable CONFIG_IP_FIB_TRIE_STATS
# scripts/config --enable CONFIG_IP_MULTIPLE_TABLES
# scripts/config --enable CONFIG_IP_ROUTE_MULTIPATH
# scripts/config --enable CONFIG_IP_ROUTE_VERBOSE
# scripts/config --enable CONFIG_IP_ROUTE_CLASSID
# scripts/config --disable CONFIG_IP_PNP
# scripts/config --set-val CONFIG_NET_IPIP m
# scripts/config --set-val CONFIG_NET_IPGRE_DEMUX m
# scripts/config --set-val CONFIG_NET_IP_TUNNEL m
# scripts/config --set-val CONFIG_NET_IPGRE m
# scripts/config --enable CONFIG_NET_IPGRE_BROADCAST
# scripts/config --enable CONFIG_IP_MROUTE_COMMON
# scripts/config --enable CONFIG_IP_MROUTE
# scripts/config --enable CONFIG_IP_MROUTE_MULTIPLE_TABLES
# scripts/config --enable CONFIG_IP_PIMSM_V1
# scripts/config --enable CONFIG_IP_PIMSM_V2
# scripts/config --enable CONFIG_SYN_COOKIES
# scripts/config --set-val CONFIG_NET_IPVTI m
# scripts/config --set-val CONFIG_NET_UDP_TUNNEL m
# scripts/config --set-val CONFIG_NET_FOU m
# scripts/config --enable CONFIG_NET_FOU_IP_TUNNELS
# scripts/config --set-val CONFIG_INET_AH m
# scripts/config --set-val CONFIG_INET_ESP m
# scripts/config --set-val CONFIG_INET_ESP_OFFLOAD m
# scripts/config --enable CONFIG_INET_ESPINTCP
# scripts/config --set-val CONFIG_INET_IPCOMP m
# scripts/config --set-val CONFIG_INET_TABLE_PERTURB_ORDER 16
# scripts/config --set-val CONFIG_INET_XFRM_TUNNEL m
# scripts/config --set-val CONFIG_INET_TUNNEL m
# scripts/config --set-val CONFIG_INET_DIAG m
# scripts/config --set-val CONFIG_INET_TCP_DIAG m
# scripts/config --set-val CONFIG_INET_UDP_DIAG m
# scripts/config --set-val CONFIG_INET_RAW_DIAG m
# scripts/config --enable CONFIG_INET_DIAG_DESTROY
# scripts/config --enable CONFIG_TCP_CONG_ADVANCED
# scripts/config --set-val CONFIG_TCP_CONG_BIC m
# scripts/config --set-val CONFIG_TCP_CONG_CUBIC m
# scripts/config --set-val CONFIG_TCP_CONG_WESTWOOD m
# scripts/config --set-val CONFIG_TCP_CONG_HTCP m
# scripts/config --set-val CONFIG_TCP_CONG_HSTCP m
# scripts/config --set-val CONFIG_TCP_CONG_HYBLA m
# scripts/config --set-val CONFIG_TCP_CONG_VEGAS m
# scripts/config --set-val CONFIG_TCP_CONG_NV m
# scripts/config --set-val CONFIG_TCP_CONG_SCALABLE m
# scripts/config --set-val CONFIG_TCP_CONG_LP m
# scripts/config --set-val CONFIG_TCP_CONG_VENO m
# scripts/config --set-val CONFIG_TCP_CONG_YEAH m
# scripts/config --set-val CONFIG_TCP_CONG_ILLINOIS m
# scripts/config --set-val CONFIG_TCP_CONG_DCTCP m
# scripts/config --set-val CONFIG_TCP_CONG_CDG m
# scripts/config --enable CONFIG_TCP_CONG_BBR
# scripts/config --enable CONFIG_DEFAULT_BBR
# scripts/config --disable CONFIG_DEFAULT_RENO
# scripts/config --set-val CONFIG_DEFAULT_TCP_CONG "bbr"
# scripts/config --enable CONFIG_TCP_SIGPOOL
# scripts/config --enable CONFIG_TCP_AO
# scripts/config --enable CONFIG_TCP_MD5SIG
# scripts/config --enable CONFIG_IPV6
# scripts/config --enable CONFIG_IPV6_ROUTER_PREF
# scripts/config --enable CONFIG_IPV6_ROUTE_INFO
# scripts/config --disable CONFIG_IPV6_OPTIMISTIC_DAD
# scripts/config --set-val CONFIG_INET6_AH m
# scripts/config --set-val CONFIG_INET6_ESP m
# scripts/config --set-val CONFIG_INET6_ESP_OFFLOAD m
# scripts/config --enable CONFIG_INET6_ESPINTCP
# scripts/config --set-val CONFIG_INET6_IPCOMP m
# scripts/config --set-val CONFIG_IPV6_MIP6 m
# scripts/config --set-val CONFIG_IPV6_ILA m
# scripts/config --set-val CONFIG_INET6_XFRM_TUNNEL m
# scripts/config --set-val CONFIG_INET6_TUNNEL m
# scripts/config --set-val CONFIG_IPV6_VTI m
# scripts/config --set-val CONFIG_IPV6_SIT m
# scripts/config --enable CONFIG_IPV6_SIT_6RD
# scripts/config --enable CONFIG_IPV6_NDISC_NODETYPE
# scripts/config --set-val CONFIG_IPV6_TUNNEL m
# scripts/config --set-val CONFIG_IPV6_GRE m
# scripts/config --set-val CONFIG_IPV6_FOU m
# scripts/config --set-val CONFIG_IPV6_FOU_TUNNEL m
# scripts/config --enable CONFIG_IPV6_MULTIPLE_TABLES
# scripts/config --enable CONFIG_IPV6_SUBTREES
# scripts/config --enable CONFIG_IPV6_MROUTE
# scripts/config --enable CONFIG_IPV6_MROUTE_MULTIPLE_TABLES
# scripts/config --enable CONFIG_IPV6_PIMSM_V2
# scripts/config --enable CONFIG_IPV6_SEG6_LWTUNNEL
# scripts/config --enable CONFIG_IPV6_SEG6_HMAC
# scripts/config --enable CONFIG_IPV6_SEG6_BPF
# scripts/config --disable CONFIG_IPV6_RPL_LWTUNNEL
# scripts/config --enable CONFIG_IPV6_IOAM6_LWTUNNEL
# scripts/config --enable CONFIG_NETLABEL
# scripts/config --enable CONFIG_MPTCP
# scripts/config --set-val CONFIG_INET_MPTCP_DIAG m
# scripts/config --enable CONFIG_MPTCP_IPV6
# scripts/config --enable CONFIG_NETWORK_SECMARK
# scripts/config --enable CONFIG_NET_PTP_CLASSIFY
# scripts/config --enable CONFIG_NETWORK_PHY_TIMESTAMPING
# scripts/config --enable CONFIG_NETFILTER
# scripts/config --enable CONFIG_NETFILTER_ADVANCED
# scripts/config --set-val CONFIG_BRIDGE_NETFILTER m
# scripts/config --enable CONFIG_NETFILTER_INGRESS
# scripts/config --enable CONFIG_NETFILTER_EGRESS
# scripts/config --enable CONFIG_NETFILTER_SKIP_EGRESS
# scripts/config --set-val CONFIG_NETFILTER_NETLINK m
# scripts/config --enable CONFIG_NETFILTER_FAMILY_BRIDGE
# scripts/config --enable CONFIG_NETFILTER_FAMILY_ARP
# scripts/config --enable CONFIG_NETFILTER_BPF_LINK
# scripts/config --set-val CONFIG_NETFILTER_NETLINK_HOOK m
# scripts/config --set-val CONFIG_NETFILTER_NETLINK_ACCT m
# scripts/config --set-val CONFIG_NETFILTER_NETLINK_QUEUE m
# scripts/config --set-val CONFIG_NETFILTER_NETLINK_LOG m
# scripts/config --set-val CONFIG_NETFILTER_NETLINK_OSF m
# scripts/config --set-val CONFIG_NF_CONNTRACK m
# scripts/config --set-val CONFIG_NF_LOG_SYSLOG m
# scripts/config --set-val CONFIG_NETFILTER_CONNCOUNT m
# scripts/config --enable CONFIG_NF_CONNTRACK_MARK
# scripts/config --enable CONFIG_NF_CONNTRACK_SECMARK
# scripts/config --enable CONFIG_NF_CONNTRACK_ZONES
# scripts/config --disable CONFIG_NF_CONNTRACK_PROCFS
# scripts/config --enable CONFIG_NF_CONNTRACK_EVENTS
# scripts/config --enable CONFIG_NF_CONNTRACK_TIMEOUT
# scripts/config --enable CONFIG_NF_CONNTRACK_TIMESTAMP
# scripts/config --enable CONFIG_NF_CONNTRACK_LABELS
# scripts/config --enable CONFIG_NF_CONNTRACK_OVS
# scripts/config --enable CONFIG_NF_CT_PROTO_DCCP
# scripts/config --enable CONFIG_NF_CT_PROTO_GRE
# scripts/config --enable CONFIG_NF_CT_PROTO_SCTP
# scripts/config --enable CONFIG_NF_CT_PROTO_UDPLITE
# scripts/config --set-val CONFIG_NF_CONNTRACK_AMANDA m
# scripts/config --set-val CONFIG_NF_CONNTRACK_FTP m
# scripts/config --set-val CONFIG_NF_CONNTRACK_H323 m
# scripts/config --set-val CONFIG_NF_CONNTRACK_IRC m
# scripts/config --set-val CONFIG_NF_CONNTRACK_BROADCAST m
# scripts/config --set-val CONFIG_NF_CONNTRACK_NETBIOS_NS m
# scripts/config --set-val CONFIG_NF_CONNTRACK_SNMP m
# scripts/config --set-val CONFIG_NF_CONNTRACK_PPTP m
# scripts/config --set-val CONFIG_NF_CONNTRACK_SANE m
# scripts/config --set-val CONFIG_NF_CONNTRACK_SIP m
# scripts/config --set-val CONFIG_NF_CONNTRACK_TFTP m
# scripts/config --set-val CONFIG_NF_CT_NETLINK m
# scripts/config --set-val CONFIG_NF_CT_NETLINK_TIMEOUT m
# scripts/config --set-val CONFIG_NF_CT_NETLINK_HELPER m
# scripts/config --enable CONFIG_NETFILTER_NETLINK_GLUE_CT
# scripts/config --set-val CONFIG_NF_NAT m
# scripts/config --set-val CONFIG_NF_NAT_AMANDA m
# scripts/config --set-val CONFIG_NF_NAT_FTP m
# scripts/config --set-val CONFIG_NF_NAT_IRC m
# scripts/config --set-val CONFIG_NF_NAT_SIP m
# scripts/config --set-val CONFIG_NF_NAT_TFTP m
# scripts/config --enable CONFIG_NF_NAT_REDIRECT
# scripts/config --enable CONFIG_NF_NAT_MASQUERADE
# scripts/config --enable CONFIG_NF_NAT_OVS
# scripts/config --set-val CONFIG_NETFILTER_SYNPROXY m
# scripts/config --set-val CONFIG_NF_TABLES m
# scripts/config --enable CONFIG_NF_TABLES_INET
# scripts/config --enable CONFIG_NF_TABLES_NETDEV
# scripts/config --set-val CONFIG_NFT_NUMGEN m
# scripts/config --set-val CONFIG_NFT_CT m
# scripts/config --set-val CONFIG_NFT_FLOW_OFFLOAD m
# scripts/config --set-val CONFIG_NFT_CONNLIMIT m
# scripts/config --set-val CONFIG_NFT_LOG m
# scripts/config --set-val CONFIG_NFT_LIMIT m
# scripts/config --set-val CONFIG_NFT_MASQ m
# scripts/config --set-val CONFIG_NFT_REDIR m
# scripts/config --set-val CONFIG_NFT_NAT m
# scripts/config --set-val CONFIG_NFT_FULLCONE m
# scripts/config --set-val CONFIG_NFT_TUNNEL m
# scripts/config --set-val CONFIG_NFT_QUEUE m
# scripts/config --set-val CONFIG_NFT_QUOTA m
# scripts/config --set-val CONFIG_NFT_REJECT m
# scripts/config --set-val CONFIG_NFT_REJECT_INET m
# scripts/config --set-val CONFIG_NFT_COMPAT m
# scripts/config --set-val CONFIG_NFT_HASH m
# scripts/config --set-val CONFIG_NFT_FIB m
# scripts/config --set-val CONFIG_NFT_FIB_INET m
# scripts/config --set-val CONFIG_NFT_XFRM m
# scripts/config --set-val CONFIG_NFT_SOCKET m
# scripts/config --set-val CONFIG_NFT_OSF m
# scripts/config --set-val CONFIG_NFT_TPROXY m
# scripts/config --set-val CONFIG_NFT_SYNPROXY m
# scripts/config --set-val CONFIG_NF_DUP_NETDEV m
# scripts/config --set-val CONFIG_NFT_DUP_NETDEV m
# scripts/config --set-val CONFIG_NFT_FWD_NETDEV m
# scripts/config --set-val CONFIG_NFT_FIB_NETDEV m
# scripts/config --set-val CONFIG_NFT_REJECT_NETDEV m
# scripts/config --set-val CONFIG_NF_FLOW_TABLE_INET m
# scripts/config --set-val CONFIG_NF_FLOW_TABLE m
# scripts/config --disable CONFIG_NF_FLOW_TABLE_PROCFS
# scripts/config --set-val CONFIG_NETFILTER_XTABLES m
# scripts/config --enable CONFIG_NETFILTER_XTABLES_COMPAT
# scripts/config --set-val CONFIG_NETFILTER_XT_MARK m
# scripts/config --set-val CONFIG_NETFILTER_XT_CONNMARK m
# scripts/config --set-val CONFIG_NETFILTER_XT_SET m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_AUDIT m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_CHECKSUM m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_CLASSIFY m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_CONNMARK m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_CONNSECMARK m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_CT m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_DSCP m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_HL m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_HMARK m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_IDLETIMER m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_LED m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_LOG m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_MARK m
# scripts/config --set-val CONFIG_NETFILTER_XT_NAT m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_NETMAP m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_NFLOG m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_NFQUEUE m
# scripts/config --disable CONFIG_NETFILTER_XT_TARGET_NOTRACK
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_FLOWOFFLOAD m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_RATEEST m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_REDIRECT m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_MASQUERADE m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_TEE m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_TPROXY m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_TRACE m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_SECMARK m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_TCPMSS m
# scripts/config --set-val CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_ADDRTYPE m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_BPF m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_CGROUP m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_CLUSTER m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_COMMENT m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_CONNBYTES m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_CONNLABEL m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_CONNLIMIT m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_CONNMARK m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_CONNTRACK m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_CPU m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_DCCP m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_DEVGROUP m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_DSCP m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_ECN m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_ESP m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_HASHLIMIT m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_HELPER m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_HL m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_IPCOMP m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_IPRANGE m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_IPVS m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_L2TP m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_LENGTH m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_LIMIT m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_MAC m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_MARK m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_MULTIPORT m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_NFACCT m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_OSF m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_OWNER m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_POLICY m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_PHYSDEV m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_PKTTYPE m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_QUOTA m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_RATEEST m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_REALM m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_RECENT m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_SCTP m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_SOCKET m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_STATE m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_STATISTIC m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_STRING m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_TCPMSS m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_TIME m
# scripts/config --set-val CONFIG_NETFILTER_XT_MATCH_U32 m
# scripts/config --set-val CONFIG_IP_SET m
# scripts/config --set-val CONFIG_IP_SET_MAX 256
# scripts/config --set-val CONFIG_IP_SET_BITMAP_IP m
# scripts/config --set-val CONFIG_IP_SET_BITMAP_IPMAC m
# scripts/config --set-val CONFIG_IP_SET_BITMAP_PORT m
# scripts/config --set-val CONFIG_IP_SET_HASH_IP m
# scripts/config --set-val CONFIG_IP_SET_HASH_IPMARK m
# scripts/config --set-val CONFIG_IP_SET_HASH_IPPORT m
# scripts/config --set-val CONFIG_IP_SET_HASH_IPPORTIP m
# scripts/config --set-val CONFIG_IP_SET_HASH_IPPORTNET m
# scripts/config --set-val CONFIG_IP_SET_HASH_IPMAC m
# scripts/config --set-val CONFIG_IP_SET_HASH_MAC m
# scripts/config --set-val CONFIG_IP_SET_HASH_NETPORTNET m
# scripts/config --set-val CONFIG_IP_SET_HASH_NET m
# scripts/config --set-val CONFIG_IP_SET_HASH_NETNET m
# scripts/config --set-val CONFIG_IP_SET_HASH_NETPORT m
# scripts/config --set-val CONFIG_IP_SET_HASH_NETIFACE m
# scripts/config --set-val CONFIG_IP_SET_LIST_SET m
# scripts/config --set-val CONFIG_IP_VS m
# scripts/config --enable CONFIG_IP_VS_IPV6
# scripts/config --disable CONFIG_IP_VS_DEBUG
# scripts/config --set-val CONFIG_IP_VS_TAB_BITS 12
# scripts/config --enable CONFIG_IP_VS_PROTO_TCP
# scripts/config --enable CONFIG_IP_VS_PROTO_UDP
# scripts/config --enable CONFIG_IP_VS_PROTO_AH_ESP
# scripts/config --enable CONFIG_IP_VS_PROTO_ESP
# scripts/config --enable CONFIG_IP_VS_PROTO_AH
# scripts/config --enable CONFIG_IP_VS_PROTO_SCTP
# scripts/config --set-val CONFIG_IP_VS_RR m
# scripts/config --set-val CONFIG_IP_VS_WRR m
# scripts/config --set-val CONFIG_IP_VS_LC m
# scripts/config --set-val CONFIG_IP_VS_WLC m
# scripts/config --set-val CONFIG_IP_VS_FO m
# scripts/config --set-val CONFIG_IP_VS_OVF m
# scripts/config --set-val CONFIG_IP_VS_LBLC m
# scripts/config --set-val CONFIG_IP_VS_LBLCR m
# scripts/config --set-val CONFIG_IP_VS_DH m
# scripts/config --set-val CONFIG_IP_VS_SH m
# scripts/config --set-val CONFIG_IP_VS_MH m
# scripts/config --set-val CONFIG_IP_VS_SED m
# scripts/config --set-val CONFIG_IP_VS_NQ m
# scripts/config --set-val CONFIG_IP_VS_TWOS m
# scripts/config --set-val CONFIG_IP_VS_SH_TAB_BITS 8
# scripts/config --set-val CONFIG_IP_VS_MH_TAB_INDEX 12
# scripts/config --set-val CONFIG_IP_VS_FTP m
# scripts/config --enable CONFIG_IP_VS_NFCT
# scripts/config --set-val CONFIG_IP_VS_PE_SIP m
# scripts/config --set-val CONFIG_NF_DEFRAG_IPV4 m
# scripts/config --set-val CONFIG_IP_NF_IPTABLES_LEGACY m
# scripts/config --set-val CONFIG_NF_SOCKET_IPV4 m
# scripts/config --set-val CONFIG_NF_TPROXY_IPV4 m
# scripts/config --enable CONFIG_NF_TABLES_IPV4
# scripts/config --set-val CONFIG_NFT_REJECT_IPV4 m
# scripts/config --set-val CONFIG_NFT_DUP_IPV4 m
# scripts/config --set-val CONFIG_NFT_FIB_IPV4 m
# scripts/config --enable CONFIG_NF_TABLES_ARP
# scripts/config --set-val CONFIG_NF_DUP_IPV4 m
# scripts/config --set-val CONFIG_NF_LOG_ARP m
# scripts/config --set-val CONFIG_NF_LOG_IPV4 m
# scripts/config --set-val CONFIG_NF_REJECT_IPV4 m
# scripts/config --set-val CONFIG_NF_NAT_SNMP_BASIC m
# scripts/config --set-val CONFIG_NF_NAT_PPTP m
# scripts/config --set-val CONFIG_NF_NAT_H323 m
# scripts/config --set-val CONFIG_IP_NF_IPTABLES m
# scripts/config --set-val CONFIG_IP_NF_MATCH_AH m
# scripts/config --set-val CONFIG_IP_NF_MATCH_ECN m
# scripts/config --set-val CONFIG_IP_NF_MATCH_RPFILTER m
# scripts/config --set-val CONFIG_IP_NF_MATCH_TTL m
# scripts/config --set-val CONFIG_IP_NF_FILTER m
# scripts/config --set-val CONFIG_IP_NF_TARGET_REJECT m
# scripts/config --set-val CONFIG_IP_NF_TARGET_SYNPROXY m
# scripts/config --set-val CONFIG_IP_NF_NAT m
# scripts/config --set-val CONFIG_IP_NF_TARGET_MASQUERADE m
# scripts/config --set-val CONFIG_IP_NF_TARGET_NETMAP m
# scripts/config --set-val CONFIG_IP_NF_TARGET_REDIRECT m
# scripts/config --set-val CONFIG_IP_NF_MANGLE m
# scripts/config --set-val CONFIG_IP_NF_TARGET_ECN m
# scripts/config --set-val CONFIG_IP_NF_TARGET_TTL m
# scripts/config --set-val CONFIG_IP_NF_RAW m
# scripts/config --set-val CONFIG_IP_NF_SECURITY m
# scripts/config --set-val CONFIG_IP_NF_ARPTABLES m
# scripts/config --set-val CONFIG_NFT_COMPAT_ARP m
# scripts/config --set-val CONFIG_IP_NF_ARPFILTER m
# scripts/config --set-val CONFIG_IP_NF_ARP_MANGLE m
# scripts/config --set-val CONFIG_IP6_NF_IPTABLES_LEGACY m
# scripts/config --set-val CONFIG_NF_SOCKET_IPV6 m
# scripts/config --set-val CONFIG_NF_TPROXY_IPV6 m
# scripts/config --enable CONFIG_NF_TABLES_IPV6
# scripts/config --set-val CONFIG_NFT_REJECT_IPV6 m
# scripts/config --set-val CONFIG_NFT_DUP_IPV6 m
# scripts/config --set-val CONFIG_NFT_FIB_IPV6 m
# scripts/config --set-val CONFIG_NF_DUP_IPV6 m
# scripts/config --set-val CONFIG_NF_REJECT_IPV6 m
# scripts/config --set-val CONFIG_NF_LOG_IPV6 m
# scripts/config --set-val CONFIG_IP6_NF_IPTABLES m
# scripts/config --set-val CONFIG_IP6_NF_MATCH_AH m
# scripts/config --set-val CONFIG_IP6_NF_MATCH_EUI64 m
# scripts/config --set-val CONFIG_IP6_NF_MATCH_FRAG m
# scripts/config --set-val CONFIG_IP6_NF_MATCH_OPTS m
# scripts/config --set-val CONFIG_IP6_NF_MATCH_HL m
# scripts/config --set-val CONFIG_IP6_NF_MATCH_IPV6HEADER m
# scripts/config --set-val CONFIG_IP6_NF_MATCH_MH m
# scripts/config --set-val CONFIG_IP6_NF_MATCH_RPFILTER m
# scripts/config --set-val CONFIG_IP6_NF_MATCH_RT m
# scripts/config --set-val CONFIG_IP6_NF_MATCH_SRH m
# scripts/config --set-val CONFIG_IP6_NF_TARGET_HL m
# scripts/config --set-val CONFIG_IP6_NF_FILTER m
# scripts/config --set-val CONFIG_IP6_NF_TARGET_REJECT m
# scripts/config --set-val CONFIG_IP6_NF_TARGET_SYNPROXY m
# scripts/config --set-val CONFIG_IP6_NF_MANGLE m
# scripts/config --set-val CONFIG_IP6_NF_RAW m
# scripts/config --set-val CONFIG_IP6_NF_SECURITY m
# scripts/config --set-val CONFIG_IP6_NF_NAT m
# scripts/config --set-val CONFIG_IP6_NF_TARGET_MASQUERADE m
# scripts/config --set-val CONFIG_IP6_NF_TARGET_NPT m
# scripts/config --set-val CONFIG_NF_DEFRAG_IPV6 m
# scripts/config --set-val CONFIG_NF_TABLES_BRIDGE m
# scripts/config --set-val CONFIG_NFT_BRIDGE_META m
# scripts/config --set-val CONFIG_NFT_BRIDGE_REJECT m
# scripts/config --set-val CONFIG_NF_CONNTRACK_BRIDGE m
# scripts/config --set-val CONFIG_BRIDGE_NF_EBTABLES_LEGACY m
# scripts/config --set-val CONFIG_BRIDGE_NF_EBTABLES m
# scripts/config --set-val CONFIG_BRIDGE_EBT_BROUTE m
# scripts/config --set-val CONFIG_BRIDGE_EBT_T_FILTER m
# scripts/config --set-val CONFIG_BRIDGE_EBT_T_NAT m
# scripts/config --set-val CONFIG_BRIDGE_EBT_802_3 m
# scripts/config --set-val CONFIG_BRIDGE_EBT_AMONG m
# scripts/config --set-val CONFIG_BRIDGE_EBT_ARP m
# scripts/config --set-val CONFIG_BRIDGE_EBT_IP m
# scripts/config --set-val CONFIG_BRIDGE_EBT_IP6 m
# scripts/config --set-val CONFIG_BRIDGE_EBT_LIMIT m
# scripts/config --set-val CONFIG_BRIDGE_EBT_MARK m
# scripts/config --set-val CONFIG_BRIDGE_EBT_PKTTYPE m
# scripts/config --set-val CONFIG_BRIDGE_EBT_STP m
# scripts/config --set-val CONFIG_BRIDGE_EBT_VLAN m
# scripts/config --set-val CONFIG_BRIDGE_EBT_ARPREPLY m
# scripts/config --set-val CONFIG_BRIDGE_EBT_DNAT m
# scripts/config --set-val CONFIG_BRIDGE_EBT_MARK_T m
# scripts/config --set-val CONFIG_BRIDGE_EBT_REDIRECT m
# scripts/config --set-val CONFIG_BRIDGE_EBT_SNAT m
# scripts/config --set-val CONFIG_BRIDGE_EBT_LOG m
# scripts/config --set-val CONFIG_BRIDGE_EBT_NFLOG m
# scripts/config --set-val CONFIG_IP_DCCP m
# scripts/config --set-val CONFIG_INET_DCCP_DIAG m
# scripts/config --disable CONFIG_IP_DCCP_CCID2_DEBUG
# scripts/config --disable CONFIG_IP_DCCP_CCID3
# scripts/config --disable CONFIG_IP_DCCP_DEBUG
# scripts/config --set-val CONFIG_IP_SCTP m
# scripts/config --disable CONFIG_SCTP_DBG_OBJCNT
# scripts/config --disable CONFIG_SCTP_DEFAULT_COOKIE_HMAC_MD5
# scripts/config --enable CONFIG_SCTP_DEFAULT_COOKIE_HMAC_SHA1
# scripts/config --disable CONFIG_SCTP_DEFAULT_COOKIE_HMAC_NONE
# scripts/config --enable CONFIG_SCTP_COOKIE_HMAC_MD5
# scripts/config --enable CONFIG_SCTP_COOKIE_HMAC_SHA1
# scripts/config --set-val CONFIG_INET_SCTP_DIAG m
# scripts/config --set-val CONFIG_RDS m
# scripts/config --set-val CONFIG_RDS_RDMA m
# scripts/config --set-val CONFIG_RDS_TCP m
# scripts/config --disable CONFIG_RDS_DEBUG
# scripts/config --set-val CONFIG_TIPC m
# scripts/config --enable CONFIG_TIPC_MEDIA_IB
# scripts/config --enable CONFIG_TIPC_MEDIA_UDP
# scripts/config --enable CONFIG_TIPC_CRYPTO
# scripts/config --set-val CONFIG_TIPC_DIAG m
# scripts/config --set-val CONFIG_ATM m
# scripts/config --set-val CONFIG_ATM_CLIP m
# scripts/config --disable CONFIG_ATM_CLIP_NO_ICMP
# scripts/config --set-val CONFIG_ATM_LANE m
# scripts/config --set-val CONFIG_ATM_MPOA m
# scripts/config --set-val CONFIG_ATM_BR2684 m
# scripts/config --disable CONFIG_ATM_BR2684_IPFILTER
# scripts/config --set-val CONFIG_L2TP m
# scripts/config --set-val CONFIG_L2TP_DEBUGFS m
# scripts/config --enable CONFIG_L2TP_V3
# scripts/config --set-val CONFIG_L2TP_IP m
# scripts/config --set-val CONFIG_L2TP_ETH m
# scripts/config --set-val CONFIG_STP m
# scripts/config --set-val CONFIG_GARP m
# scripts/config --set-val CONFIG_MRP m
# scripts/config --set-val CONFIG_BRIDGE m
# scripts/config --enable CONFIG_BRIDGE_IGMP_SNOOPING
# scripts/config --enable CONFIG_BRIDGE_VLAN_FILTERING
# scripts/config --enable CONFIG_BRIDGE_MRP
# scripts/config --enable CONFIG_BRIDGE_CFM
# scripts/config --set-val CONFIG_NET_DSA m
# scripts/config --set-val CONFIG_NET_DSA_TAG_NONE m
# scripts/config --set-val CONFIG_NET_DSA_TAG_AR9331 m
# scripts/config --set-val CONFIG_NET_DSA_TAG_BRCM_COMMON m
# scripts/config --set-val CONFIG_NET_DSA_TAG_BRCM m
# scripts/config --set-val CONFIG_NET_DSA_TAG_BRCM_LEGACY m
# scripts/config --set-val CONFIG_NET_DSA_TAG_BRCM_PREPEND m
# scripts/config --set-val CONFIG_NET_DSA_TAG_HELLCREEK m
# scripts/config --set-val CONFIG_NET_DSA_TAG_GSWIP m
# scripts/config --set-val CONFIG_NET_DSA_TAG_DSA_COMMON m
# scripts/config --set-val CONFIG_NET_DSA_TAG_DSA m
# scripts/config --set-val CONFIG_NET_DSA_TAG_EDSA m
# scripts/config --set-val CONFIG_NET_DSA_TAG_MTK m
# scripts/config --set-val CONFIG_NET_DSA_TAG_KSZ m
# scripts/config --set-val CONFIG_NET_DSA_TAG_OCELOT m
# scripts/config --set-val CONFIG_NET_DSA_TAG_OCELOT_8021Q m
# scripts/config --set-val CONFIG_NET_DSA_TAG_QCA m
# scripts/config --set-val CONFIG_NET_DSA_TAG_RTL4_A m
# scripts/config --set-val CONFIG_NET_DSA_TAG_RTL8_4 m
# scripts/config --set-val CONFIG_NET_DSA_TAG_RZN1_A5PSW m
# scripts/config --set-val CONFIG_NET_DSA_TAG_LAN9303 m
# scripts/config --set-val CONFIG_NET_DSA_TAG_SJA1105 m
# scripts/config --set-val CONFIG_NET_DSA_TAG_TRAILER m
# scripts/config --set-val CONFIG_NET_DSA_TAG_VSC73XX_8021Q m
# scripts/config --set-val CONFIG_NET_DSA_TAG_XRS700X m
# scripts/config --set-val CONFIG_VLAN_8021Q m
# scripts/config --enable CONFIG_VLAN_8021Q_GVRP
# scripts/config --enable CONFIG_VLAN_8021Q_MVRP
# scripts/config --set-val CONFIG_LLC m
# scripts/config --set-val CONFIG_LLC2 m
# scripts/config --set-val CONFIG_ATALK m
# scripts/config --set-val CONFIG_X25 m
# scripts/config --set-val CONFIG_LAPB m
# scripts/config --set-val CONFIG_PHONET m
# scripts/config --set-val CONFIG_6LOWPAN m
# scripts/config --disable CONFIG_6LOWPAN_DEBUGFS
# scripts/config --set-val CONFIG_6LOWPAN_NHC m
# scripts/config --set-val CONFIG_6LOWPAN_NHC_DEST m
# scripts/config --set-val CONFIG_6LOWPAN_NHC_FRAGMENT m
# scripts/config --set-val CONFIG_6LOWPAN_NHC_HOP m
# scripts/config --set-val CONFIG_6LOWPAN_NHC_IPV6 m
# scripts/config --set-val CONFIG_6LOWPAN_NHC_MOBILITY m
# scripts/config --set-val CONFIG_6LOWPAN_NHC_ROUTING m
# scripts/config --set-val CONFIG_6LOWPAN_NHC_UDP m
# scripts/config --disable CONFIG_6LOWPAN_GHC_EXT_HDR_HOP
# scripts/config --disable CONFIG_6LOWPAN_GHC_UDP
# scripts/config --disable CONFIG_6LOWPAN_GHC_ICMPV6
# scripts/config --disable CONFIG_6LOWPAN_GHC_EXT_HDR_DEST
# scripts/config --disable CONFIG_6LOWPAN_GHC_EXT_HDR_FRAG
# scripts/config --disable CONFIG_6LOWPAN_GHC_EXT_HDR_ROUTE
# scripts/config --set-val CONFIG_IEEE802154 m
# scripts/config --disable CONFIG_IEEE802154_NL802154_EXPERIMENTAL
# scripts/config --set-val CONFIG_IEEE802154_SOCKET m
# scripts/config --set-val CONFIG_IEEE802154_6LOWPAN m
# scripts/config --set-val CONFIG_MAC802154 m
# scripts/config --enable CONFIG_NET_SCHED
# scripts/config --set-val CONFIG_NET_SCH_HTB m
# scripts/config --set-val CONFIG_NET_SCH_HFSC m
# scripts/config --set-val CONFIG_NET_SCH_PRIO m
# scripts/config --set-val CONFIG_NET_SCH_MULTIQ m
# scripts/config --set-val CONFIG_NET_SCH_RED m
# scripts/config --set-val CONFIG_NET_SCH_SFB m
# scripts/config --set-val CONFIG_NET_SCH_SFQ m
# scripts/config --set-val CONFIG_NET_SCH_TEQL m
# scripts/config --set-val CONFIG_NET_SCH_TBF m
# scripts/config --set-val CONFIG_NET_SCH_CBS m
# scripts/config --set-val CONFIG_NET_SCH_ETF m
# scripts/config --set-val CONFIG_NET_SCH_MQPRIO_LIB m
# scripts/config --set-val CONFIG_NET_SCH_TAPRIO m
# scripts/config --set-val CONFIG_NET_SCH_GRED m
# scripts/config --set-val CONFIG_NET_SCH_NETEM m
# scripts/config --set-val CONFIG_NET_SCH_DRR m
# scripts/config --set-val CONFIG_NET_SCH_MQPRIO m
# scripts/config --set-val CONFIG_NET_SCH_SKBPRIO m
# scripts/config --set-val CONFIG_NET_SCH_CHOKE m
# scripts/config --set-val CONFIG_NET_SCH_QFQ m
# scripts/config --set-val CONFIG_NET_SCH_CODEL m
# scripts/config --set-val CONFIG_NET_SCH_FQ_CODEL m
# scripts/config --set-val CONFIG_NET_SCH_CAKE m
# scripts/config --set-val CONFIG_NET_SCH_FQ m
# scripts/config --set-val CONFIG_NET_SCH_HHF m
# scripts/config --set-val CONFIG_NET_SCH_PIE m
# scripts/config --set-val CONFIG_NET_SCH_FQ_PIE m
# scripts/config --set-val CONFIG_NET_SCH_INGRESS m
# scripts/config --set-val CONFIG_NET_SCH_PLUG m
# scripts/config --set-val CONFIG_NET_SCH_ETS m
# scripts/config --disable CONFIG_NET_SCH_DEFAULT
# scripts/config --enable CONFIG_NET_CLS
# scripts/config --set-val CONFIG_NET_CLS_BASIC m
# scripts/config --set-val CONFIG_NET_CLS_ROUTE4 m
# scripts/config --set-val CONFIG_NET_CLS_FW m
# scripts/config --set-val CONFIG_NET_CLS_U32 m
# scripts/config --disable CONFIG_CLS_U32_PERF
# scripts/config --enable CONFIG_CLS_U32_MARK
# scripts/config --set-val CONFIG_NET_CLS_FLOW m
# scripts/config --set-val CONFIG_NET_CLS_CGROUP m
# scripts/config --set-val CONFIG_NET_CLS_BPF m
# scripts/config --set-val CONFIG_NET_CLS_FLOWER m
# scripts/config --set-val CONFIG_NET_CLS_MATCHALL m
# scripts/config --enable CONFIG_NET_EMATCH
# scripts/config --set-val CONFIG_NET_EMATCH_STACK 32
# scripts/config --set-val CONFIG_NET_EMATCH_CMP m
# scripts/config --set-val CONFIG_NET_EMATCH_NBYTE m
# scripts/config --set-val CONFIG_NET_EMATCH_U32 m
# scripts/config --set-val CONFIG_NET_EMATCH_META m
# scripts/config --set-val CONFIG_NET_EMATCH_TEXT m
# scripts/config --set-val CONFIG_NET_EMATCH_CANID m
# scripts/config --set-val CONFIG_NET_EMATCH_IPSET m
# scripts/config --set-val CONFIG_NET_EMATCH_IPT m
# scripts/config --enable CONFIG_NET_CLS_ACT
# scripts/config --set-val CONFIG_NET_ACT_POLICE m
# scripts/config --set-val CONFIG_NET_ACT_GACT m
# scripts/config --enable CONFIG_GACT_PROB
# scripts/config --set-val CONFIG_NET_ACT_MIRRED m
# scripts/config --set-val CONFIG_NET_ACT_SAMPLE m
# scripts/config --set-val CONFIG_NET_ACT_NAT m
# scripts/config --set-val CONFIG_NET_ACT_PEDIT m
# scripts/config --set-val CONFIG_NET_ACT_SIMP m
# scripts/config --set-val CONFIG_NET_ACT_SKBEDIT m
# scripts/config --set-val CONFIG_NET_ACT_CSUM m
# scripts/config --set-val CONFIG_NET_ACT_MPLS m
# scripts/config --set-val CONFIG_NET_ACT_VLAN m
# scripts/config --set-val CONFIG_NET_ACT_BPF m
# scripts/config --set-val CONFIG_NET_ACT_CONNMARK m
# scripts/config --set-val CONFIG_NET_ACT_CTINFO m
# scripts/config --set-val CONFIG_NET_ACT_SKBMOD m
# scripts/config --disable CONFIG_NET_ACT_IFE
# scripts/config --set-val CONFIG_NET_ACT_TUNNEL_KEY m
# scripts/config --set-val CONFIG_NET_ACT_CT m
# scripts/config --set-val CONFIG_NET_ACT_GATE m
# scripts/config --enable CONFIG_NET_TC_SKB_EXT
# scripts/config --enable CONFIG_NET_SCH_FIFO
# scripts/config --enable CONFIG_DCB
# scripts/config --enable CONFIG_DNS_RESOLVER
# scripts/config --set-val CONFIG_BATMAN_ADV m
# scripts/config --disable CONFIG_BATMAN_ADV_BATMAN_V
# scripts/config --enable CONFIG_BATMAN_ADV_BLA
# scripts/config --enable CONFIG_BATMAN_ADV_DAT
# scripts/config --enable CONFIG_BATMAN_ADV_NC
# scripts/config --enable CONFIG_BATMAN_ADV_MCAST
# scripts/config --disable CONFIG_BATMAN_ADV_DEBUG
# scripts/config --disable CONFIG_BATMAN_ADV_TRACING
# scripts/config --set-val CONFIG_OPENVSWITCH m
# scripts/config --set-val CONFIG_OPENVSWITCH_GRE m
# scripts/config --set-val CONFIG_OPENVSWITCH_VXLAN m
# scripts/config --set-val CONFIG_OPENVSWITCH_GENEVE m
# scripts/config --set-val CONFIG_VSOCKETS m
# scripts/config --set-val CONFIG_VSOCKETS_DIAG m
# scripts/config --set-val CONFIG_VSOCKETS_LOOPBACK m
# scripts/config --set-val CONFIG_VMWARE_VMCI_VSOCKETS m
# scripts/config --set-val CONFIG_VIRTIO_VSOCKETS m
# scripts/config --set-val CONFIG_VIRTIO_VSOCKETS_COMMON m
# scripts/config --set-val CONFIG_HYPERV_VSOCKETS m
# scripts/config --set-val CONFIG_NETLINK_DIAG m
# scripts/config --enable CONFIG_MPLS
# scripts/config --set-val CONFIG_NET_MPLS_GSO m
# scripts/config --set-val CONFIG_MPLS_ROUTING m
# scripts/config --set-val CONFIG_MPLS_IPTUNNEL m
# scripts/config --set-val CONFIG_NET_NSH m
# scripts/config --set-val CONFIG_HSR m
# scripts/config --enable CONFIG_NET_SWITCHDEV
# scripts/config --enable CONFIG_NET_L3_MASTER_DEV
# scripts/config --set-val CONFIG_QRTR m
# scripts/config --set-val CONFIG_QRTR_SMD m
# scripts/config --set-val CONFIG_QRTR_TUN m
# scripts/config --set-val CONFIG_QRTR_MHI m
# scripts/config --enable CONFIG_NET_NCSI
# scripts/config --enable CONFIG_NCSI_OEM_CMD_GET_MAC
# scripts/config --disable CONFIG_NCSI_OEM_CMD_KEEP_PHY
# scripts/config --enable CONFIG_PCPU_DEV_REFCNT
# scripts/config --set-val CONFIG_MAX_SKB_FRAGS 17
# scripts/config --enable CONFIG_RPS
# scripts/config --enable CONFIG_RFS_ACCEL
# scripts/config --enable CONFIG_SOCK_RX_QUEUE_MAPPING
# scripts/config --enable CONFIG_XPS
# scripts/config --enable CONFIG_CGROUP_NET_PRIO
# scripts/config --enable CONFIG_CGROUP_NET_CLASSID
# scripts/config --enable CONFIG_NET_RX_BUSY_POLL
# scripts/config --enable CONFIG_BQL
# scripts/config --enable CONFIG_BPF_STREAM_PARSER
# scripts/config --enable CONFIG_NET_FLOW_LIMIT
# scripts/config --set-val CONFIG_NET_PKTGEN m
# scripts/config --enable CONFIG_NET_DROP_MONITOR
# scripts/config --enable CONFIG_HAMRADIO
# scripts/config --set-val CONFIG_AX25 m
# scripts/config --enable CONFIG_AX25_DAMA_SLAVE
# scripts/config --set-val CONFIG_NETROM m
# scripts/config --set-val CONFIG_ROSE m
# scripts/config --set-val CONFIG_MKISS m
# scripts/config --set-val CONFIG_6PACK m
# scripts/config --set-val CONFIG_BPQETHER m
# scripts/config --set-val CONFIG_BAYCOM_SER_FDX m
# scripts/config --set-val CONFIG_BAYCOM_SER_HDX m
# scripts/config --set-val CONFIG_BAYCOM_PAR m
# scripts/config --set-val CONFIG_YAM m
# scripts/config --set-val CONFIG_CAN m
# scripts/config --set-val CONFIG_CAN_RAW m
# scripts/config --set-val CONFIG_CAN_BCM m
# scripts/config --set-val CONFIG_CAN_GW m
# scripts/config --set-val CONFIG_CAN_J1939 m
# scripts/config --set-val CONFIG_CAN_ISOTP m
scripts/config --disable CONFIG_BT
# scripts/config --set-val CONFIG_AF_RXRPC m
# scripts/config --enable CONFIG_AF_RXRPC_IPV6
# scripts/config --disable CONFIG_AF_RXRPC_INJECT_LOSS
# scripts/config --disable CONFIG_AF_RXRPC_INJECT_RX_DELAY
# scripts/config --disable CONFIG_AF_RXRPC_DEBUG
# scripts/config --enable CONFIG_RXKAD
# scripts/config --set-val CONFIG_RXPERF m
# scripts/config --set-val CONFIG_AF_KCM m
# scripts/config --enable CONFIG_STREAM_PARSER
# scripts/config --enable CONFIG_MCTP
# scripts/config --enable CONFIG_FIB_RULES
# scripts/config --enable CONFIG_WIRELESS
# scripts/config --enable CONFIG_WEXT_CORE
# scripts/config --enable CONFIG_WEXT_PROC
# scripts/config --set-val CONFIG_CFG80211 m
# scripts/config --disable CONFIG_NL80211_TESTMODE
# scripts/config --disable CONFIG_CFG80211_DEVELOPER_WARNINGS
# scripts/config --enable CONFIG_CFG80211_REQUIRE_SIGNED_REGDB
# scripts/config --enable CONFIG_CFG80211_USE_KERNEL_REGDB_KEYS
# scripts/config --enable CONFIG_CFG80211_DEFAULT_PS
# scripts/config --enable CONFIG_CFG80211_DEBUGFS
# scripts/config --enable CONFIG_CFG80211_CRDA_SUPPORT
# scripts/config --enable CONFIG_CFG80211_WEXT
# scripts/config --set-val CONFIG_MAC80211 m
# scripts/config --enable CONFIG_MAC80211_HAS_RC
# scripts/config --enable CONFIG_MAC80211_RC_MINSTREL
# scripts/config --enable CONFIG_MAC80211_RC_DEFAULT_MINSTREL
# scripts/config --set-val CONFIG_MAC80211_RC_DEFAULT "minstrel_ht"
# scripts/config --enable CONFIG_MAC80211_MESH
# scripts/config --enable CONFIG_MAC80211_LEDS
# scripts/config --enable CONFIG_MAC80211_DEBUGFS
# scripts/config --enable CONFIG_MAC80211_MESSAGE_TRACING
# scripts/config --disable CONFIG_MAC80211_DEBUG_MENU
# scripts/config --set-val CONFIG_MAC80211_STA_HASH_MAX_SIZE 0
scripts/config --disable CONFIG_RFKILL
scripts/config --disable CONFIG_RFKILL_LEDS
scripts/config --disable CONFIG_RFKILL_INPUT
scripts/config --disable CONFIG_RFKILL_GPIO
# scripts/config --set-val CONFIG_NET_9P m
# scripts/config --set-val CONFIG_NET_9P_FD m
# scripts/config --set-val CONFIG_NET_9P_VIRTIO m
# scripts/config --set-val CONFIG_NET_9P_XEN m
# scripts/config --enable CONFIG_NET_9P_USBG
# scripts/config --set-val CONFIG_NET_9P_RDMA m
# scripts/config --disable CONFIG_NET_9P_DEBUG
# scripts/config --set-val CONFIG_CAIF m
# scripts/config --disable CONFIG_CAIF_DEBUG
# scripts/config --set-val CONFIG_CAIF_NETDEV m
# scripts/config --set-val CONFIG_CAIF_USB m
# scripts/config --set-val CONFIG_CEPH_LIB m
# scripts/config --disable CONFIG_CEPH_LIB_PRETTYDEBUG
# scripts/config --enable CONFIG_CEPH_LIB_USE_DNS_RESOLVER
# scripts/config --set-val CONFIG_NFC m
# scripts/config --set-val CONFIG_NFC_DIGITAL m
# scripts/config --set-val CONFIG_NFC_NCI m
# scripts/config --set-val CONFIG_NFC_NCI_SPI m
# scripts/config --set-val CONFIG_NFC_NCI_UART m
# scripts/config --set-val CONFIG_NFC_HCI m
# scripts/config --enable CONFIG_NFC_SHDLC
# scripts/config --set-val CONFIG_NFC_TRF7970A m
# scripts/config --set-val CONFIG_NFC_MEI_PHY m
# scripts/config --set-val CONFIG_NFC_SIM m
# scripts/config --set-val CONFIG_NFC_PORT100 m
# scripts/config --set-val CONFIG_NFC_VIRTUAL_NCI m
# scripts/config --set-val CONFIG_NFC_FDP m
# scripts/config --set-val CONFIG_NFC_FDP_I2C m
# scripts/config --set-val CONFIG_NFC_PN544 m
# scripts/config --set-val CONFIG_NFC_PN544_I2C m
# scripts/config --set-val CONFIG_NFC_PN544_MEI m
# scripts/config --set-val CONFIG_NFC_PN533 m
# scripts/config --set-val CONFIG_NFC_PN533_USB m
# scripts/config --set-val CONFIG_NFC_PN533_I2C m
# scripts/config --set-val CONFIG_NFC_PN532_UART m
# scripts/config --set-val CONFIG_NFC_MICROREAD m
# scripts/config --set-val CONFIG_NFC_MICROREAD_I2C m
# scripts/config --set-val CONFIG_NFC_MICROREAD_MEI m
# scripts/config --set-val CONFIG_NFC_MRVL m
# scripts/config --set-val CONFIG_NFC_MRVL_USB m
# scripts/config --set-val CONFIG_NFC_MRVL_UART m
# scripts/config --set-val CONFIG_NFC_MRVL_I2C m
# scripts/config --set-val CONFIG_NFC_MRVL_SPI m
# scripts/config --set-val CONFIG_NFC_ST21NFCA m
# scripts/config --set-val CONFIG_NFC_ST21NFCA_I2C m
# scripts/config --set-val CONFIG_NFC_ST_NCI m
# scripts/config --set-val CONFIG_NFC_ST_NCI_I2C m
# scripts/config --set-val CONFIG_NFC_ST_NCI_SPI m
# scripts/config --set-val CONFIG_NFC_NXP_NCI m
# scripts/config --set-val CONFIG_NFC_NXP_NCI_I2C m
# scripts/config --set-val CONFIG_NFC_S3FWRN5 m
# scripts/config --set-val CONFIG_NFC_S3FWRN5_I2C m
# scripts/config --set-val CONFIG_NFC_S3FWRN82_UART m
# scripts/config --set-val CONFIG_NFC_ST95HF m
# scripts/config --set-val CONFIG_PSAMPLE m
# scripts/config --set-val CONFIG_NET_IFE m
# scripts/config --enable CONFIG_LWTUNNEL
# scripts/config --enable CONFIG_LWTUNNEL_BPF
# scripts/config --enable CONFIG_DST_CACHE
# scripts/config --enable CONFIG_GRO_CELLS
# scripts/config --enable CONFIG_SOCK_VALIDATE_XMIT
# scripts/config --enable CONFIG_NET_IEEE8021Q_HELPERS
# scripts/config --set-val CONFIG_NET_SELFTESTS m
# scripts/config --enable CONFIG_NET_SOCK_MSG
# scripts/config --enable CONFIG_NET_DEVLINK
# scripts/config --enable CONFIG_PAGE_POOL
# scripts/config --enable CONFIG_PAGE_POOL_STATS
# scripts/config --enable CONFIG_FAILOVER
# scripts/config --enable CONFIG_ETHTOOL_NETLINK
# scripts/config --enable CONFIG_HAVE_PCI
# scripts/config --enable CONFIG_GENERIC_PCI_IOMAP
# scripts/config --enable CONFIG_PCI
# scripts/config --enable CONFIG_PCI_DOMAINS
# scripts/config --enable CONFIG_PCIEPORTBUS
# scripts/config --enable CONFIG_HOTPLUG_PCI_PCIE
# scripts/config --enable CONFIG_PCIEAER
# scripts/config --disable CONFIG_PCIEAER_INJECT
# scripts/config --enable CONFIG_PCIEAER_CXL
# scripts/config --disable CONFIG_PCIE_ECRC
# scripts/config --enable CONFIG_PCIEASPM
# scripts/config --enable CONFIG_PCIEASPM_DEFAULT
# scripts/config --disable CONFIG_PCIEASPM_POWERSAVE
# scripts/config --disable CONFIG_PCIEASPM_POWER_SUPERSAVE
# scripts/config --disable CONFIG_PCIEASPM_PERFORMANCE
# scripts/config --enable CONFIG_PCIE_PME
# scripts/config --enable CONFIG_PCIE_DPC
# scripts/config --enable CONFIG_PCIE_PTM
# scripts/config --enable CONFIG_PCIE_EDR
# scripts/config --enable CONFIG_PCI_MSI
# scripts/config --enable CONFIG_PCI_QUIRKS
# scripts/config --disable CONFIG_PCI_DEBUG
# scripts/config --enable CONFIG_PCI_REALLOC_ENABLE_AUTO
# scripts/config --set-val CONFIG_PCI_STUB m
# scripts/config --set-val CONFIG_PCI_PF_STUB m
# scripts/config --set-val CONFIG_XEN_PCIDEV_FRONTEND m
# scripts/config --enable CONFIG_PCI_ATS
# scripts/config --enable CONFIG_PCI_DOE
# scripts/config --enable CONFIG_PCI_LOCKLESS_CONFIG
# scripts/config --enable CONFIG_PCI_IOV
# scripts/config --enable CONFIG_PCI_NPEM
# scripts/config --enable CONFIG_PCI_PRI
# scripts/config --enable CONFIG_PCI_PASID
# scripts/config --enable CONFIG_PCI_P2PDMA
# scripts/config --enable CONFIG_PCI_LABEL
# scripts/config --set-val CONFIG_PCI_HYPERV m
# scripts/config --enable CONFIG_VGA_ARB
# scripts/config --set-val CONFIG_VGA_ARB_MAX_GPUS 16
# scripts/config --enable CONFIG_HOTPLUG_PCI
# scripts/config --enable CONFIG_HOTPLUG_PCI_ACPI
# scripts/config --set-val CONFIG_HOTPLUG_PCI_ACPI_IBM m
# scripts/config --enable CONFIG_HOTPLUG_PCI_CPCI
# scripts/config --set-val CONFIG_HOTPLUG_PCI_CPCI_ZT5550 m
# scripts/config --set-val CONFIG_HOTPLUG_PCI_CPCI_GENERIC m
# scripts/config --enable CONFIG_HOTPLUG_PCI_SHPC
# scripts/config --set-val CONFIG_VMD m
# scripts/config --set-val CONFIG_PCI_HYPERV_INTERFACE m
# scripts/config --enable CONFIG_PCIE_DW
# scripts/config --enable CONFIG_PCIE_DW_HOST
# scripts/config --enable CONFIG_PCIE_DW_EP
# scripts/config --disable CONFIG_PCI_MESON
# scripts/config --enable CONFIG_PCIE_DW_PLAT
# scripts/config --enable CONFIG_PCIE_DW_PLAT_HOST
# scripts/config --enable CONFIG_PCIE_DW_PLAT_EP
# scripts/config --enable CONFIG_PCI_ENDPOINT
# scripts/config --enable CONFIG_PCI_ENDPOINT_CONFIGFS
# scripts/config --disable CONFIG_PCI_EPF_TEST
# scripts/config --set-val CONFIG_PCI_EPF_NTB m
# scripts/config --set-val CONFIG_PCI_EPF_VNTB m
# scripts/config --set-val CONFIG_PCI_EPF_MHI m
# scripts/config --set-val CONFIG_PCI_SW_SWITCHTEC m
# scripts/config --set-val CONFIG_CXL_BUS m
# scripts/config --set-val CONFIG_CXL_PCI m
# scripts/config --disable CONFIG_CXL_MEM_RAW_COMMANDS
# scripts/config --set-val CONFIG_CXL_ACPI m
# scripts/config --set-val CONFIG_CXL_PMEM m
# scripts/config --set-val CONFIG_CXL_MEM m
# scripts/config --set-val CONFIG_CXL_PORT m
# scripts/config --enable CONFIG_CXL_REGION
# scripts/config --disable CONFIG_CXL_REGION_INVALIDATION_TEST
# scripts/config --set-val CONFIG_PCCARD m
# scripts/config --set-val CONFIG_PCMCIA m
# scripts/config --enable CONFIG_PCMCIA_LOAD_CIS
# scripts/config --enable CONFIG_CARDBUS
# scripts/config --set-val CONFIG_YENTA m
# scripts/config --enable CONFIG_YENTA_O2
# scripts/config --enable CONFIG_YENTA_RICOH
# scripts/config --enable CONFIG_YENTA_TI
# scripts/config --enable CONFIG_YENTA_ENE_TUNE
# scripts/config --enable CONFIG_YENTA_TOSHIBA
# scripts/config --set-val CONFIG_PD6729 m
# scripts/config --set-val CONFIG_I82092 m
# scripts/config --enable CONFIG_PCCARD_NONSTATIC
# scripts/config --enable CONFIG_RAPIDIO
# scripts/config --set-val CONFIG_RAPIDIO_TSI721 m
# scripts/config --set-val CONFIG_RAPIDIO_DISC_TIMEOUT 30
# scripts/config --disable CONFIG_RAPIDIO_ENABLE_RX_TX_PORTS
# scripts/config --enable CONFIG_RAPIDIO_DMA_ENGINE
# scripts/config --disable CONFIG_RAPIDIO_DEBUG
# scripts/config --set-val CONFIG_RAPIDIO_ENUM_BASIC m
# scripts/config --set-val CONFIG_RAPIDIO_CHMAN m
# scripts/config --set-val CONFIG_RAPIDIO_MPORT_CDEV m
# scripts/config --set-val CONFIG_RAPIDIO_CPS_XX m
# scripts/config --set-val CONFIG_RAPIDIO_CPS_GEN2 m
# scripts/config --set-val CONFIG_RAPIDIO_RXS_GEN3 m
# scripts/config --enable CONFIG_AUXILIARY_BUS
# scripts/config --enable CONFIG_UEVENT_HELPER
# scripts/config --set-val CONFIG_UEVENT_HELPER_PATH ""
# scripts/config --enable CONFIG_DEVTMPFS
# scripts/config --enable CONFIG_DEVTMPFS_MOUNT
# scripts/config --enable CONFIG_DEVTMPFS_SAFE
# scripts/config --disable CONFIG_STANDALONE
# scripts/config --enable CONFIG_PREVENT_FIRMWARE_BUILD
# scripts/config --enable CONFIG_FW_LOADER
# scripts/config --enable CONFIG_FW_LOADER_DEBUG
# scripts/config --enable CONFIG_FW_LOADER_PAGED_BUF
# scripts/config --enable CONFIG_FW_LOADER_SYSFS
# scripts/config --set-val CONFIG_EXTRA_FIRMWARE ""
# scripts/config --enable CONFIG_FW_LOADER_USER_HELPER
# scripts/config --disable CONFIG_FW_LOADER_USER_HELPER_FALLBACK
# scripts/config --enable CONFIG_FW_LOADER_COMPRESS
# scripts/config --enable CONFIG_FW_LOADER_COMPRESS_XZ
# scripts/config --enable CONFIG_FW_LOADER_COMPRESS_ZSTD
# scripts/config --enable CONFIG_FW_CACHE
# scripts/config --enable CONFIG_FW_UPLOAD
# scripts/config --enable CONFIG_WANT_DEV_COREDUMP
# scripts/config --enable CONFIG_ALLOW_DEV_COREDUMP
# scripts/config --enable CONFIG_DEV_COREDUMP
# scripts/config --disable CONFIG_DEBUG_DRIVER
# scripts/config --disable CONFIG_DEBUG_DEVRES
# scripts/config --disable CONFIG_DEBUG_TEST_DRIVER_REMOVE
# scripts/config --enable CONFIG_HMEM_REPORTING
# scripts/config --disable CONFIG_TEST_ASYNC_DRIVER_PROBE
# scripts/config --enable CONFIG_SYS_HYPERVISOR
# scripts/config --enable CONFIG_GENERIC_CPU_DEVICES
# scripts/config --enable CONFIG_GENERIC_CPU_AUTOPROBE
# scripts/config --enable CONFIG_GENERIC_CPU_VULNERABILITIES
# scripts/config --enable CONFIG_SOC_BUS
# scripts/config --enable CONFIG_REGMAP
# scripts/config --enable CONFIG_REGMAP_I2C
# scripts/config --enable CONFIG_REGMAP_SPI
# scripts/config --enable CONFIG_REGMAP_MMIO
# scripts/config --enable CONFIG_REGMAP_IRQ
# scripts/config --enable CONFIG_DMA_SHARED_BUFFER
# scripts/config --disable CONFIG_DMA_FENCE_TRACE
# scripts/config --disable CONFIG_FW_DEVLINK_SYNC_STATE_TIMEOUT
# scripts/config --set-val CONFIG_MHI_BUS m
# scripts/config --disable CONFIG_MHI_BUS_DEBUG
# scripts/config --set-val CONFIG_MHI_BUS_PCI_GENERIC m
# scripts/config --set-val CONFIG_MHI_BUS_EP m
# scripts/config --enable CONFIG_CONNECTOR
# scripts/config --enable CONFIG_PROC_EVENTS
# scripts/config --enable CONFIG_EDD
# scripts/config --enable CONFIG_EDD_OFF
# scripts/config --enable CONFIG_FIRMWARE_MEMMAP
# scripts/config --enable CONFIG_DMIID
# scripts/config --set-val CONFIG_DMI_SYSFS m
# scripts/config --enable CONFIG_DMI_SCAN_MACHINE_NON_EFI_FALLBACK
# scripts/config --enable CONFIG_ISCSI_IBFT_FIND
# scripts/config --set-val CONFIG_ISCSI_IBFT m
# scripts/config --set-val CONFIG_FW_CFG_SYSFS m
# scripts/config --disable CONFIG_FW_CFG_SYSFS_CMDLINE
# scripts/config --enable CONFIG_SYSFB
# scripts/config --enable CONFIG_SYSFB_SIMPLEFB
# scripts/config --set-val CONFIG_FW_CS_DSP m
# scripts/config --disable CONFIG_GOOGLE_FIRMWARE
# scripts/config --enable CONFIG_EFI_ESRT
# scripts/config --set-val CONFIG_EFI_VARS_PSTORE m
# scripts/config --disable CONFIG_EFI_VARS_PSTORE_DEFAULT_DISABLE
# scripts/config --enable CONFIG_EFI_SOFT_RESERVE
# scripts/config --enable CONFIG_EFI_DXE_MEM_ATTRIBUTES
# scripts/config --enable CONFIG_EFI_RUNTIME_WRAPPERS
# scripts/config --set-val CONFIG_EFI_BOOTLOADER_CONTROL m
# scripts/config --set-val CONFIG_EFI_CAPSULE_LOADER m
# scripts/config --set-val CONFIG_EFI_TEST m
# scripts/config --enable CONFIG_EFI_DEV_PATH_PARSER
# scripts/config --enable CONFIG_APPLE_PROPERTIES
# scripts/config --enable CONFIG_RESET_ATTACK_MITIGATION
# scripts/config --enable CONFIG_EFI_RCI2_TABLE
# scripts/config --disable CONFIG_EFI_DISABLE_PCI_DMA
# scripts/config --enable CONFIG_EFI_EARLYCON
# scripts/config --enable CONFIG_EFI_CUSTOM_SSDT_OVERLAYS
# scripts/config --disable CONFIG_EFI_DISABLE_RUNTIME
# scripts/config --enable CONFIG_EFI_COCO_SECRET
# scripts/config --enable CONFIG_UEFI_CPER
# scripts/config --enable CONFIG_UEFI_CPER_X86
# scripts/config --set-val CONFIG_GNSS m
# scripts/config --set-val CONFIG_GNSS_SERIAL m
# scripts/config --set-val CONFIG_GNSS_MTK_SERIAL m
# scripts/config --set-val CONFIG_GNSS_SIRF_SERIAL m
# scripts/config --set-val CONFIG_GNSS_UBX_SERIAL m
# scripts/config --set-val CONFIG_GNSS_USB m
# scripts/config --set-val CONFIG_MTD m
# scripts/config --disable CONFIG_MTD_TESTS
# scripts/config --set-val CONFIG_MTD_CMDLINE_PARTS m
# scripts/config --set-val CONFIG_MTD_REDBOOT_PARTS m
# scripts/config --set-val CONFIG_MTD_REDBOOT_DIRECTORY_BLOCK -1
# scripts/config --disable CONFIG_MTD_REDBOOT_PARTS_UNALLOCATED
# scripts/config --disable CONFIG_MTD_REDBOOT_PARTS_READONLY
# scripts/config --set-val CONFIG_MTD_BLKDEVS m
# scripts/config --set-val CONFIG_MTD_BLOCK m
# scripts/config --set-val CONFIG_MTD_BLOCK_RO m
# scripts/config --set-val CONFIG_FTL m
# scripts/config --set-val CONFIG_NFTL m
# scripts/config --enable CONFIG_NFTL_RW
# scripts/config --set-val CONFIG_INFTL m
# scripts/config --set-val CONFIG_RFD_FTL m
# scripts/config --set-val CONFIG_SSFDC m
# scripts/config --set-val CONFIG_SM_FTL m
# scripts/config --set-val CONFIG_MTD_OOPS m
# scripts/config --set-val CONFIG_MTD_PSTORE m
# scripts/config --set-val CONFIG_MTD_SWAP m
# scripts/config --disable CONFIG_MTD_PARTITIONED_MASTER
# scripts/config --set-val CONFIG_MTD_CFI m
# scripts/config --set-val CONFIG_MTD_JEDECPROBE m
# scripts/config --set-val CONFIG_MTD_GEN_PROBE m
# scripts/config --disable CONFIG_MTD_CFI_ADV_OPTIONS
# scripts/config --enable CONFIG_MTD_MAP_BANK_WIDTH_1
# scripts/config --enable CONFIG_MTD_MAP_BANK_WIDTH_2
# scripts/config --enable CONFIG_MTD_MAP_BANK_WIDTH_4
# scripts/config --enable CONFIG_MTD_CFI_I1
# scripts/config --enable CONFIG_MTD_CFI_I2
# scripts/config --set-val CONFIG_MTD_CFI_INTELEXT m
# scripts/config --set-val CONFIG_MTD_CFI_AMDSTD m
# scripts/config --set-val CONFIG_MTD_CFI_STAA m
# scripts/config --set-val CONFIG_MTD_CFI_UTIL m
# scripts/config --set-val CONFIG_MTD_RAM m
# scripts/config --set-val CONFIG_MTD_ROM m
# scripts/config --set-val CONFIG_MTD_ABSENT m
# scripts/config --enable CONFIG_MTD_COMPLEX_MAPPINGS
# scripts/config --set-val CONFIG_MTD_PHYSMAP m
# scripts/config --disable CONFIG_MTD_PHYSMAP_COMPAT
# scripts/config --enable CONFIG_MTD_PHYSMAP_GPIO_ADDR
# scripts/config --set-val CONFIG_MTD_SBC_GXX m
# scripts/config --set-val CONFIG_MTD_AMD76XROM m
# scripts/config --set-val CONFIG_MTD_ICHXROM m
# scripts/config --set-val CONFIG_MTD_ESB2ROM m
# scripts/config --set-val CONFIG_MTD_CK804XROM m
# scripts/config --set-val CONFIG_MTD_SCB2_FLASH m
# scripts/config --set-val CONFIG_MTD_NETtel m
# scripts/config --set-val CONFIG_MTD_L440GX m
# scripts/config --set-val CONFIG_MTD_PCI m
# scripts/config --set-val CONFIG_MTD_PCMCIA m
# scripts/config --disable CONFIG_MTD_PCMCIA_ANONYMOUS
# scripts/config --set-val CONFIG_MTD_PLATRAM m
# scripts/config --set-val CONFIG_MTD_PMC551 m
# scripts/config --disable CONFIG_MTD_PMC551_BUGFIX
# scripts/config --disable CONFIG_MTD_PMC551_DEBUG
# scripts/config --set-val CONFIG_MTD_DATAFLASH m
# scripts/config --disable CONFIG_MTD_DATAFLASH_WRITE_VERIFY
# scripts/config --enable CONFIG_MTD_DATAFLASH_OTP
# scripts/config --set-val CONFIG_MTD_MCHP23K256 m
# scripts/config --set-val CONFIG_MTD_MCHP48L640 m
# scripts/config --set-val CONFIG_MTD_SST25L m
# scripts/config --set-val CONFIG_MTD_SLRAM m
# scripts/config --set-val CONFIG_MTD_PHRAM m
# scripts/config --set-val CONFIG_MTD_MTDRAM m
# scripts/config --set-val CONFIG_MTDRAM_TOTAL_SIZE 4096
# scripts/config --set-val CONFIG_MTDRAM_ERASE_SIZE 128
# scripts/config --set-val CONFIG_MTD_BLOCK2MTD m
# scripts/config --disable CONFIG_MTD_DOCG3
# scripts/config --set-val CONFIG_MTD_NAND_CORE m
# scripts/config --set-val CONFIG_MTD_ONENAND m
# scripts/config --enable CONFIG_MTD_ONENAND_VERIFY_WRITE
# scripts/config --set-val CONFIG_MTD_ONENAND_GENERIC m
# scripts/config --disable CONFIG_MTD_ONENAND_OTP
# scripts/config --enable CONFIG_MTD_ONENAND_2X_PROGRAM
# scripts/config --set-val CONFIG_MTD_RAW_NAND m
# scripts/config --set-val CONFIG_MTD_NAND_DENALI m
# scripts/config --set-val CONFIG_MTD_NAND_DENALI_PCI m
# scripts/config --set-val CONFIG_MTD_NAND_CAFE m
# scripts/config --set-val CONFIG_MTD_NAND_MXIC m
# scripts/config --set-val CONFIG_MTD_NAND_GPIO m
# scripts/config --set-val CONFIG_MTD_NAND_PLATFORM m
# scripts/config --set-val CONFIG_MTD_NAND_ARASAN m
# scripts/config --set-val CONFIG_MTD_SM_COMMON m
# scripts/config --set-val CONFIG_MTD_NAND_NANDSIM m
# scripts/config --set-val CONFIG_MTD_NAND_RICOH m
# scripts/config --set-val CONFIG_MTD_NAND_DISKONCHIP m
# scripts/config --disable CONFIG_MTD_NAND_DISKONCHIP_PROBE_ADVANCED
# scripts/config --set-val CONFIG_MTD_NAND_DISKONCHIP_PROBE_ADDRESS 0
# scripts/config --disable CONFIG_MTD_NAND_DISKONCHIP_BBTWRITE
# scripts/config --set-val CONFIG_MTD_SPI_NAND m
# scripts/config --enable CONFIG_MTD_NAND_ECC
# scripts/config --enable CONFIG_MTD_NAND_ECC_SW_HAMMING
# scripts/config --disable CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC
# scripts/config --enable CONFIG_MTD_NAND_ECC_SW_BCH
# scripts/config --enable CONFIG_MTD_NAND_ECC_MXIC
# scripts/config --set-val CONFIG_MTD_LPDDR m
# scripts/config --set-val CONFIG_MTD_QINFO_PROBE m
# scripts/config --set-val CONFIG_MTD_SPI_NOR m
# scripts/config --enable CONFIG_MTD_SPI_NOR_USE_4K_SECTORS
# scripts/config --disable CONFIG_MTD_SPI_NOR_SWP_DISABLE
# scripts/config --enable CONFIG_MTD_SPI_NOR_SWP_DISABLE_ON_VOLATILE
# scripts/config --disable CONFIG_MTD_SPI_NOR_SWP_KEEP
# scripts/config --set-val CONFIG_MTD_UBI m
# scripts/config --set-val CONFIG_MTD_UBI_WL_THRESHOLD 4096
# scripts/config --set-val CONFIG_MTD_UBI_BEB_LIMIT 20
# scripts/config --enable CONFIG_MTD_UBI_FASTMAP
# scripts/config --set-val CONFIG_MTD_UBI_GLUEBI m
# scripts/config --enable CONFIG_MTD_UBI_BLOCK
# scripts/config --set-val CONFIG_MTD_UBI_NVMEM m
# scripts/config --set-val CONFIG_MTD_HYPERBUS m
# scripts/config --disable CONFIG_OF
# scripts/config --enable CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT
# scripts/config --set-val CONFIG_PARPORT m
# scripts/config --set-val CONFIG_PARPORT_PC m
# scripts/config --set-val CONFIG_PARPORT_SERIAL m
# scripts/config --enable CONFIG_PARPORT_PC_FIFO
# scripts/config --disable CONFIG_PARPORT_PC_SUPERIO
# scripts/config --set-val CONFIG_PARPORT_PC_PCMCIA m
# scripts/config --enable CONFIG_PARPORT_1284
# scripts/config --enable CONFIG_PARPORT_NOT_PC
# scripts/config --enable CONFIG_PNP
# scripts/config --disable CONFIG_PNP_DEBUG_MESSAGES
# scripts/config --enable CONFIG_PNPACPI
# scripts/config --enable CONFIG_BLK_DEV
# scripts/config --set-val CONFIG_BLK_DEV_NULL_BLK m
# scripts/config --set-val CONFIG_BLK_DEV_FD m
# scripts/config --disable CONFIG_BLK_DEV_FD_RAWCMD
# scripts/config --enable CONFIG_CDROM
# scripts/config --set-val CONFIG_BLK_DEV_PCIESSD_MTIP32XX m
# scripts/config --set-val CONFIG_ZRAM m
# scripts/config --enable CONFIG_ZRAM_BACKEND_LZ4
# scripts/config --enable CONFIG_ZRAM_BACKEND_LZ4HC
# scripts/config --enable CONFIG_ZRAM_BACKEND_ZSTD
# scripts/config --disable CONFIG_ZRAM_BACKEND_DEFLATE
# scripts/config --disable CONFIG_ZRAM_BACKEND_842
# scripts/config --enable CONFIG_ZRAM_BACKEND_LZO
# scripts/config --enable CONFIG_ZRAM_DEF_COMP_LZORLE
# scripts/config --disable CONFIG_ZRAM_DEF_COMP_LZO
# scripts/config --disable CONFIG_ZRAM_DEF_COMP_LZ4
# scripts/config --disable CONFIG_ZRAM_DEF_COMP_LZ4HC
# scripts/config --disable CONFIG_ZRAM_DEF_COMP_ZSTD
# scripts/config --set-val CONFIG_ZRAM_DEF_COMP "lzo-rle"
# scripts/config --enable CONFIG_ZRAM_WRITEBACK
# scripts/config --enable CONFIG_ZRAM_TRACK_ENTRY_ACTIME
# scripts/config --enable CONFIG_ZRAM_MEMORY_TRACKING
# scripts/config --enable CONFIG_ZRAM_MULTI_COMP
# scripts/config --enable CONFIG_BLK_DEV_LOOP
# scripts/config --set-val CONFIG_BLK_DEV_LOOP_MIN_COUNT 8
# scripts/config --set-val CONFIG_BLK_DEV_DRBD m
# scripts/config --disable CONFIG_DRBD_FAULT_INJECTION
# scripts/config --set-val CONFIG_BLK_DEV_NBD m
# scripts/config --set-val CONFIG_BLK_DEV_RAM m
# scripts/config --set-val CONFIG_BLK_DEV_RAM_COUNT 16
# scripts/config --set-val CONFIG_BLK_DEV_RAM_SIZE 65536
# scripts/config --disable CONFIG_CDROM_PKTCDVD
# scripts/config --set-val CONFIG_ATA_OVER_ETH m
# scripts/config --enable CONFIG_XEN_BLKDEV_FRONTEND
# scripts/config --set-val CONFIG_XEN_BLKDEV_BACKEND m
scripts/config --enable CONFIG_VIRTIO_BLK
# scripts/config --set-val CONFIG_BLK_DEV_RBD m
# scripts/config --set-val CONFIG_BLK_DEV_UBLK m
# scripts/config --disable CONFIG_BLKDEV_UBLK_LEGACY_OPCODES
# scripts/config --enable CONFIG_BLK_DEV_RNBD
# scripts/config --set-val CONFIG_BLK_DEV_RNBD_CLIENT m
# scripts/config --set-val CONFIG_BLK_DEV_RNBD_SERVER m
# scripts/config --set-val CONFIG_NVME_KEYRING m
# scripts/config --set-val CONFIG_NVME_AUTH m
# scripts/config --set-val CONFIG_NVME_CORE m
scripts/config --enable CONFIG_BLK_DEV_NVME
# scripts/config --enable CONFIG_NVME_MULTIPATH
# scripts/config --disable CONFIG_NVME_VERBOSE_ERRORS
# scripts/config --enable CONFIG_NVME_HWMON
# scripts/config --set-val CONFIG_NVME_FABRICS m
# scripts/config --set-val CONFIG_NVME_RDMA m
# scripts/config --set-val CONFIG_NVME_FC m
# scripts/config --set-val CONFIG_NVME_TCP m
# scripts/config --enable CONFIG_NVME_TCP_TLS
# scripts/config --enable CONFIG_NVME_HOST_AUTH
# scripts/config --set-val CONFIG_NVME_TARGET m
# scripts/config --disable CONFIG_NVME_TARGET_DEBUGFS
# scripts/config --enable CONFIG_NVME_TARGET_PASSTHRU
# scripts/config --set-val CONFIG_NVME_TARGET_LOOP m
# scripts/config --set-val CONFIG_NVME_TARGET_RDMA m
# scripts/config --set-val CONFIG_NVME_TARGET_FC m
# scripts/config --disable CONFIG_NVME_TARGET_FCLOOP
# scripts/config --set-val CONFIG_NVME_TARGET_TCP m
# scripts/config --enable CONFIG_NVME_TARGET_TCP_TLS
# scripts/config --enable CONFIG_NVME_TARGET_AUTH
# scripts/config --set-val CONFIG_SENSORS_LIS3LV02D m
# scripts/config --set-val CONFIG_AD525X_DPOT m
# scripts/config --set-val CONFIG_AD525X_DPOT_I2C m
# scripts/config --set-val CONFIG_AD525X_DPOT_SPI m
# scripts/config --set-val CONFIG_DUMMY_IRQ m
# scripts/config --set-val CONFIG_IBM_ASM m
# scripts/config --set-val CONFIG_PHANTOM m
# scripts/config --set-val CONFIG_RPMB m
# scripts/config --set-val CONFIG_TIFM_CORE m
# scripts/config --set-val CONFIG_TIFM_7XX1 m
# scripts/config --set-val CONFIG_ICS932S401 m
# scripts/config --set-val CONFIG_ENCLOSURE_SERVICES m
# scripts/config --set-val CONFIG_HP_ILO m
# scripts/config --set-val CONFIG_APDS9802ALS m
# scripts/config --set-val CONFIG_ISL29003 m
# scripts/config --set-val CONFIG_ISL29020 m
# scripts/config --set-val CONFIG_SENSORS_TSL2550 m
# scripts/config --set-val CONFIG_SENSORS_BH1770 m
# scripts/config --set-val CONFIG_SENSORS_APDS990X m
# scripts/config --set-val CONFIG_HMC6352 m
# scripts/config --set-val CONFIG_DS1682 m
# scripts/config --set-val CONFIG_VMWARE_BALLOON m
# scripts/config --set-val CONFIG_LATTICE_ECP3_CONFIG m
# scripts/config --enable CONFIG_SRAM
# scripts/config --set-val CONFIG_DW_XDATA_PCIE m
# scripts/config --disable CONFIG_PCI_ENDPOINT_TEST
# scripts/config --set-val CONFIG_XILINX_SDFEC m
# scripts/config --set-val CONFIG_MISC_RTSX m
# scripts/config --set-val CONFIG_NTSYNC m
# scripts/config --set-val CONFIG_NSM m
# scripts/config --set-val CONFIG_C2PORT m
# scripts/config --set-val CONFIG_C2PORT_DURAMAR_2150 m
# scripts/config --set-val CONFIG_EEPROM_AT24 m
# scripts/config --set-val CONFIG_EEPROM_AT25 m
# scripts/config --set-val CONFIG_EEPROM_MAX6875 m
# scripts/config --set-val CONFIG_EEPROM_93CX6 m
# scripts/config --set-val CONFIG_EEPROM_93XX46 m
# scripts/config --set-val CONFIG_EEPROM_IDT_89HPESX m
# scripts/config --set-val CONFIG_EEPROM_EE1004 m
# scripts/config --set-val CONFIG_CB710_CORE m
# scripts/config --disable CONFIG_CB710_DEBUG
# scripts/config --enable CONFIG_CB710_DEBUG_ASSUMPTIONS
# scripts/config --set-val CONFIG_TI_ST m
# scripts/config --set-val CONFIG_SENSORS_LIS3_I2C m
# scripts/config --set-val CONFIG_ALTERA_STAPL m
# scripts/config --set-val CONFIG_INTEL_MEI m
# scripts/config --set-val CONFIG_INTEL_MEI_ME m
# scripts/config --set-val CONFIG_INTEL_MEI_TXE m
# scripts/config --set-val CONFIG_INTEL_MEI_VSC_HW m
# scripts/config --set-val CONFIG_INTEL_MEI_VSC m
# scripts/config --set-val CONFIG_VMWARE_VMCI m
# scripts/config --set-val CONFIG_GENWQE m
# scripts/config --set-val CONFIG_GENWQE_PLATFORM_ERROR_RECOVERY 0
# scripts/config --set-val CONFIG_ECHO m
# scripts/config --set-val CONFIG_BCM_VK m
# scripts/config --enable CONFIG_BCM_VK_TTY
# scripts/config --set-val CONFIG_MISC_ALCOR_PCI m
# scripts/config --set-val CONFIG_MISC_RTSX_PCI m
# scripts/config --set-val CONFIG_MISC_RTSX_USB m
# scripts/config --set-val CONFIG_UACCE m
# scripts/config --enable CONFIG_PVPANIC
# scripts/config --set-val CONFIG_PVPANIC_MMIO m
# scripts/config --set-val CONFIG_PVPANIC_PCI m
# scripts/config --set-val CONFIG_GP_PCI1XXXX m
# scripts/config --set-val CONFIG_KEBA_CP500 m
# scripts/config --enable CONFIG_SCSI_MOD
# scripts/config --set-val CONFIG_RAID_ATTRS m
# scripts/config --enable CONFIG_SCSI_COMMON
# scripts/config --enable CONFIG_SCSI
# scripts/config --enable CONFIG_SCSI_DMA
# scripts/config --enable CONFIG_SCSI_NETLINK
# scripts/config --enable CONFIG_SCSI_PROC_FS
# scripts/config --enable CONFIG_BLK_DEV_SD
# scripts/config --set-val CONFIG_CHR_DEV_ST m
# scripts/config --enable CONFIG_BLK_DEV_SR
# scripts/config --enable CONFIG_CHR_DEV_SG
# scripts/config --enable CONFIG_BLK_DEV_BSG
# scripts/config --set-val CONFIG_CHR_DEV_SCH m
# scripts/config --set-val CONFIG_SCSI_ENCLOSURE m
# scripts/config --enable CONFIG_SCSI_CONSTANTS
# scripts/config --enable CONFIG_SCSI_LOGGING
# scripts/config --enable CONFIG_SCSI_SCAN_ASYNC
# scripts/config --set-val CONFIG_SCSI_SPI_ATTRS m
# scripts/config --set-val CONFIG_SCSI_FC_ATTRS m
# scripts/config --set-val CONFIG_SCSI_ISCSI_ATTRS m
# scripts/config --set-val CONFIG_SCSI_SAS_ATTRS m
# scripts/config --set-val CONFIG_SCSI_SAS_LIBSAS m
# scripts/config --enable CONFIG_SCSI_SAS_ATA
# scripts/config --enable CONFIG_SCSI_SAS_HOST_SMP
# scripts/config --set-val CONFIG_SCSI_SRP_ATTRS m
# scripts/config --enable CONFIG_SCSI_LOWLEVEL
# scripts/config --set-val CONFIG_ISCSI_TCP m
# scripts/config --set-val CONFIG_ISCSI_BOOT_SYSFS m
# scripts/config --set-val CONFIG_SCSI_CXGB3_ISCSI m
# scripts/config --set-val CONFIG_SCSI_CXGB4_ISCSI m
# scripts/config --set-val CONFIG_SCSI_BNX2_ISCSI m
# scripts/config --set-val CONFIG_SCSI_BNX2X_FCOE m
# scripts/config --set-val CONFIG_BE2ISCSI m
# scripts/config --set-val CONFIG_BLK_DEV_3W_XXXX_RAID m
# scripts/config --set-val CONFIG_SCSI_HPSA m
# scripts/config --set-val CONFIG_SCSI_3W_9XXX m
# scripts/config --set-val CONFIG_SCSI_3W_SAS m
# scripts/config --set-val CONFIG_SCSI_ACARD m
# scripts/config --set-val CONFIG_SCSI_AACRAID m
# scripts/config --set-val CONFIG_SCSI_AIC7XXX m
# scripts/config --set-val CONFIG_AIC7XXX_CMDS_PER_DEVICE 8
# scripts/config --set-val CONFIG_AIC7XXX_RESET_DELAY_MS 5000
# scripts/config --disable CONFIG_AIC7XXX_DEBUG_ENABLE
# scripts/config --set-val CONFIG_AIC7XXX_DEBUG_MASK 0
# scripts/config --enable CONFIG_AIC7XXX_REG_PRETTY_PRINT
# scripts/config --set-val CONFIG_SCSI_AIC79XX m
# scripts/config --set-val CONFIG_AIC79XX_CMDS_PER_DEVICE 32
# scripts/config --set-val CONFIG_AIC79XX_RESET_DELAY_MS 5000
# scripts/config --disable CONFIG_AIC79XX_DEBUG_ENABLE
# scripts/config --set-val CONFIG_AIC79XX_DEBUG_MASK 0
# scripts/config --enable CONFIG_AIC79XX_REG_PRETTY_PRINT
# scripts/config --set-val CONFIG_SCSI_AIC94XX m
# scripts/config --disable CONFIG_AIC94XX_DEBUG
# scripts/config --set-val CONFIG_SCSI_MVSAS m
# scripts/config --disable CONFIG_SCSI_MVSAS_DEBUG
# scripts/config --disable CONFIG_SCSI_MVSAS_TASKLET
# scripts/config --set-val CONFIG_SCSI_MVUMI m
# scripts/config --set-val CONFIG_SCSI_ADVANSYS m
# scripts/config --set-val CONFIG_SCSI_ARCMSR m
# scripts/config --set-val CONFIG_SCSI_ESAS2R m
# scripts/config --enable CONFIG_MEGARAID_NEWGEN
# scripts/config --set-val CONFIG_MEGARAID_MM m
# scripts/config --set-val CONFIG_MEGARAID_MAILBOX m
# scripts/config --set-val CONFIG_MEGARAID_LEGACY m
# scripts/config --set-val CONFIG_MEGARAID_SAS m
# scripts/config --set-val CONFIG_SCSI_MPT3SAS m
# scripts/config --set-val CONFIG_SCSI_MPT2SAS_MAX_SGE 128
# scripts/config --set-val CONFIG_SCSI_MPT3SAS_MAX_SGE 128
# scripts/config --set-val CONFIG_SCSI_MPT2SAS m
# scripts/config --set-val CONFIG_SCSI_MPI3MR m
# scripts/config --set-val CONFIG_SCSI_SMARTPQI m
# scripts/config --set-val CONFIG_SCSI_HPTIOP m
# scripts/config --set-val CONFIG_SCSI_BUSLOGIC m
# scripts/config --enable CONFIG_SCSI_FLASHPOINT
# scripts/config --set-val CONFIG_SCSI_MYRB m
# scripts/config --set-val CONFIG_SCSI_MYRS m
# scripts/config --set-val CONFIG_VMWARE_PVSCSI m
# scripts/config --set-val CONFIG_XEN_SCSI_FRONTEND m
# scripts/config --set-val CONFIG_HYPERV_STORAGE m
# scripts/config --set-val CONFIG_LIBFC m
# scripts/config --set-val CONFIG_LIBFCOE m
# scripts/config --set-val CONFIG_FCOE m
# scripts/config --set-val CONFIG_FCOE_FNIC m
# scripts/config --set-val CONFIG_SCSI_SNIC m
# scripts/config --disable CONFIG_SCSI_SNIC_DEBUG_FS
# scripts/config --set-val CONFIG_SCSI_DMX3191D m
# scripts/config --set-val CONFIG_SCSI_FDOMAIN m
# scripts/config --set-val CONFIG_SCSI_FDOMAIN_PCI m
# scripts/config --set-val CONFIG_SCSI_ISCI m
# scripts/config --set-val CONFIG_SCSI_IPS m
# scripts/config --set-val CONFIG_SCSI_INITIO m
# scripts/config --set-val CONFIG_SCSI_INIA100 m
# scripts/config --set-val CONFIG_SCSI_PPA m
# scripts/config --set-val CONFIG_SCSI_IMM m
# scripts/config --disable CONFIG_SCSI_IZIP_SLOW_CTR
# scripts/config --set-val CONFIG_SCSI_STEX m
# scripts/config --set-val CONFIG_SCSI_SYM53C8XX_2 m
# scripts/config --set-val CONFIG_SCSI_SYM53C8XX_DMA_ADDRESSING_MODE 1
# scripts/config --set-val CONFIG_SCSI_SYM53C8XX_DEFAULT_TAGS 16
# scripts/config --set-val CONFIG_SCSI_SYM53C8XX_MAX_TAGS 64
# scripts/config --enable CONFIG_SCSI_SYM53C8XX_MMIO
# scripts/config --set-val CONFIG_SCSI_IPR m
# scripts/config --enable CONFIG_SCSI_IPR_TRACE
# scripts/config --enable CONFIG_SCSI_IPR_DUMP
# scripts/config --set-val CONFIG_SCSI_QLOGIC_1280 m
# scripts/config --set-val CONFIG_SCSI_QLA_FC m
# scripts/config --set-val CONFIG_TCM_QLA2XXX m
# scripts/config --disable CONFIG_TCM_QLA2XXX_DEBUG
# scripts/config --set-val CONFIG_SCSI_QLA_ISCSI m
# scripts/config --set-val CONFIG_QEDI m
# scripts/config --set-val CONFIG_QEDF m
# scripts/config --set-val CONFIG_SCSI_EFCT m
# scripts/config --set-val CONFIG_SCSI_DC395x m
# scripts/config --set-val CONFIG_SCSI_AM53C974 m
# scripts/config --set-val CONFIG_SCSI_WD719X m
# scripts/config --set-val CONFIG_SCSI_DEBUG m
# scripts/config --set-val CONFIG_SCSI_PMCRAID m
# scripts/config --set-val CONFIG_SCSI_PM8001 m
# scripts/config --set-val CONFIG_SCSI_BFA_FC m
scripts/config --enable CONFIG_SCSI_VIRTIO
# scripts/config --set-val CONFIG_SCSI_CHELSIO_FCOE m
# scripts/config --enable CONFIG_SCSI_LOWLEVEL_PCMCIA
# scripts/config --set-val CONFIG_PCMCIA_AHA152X m
# scripts/config --set-val CONFIG_PCMCIA_FDOMAIN m
# scripts/config --set-val CONFIG_PCMCIA_QLOGIC m
# scripts/config --set-val CONFIG_PCMCIA_SYM53C500 m
# scripts/config --enable CONFIG_SCSI_DH
# scripts/config --set-val CONFIG_SCSI_DH_RDAC m
# scripts/config --set-val CONFIG_SCSI_DH_HP_SW m
# scripts/config --set-val CONFIG_SCSI_DH_EMC m
# scripts/config --set-val CONFIG_SCSI_DH_ALUA m
# scripts/config --enable CONFIG_ATA
# scripts/config --enable CONFIG_SATA_HOST
# scripts/config --enable CONFIG_PATA_TIMINGS
# scripts/config --enable CONFIG_ATA_VERBOSE_ERROR
# scripts/config --enable CONFIG_ATA_FORCE
# scripts/config --enable CONFIG_ATA_ACPI
# scripts/config --enable CONFIG_SATA_ZPODD
# scripts/config --enable CONFIG_SATA_PMP
# scripts/config --set-val CONFIG_SATA_AHCI m
# scripts/config --set-val CONFIG_SATA_MOBILE_LPM_POLICY 3
scripts/config --disable CONFIG_SATA_AHCI_PLATFORM
scripts/config --disable CONFIG_AHCI_DWC
scripts/config --disable CONFIG_SATA_INIC162X
scripts/config --disable CONFIG_SATA_ACARD_AHCI
scripts/config --disable CONFIG_SATA_SIL24
# scripts/config --enable CONFIG_ATA_SFF
# scripts/config --set-val CONFIG_PDC_ADMA m
scripts/config --disable CONFIG_SATA_QSTOR
scripts/config --disable CONFIG_SATA_SX4
# scripts/config --enable CONFIG_ATA_BMDMA
# scripts/config --enable CONFIG_ATA_PIIX
scripts/config --disable CONFIG_SATA_DWC
scripts/config --disable CONFIG_SATA_MV
scripts/config --disable CONFIG_SATA_NV
scripts/config --disable CONFIG_SATA_PROMISE
scripts/config --disable CONFIG_SATA_SIL
scripts/config --disable CONFIG_SATA_SIS
scripts/config --disable CONFIG_SATA_SVW
scripts/config --disable CONFIG_SATA_ULI
scripts/config --disable CONFIG_SATA_VIA
scripts/config --disable CONFIG_SATA_VITESSE
scripts/config --disable CONFIG_PATA_ALI
scripts/config --disable CONFIG_PATA_AMD
scripts/config --disable CONFIG_PATA_ARTOP
scripts/config --disable CONFIG_PATA_ATIIXP
scripts/config --disable CONFIG_PATA_ATP867X
scripts/config --disable CONFIG_PATA_CMD64X
scripts/config --disable CONFIG_PATA_CYPRESS
scripts/config --disable CONFIG_PATA_EFAR
scripts/config --disable CONFIG_PATA_HPT366
scripts/config --disable CONFIG_PATA_HPT37X
scripts/config --disable CONFIG_PATA_HPT3X2N
scripts/config --disable CONFIG_PATA_HPT3X3
scripts/config --disable CONFIG_PATA_IT8213
scripts/config --disable CONFIG_PATA_IT821X
scripts/config --disable CONFIG_PATA_JMICRON
scripts/config --disable CONFIG_PATA_MARVELL
scripts/config --disable CONFIG_PATA_NETCELL
scripts/config --disable CONFIG_PATA_NINJA32
scripts/config --disable CONFIG_PATA_NS87415
scripts/config --disable CONFIG_PATA_OLDPIIX
scripts/config --disable CONFIG_PATA_OPTIDMA
scripts/config --disable CONFIG_PATA_PDC2027X
scripts/config --disable CONFIG_PATA_PDC_OLD
scripts/config --disable CONFIG_PATA_RADISYS
scripts/config --disable CONFIG_PATA_RDC
scripts/config --disable CONFIG_PATA_SCH
scripts/config --disable CONFIG_PATA_SERVERWORKS
scripts/config --disable CONFIG_PATA_SIL680
# scripts/config --enable CONFIG_PATA_SIS
scripts/config --disable CONFIG_PATA_TOSHIBA
scripts/config --disable CONFIG_PATA_TRIFLEX
scripts/config --disable CONFIG_PATA_VIA
scripts/config --disable CONFIG_PATA_WINBOND
# scripts/config --set-val CONFIG_PATA_CMD640_PCI m
# scripts/config --set-val CONFIG_PATA_MPIIX m
# scripts/config --set-val CONFIG_PATA_NS87410 m
# scripts/config --set-val CONFIG_PATA_OPTI m
# scripts/config --set-val CONFIG_PATA_PCMCIA m
# scripts/config --set-val CONFIG_PATA_RZ1000 m
# scripts/config --set-val CONFIG_PATA_PARPORT m
# scripts/config --set-val CONFIG_PATA_PARPORT_ATEN m
# scripts/config --set-val CONFIG_PATA_PARPORT_BPCK m
# scripts/config --set-val CONFIG_PATA_PARPORT_BPCK6 m
# scripts/config --set-val CONFIG_PATA_PARPORT_COMM m
# scripts/config --set-val CONFIG_PATA_PARPORT_DSTR m
# scripts/config --set-val CONFIG_PATA_PARPORT_FIT2 m
# scripts/config --set-val CONFIG_PATA_PARPORT_FIT3 m
# scripts/config --set-val CONFIG_PATA_PARPORT_EPAT m
# scripts/config --enable CONFIG_PATA_PARPORT_EPATC8
# scripts/config --set-val CONFIG_PATA_PARPORT_EPIA m
# scripts/config --set-val CONFIG_PATA_PARPORT_FRIQ m
# scripts/config --set-val CONFIG_PATA_PARPORT_FRPW m
# scripts/config --set-val CONFIG_PATA_PARPORT_KBIC m
# scripts/config --set-val CONFIG_PATA_PARPORT_KTTI m
# scripts/config --set-val CONFIG_PATA_PARPORT_ON20 m
# scripts/config --set-val CONFIG_PATA_PARPORT_ON26 m
# scripts/config --set-val CONFIG_PATA_ACPI m
# scripts/config --enable CONFIG_ATA_GENERIC
# scripts/config --set-val CONFIG_PATA_LEGACY m
# scripts/config --enable CONFIG_MD
# scripts/config --enable CONFIG_BLK_DEV_MD
# scripts/config --enable CONFIG_MD_AUTODETECT
# scripts/config --enable CONFIG_MD_BITMAP_FILE
# scripts/config --set-val CONFIG_MD_LINEAR m
# scripts/config --set-val CONFIG_MD_RAID0 m
# scripts/config --set-val CONFIG_MD_RAID1 m
# scripts/config --set-val CONFIG_MD_RAID10 m
# scripts/config --set-val CONFIG_MD_RAID456 m
# scripts/config --set-val CONFIG_MD_CLUSTER m
# scripts/config --set-val CONFIG_BCACHE m
# scripts/config --disable CONFIG_BCACHE_DEBUG
# scripts/config --enable CONFIG_BCACHE_ASYNC_REGISTRATION
# scripts/config --enable CONFIG_BLK_DEV_DM_BUILTIN
# scripts/config --enable CONFIG_BLK_DEV_DM
# scripts/config --disable CONFIG_DM_DEBUG
# scripts/config --set-val CONFIG_DM_BUFIO m
# scripts/config --disable CONFIG_DM_DEBUG_BLOCK_MANAGER_LOCKING
# scripts/config --set-val CONFIG_DM_BIO_PRISON m
# scripts/config --set-val CONFIG_DM_PERSISTENT_DATA m
# scripts/config --set-val CONFIG_DM_UNSTRIPED m
# scripts/config --set-val CONFIG_DM_CRYPT m
# scripts/config --set-val CONFIG_DM_SNAPSHOT m
# scripts/config --set-val CONFIG_DM_THIN_PROVISIONING m
# scripts/config --set-val CONFIG_DM_CACHE m
# scripts/config --set-val CONFIG_DM_CACHE_SMQ m
# scripts/config --set-val CONFIG_DM_WRITECACHE m
# scripts/config --set-val CONFIG_DM_EBS m
# scripts/config --set-val CONFIG_DM_ERA m
# scripts/config --set-val CONFIG_DM_CLONE m
# scripts/config --set-val CONFIG_DM_MIRROR m
# scripts/config --set-val CONFIG_DM_LOG_USERSPACE m
# scripts/config --set-val CONFIG_DM_RAID m
# scripts/config --set-val CONFIG_DM_ZERO m
# scripts/config --set-val CONFIG_DM_MULTIPATH m
# scripts/config --set-val CONFIG_DM_MULTIPATH_QL m
# scripts/config --set-val CONFIG_DM_MULTIPATH_ST m
# scripts/config --set-val CONFIG_DM_MULTIPATH_HST m
# scripts/config --set-val CONFIG_DM_MULTIPATH_IOA m
# scripts/config --set-val CONFIG_DM_DELAY m
# scripts/config --disable CONFIG_DM_DUST
# scripts/config --enable CONFIG_DM_INIT
# scripts/config --enable CONFIG_DM_UEVENT
# scripts/config --set-val CONFIG_DM_FLAKEY m
# scripts/config --set-val CONFIG_DM_VERITY m
# scripts/config --enable CONFIG_DM_VERITY_VERIFY_ROOTHASH_SIG
# scripts/config --enable CONFIG_DM_VERITY_VERIFY_ROOTHASH_SIG_SECONDARY_KEYRING
# scripts/config --enable CONFIG_DM_VERITY_VERIFY_ROOTHASH_SIG_PLATFORM_KEYRING
# scripts/config --disable CONFIG_DM_VERITY_FEC
# scripts/config --set-val CONFIG_DM_SWITCH m
# scripts/config --set-val CONFIG_DM_LOG_WRITES m
# scripts/config --set-val CONFIG_DM_INTEGRITY m
# scripts/config --set-val CONFIG_DM_ZONED m
# scripts/config --enable CONFIG_DM_AUDIT
# scripts/config --set-val CONFIG_DM_VDO m
# scripts/config --set-val CONFIG_TARGET_CORE m
# scripts/config --set-val CONFIG_TCM_IBLOCK m
# scripts/config --set-val CONFIG_TCM_FILEIO m
# scripts/config --set-val CONFIG_TCM_PSCSI m
# scripts/config --set-val CONFIG_TCM_USER2 m
# scripts/config --set-val CONFIG_LOOPBACK_TARGET m
# scripts/config --set-val CONFIG_TCM_FC m
# scripts/config --set-val CONFIG_ISCSI_TARGET m
# scripts/config --set-val CONFIG_ISCSI_TARGET_CXGB4 m
# scripts/config --set-val CONFIG_SBP_TARGET m
# scripts/config --set-val CONFIG_REMOTE_TARGET m
# scripts/config --enable CONFIG_FUSION
# scripts/config --set-val CONFIG_FUSION_SPI m
# scripts/config --set-val CONFIG_FUSION_FC m
# scripts/config --set-val CONFIG_FUSION_SAS m
# scripts/config --set-val CONFIG_FUSION_MAX_SGE 128
# scripts/config --set-val CONFIG_FUSION_CTL m
# scripts/config --set-val CONFIG_FUSION_LAN m
# scripts/config --enable CONFIG_FUSION_LOGGING
# scripts/config --set-val CONFIG_FIREWIRE m
# scripts/config --set-val CONFIG_FIREWIRE_OHCI m
# scripts/config --set-val CONFIG_FIREWIRE_SBP2 m
# scripts/config --set-val CONFIG_FIREWIRE_NET m
# scripts/config --set-val CONFIG_FIREWIRE_NOSY m
# scripts/config --enable CONFIG_MACINTOSH_DRIVERS
# scripts/config --set-val CONFIG_MAC_EMUMOUSEBTN m
# scripts/config --enable CONFIG_NETDEVICES
# scripts/config --set-val CONFIG_MII m
# scripts/config --enable CONFIG_NET_CORE
# scripts/config --set-val CONFIG_BONDING m
# scripts/config --set-val CONFIG_DUMMY m
# scripts/config --set-val CONFIG_WIREGUARD m
# scripts/config --disable CONFIG_WIREGUARD_DEBUG
# scripts/config --set-val CONFIG_EQUALIZER m
# scripts/config --enable CONFIG_NET_FC
# scripts/config --set-val CONFIG_IFB m
# scripts/config --set-val CONFIG_NET_TEAM m
# scripts/config --set-val CONFIG_NET_TEAM_MODE_BROADCAST m
# scripts/config --set-val CONFIG_NET_TEAM_MODE_ROUNDROBIN m
# scripts/config --set-val CONFIG_NET_TEAM_MODE_RANDOM m
# scripts/config --set-val CONFIG_NET_TEAM_MODE_ACTIVEBACKUP m
# scripts/config --set-val CONFIG_NET_TEAM_MODE_LOADBALANCE m
# scripts/config --set-val CONFIG_MACVLAN m
# scripts/config --set-val CONFIG_MACVTAP m
# scripts/config --enable CONFIG_IPVLAN_L3S
# scripts/config --set-val CONFIG_IPVLAN m
# scripts/config --set-val CONFIG_IPVTAP m
# scripts/config --set-val CONFIG_VXLAN m
# scripts/config --set-val CONFIG_GENEVE m
# scripts/config --set-val CONFIG_BAREUDP m
# scripts/config --set-val CONFIG_GTP m
# scripts/config --set-val CONFIG_PFCP m
# scripts/config --set-val CONFIG_AMT m
# scripts/config --set-val CONFIG_MACSEC m
# scripts/config --set-val CONFIG_NETCONSOLE m
# scripts/config --enable CONFIG_NETCONSOLE_DYNAMIC
# scripts/config --disable CONFIG_NETCONSOLE_EXTENDED_LOG
# scripts/config --enable CONFIG_NETPOLL
# scripts/config --enable CONFIG_NET_POLL_CONTROLLER
# scripts/config --set-val CONFIG_NTB_NETDEV m
# scripts/config --set-val CONFIG_RIONET m
# scripts/config --set-val CONFIG_RIONET_TX_SIZE 128
# scripts/config --set-val CONFIG_RIONET_RX_SIZE 128
# scripts/config --enable CONFIG_TUN
# scripts/config --set-val CONFIG_TAP m
# scripts/config --disable CONFIG_TUN_VNET_CROSS_LE
# scripts/config --set-val CONFIG_VETH m
scripts/config --enable CONFIG_VIRTIO_NET
# scripts/config --set-val CONFIG_NLMON m
# scripts/config --enable CONFIG_NETKIT
# scripts/config --set-val CONFIG_NET_VRF m
# scripts/config --set-val CONFIG_VSOCKMON m
# scripts/config --set-val CONFIG_MHI_NET m
# scripts/config --set-val CONFIG_SUNGEM_PHY m
# scripts/config --set-val CONFIG_ARCNET m
# scripts/config --set-val CONFIG_ARCNET_1201 m
# scripts/config --set-val CONFIG_ARCNET_1051 m
# scripts/config --set-val CONFIG_ARCNET_RAW m
# scripts/config --set-val CONFIG_ARCNET_CAP m
# scripts/config --set-val CONFIG_ARCNET_COM90xx m
# scripts/config --set-val CONFIG_ARCNET_COM90xxIO m
# scripts/config --set-val CONFIG_ARCNET_RIM_I m
# scripts/config --set-val CONFIG_ARCNET_COM20020 m
# scripts/config --set-val CONFIG_ARCNET_COM20020_PCI m
# scripts/config --set-val CONFIG_ARCNET_COM20020_CS m
# scripts/config --enable CONFIG_ATM_DRIVERS
# scripts/config --set-val CONFIG_ATM_DUMMY m
# scripts/config --set-val CONFIG_ATM_TCP m
# scripts/config --set-val CONFIG_ATM_LANAI m
# scripts/config --set-val CONFIG_ATM_ENI m
# scripts/config --disable CONFIG_ATM_ENI_DEBUG
# scripts/config --disable CONFIG_ATM_ENI_TUNE_BURST
# scripts/config --set-val CONFIG_ATM_NICSTAR m
# scripts/config --disable CONFIG_ATM_NICSTAR_USE_SUNI
# scripts/config --disable CONFIG_ATM_NICSTAR_USE_IDT77105
# scripts/config --set-val CONFIG_ATM_IDT77252 m
# scripts/config --disable CONFIG_ATM_IDT77252_DEBUG
# scripts/config --disable CONFIG_ATM_IDT77252_RCV_ALL
# scripts/config --enable CONFIG_ATM_IDT77252_USE_SUNI
# scripts/config --set-val CONFIG_ATM_IA m
# scripts/config --disable CONFIG_ATM_IA_DEBUG
# scripts/config --set-val CONFIG_ATM_FORE200E m
# scripts/config --disable CONFIG_ATM_FORE200E_USE_TASKLET
# scripts/config --set-val CONFIG_ATM_FORE200E_TX_RETRY 16
# scripts/config --set-val CONFIG_ATM_FORE200E_DEBUG 0
# scripts/config --set-val CONFIG_ATM_HE m
# scripts/config --enable CONFIG_ATM_HE_USE_SUNI
# scripts/config --set-val CONFIG_ATM_SOLOS m
# scripts/config --enable CONFIG_CAIF_DRIVERS
# scripts/config --set-val CONFIG_CAIF_TTY m
# scripts/config --set-val CONFIG_CAIF_VIRTIO m
# scripts/config --set-val CONFIG_B53 m
# scripts/config --set-val CONFIG_B53_SPI_DRIVER m
# scripts/config --set-val CONFIG_B53_MDIO_DRIVER m
# scripts/config --set-val CONFIG_B53_MMAP_DRIVER m
# scripts/config --set-val CONFIG_B53_SRAB_DRIVER m
# scripts/config --set-val CONFIG_B53_SERDES m
# scripts/config --set-val CONFIG_NET_DSA_BCM_SF2 m
# scripts/config --disable CONFIG_NET_DSA_LOOP
# scripts/config --set-val CONFIG_NET_DSA_HIRSCHMANN_HELLCREEK m
# scripts/config --set-val CONFIG_NET_DSA_LANTIQ_GSWIP m
# scripts/config --set-val CONFIG_NET_DSA_MT7530 m
# scripts/config --set-val CONFIG_NET_DSA_MT7530_MDIO m
# scripts/config --set-val CONFIG_NET_DSA_MT7530_MMIO m
# scripts/config --set-val CONFIG_NET_DSA_MV88E6060 m
# scripts/config --set-val CONFIG_NET_DSA_MICROCHIP_KSZ_COMMON m
# scripts/config --set-val CONFIG_NET_DSA_MICROCHIP_KSZ9477_I2C m
# scripts/config --set-val CONFIG_NET_DSA_MICROCHIP_KSZ_SPI m
# scripts/config --enable CONFIG_NET_DSA_MICROCHIP_KSZ_PTP
# scripts/config --set-val CONFIG_NET_DSA_MICROCHIP_KSZ8863_SMI m
# scripts/config --set-val CONFIG_NET_DSA_MV88E6XXX m
# scripts/config --enable CONFIG_NET_DSA_MV88E6XXX_PTP
# scripts/config --set-val CONFIG_NET_DSA_MSCC_FELIX_DSA_LIB m
# scripts/config --set-val CONFIG_NET_DSA_MSCC_OCELOT_EXT m
# scripts/config --set-val CONFIG_NET_DSA_MSCC_SEVILLE m
# scripts/config --set-val CONFIG_NET_DSA_AR9331 m
# scripts/config --set-val CONFIG_NET_DSA_QCA8K m
# scripts/config --enable CONFIG_NET_DSA_QCA8K_LEDS_SUPPORT
# scripts/config --set-val CONFIG_NET_DSA_SJA1105 m
# scripts/config --enable CONFIG_NET_DSA_SJA1105_PTP
# scripts/config --enable CONFIG_NET_DSA_SJA1105_TAS
# scripts/config --enable CONFIG_NET_DSA_SJA1105_VL
# scripts/config --set-val CONFIG_NET_DSA_XRS700X m
# scripts/config --set-val CONFIG_NET_DSA_XRS700X_I2C m
# scripts/config --set-val CONFIG_NET_DSA_XRS700X_MDIO m
# scripts/config --set-val CONFIG_NET_DSA_REALTEK m
# scripts/config --set-val CONFIG_NET_DSA_SMSC_LAN9303 m
# scripts/config --set-val CONFIG_NET_DSA_SMSC_LAN9303_I2C m
# scripts/config --set-val CONFIG_NET_DSA_SMSC_LAN9303_MDIO m
# scripts/config --set-val CONFIG_NET_DSA_VITESSE_VSC73XX m
# scripts/config --set-val CONFIG_NET_DSA_VITESSE_VSC73XX_SPI m
# scripts/config --set-val CONFIG_NET_DSA_VITESSE_VSC73XX_PLATFORM m
# scripts/config --enable CONFIG_ETHERNET
# scripts/config --set-val CONFIG_MDIO m
# scripts/config --enable CONFIG_NET_VENDOR_3COM
# scripts/config --set-val CONFIG_PCMCIA_3C574 m
# scripts/config --set-val CONFIG_PCMCIA_3C589 m
# scripts/config --set-val CONFIG_VORTEX m
# scripts/config --set-val CONFIG_TYPHOON m
# scripts/config --enable CONFIG_NET_VENDOR_ADAPTEC
# scripts/config --set-val CONFIG_ADAPTEC_STARFIRE m
# scripts/config --enable CONFIG_NET_VENDOR_AGERE
# scripts/config --set-val CONFIG_ET131X m
# scripts/config --enable CONFIG_NET_VENDOR_ALACRITECH
# scripts/config --set-val CONFIG_SLICOSS m
# scripts/config --enable CONFIG_NET_VENDOR_ALTEON
# scripts/config --set-val CONFIG_ACENIC m
# scripts/config --disable CONFIG_ACENIC_OMIT_TIGON_I
# scripts/config --set-val CONFIG_ALTERA_TSE m
# scripts/config --enable CONFIG_NET_VENDOR_AMAZON
# scripts/config --set-val CONFIG_ENA_ETHERNET m
# scripts/config --enable CONFIG_NET_VENDOR_AMD
# scripts/config --set-val CONFIG_AMD8111_ETH m
# scripts/config --set-val CONFIG_PCNET32 m
# scripts/config --set-val CONFIG_PCMCIA_NMCLAN m
# scripts/config --set-val CONFIG_AMD_XGBE m
# scripts/config --enable CONFIG_AMD_XGBE_DCB
# scripts/config --enable CONFIG_AMD_XGBE_HAVE_ECC
# scripts/config --set-val CONFIG_PDS_CORE m
# scripts/config --enable CONFIG_NET_VENDOR_AQUANTIA
# scripts/config --set-val CONFIG_AQTION m
# scripts/config --enable CONFIG_NET_VENDOR_ARC
# scripts/config --enable CONFIG_NET_VENDOR_ASIX
# scripts/config --set-val CONFIG_SPI_AX88796C m
# scripts/config --disable CONFIG_SPI_AX88796C_COMPRESSION
# scripts/config --enable CONFIG_NET_VENDOR_ATHEROS
# scripts/config --set-val CONFIG_ATL2 m
# scripts/config --set-val CONFIG_ATL1 m
# scripts/config --set-val CONFIG_ATL1E m
# scripts/config --set-val CONFIG_ATL1C m
# scripts/config --set-val CONFIG_ALX m
# scripts/config --set-val CONFIG_CX_ECAT m
# scripts/config --enable CONFIG_NET_VENDOR_BROADCOM
# scripts/config --set-val CONFIG_B44 m
# scripts/config --enable CONFIG_B44_PCI_AUTOSELECT
# scripts/config --enable CONFIG_B44_PCICORE_AUTOSELECT
# scripts/config --enable CONFIG_B44_PCI
# scripts/config --set-val CONFIG_BCMGENET m
# scripts/config --set-val CONFIG_BNX2 m
# scripts/config --set-val CONFIG_CNIC m
# scripts/config --set-val CONFIG_TIGON3 m
# scripts/config --enable CONFIG_TIGON3_HWMON
# scripts/config --set-val CONFIG_BNX2X m
# scripts/config --enable CONFIG_BNX2X_SRIOV
# scripts/config --set-val CONFIG_SYSTEMPORT m
# scripts/config --set-val CONFIG_BNXT m
# scripts/config --enable CONFIG_BNXT_SRIOV
# scripts/config --enable CONFIG_BNXT_FLOWER_OFFLOAD
# scripts/config --enable CONFIG_BNXT_DCB
# scripts/config --enable CONFIG_BNXT_HWMON
# scripts/config --enable CONFIG_NET_VENDOR_CADENCE
# scripts/config --set-val CONFIG_MACB m
# scripts/config --enable CONFIG_MACB_USE_HWSTAMP
# scripts/config --set-val CONFIG_MACB_PCI m
# scripts/config --enable CONFIG_NET_VENDOR_CAVIUM
# scripts/config --set-val CONFIG_THUNDER_NIC_PF m
# scripts/config --set-val CONFIG_THUNDER_NIC_VF m
# scripts/config --set-val CONFIG_THUNDER_NIC_BGX m
# scripts/config --set-val CONFIG_THUNDER_NIC_RGX m
# scripts/config --set-val CONFIG_CAVIUM_PTP m
# scripts/config --set-val CONFIG_LIQUIDIO_CORE m
# scripts/config --set-val CONFIG_LIQUIDIO m
# scripts/config --set-val CONFIG_LIQUIDIO_VF m
# scripts/config --enable CONFIG_NET_VENDOR_CHELSIO
# scripts/config --set-val CONFIG_CHELSIO_T1 m
# scripts/config --enable CONFIG_CHELSIO_T1_1G
# scripts/config --set-val CONFIG_CHELSIO_T3 m
# scripts/config --set-val CONFIG_CHELSIO_T4 m
# scripts/config --enable CONFIG_CHELSIO_T4_DCB
# scripts/config --enable CONFIG_CHELSIO_T4_FCOE
# scripts/config --set-val CONFIG_CHELSIO_T4VF m
# scripts/config --set-val CONFIG_CHELSIO_LIB m
# scripts/config --enable CONFIG_CHELSIO_INLINE_CRYPTO
# scripts/config --set-val CONFIG_CHELSIO_IPSEC_INLINE m
# scripts/config --set-val CONFIG_CHELSIO_TLS_DEVICE m
# scripts/config --enable CONFIG_NET_VENDOR_CISCO
# scripts/config --set-val CONFIG_ENIC m
# scripts/config --enable CONFIG_NET_VENDOR_CORTINA
# scripts/config --enable CONFIG_NET_VENDOR_DAVICOM
# scripts/config --set-val CONFIG_DM9051 m
# scripts/config --set-val CONFIG_DNET m
# scripts/config --enable CONFIG_NET_VENDOR_DEC
# scripts/config --enable CONFIG_NET_TULIP
# scripts/config --set-val CONFIG_DE2104X m
# scripts/config --set-val CONFIG_DE2104X_DSL 0
# scripts/config --set-val CONFIG_TULIP m
# scripts/config --disable CONFIG_TULIP_MWI
# scripts/config --disable CONFIG_TULIP_MMIO
# scripts/config --disable CONFIG_TULIP_NAPI
# scripts/config --set-val CONFIG_WINBOND_840 m
# scripts/config --set-val CONFIG_DM9102 m
# scripts/config --set-val CONFIG_ULI526X m
# scripts/config --set-val CONFIG_PCMCIA_XIRCOM m
# scripts/config --enable CONFIG_NET_VENDOR_DLINK
# scripts/config --set-val CONFIG_DL2K m
# scripts/config --set-val CONFIG_SUNDANCE m
# scripts/config --disable CONFIG_SUNDANCE_MMIO
# scripts/config --enable CONFIG_NET_VENDOR_EMULEX
# scripts/config --set-val CONFIG_BE2NET m
# scripts/config --enable CONFIG_BE2NET_HWMON
# scripts/config --enable CONFIG_BE2NET_BE2
# scripts/config --enable CONFIG_BE2NET_BE3
# scripts/config --enable CONFIG_BE2NET_LANCER
# scripts/config --enable CONFIG_BE2NET_SKYHAWK
# scripts/config --enable CONFIG_NET_VENDOR_ENGLEDER
# scripts/config --set-val CONFIG_TSNEP m
# scripts/config --disable CONFIG_TSNEP_SELFTESTS
# scripts/config --enable CONFIG_NET_VENDOR_EZCHIP
# scripts/config --enable CONFIG_NET_VENDOR_FUJITSU
# scripts/config --set-val CONFIG_PCMCIA_FMVJ18X m
# scripts/config --enable CONFIG_NET_VENDOR_FUNGIBLE
# scripts/config --set-val CONFIG_FUN_CORE m
# scripts/config --set-val CONFIG_FUN_ETH m
# scripts/config --enable CONFIG_NET_VENDOR_GOOGLE
# scripts/config --set-val CONFIG_GVE m
# scripts/config --enable CONFIG_NET_VENDOR_HUAWEI
# scripts/config --set-val CONFIG_HINIC m
# scripts/config --enable CONFIG_NET_VENDOR_I825XX
# scripts/config --enable CONFIG_NET_VENDOR_INTEL
# scripts/config --set-val CONFIG_LIBETH m
# scripts/config --set-val CONFIG_LIBIE m
# scripts/config --set-val CONFIG_E100 m
# scripts/config --set-val CONFIG_E1000 m
# scripts/config --set-val CONFIG_E1000E m
# scripts/config --enable CONFIG_E1000E_HWTS
# scripts/config --set-val CONFIG_IGB m
# scripts/config --enable CONFIG_IGB_HWMON
# scripts/config --enable CONFIG_IGB_DCA
# scripts/config --set-val CONFIG_IGBVF m
# scripts/config --set-val CONFIG_IXGBE m
# scripts/config --enable CONFIG_IXGBE_HWMON
# scripts/config --enable CONFIG_IXGBE_DCA
# scripts/config --enable CONFIG_IXGBE_DCB
# scripts/config --enable CONFIG_IXGBE_IPSEC
# scripts/config --set-val CONFIG_IXGBEVF m
# scripts/config --enable CONFIG_IXGBEVF_IPSEC
# scripts/config --set-val CONFIG_I40E m
# scripts/config --enable CONFIG_I40E_DCB
# scripts/config --set-val CONFIG_IAVF m
# scripts/config --set-val CONFIG_I40EVF m
# scripts/config --set-val CONFIG_ICE m
# scripts/config --enable CONFIG_ICE_HWMON
# scripts/config --enable CONFIG_ICE_SWITCHDEV
# scripts/config --enable CONFIG_ICE_HWTS
# scripts/config --set-val CONFIG_FM10K m
# scripts/config --set-val CONFIG_IGC m
# scripts/config --enable CONFIG_IGC_LEDS
# scripts/config --set-val CONFIG_IDPF m
# scripts/config --disable CONFIG_IDPF_SINGLEQ
# scripts/config --set-val CONFIG_JME m
# scripts/config --enable CONFIG_NET_VENDOR_ADI
# scripts/config --set-val CONFIG_ADIN1110 m
# scripts/config --enable CONFIG_NET_VENDOR_LITEX
# scripts/config --enable CONFIG_NET_VENDOR_MARVELL
# scripts/config --set-val CONFIG_MVMDIO m
# scripts/config --set-val CONFIG_SKGE m
# scripts/config --disable CONFIG_SKGE_DEBUG
# scripts/config --enable CONFIG_SKGE_GENESIS
# scripts/config --set-val CONFIG_SKY2 m
# scripts/config --disable CONFIG_SKY2_DEBUG
# scripts/config --set-val CONFIG_OCTEON_EP m
# scripts/config --set-val CONFIG_OCTEON_EP_VF m
# scripts/config --set-val CONFIG_PRESTERA m
# scripts/config --set-val CONFIG_PRESTERA_PCI m
# scripts/config --enable CONFIG_NET_VENDOR_MELLANOX
# scripts/config --set-val CONFIG_MLX4_EN m
# scripts/config --enable CONFIG_MLX4_EN_DCB
# scripts/config --set-val CONFIG_MLX4_CORE m
# scripts/config --enable CONFIG_MLX4_DEBUG
# scripts/config --enable CONFIG_MLX4_CORE_GEN2
# scripts/config --set-val CONFIG_MLX5_CORE m
# scripts/config --enable CONFIG_MLX5_FPGA
# scripts/config --enable CONFIG_MLX5_CORE_EN
# scripts/config --enable CONFIG_MLX5_EN_ARFS
# scripts/config --enable CONFIG_MLX5_EN_RXNFC
# scripts/config --enable CONFIG_MLX5_MPFS
# scripts/config --enable CONFIG_MLX5_ESWITCH
# scripts/config --enable CONFIG_MLX5_BRIDGE
# scripts/config --enable CONFIG_MLX5_CLS_ACT
# scripts/config --enable CONFIG_MLX5_TC_CT
# scripts/config --enable CONFIG_MLX5_TC_SAMPLE
# scripts/config --enable CONFIG_MLX5_CORE_EN_DCB
# scripts/config --enable CONFIG_MLX5_CORE_IPOIB
# scripts/config --enable CONFIG_MLX5_MACSEC
# scripts/config --enable CONFIG_MLX5_EN_IPSEC
# scripts/config --enable CONFIG_MLX5_EN_TLS
# scripts/config --enable CONFIG_MLX5_SW_STEERING
# scripts/config --enable CONFIG_MLX5_HW_STEERING
# scripts/config --enable CONFIG_MLX5_SF
# scripts/config --enable CONFIG_MLX5_SF_MANAGER
# scripts/config --set-val CONFIG_MLX5_DPLL m
# scripts/config --set-val CONFIG_MLXSW_CORE m
# scripts/config --enable CONFIG_MLXSW_CORE_HWMON
# scripts/config --enable CONFIG_MLXSW_CORE_THERMAL
# scripts/config --set-val CONFIG_MLXSW_PCI m
# scripts/config --set-val CONFIG_MLXSW_I2C m
# scripts/config --set-val CONFIG_MLXSW_SPECTRUM m
# scripts/config --enable CONFIG_MLXSW_SPECTRUM_DCB
# scripts/config --set-val CONFIG_MLXSW_MINIMAL m
# scripts/config --set-val CONFIG_MLXFW m
# scripts/config --enable CONFIG_NET_VENDOR_META
# scripts/config --set-val CONFIG_FBNIC m
# scripts/config --enable CONFIG_NET_VENDOR_MICREL
# scripts/config --set-val CONFIG_KS8842 m
# scripts/config --set-val CONFIG_KS8851 m
# scripts/config --set-val CONFIG_KS8851_MLL m
# scripts/config --set-val CONFIG_KSZ884X_PCI m
# scripts/config --enable CONFIG_NET_VENDOR_MICROCHIP
# scripts/config --set-val CONFIG_ENC28J60 m
# scripts/config --disable CONFIG_ENC28J60_WRITEVERIFY
# scripts/config --set-val CONFIG_ENCX24J600 m
# scripts/config --set-val CONFIG_LAN743X m
# scripts/config --set-val CONFIG_LAN865X m
# scripts/config --enable CONFIG_VCAP
# scripts/config --enable CONFIG_NET_VENDOR_MICROSEMI
# scripts/config --set-val CONFIG_MSCC_OCELOT_SWITCH_LIB m
# scripts/config --enable CONFIG_NET_VENDOR_MICROSOFT
# scripts/config --set-val CONFIG_MICROSOFT_MANA m
# scripts/config --enable CONFIG_NET_VENDOR_MYRI
# scripts/config --set-val CONFIG_MYRI10GE m
# scripts/config --enable CONFIG_MYRI10GE_DCA
# scripts/config --set-val CONFIG_FEALNX m
# scripts/config --enable CONFIG_NET_VENDOR_NI
# scripts/config --set-val CONFIG_NI_XGE_MANAGEMENT_ENET m
# scripts/config --enable CONFIG_NET_VENDOR_NATSEMI
# scripts/config --set-val CONFIG_NATSEMI m
# scripts/config --set-val CONFIG_NS83820 m
# scripts/config --enable CONFIG_NET_VENDOR_NETERION
# scripts/config --set-val CONFIG_S2IO m
# scripts/config --enable CONFIG_NET_VENDOR_NETRONOME
# scripts/config --set-val CONFIG_NFP m
# scripts/config --enable CONFIG_NFP_APP_FLOWER
# scripts/config --enable CONFIG_NFP_APP_ABM_NIC
# scripts/config --enable CONFIG_NFP_NET_IPSEC
# scripts/config --disable CONFIG_NFP_DEBUG
# scripts/config --enable CONFIG_NET_VENDOR_8390
# scripts/config --set-val CONFIG_PCMCIA_AXNET m
# scripts/config --set-val CONFIG_NE2K_PCI m
# scripts/config --set-val CONFIG_PCMCIA_PCNET m
# scripts/config --enable CONFIG_NET_VENDOR_NVIDIA
# scripts/config --set-val CONFIG_FORCEDETH m
# scripts/config --enable CONFIG_NET_VENDOR_OKI
# scripts/config --set-val CONFIG_ETHOC m
# scripts/config --set-val CONFIG_OA_TC6 m
# scripts/config --enable CONFIG_NET_VENDOR_PACKET_ENGINES
# scripts/config --set-val CONFIG_HAMACHI m
# scripts/config --set-val CONFIG_YELLOWFIN m
# scripts/config --enable CONFIG_NET_VENDOR_PENSANDO
# scripts/config --set-val CONFIG_IONIC m
# scripts/config --enable CONFIG_NET_VENDOR_QLOGIC
# scripts/config --set-val CONFIG_QLA3XXX m
# scripts/config --set-val CONFIG_QLCNIC m
# scripts/config --enable CONFIG_QLCNIC_SRIOV
# scripts/config --enable CONFIG_QLCNIC_DCB
# scripts/config --enable CONFIG_QLCNIC_HWMON
# scripts/config --set-val CONFIG_NETXEN_NIC m
# scripts/config --set-val CONFIG_QED m
# scripts/config --enable CONFIG_QED_LL2
# scripts/config --enable CONFIG_QED_SRIOV
# scripts/config --set-val CONFIG_QEDE m
# scripts/config --enable CONFIG_QED_RDMA
# scripts/config --enable CONFIG_QED_ISCSI
# scripts/config --enable CONFIG_QED_FCOE
# scripts/config --enable CONFIG_QED_OOO
# scripts/config --enable CONFIG_NET_VENDOR_BROCADE
# scripts/config --set-val CONFIG_BNA m
# scripts/config --enable CONFIG_NET_VENDOR_QUALCOMM
# scripts/config --set-val CONFIG_QCOM_EMAC m
# scripts/config --set-val CONFIG_RMNET m
# scripts/config --enable CONFIG_NET_VENDOR_RDC
# scripts/config --set-val CONFIG_R6040 m
# scripts/config --enable CONFIG_NET_VENDOR_REALTEK
# scripts/config --set-val CONFIG_ATP m
# scripts/config --set-val CONFIG_8139CP m
# scripts/config --set-val CONFIG_8139TOO m
# scripts/config --enable CONFIG_8139TOO_PIO
# scripts/config --disable CONFIG_8139TOO_TUNE_TWISTER
# scripts/config --enable CONFIG_8139TOO_8129
# scripts/config --disable CONFIG_8139_OLD_RX_RESET
# scripts/config --set-val CONFIG_R8169 m
# scripts/config --enable CONFIG_R8169_LEDS
# scripts/config --set-val CONFIG_RTASE m
# scripts/config --enable CONFIG_NET_VENDOR_RENESAS
# scripts/config --enable CONFIG_NET_VENDOR_ROCKER
# scripts/config --set-val CONFIG_ROCKER m
# scripts/config --enable CONFIG_NET_VENDOR_SAMSUNG
# scripts/config --set-val CONFIG_SXGBE_ETH m
# scripts/config --enable CONFIG_NET_VENDOR_SEEQ
# scripts/config --enable CONFIG_NET_VENDOR_SILAN
# scripts/config --set-val CONFIG_SC92031 m
# scripts/config --enable CONFIG_NET_VENDOR_SIS
# scripts/config --set-val CONFIG_SIS900 m
# scripts/config --set-val CONFIG_SIS190 m
# scripts/config --enable CONFIG_NET_VENDOR_SOLARFLARE
# scripts/config --set-val CONFIG_SFC m
# scripts/config --enable CONFIG_SFC_MTD
# scripts/config --enable CONFIG_SFC_MCDI_MON
# scripts/config --enable CONFIG_SFC_SRIOV
# scripts/config --enable CONFIG_SFC_MCDI_LOGGING
# scripts/config --set-val CONFIG_SFC_FALCON m
# scripts/config --enable CONFIG_SFC_FALCON_MTD
# scripts/config --set-val CONFIG_SFC_SIENA m
# scripts/config --enable CONFIG_SFC_SIENA_MTD
# scripts/config --enable CONFIG_SFC_SIENA_MCDI_MON
# scripts/config --enable CONFIG_SFC_SIENA_SRIOV
# scripts/config --enable CONFIG_SFC_SIENA_MCDI_LOGGING
# scripts/config --enable CONFIG_NET_VENDOR_SMSC
# scripts/config --set-val CONFIG_PCMCIA_SMC91C92 m
# scripts/config --set-val CONFIG_EPIC100 m
# scripts/config --set-val CONFIG_SMSC911X m
# scripts/config --set-val CONFIG_SMSC9420 m
# scripts/config --enable CONFIG_NET_VENDOR_SOCIONEXT
# scripts/config --enable CONFIG_NET_VENDOR_STMICRO
# scripts/config --set-val CONFIG_STMMAC_ETH m
# scripts/config --disable CONFIG_STMMAC_SELFTESTS
# scripts/config --set-val CONFIG_STMMAC_PLATFORM m
# scripts/config --set-val CONFIG_DWMAC_GENERIC m
# scripts/config --set-val CONFIG_DWMAC_INTEL m
# scripts/config --set-val CONFIG_STMMAC_PCI m
# scripts/config --enable CONFIG_NET_VENDOR_SUN
# scripts/config --set-val CONFIG_HAPPYMEAL m
# scripts/config --set-val CONFIG_SUNGEM m
# scripts/config --set-val CONFIG_CASSINI m
# scripts/config --set-val CONFIG_NIU m
# scripts/config --enable CONFIG_NET_VENDOR_SYNOPSYS
# scripts/config --set-val CONFIG_DWC_XLGMAC m
# scripts/config --set-val CONFIG_DWC_XLGMAC_PCI m
# scripts/config --enable CONFIG_NET_VENDOR_TEHUTI
# scripts/config --set-val CONFIG_TEHUTI m
# scripts/config --set-val CONFIG_TEHUTI_TN40 m
# scripts/config --enable CONFIG_NET_VENDOR_TI
# scripts/config --disable CONFIG_TI_CPSW_PHY_SEL
# scripts/config --set-val CONFIG_TLAN m
# scripts/config --enable CONFIG_NET_VENDOR_VERTEXCOM
# scripts/config --set-val CONFIG_MSE102X m
# scripts/config --enable CONFIG_NET_VENDOR_VIA
# scripts/config --set-val CONFIG_VIA_RHINE m
# scripts/config --enable CONFIG_VIA_RHINE_MMIO
# scripts/config --set-val CONFIG_VIA_VELOCITY m
# scripts/config --enable CONFIG_NET_VENDOR_WANGXUN
# scripts/config --set-val CONFIG_LIBWX m
# scripts/config --set-val CONFIG_NGBE m
# scripts/config --enable CONFIG_NET_VENDOR_WIZNET
# scripts/config --set-val CONFIG_WIZNET_W5100 m
# scripts/config --set-val CONFIG_WIZNET_W5300 m
# scripts/config --disable CONFIG_WIZNET_BUS_DIRECT
# scripts/config --disable CONFIG_WIZNET_BUS_INDIRECT
# scripts/config --enable CONFIG_WIZNET_BUS_ANY
# scripts/config --set-val CONFIG_WIZNET_W5100_SPI m
# scripts/config --enable CONFIG_NET_VENDOR_XILINX
# scripts/config --set-val CONFIG_XILINX_EMACLITE m
# scripts/config --set-val CONFIG_XILINX_AXI_EMAC m
# scripts/config --set-val CONFIG_XILINX_LL_TEMAC m
# scripts/config --enable CONFIG_NET_VENDOR_XIRCOM
# scripts/config --set-val CONFIG_PCMCIA_XIRC2PS m
# scripts/config --enable CONFIG_FDDI
# scripts/config --set-val CONFIG_DEFXX m
# scripts/config --set-val CONFIG_SKFP m
# scripts/config --disable CONFIG_HIPPI
# scripts/config --set-val CONFIG_PHYLINK m
# scripts/config --set-val CONFIG_PHYLIB m
# scripts/config --enable CONFIG_SWPHY
# scripts/config --enable CONFIG_LED_TRIGGER_PHY
# scripts/config --set-val CONFIG_FIXED_PHY m
# scripts/config --set-val CONFIG_SFP m
scripts/config --disable CONFIG_AIR_EN8811H_PHY
scripts/config --disable CONFIG_AMD_PHY
scripts/config --disable CONFIG_ADIN_PHY
scripts/config --disable CONFIG_ADIN1100_PHY
scripts/config --disable CONFIG_AQUANTIA_PHY
scripts/config --disable CONFIG_AX88796B_PHY
scripts/config --disable CONFIG_BROADCOM_PHY
scripts/config --disable CONFIG_BCM54140_PHY
# scripts/config --set-val CONFIG_BCM7XXX_PHY m
# scripts/config --set-val CONFIG_BCM84881_PHY m
scripts/config --disable CONFIG_BCM87XX_PHY
# scripts/config --set-val CONFIG_BCM_NET_PHYLIB m
scripts/config --disable CONFIG_CICADA_PHY
scripts/config --disable CONFIG_CORTINA_PHY
scripts/config --disable CONFIG_DAVICOM_PHY
scripts/config --disable CONFIG_ICPLUS_PHY
scripts/config --disable CONFIG_LXT_PHY
scripts/config --disable CONFIG_INTEL_XWAY_PHY
scripts/config --disable CONFIG_LSI_ET1011C_PHY
scripts/config --disable CONFIG_MARVELL_PHY
scripts/config --disable CONFIG_MARVELL_10G_PHY
scripts/config --disable CONFIG_MARVELL_88Q2XXX_PHY
scripts/config --disable CONFIG_MARVELL_88X2222_PHY
scripts/config --disable CONFIG_MAXLINEAR_GPHY
# scripts/config --set-val CONFIG_MEDIATEK_GE_PHY m
scripts/config --disable CONFIG_MEDIATEK_GE_SOC_PHY
# scripts/config --set-val CONFIG_MICREL_PHY m
scripts/config --disable CONFIG_MICROCHIP_T1S_PHY
scripts/config --disable CONFIG_MICROCHIP_PHY
scripts/config --disable CONFIG_MICROCHIP_T1_PHY
scripts/config --disable CONFIG_MICROSEMI_PHY
scripts/config --disable CONFIG_MOTORCOMM_PHY
scripts/config --disable CONFIG_NATIONAL_PHY
scripts/config --disable CONFIG_NXP_CBTX_PHY
scripts/config --disable CONFIG_NXP_C45_TJA11XX_PHY
scripts/config --disable CONFIG_NXP_TJA11XX_PHY
scripts/config --disable CONFIG_NCN26000_PHY
# scripts/config --set-val CONFIG_QCOM_NET_PHYLIB m
scripts/config --disable CONFIG_AT803X_PHY
# scripts/config --set-val CONFIG_QCA83XX_PHY m
# scripts/config --set-val CONFIG_QCA808X_PHY m
scripts/config --disable CONFIG_QSEMI_PHY
# scripts/config --set-val CONFIG_REALTEK_PHY m
scripts/config --disable CONFIG_RENESAS_PHY
scripts/config --disable CONFIG_ROCKCHIP_PHY
# scripts/config --set-val CONFIG_SMSC_PHY m
scripts/config --disable CONFIG_STE10XP
scripts/config --disable CONFIG_TERANETICS_PHY
scripts/config --disable CONFIG_DP83822_PHY
scripts/config --disable CONFIG_DP83TC811_PHY
scripts/config --disable CONFIG_DP83848_PHY
scripts/config --disable CONFIG_DP83867_PHY
scripts/config --disable CONFIG_DP83869_PHY
scripts/config --disable CONFIG_DP83TD510_PHY
scripts/config --disable CONFIG_DP83TG720_PHY
# scripts/config --set-val CONFIG_VITESSE_PHY m
scripts/config --disable CONFIG_XILINX_GMII2RGMII
scripts/config --disable CONFIG_MICREL_KS8995MA
# scripts/config --enable CONFIG_PSE_CONTROLLER
scripts/config --disable CONFIG_PSE_REGULATOR
scripts/config --disable CONFIG_PSE_PD692X0
scripts/config --disable CONFIG_PSE_TPS23881
scripts/config --disable CONFIG_CAN_DEV
# scripts/config --set-val CONFIG_MCTP_SERIAL m
# scripts/config --enable CONFIG_MDIO_DEVICE
# scripts/config --set-val CONFIG_MDIO_BUS m
# scripts/config --set-val CONFIG_FWNODE_MDIO m
# scripts/config --set-val CONFIG_ACPI_MDIO m
# scripts/config --set-val CONFIG_MDIO_DEVRES m
# scripts/config --set-val CONFIG_MDIO_BITBANG m
# scripts/config --set-val CONFIG_MDIO_BCM_UNIMAC m
# scripts/config --set-val CONFIG_MDIO_CAVIUM m
# scripts/config --set-val CONFIG_MDIO_GPIO m
# scripts/config --set-val CONFIG_MDIO_I2C m
# scripts/config --set-val CONFIG_MDIO_MVUSB m
# scripts/config --set-val CONFIG_MDIO_MSCC_MIIM m
# scripts/config --set-val CONFIG_MDIO_REGMAP m
# scripts/config --set-val CONFIG_MDIO_THUNDER m
# scripts/config --set-val CONFIG_PCS_XPCS m
# scripts/config --set-val CONFIG_PCS_LYNX m
# scripts/config --set-val CONFIG_PCS_MTK_LYNXI m
# scripts/config --set-val CONFIG_PLIP m
scripts/config --disable CONFIG_PPP
scripts/config --disable CONFIG_SLIP
scripts/config --disable CONFIG_USB_NET_DRIVERS
scripts/config --disable CONFIG_WLAN
# scripts/config --enable CONFIG_WAN
# scripts/config --set-val CONFIG_HDLC m
# scripts/config --set-val CONFIG_HDLC_RAW m
# scripts/config --set-val CONFIG_HDLC_RAW_ETH m
# scripts/config --set-val CONFIG_HDLC_CISCO m
# scripts/config --set-val CONFIG_HDLC_FR m
# scripts/config --set-val CONFIG_HDLC_PPP m
# scripts/config --set-val CONFIG_HDLC_X25 m
# scripts/config --set-val CONFIG_FRAMER m
# scripts/config --set-val CONFIG_PCI200SYN m
# scripts/config --set-val CONFIG_WANXL m
# scripts/config --set-val CONFIG_PC300TOO m
# scripts/config --set-val CONFIG_FARSYNC m
# scripts/config --set-val CONFIG_LAPBETHER m
# scripts/config --set-val CONFIG_IEEE802154_DRIVERS m
# scripts/config --set-val CONFIG_IEEE802154_FAKELB m
# scripts/config --set-val CONFIG_IEEE802154_AT86RF230 m
# scripts/config --set-val CONFIG_IEEE802154_MRF24J40 m
# scripts/config --set-val CONFIG_IEEE802154_CC2520 m
# scripts/config --set-val CONFIG_IEEE802154_ATUSB m
# scripts/config --set-val CONFIG_IEEE802154_ADF7242 m
# scripts/config --set-val CONFIG_IEEE802154_CA8210 m
# scripts/config --enable CONFIG_IEEE802154_CA8210_DEBUGFS
# scripts/config --set-val CONFIG_IEEE802154_MCR20A m
# scripts/config --set-val CONFIG_IEEE802154_HWSIM m
scripts/config --disable CONFIG_WWAN
# scripts/config --enable CONFIG_XEN_NETDEV_FRONTEND
# scripts/config --set-val CONFIG_XEN_NETDEV_BACKEND m
# scripts/config --set-val CONFIG_VMXNET3 m
# scripts/config --set-val CONFIG_FUJITSU_ES m
# scripts/config --set-val CONFIG_USB4_NET m
# scripts/config --set-val CONFIG_HYPERV_NET m
# scripts/config --set-val CONFIG_NETDEVSIM m
# scripts/config --enable CONFIG_NET_FAILOVER
scripts/config --disable CONFIG_ISDN
# scripts/config --enable CONFIG_INPUT
scripts/config --disable CONFIG_INPUT_LEDS
# scripts/config --set-val CONFIG_INPUT_FF_MEMLESS m
# scripts/config --set-val CONFIG_INPUT_SPARSEKMAP m
scripts/config --disable CONFIG_INPUT_MATRIXKMAP
# scripts/config --enable CONFIG_INPUT_VIVALDIFMAP
scripts/config --disable CONFIG_INPUT_MOUSEDEV
scripts/config --disable CONFIG_INPUT_JOYDEV
# scripts/config --enable CONFIG_INPUT_EVDEV
scripts/config --disable CONFIG_INPUT_EVBUG
# scripts/config --enable CONFIG_INPUT_KEYBOARD
scripts/config --disable CONFIG_KEYBOARD_ADC
scripts/config --disable CONFIG_KEYBOARD_ADP5520
scripts/config --disable CONFIG_KEYBOARD_ADP5588
scripts/config --disable CONFIG_KEYBOARD_ADP5589
scripts/config --disable CONFIG_KEYBOARD_APPLESPI
# scripts/config --enable CONFIG_KEYBOARD_ATKBD
scripts/config --disable CONFIG_KEYBOARD_QT1050
scripts/config --disable CONFIG_KEYBOARD_QT1070
scripts/config --disable CONFIG_KEYBOARD_QT2160
scripts/config --disable CONFIG_KEYBOARD_DLINK_DIR685
scripts/config --disable CONFIG_KEYBOARD_LKKBD
scripts/config --disable CONFIG_KEYBOARD_GPIO
# scripts/config --set-val CONFIG_KEYBOARD_GPIO_POLLED m
scripts/config --disable CONFIG_KEYBOARD_TCA6416
scripts/config --disable CONFIG_KEYBOARD_TCA8418
scripts/config --disable CONFIG_KEYBOARD_MATRIX
scripts/config --disable CONFIG_KEYBOARD_LM8323
scripts/config --disable CONFIG_KEYBOARD_LM8333
scripts/config --disable CONFIG_KEYBOARD_MAX7359
scripts/config --disable CONFIG_KEYBOARD_MPR121
scripts/config --disable CONFIG_KEYBOARD_NEWTON
scripts/config --disable CONFIG_KEYBOARD_OPENCORES
scripts/config --disable CONFIG_KEYBOARD_PINEPHONE
scripts/config --disable CONFIG_KEYBOARD_SAMSUNG
scripts/config --disable CONFIG_KEYBOARD_STOWAWAY
scripts/config --disable CONFIG_KEYBOARD_SUNKBD
scripts/config --disable CONFIG_KEYBOARD_IQS62X
scripts/config --disable CONFIG_KEYBOARD_TM2_TOUCHKEY
scripts/config --disable CONFIG_KEYBOARD_XTKBD
scripts/config --disable CONFIG_KEYBOARD_CROS_EC
scripts/config --disable CONFIG_KEYBOARD_MTK_PMIC
scripts/config --disable CONFIG_KEYBOARD_CYPRESS_SF
# scripts/config --enable CONFIG_INPUT_MOUSE
scripts/config --disable CONFIG_MOUSE_PS2
scripts/config --disable CONFIG_MOUSE_SERIAL
scripts/config --disable CONFIG_MOUSE_APPLETOUCH
scripts/config --disable CONFIG_MOUSE_BCM5974
scripts/config --disable CONFIG_MOUSE_CYAPA
scripts/config --disable CONFIG_MOUSE_ELAN_I2C
scripts/config --disable CONFIG_MOUSE_VSXXXAA
scripts/config --disable CONFIG_MOUSE_GPIO
scripts/config --disable CONFIG_MOUSE_SYNAPTICS_I2C
scripts/config --disable CONFIG_MOUSE_SYNAPTICS_USB
# scripts/config --enable CONFIG_INPUT_JOYSTICK
scripts/config --disable CONFIG_JOYSTICK_ANALOG
scripts/config --disable CONFIG_JOYSTICK_A3D
scripts/config --disable CONFIG_JOYSTICK_ADC
scripts/config --disable CONFIG_JOYSTICK_ADI
scripts/config --disable CONFIG_JOYSTICK_COBRA
scripts/config --disable CONFIG_JOYSTICK_GF2K
scripts/config --disable CONFIG_JOYSTICK_GRIP
scripts/config --disable CONFIG_JOYSTICK_GRIP_MP
scripts/config --disable CONFIG_JOYSTICK_GUILLEMOT
scripts/config --disable CONFIG_JOYSTICK_INTERACT
scripts/config --disable CONFIG_JOYSTICK_SIDEWINDER
scripts/config --disable CONFIG_JOYSTICK_TMDC
scripts/config --disable CONFIG_JOYSTICK_IFORCE
scripts/config --disable CONFIG_JOYSTICK_WARRIOR
scripts/config --disable CONFIG_JOYSTICK_MAGELLAN
scripts/config --disable CONFIG_JOYSTICK_SPACEORB
scripts/config --disable CONFIG_JOYSTICK_SPACEBALL
scripts/config --disable CONFIG_JOYSTICK_STINGER
scripts/config --disable CONFIG_JOYSTICK_TWIDJOY
scripts/config --disable CONFIG_JOYSTICK_ZHENHUA
scripts/config --disable CONFIG_JOYSTICK_DB9
scripts/config --disable CONFIG_JOYSTICK_GAMECON
scripts/config --disable CONFIG_JOYSTICK_TURBOGRAFX
scripts/config --disable CONFIG_JOYSTICK_AS5011
scripts/config --disable CONFIG_JOYSTICK_JOYDUMP
scripts/config --disable CONFIG_JOYSTICK_XPAD
scripts/config --disable CONFIG_JOYSTICK_WALKERA0701
scripts/config --disable CONFIG_JOYSTICK_PSXPAD_SPI
scripts/config --disable CONFIG_JOYSTICK_PXRC
scripts/config --disable CONFIG_JOYSTICK_QWIIC
scripts/config --disable CONFIG_JOYSTICK_FSIA6B
scripts/config --disable CONFIG_JOYSTICK_SENSEHAT
scripts/config --disable CONFIG_JOYSTICK_SEESAW
# scripts/config --enable CONFIG_INPUT_TABLET
scripts/config --disable CONFIG_TABLET_USB_ACECAD
scripts/config --disable CONFIG_TABLET_USB_AIPTEK
scripts/config --disable CONFIG_TABLET_USB_HANWANG
scripts/config --disable CONFIG_TABLET_USB_KBTAB
scripts/config --disable CONFIG_TABLET_USB_PEGASUS
scripts/config --disable CONFIG_TABLET_SERIAL_WACOM4
# scripts/config --enable CONFIG_INPUT_TOUCHSCREEN
scripts/config --disable CONFIG_TOUCHSCREEN_88PM860X
scripts/config --disable CONFIG_TOUCHSCREEN_ADS7846
scripts/config --disable CONFIG_TOUCHSCREEN_AD7877
scripts/config --disable CONFIG_TOUCHSCREEN_AD7879
scripts/config --disable CONFIG_TOUCHSCREEN_ADC
scripts/config --disable CONFIG_TOUCHSCREEN_ATMEL_MXT
scripts/config --disable CONFIG_TOUCHSCREEN_AUO_PIXCIR
scripts/config --disable CONFIG_TOUCHSCREEN_BU21013
scripts/config --disable CONFIG_TOUCHSCREEN_BU21029
scripts/config --disable CONFIG_TOUCHSCREEN_CHIPONE_ICN8505
scripts/config --disable CONFIG_TOUCHSCREEN_CY8CTMA140
scripts/config --disable CONFIG_TOUCHSCREEN_CY8CTMG110
scripts/config --disable CONFIG_TOUCHSCREEN_CYTTSP_CORE
scripts/config --disable CONFIG_TOUCHSCREEN_CYTTSP5
scripts/config --disable CONFIG_TOUCHSCREEN_DA9034
scripts/config --disable CONFIG_TOUCHSCREEN_DA9052
scripts/config --disable CONFIG_TOUCHSCREEN_DYNAPRO
scripts/config --disable CONFIG_TOUCHSCREEN_HAMPSHIRE
scripts/config --disable CONFIG_TOUCHSCREEN_EETI
scripts/config --disable CONFIG_TOUCHSCREEN_EGALAX_SERIAL
scripts/config --disable CONFIG_TOUCHSCREEN_EXC3000
scripts/config --disable CONFIG_TOUCHSCREEN_FUJITSU
scripts/config --disable CONFIG_TOUCHSCREEN_GOODIX
# scripts/config --set-val CONFIG_TOUCHSCREEN_GOODIX_BERLIN_CORE m
# scripts/config --set-val CONFIG_TOUCHSCREEN_GOODIX_BERLIN_I2C m
# scripts/config --set-val CONFIG_TOUCHSCREEN_GOODIX_BERLIN_SPI m
scripts/config --disable CONFIG_TOUCHSCREEN_HIDEEP
scripts/config --disable CONFIG_TOUCHSCREEN_HYCON_HY46XX
scripts/config --disable CONFIG_TOUCHSCREEN_HYNITRON_CSTXXX
scripts/config --disable CONFIG_TOUCHSCREEN_ILI210X
scripts/config --disable CONFIG_TOUCHSCREEN_ILITEK
scripts/config --disable CONFIG_TOUCHSCREEN_S6SY761
scripts/config --disable CONFIG_TOUCHSCREEN_GUNZE
scripts/config --disable CONFIG_TOUCHSCREEN_EKTF2127
# scripts/config --enable CONFIG_TOUCHSCREEN_ELAN
scripts/config --disable CONFIG_TOUCHSCREEN_ELO
# scripts/config --set-val CONFIG_TOUCHSCREEN_WACOM_W8001 m
# scripts/config --set-val CONFIG_TOUCHSCREEN_WACOM_I2C m
# scripts/config --set-val CONFIG_TOUCHSCREEN_MAX11801 m
# scripts/config --set-val CONFIG_TOUCHSCREEN_MMS114 m
# scripts/config --set-val CONFIG_TOUCHSCREEN_MELFAS_MIP4 m
# scripts/config --set-val CONFIG_TOUCHSCREEN_MSG2638 m
# scripts/config --set-val CONFIG_TOUCHSCREEN_MTOUCH m
# scripts/config --set-val CONFIG_TOUCHSCREEN_NOVATEK_NVT_TS m
# scripts/config --set-val CONFIG_TOUCHSCREEN_IMAGIS m
# scripts/config --set-val CONFIG_TOUCHSCREEN_INEXIO m
# scripts/config --set-val CONFIG_TOUCHSCREEN_PENMOUNT m
# scripts/config --set-val CONFIG_TOUCHSCREEN_EDT_FT5X06 m
# scripts/config --set-val CONFIG_TOUCHSCREEN_TOUCHRIGHT m
# scripts/config --set-val CONFIG_TOUCHSCREEN_TOUCHWIN m
# scripts/config --set-val CONFIG_TOUCHSCREEN_PIXCIR m
# scripts/config --set-val CONFIG_TOUCHSCREEN_WDT87XX_I2C m
scripts/config --disable CONFIG_TOUCHSCREEN_USB_COMPOSITE
scripts/config --disable CONFIG_TOUCHSCREEN_TOUCHIT213
scripts/config --disable CONFIG_TOUCHSCREEN_TSC_SERIO
scripts/config --disable CONFIG_TOUCHSCREEN_TSC2004
scripts/config --disable CONFIG_TOUCHSCREEN_TSC2005
scripts/config --disable CONFIG_TOUCHSCREEN_TSC2007
scripts/config --disable CONFIG_TOUCHSCREEN_PCAP
scripts/config --disable CONFIG_TOUCHSCREEN_RM_TS
scripts/config --disable CONFIG_TOUCHSCREEN_SILEAD
scripts/config --disable CONFIG_TOUCHSCREEN_SIS_I2C
scripts/config --disable CONFIG_TOUCHSCREEN_ST1232
scripts/config --disable CONFIG_TOUCHSCREEN_STMFTS
scripts/config --disable CONFIG_TOUCHSCREEN_SURFACE3_SPI
scripts/config --disable CONFIG_TOUCHSCREEN_SX8654
scripts/config --disable CONFIG_TOUCHSCREEN_TPS6507X
scripts/config --disable CONFIG_TOUCHSCREEN_ZET6223
scripts/config --disable CONFIG_TOUCHSCREEN_ZFORCE
scripts/config --disable CONFIG_TOUCHSCREEN_COLIBRI_VF50
scripts/config --disable CONFIG_TOUCHSCREEN_ROHM_BU21023
scripts/config --disable CONFIG_TOUCHSCREEN_IQS5XX
scripts/config --disable CONFIG_TOUCHSCREEN_IQS7211
scripts/config --disable CONFIG_TOUCHSCREEN_ZINITIX
scripts/config --disable CONFIG_TOUCHSCREEN_HIMAX_HX83112B
scripts/config --disable CONFIG_INPUT_MISC
# scripts/config --set-val CONFIG_RMI4_CORE m
scripts/config --disable CONFIG_RMI4_I2C
scripts/config --disable CONFIG_RMI4_SPI
scripts/config --disable CONFIG_RMI4_SMB
# scripts/config --enable CONFIG_RMI4_F03
# scripts/config --set-val CONFIG_RMI4_F03_SERIO m
# scripts/config --enable CONFIG_RMI4_2D_SENSOR
# scripts/config --enable CONFIG_RMI4_F11
# scripts/config --enable CONFIG_RMI4_F12
# scripts/config --enable CONFIG_RMI4_F30
# scripts/config --enable CONFIG_RMI4_F34
# scripts/config --enable CONFIG_RMI4_F3A
# scripts/config --enable CONFIG_RMI4_F55
# scripts/config --enable CONFIG_SERIO
# scripts/config --enable CONFIG_ARCH_MIGHT_HAVE_PC_SERIO
# scripts/config --enable CONFIG_SERIO_I8042
scripts/config --disable CONFIG_SERIO_SERPORT
scripts/config --disable CONFIG_SERIO_CT82C710
scripts/config --disable CONFIG_SERIO_PARKBD
scripts/config --disable CONFIG_SERIO_PCIPS2
# scripts/config --enable CONFIG_SERIO_LIBPS2
# scripts/config --set-val CONFIG_SERIO_RAW m
scripts/config --disable CONFIG_SERIO_ALTERA_PS2
scripts/config --disable CONFIG_SERIO_PS2MULT
scripts/config --disable CONFIG_SERIO_ARC_PS2
scripts/config --disable CONFIG_HYPERV_KEYBOARD
scripts/config --disable CONFIG_SERIO_GPIO_PS2
scripts/config --disable CONFIG_USERIO
scripts/config --disable CONFIG_GAMEPORT
# scripts/config --enable CONFIG_TTY
# scripts/config --enable CONFIG_VT
# scripts/config --enable CONFIG_CONSOLE_TRANSLATIONS
# scripts/config --enable CONFIG_VT_CONSOLE
# scripts/config --enable CONFIG_VT_CONSOLE_SLEEP
# scripts/config --enable CONFIG_VT_HW_CONSOLE_BINDING
# scripts/config --enable CONFIG_UNIX98_PTYS
# scripts/config --enable CONFIG_LEGACY_PTYS
# scripts/config --set-val CONFIG_LEGACY_PTY_COUNT 0
# scripts/config --disable CONFIG_LEGACY_TIOCSTI
# scripts/config --enable CONFIG_LDISC_AUTOLOAD
# scripts/config --enable CONFIG_SERIAL_EARLYCON
# scripts/config --enable CONFIG_SERIAL_8250
# scripts/config --disable CONFIG_SERIAL_8250_DEPRECATED_OPTIONS
# scripts/config --enable CONFIG_SERIAL_8250_PNP
# scripts/config --enable CONFIG_SERIAL_8250_16550A_VARIANTS
# scripts/config --enable CONFIG_SERIAL_8250_FINTEK
# scripts/config --enable CONFIG_SERIAL_8250_CONSOLE
# scripts/config --enable CONFIG_SERIAL_8250_DMA
# scripts/config --enable CONFIG_SERIAL_8250_PCILIB
# scripts/config --enable CONFIG_SERIAL_8250_PCI
scripts/config --disable CONFIG_SERIAL_8250_EXAR
scripts/config --disable CONFIG_SERIAL_8250_CS
scripts/config --disable CONFIG_SERIAL_8250_MEN_MCB
# scripts/config --set-val CONFIG_SERIAL_8250_NR_UARTS 48
# scripts/config --set-val CONFIG_SERIAL_8250_RUNTIME_UARTS 32
# scripts/config --enable CONFIG_SERIAL_8250_EXTENDED
# scripts/config --enable CONFIG_SERIAL_8250_MANY_PORTS
scripts/config --disable CONFIG_SERIAL_8250_PCI1XXXX
# scripts/config --enable CONFIG_SERIAL_8250_SHARE_IRQ
# scripts/config --disable CONFIG_SERIAL_8250_DETECT_IRQ
# scripts/config --enable CONFIG_SERIAL_8250_RSA
scripts/config --disable CONFIG_SERIAL_8250_DFL
scripts/config --disable CONFIG_SERIAL_8250_DW
# scripts/config --enable CONFIG_SERIAL_8250_RT288X
scripts/config --disable CONFIG_SERIAL_8250_LPSS
scripts/config --disable CONFIG_SERIAL_8250_MID
scripts/config --disable CONFIG_SERIAL_8250_PERICOM
scripts/config --disable CONFIG_SERIAL_MAX3100
# scripts/config --enable CONFIG_SERIAL_MAX310X
scripts/config --disable CONFIG_SERIAL_UARTLITE
# scripts/config --enable CONFIG_SERIAL_CORE
# scripts/config --enable CONFIG_SERIAL_CORE_CONSOLE
scripts/config --disable CONFIG_SERIAL_JSM
scripts/config --disable CONFIG_SERIAL_LANTIQ
scripts/config --disable CONFIG_SERIAL_SCCNXP
scripts/config --disable CONFIG_SERIAL_SC16IS7XX
scripts/config --disable CONFIG_SERIAL_ALTERA_JTAGUART
scripts/config --disable CONFIG_SERIAL_ALTERA_UART
scripts/config --disable CONFIG_SERIAL_ARC
scripts/config --disable CONFIG_SERIAL_RP2
scripts/config --disable CONFIG_SERIAL_FSL_LPUART
scripts/config --disable CONFIG_SERIAL_FSL_LINFLEXUART
scripts/config --disable CONFIG_SERIAL_MEN_Z135
scripts/config --disable CONFIG_SERIAL_SPRD
# scripts/config --enable CONFIG_SERIAL_MCTRL_GPIO
# scripts/config --enable CONFIG_SERIAL_NONSTANDARD
scripts/config --disable CONFIG_MOXA_INTELLIO
scripts/config --disable CONFIG_MOXA_SMARTIO
scripts/config --disable CONFIG_N_HDLC
scripts/config --disable CONFIG_IPWIRELESS
scripts/config --disable CONFIG_N_GSM
scripts/config --disable CONFIG_NOZOMI
scripts/config --disable CONFIG_NULL_TTY
# scripts/config --enable CONFIG_HVC_DRIVER
# scripts/config --enable CONFIG_HVC_IRQ
# scripts/config --enable CONFIG_HVC_XEN
# scripts/config --enable CONFIG_HVC_XEN_FRONTEND
# scripts/config --set-val CONFIG_RPMSG_TTY m
# scripts/config --enable CONFIG_SERIAL_DEV_BUS
# scripts/config --enable CONFIG_SERIAL_DEV_CTRL_TTYPORT
scripts/config --disable CONFIG_PRINTER
scripts/config --disable CONFIG_PPDEV
# scripts/config --enable CONFIG_VIRTIO_CONSOLE
scripts/config --disable CONFIG_IPMI_HANDLER
# scripts/config --enable CONFIG_HW_RANDOM
# scripts/config --set-val CONFIG_HW_RANDOM_TIMERIOMEM m
# scripts/config --set-val CONFIG_HW_RANDOM_INTEL m
# scripts/config --set-val CONFIG_HW_RANDOM_AMD m
# scripts/config --set-val CONFIG_HW_RANDOM_BA431 m
# scripts/config --set-val CONFIG_HW_RANDOM_VIA m
# scripts/config --set-val CONFIG_HW_RANDOM_VIRTIO m
# scripts/config --set-val CONFIG_HW_RANDOM_XIPHERA m
scripts/config --disable CONFIG_APPLICOM
scripts/config --disable CONFIG_MWAVE
# scripts/config --enable CONFIG_DEVMEM
# scripts/config --set-val CONFIG_NVRAM m
# scripts/config --enable CONFIG_DEVPORT
# scripts/config --enable CONFIG_HPET
# scripts/config --enable CONFIG_HPET_MMAP
# scripts/config --enable CONFIG_HPET_MMAP_DEFAULT
scripts/config --disable CONFIG_HANGCHECK_TIMER
# scripts/config --enable CONFIG_TCG_TPM
scripts/config --disable CONFIG_TCG_TPM2_HMAC
# scripts/config --enable CONFIG_HW_RANDOM_TPM
# scripts/config --enable CONFIG_TCG_TIS_CORE
# scripts/config --enable CONFIG_TCG_TIS
scripts/config --disable CONFIG_TCG_TIS_SPI
scripts/config --disable CONFIG_TCG_TIS_I2C
scripts/config --disable CONFIG_TCG_TIS_I2C_CR50
scripts/config --disable CONFIG_TCG_TIS_I2C_ATMEL
scripts/config --disable CONFIG_TCG_TIS_I2C_INFINEON
scripts/config --disable CONFIG_TCG_TIS_I2C_NUVOTON
scripts/config --disable CONFIG_TCG_NSC
scripts/config --disable CONFIG_TCG_ATMEL
scripts/config --disable CONFIG_TCG_INFINEON
scripts/config --disable CONFIG_TCG_XEN
# scripts/config --enable CONFIG_TCG_CRB
scripts/config --disable CONFIG_TCG_VTPM_PROXY
scripts/config --disable CONFIG_TCG_TIS_ST33ZP24_I2C
scripts/config --disable CONFIG_TCG_TIS_ST33ZP24_SPI
scripts/config --disable CONFIG_TELCLOCK
scripts/config --disable CONFIG_XILLYBUS
scripts/config --disable CONFIG_XILLYUSB
# scripts/config --enable CONFIG_I2C
# scripts/config --enable CONFIG_ACPI_I2C_OPREGION
# scripts/config --enable CONFIG_I2C_BOARDINFO
# scripts/config --enable CONFIG_I2C_CHARDEV
# scripts/config --set-val CONFIG_I2C_MUX m
scripts/config --disable CONFIG_I2C_MUX_GPIO
scripts/config --disable CONFIG_I2C_MUX_LTC4306
scripts/config --disable CONFIG_I2C_MUX_PCA9541
# scripts/config --set-val CONFIG_I2C_MUX_PCA954x m
scripts/config --disable CONFIG_I2C_MUX_REG
scripts/config --disable CONFIG_I2C_MUX_MLXCPLD
# scripts/config --enable CONFIG_I2C_HELPER_AUTO
# scripts/config --set-val CONFIG_I2C_ALGOBIT m
scripts/config --disable CONFIG_I2C_ALI1535
scripts/config --disable CONFIG_I2C_ALI1563
scripts/config --disable CONFIG_I2C_ALI15X3
scripts/config --disable CONFIG_I2C_AMD756
scripts/config --disable CONFIG_I2C_AMD8111
scripts/config --disable CONFIG_I2C_AMD_MP2
scripts/config --disable CONFIG_I2C_I801
scripts/config --disable CONFIG_I2C_ISCH
scripts/config --disable CONFIG_I2C_ISMT
scripts/config --disable CONFIG_I2C_PIIX4
scripts/config --disable CONFIG_I2C_NFORCE2
scripts/config --disable CONFIG_I2C_NVIDIA_GPU
scripts/config --disable CONFIG_I2C_SIS5595
scripts/config --disable CONFIG_I2C_SIS630
scripts/config --disable CONFIG_I2C_SIS96X
scripts/config --disable CONFIG_I2C_VIA
scripts/config --disable CONFIG_I2C_VIAPRO
# scripts/config --set-val CONFIG_I2C_ZHAOXIN m
scripts/config --disable CONFIG_I2C_SCMI
scripts/config --disable CONFIG_I2C_CBUS_GPIO
# scripts/config --enable CONFIG_I2C_DESIGNWARE_CORE
# scripts/config --disable CONFIG_I2C_DESIGNWARE_SLAVE
scripts/config --disable CONFIG_I2C_DESIGNWARE_PLATFORM
scripts/config --disable CONFIG_I2C_DESIGNWARE_PCI
# scripts/config --disable CONFIG_I2C_EMEV2
scripts/config --disable CONFIG_I2C_GPIO
# scripts/config --set-val CONFIG_I2C_KEBA m
scripts/config --disable CONFIG_I2C_KEMPLD
scripts/config --disable CONFIG_I2C_OCORES
scripts/config --disable CONFIG_I2C_PCA_PLATFORM
scripts/config --disable CONFIG_I2C_SIMTEC
scripts/config --disable CONFIG_I2C_XILINX
scripts/config --disable CONFIG_I2C_DIOLAN_U2C
scripts/config --disable CONFIG_I2C_DLN2
scripts/config --disable CONFIG_I2C_LJCA
scripts/config --disable CONFIG_I2C_CP2615
scripts/config --disable CONFIG_I2C_PARPORT
scripts/config --disable CONFIG_I2C_PCI1XXXX
scripts/config --disable CONFIG_I2C_ROBOTFUZZ_OSIF
scripts/config --disable CONFIG_I2C_TAOS_EVM
scripts/config --disable CONFIG_I2C_TINY_USB
scripts/config --disable CONFIG_I2C_VIPERBOARD
scripts/config --disable CONFIG_I2C_MLXCPLD
scripts/config --disable CONFIG_I2C_CROS_EC_TUNNEL
scripts/config --disable CONFIG_I2C_VIRTIO
scripts/config --disable CONFIG_I2C_STUB
# scripts/config --disable CONFIG_I2C_SLAVE
# scripts/config --disable CONFIG_I2C_DEBUG_CORE
# scripts/config --disable CONFIG_I2C_DEBUG_ALGO
# scripts/config --disable CONFIG_I2C_DEBUG_BUS
scripts/config --disable CONFIG_I3C
# scripts/config --enable CONFIG_SPI
# scripts/config --disable CONFIG_SPI_DEBUG
# scripts/config --enable CONFIG_SPI_MASTER
# scripts/config --enable CONFIG_SPI_MEM
scripts/config --disable CONFIG_SPI_ALTERA
scripts/config --disable CONFIG_SPI_ALTERA_DFL
scripts/config --disable CONFIG_SPI_AXI_SPI_ENGINE
scripts/config --disable CONFIG_SPI_BITBANG
scripts/config --disable CONFIG_SPI_BUTTERFLY
scripts/config --disable CONFIG_SPI_CADENCE
# scripts/config --set-val CONFIG_SPI_CH341 m
scripts/config --disable CONFIG_SPI_DESIGNWARE
scripts/config --disable CONFIG_SPI_DLN2
scripts/config --disable CONFIG_SPI_GPIO
scripts/config --disable CONFIG_SPI_INTEL_PCI
scripts/config --disable CONFIG_SPI_INTEL_PLATFORM
scripts/config --disable CONFIG_SPI_LM70_LLP
scripts/config --disable CONFIG_SPI_LJCA
scripts/config --disable CONFIG_SPI_MICROCHIP_CORE
scripts/config --disable CONFIG_SPI_MICROCHIP_CORE_QSPI
scripts/config --disable CONFIG_SPI_LANTIQ_SSC
scripts/config --disable CONFIG_SPI_OC_TINY
scripts/config --disable CONFIG_SPI_PCI1XXXX
scripts/config --disable CONFIG_SPI_PXA2XX
scripts/config --disable CONFIG_SPI_SC18IS602
scripts/config --disable CONFIG_SPI_SIFIVE
scripts/config --disable CONFIG_SPI_MXIC
scripts/config --disable CONFIG_SPI_XCOMM
scripts/config --disable CONFIG_SPI_XILINX
scripts/config --disable CONFIG_SPI_ZYNQMP_GQSPI
scripts/config --disable CONFIG_SPI_AMD
scripts/config --disable CONFIG_SPI_MUX
scripts/config --disable CONFIG_SPI_SPIDEV
scripts/config --disable CONFIG_SPI_LOOPBACK_TEST
scripts/config --disable CONFIG_SPI_TLE62X0
scripts/config --disable CONFIG_SPI_SLAVE
# scripts/config --enable CONFIG_SPI_DYNAMIC
scripts/config --disable CONFIG_SPMI
scripts/config --disable CONFIG_HSI
# scripts/config --enable CONFIG_PPS
# scripts/config --disable CONFIG_PPS_DEBUG
# scripts/config --disable CONFIG_PPS_CLIENT_KTIMER
# scripts/config --set-val CONFIG_PPS_CLIENT_LDISC m
# scripts/config --set-val CONFIG_PPS_CLIENT_PARPORT m
# scripts/config --set-val CONFIG_PPS_CLIENT_GPIO m
# scripts/config --enable CONFIG_PTP_1588_CLOCK
# scripts/config --enable CONFIG_PTP_1588_CLOCK_OPTIONAL
# scripts/config --set-val CONFIG_DP83640_PHY m
# scripts/config --set-val CONFIG_PTP_1588_CLOCK_INES m
# scripts/config --set-val CONFIG_PTP_1588_CLOCK_KVM m
# scripts/config --set-val CONFIG_PTP_1588_CLOCK_IDT82P33 m
# scripts/config --set-val CONFIG_PTP_1588_CLOCK_IDTCM m
# scripts/config --set-val CONFIG_PTP_1588_CLOCK_FC3W m
# scripts/config --set-val CONFIG_PTP_1588_CLOCK_MOCK m
# scripts/config --set-val CONFIG_PTP_1588_CLOCK_VMW m
# scripts/config --set-val CONFIG_PTP_1588_CLOCK_OCP m
# scripts/config --set-val CONFIG_PTP_DFL_TOD m
# scripts/config --enable CONFIG_PINCTRL
# scripts/config --enable CONFIG_PINMUX
# scripts/config --enable CONFIG_PINCONF
# scripts/config --enable CONFIG_GENERIC_PINCONF
# scripts/config --disable CONFIG_DEBUG_PINCTRL
# scripts/config --enable CONFIG_PINCTRL_AMD
scripts/config --disable CONFIG_PINCTRL_CY8C95X0
scripts/config --disable CONFIG_PINCTRL_DA9062
scripts/config --disable CONFIG_PINCTRL_MCP23S08
# scripts/config --enable CONFIG_PINCTRL_SX150X
# scripts/config --enable CONFIG_PINCTRL_BAYTRAIL
# scripts/config --enable CONFIG_PINCTRL_CHERRYVIEW
scripts/config --disable CONFIG_PINCTRL_LYNXPOINT
# scripts/config --enable CONFIG_PINCTRL_INTEL
scripts/config --disable CONFIG_PINCTRL_INTEL_PLATFORM
scripts/config --disable CONFIG_PINCTRL_ALDERLAKE
scripts/config --disable CONFIG_PINCTRL_BROXTON
scripts/config --disable CONFIG_PINCTRL_CANNONLAKE
scripts/config --disable CONFIG_PINCTRL_CEDARFORK
scripts/config --disable CONFIG_PINCTRL_DENVERTON
scripts/config --disable CONFIG_PINCTRL_ELKHARTLAKE
scripts/config --disable CONFIG_PINCTRL_EMMITSBURG
scripts/config --disable CONFIG_PINCTRL_GEMINILAKE
scripts/config --disable CONFIG_PINCTRL_ICELAKE
scripts/config --disable CONFIG_PINCTRL_JASPERLAKE
scripts/config --disable CONFIG_PINCTRL_LAKEFIELD
scripts/config --disable CONFIG_PINCTRL_LEWISBURG
scripts/config --disable CONFIG_PINCTRL_METEORLAKE
scripts/config --disable CONFIG_PINCTRL_METEORPOINT
scripts/config --disable CONFIG_PINCTRL_SUNRISEPOINT
scripts/config --disable CONFIG_PINCTRL_TIGERLAKE
# scripts/config --enable CONFIG_GPIOLIB
# scripts/config --set-val CONFIG_GPIOLIB_FASTPATH_LIMIT 512
# scripts/config --enable CONFIG_GPIO_ACPI
# scripts/config --enable CONFIG_GPIOLIB_IRQCHIP
# scripts/config --disable CONFIG_DEBUG_GPIO
# scripts/config --enable CONFIG_GPIO_CDEV
# scripts/config --enable CONFIG_GPIO_CDEV_V1
# scripts/config --enable CONFIG_GPIO_GENERIC
# scripts/config --set-val CONFIG_GPIO_REGMAP m
scripts/config --disable CONFIG_GPIO_AMDPT
scripts/config --disable CONFIG_GPIO_DWAPB
# scripts/config --enable CONFIG_GPIO_GENERIC_PLATFORM
# scripts/config --set-val CONFIG_GPIO_GRANITERAPIDS m
scripts/config --disable CONFIG_GPIO_ICH
scripts/config --disable CONFIG_GPIO_MB86S7X
scripts/config --disable CONFIG_GPIO_MENZ127
scripts/config --disable CONFIG_GPIO_SIOX
# scripts/config --set-val CONFIG_GPIO_AMD_FCH m
scripts/config --disable CONFIG_GPIO_VX855
scripts/config --disable CONFIG_GPIO_F7188X
scripts/config --disable CONFIG_GPIO_IT87
scripts/config --disable CONFIG_GPIO_SCH
scripts/config --disable CONFIG_GPIO_SCH311X
scripts/config --disable CONFIG_GPIO_WINBOND
scripts/config --disable CONFIG_GPIO_WS16C48
scripts/config --disable CONFIG_GPIO_FXL6408
scripts/config --disable CONFIG_GPIO_DS4520
scripts/config --disable CONFIG_GPIO_MAX7300
scripts/config --disable CONFIG_GPIO_MAX732X
scripts/config --disable CONFIG_GPIO_PCA953X
scripts/config --disable CONFIG_GPIO_PCA9570
scripts/config --disable CONFIG_GPIO_PCF857X
scripts/config --disable CONFIG_GPIO_TPIC2810
scripts/config --disable CONFIG_GPIO_ADP5520
# scripts/config --set-val CONFIG_GPIO_CROS_EC m
scripts/config --disable CONFIG_GPIO_DA9052
scripts/config --disable CONFIG_GPIO_DA9055
scripts/config --disable CONFIG_GPIO_DLN2
scripts/config --disable CONFIG_GPIO_ELKHARTLAKE
scripts/config --disable CONFIG_GPIO_JANZ_TTL
scripts/config --disable CONFIG_GPIO_KEMPLD
scripts/config --disable CONFIG_GPIO_LJCA
# scripts/config --enable CONFIG_GPIO_PALMAS
# scripts/config --enable CONFIG_GPIO_RC5T583
scripts/config --disable CONFIG_GPIO_TPS68470
scripts/config --disable CONFIG_GPIO_WHISKEY_COVE
scripts/config --disable CONFIG_GPIO_AMD8111
# scripts/config --disable CONFIG_GPIO_BT8XX
scripts/config --disable CONFIG_GPIO_ML_IOH
scripts/config --disable CONFIG_GPIO_PCI_IDIO_16
scripts/config --disable CONFIG_GPIO_PCIE_IDIO_24
scripts/config --disable CONFIG_GPIO_RDC321X
scripts/config --disable CONFIG_GPIO_MAX3191X
scripts/config --disable CONFIG_GPIO_MAX7301
scripts/config --disable CONFIG_GPIO_MC33880
scripts/config --disable CONFIG_GPIO_PISOSR
scripts/config --disable CONFIG_GPIO_XRA1403
scripts/config --disable CONFIG_GPIO_VIPERBOARD
scripts/config --disable CONFIG_GPIO_AGGREGATOR
scripts/config --disable CONFIG_GPIO_LATCH
# scripts/config --disable CONFIG_GPIO_MOCKUP
scripts/config --disable CONFIG_GPIO_VIRTIO
scripts/config --disable CONFIG_GPIO_SIM
# scripts/config --set-val CONFIG_GPIO_VIRTUSER m
scripts/config --disable CONFIG_W1
# scripts/config --enable CONFIG_POWER_RESET
scripts/config --disable CONFIG_POWER_RESET_MT6323
scripts/config --disable CONFIG_POWER_RESET_RESTART
# scripts/config --set-val CONFIG_POWER_SEQUENCING m
# scripts/config --enable CONFIG_POWER_SUPPLY
# scripts/config --disable CONFIG_POWER_SUPPLY_DEBUG
scripts/config --disable CONFIG_POWER_SUPPLY_HWMON
scripts/config --disable CONFIG_GENERIC_ADC_BATTERY
scripts/config --disable CONFIG_IP5XXX_POWER
scripts/config --disable CONFIG_MAX8925_POWER
scripts/config --disable CONFIG_TEST_POWER
scripts/config --disable CONFIG_BATTERY_88PM860X
scripts/config --disable CONFIG_CHARGER_ADP5061
scripts/config --disable CONFIG_BATTERY_CW2015
scripts/config --disable CONFIG_BATTERY_DS2780
scripts/config --disable CONFIG_BATTERY_DS2781
scripts/config --disable CONFIG_BATTERY_DS2782
scripts/config --disable CONFIG_BATTERY_SAMSUNG_SDI
scripts/config --disable CONFIG_BATTERY_SBS
scripts/config --disable CONFIG_CHARGER_SBS
scripts/config --disable CONFIG_MANAGER_SBS
scripts/config --disable CONFIG_BATTERY_BQ27XXX
scripts/config --disable CONFIG_BATTERY_DA9030
scripts/config --disable CONFIG_BATTERY_DA9052
scripts/config --disable CONFIG_CHARGER_DA9150
scripts/config --disable CONFIG_BATTERY_DA9150
scripts/config --disable CONFIG_BATTERY_MAX17040
scripts/config --disable CONFIG_BATTERY_MAX17042
# scripts/config --set-val CONFIG_BATTERY_MAX1720X m
scripts/config --disable CONFIG_CHARGER_PCF50633
scripts/config --disable CONFIG_CHARGER_ISP1704
scripts/config --disable CONFIG_CHARGER_MAX8903
scripts/config --disable CONFIG_CHARGER_LP8727
scripts/config --disable CONFIG_CHARGER_LP8788
scripts/config --disable CONFIG_CHARGER_GPIO
scripts/config --disable CONFIG_CHARGER_MANAGER
scripts/config --disable CONFIG_CHARGER_LT3651
scripts/config --disable CONFIG_CHARGER_LTC4162L
scripts/config --disable CONFIG_CHARGER_MAX14577
scripts/config --disable CONFIG_CHARGER_MAX77693
scripts/config --disable CONFIG_CHARGER_MAX77976
scripts/config --disable CONFIG_CHARGER_MT6360
scripts/config --disable CONFIG_CHARGER_MT6370
scripts/config --disable CONFIG_CHARGER_BQ2415X
scripts/config --disable CONFIG_CHARGER_BQ24190
scripts/config --disable CONFIG_CHARGER_BQ24257
scripts/config --disable CONFIG_CHARGER_BQ24735
scripts/config --disable CONFIG_CHARGER_BQ2515X
scripts/config --disable CONFIG_CHARGER_BQ25890
scripts/config --disable CONFIG_CHARGER_BQ25980
scripts/config --disable CONFIG_CHARGER_BQ256XX
scripts/config --disable CONFIG_CHARGER_SMB347
scripts/config --disable CONFIG_BATTERY_GAUGE_LTC2941
scripts/config --disable CONFIG_BATTERY_GOLDFISH
scripts/config --disable CONFIG_BATTERY_RT5033
scripts/config --disable CONFIG_CHARGER_RT5033
scripts/config --disable CONFIG_CHARGER_RT9455
scripts/config --disable CONFIG_CHARGER_RT9467
scripts/config --disable CONFIG_CHARGER_RT9471
scripts/config --disable CONFIG_CHARGER_BD99954
scripts/config --disable CONFIG_CHARGER_WILCO
scripts/config --disable CONFIG_BATTERY_SURFACE
scripts/config --disable CONFIG_CHARGER_SURFACE
scripts/config --disable CONFIG_BATTERY_UG3105
scripts/config --disable CONFIG_FUEL_GAUGE_MM8013
# scripts/config --enable CONFIG_HWMON
# scripts/config --disable CONFIG_HWMON_DEBUG_CHIP
scripts/config --disable CONFIG_SENSORS_ABITUGURU
scripts/config --disable CONFIG_SENSORS_ABITUGURU3
scripts/config --disable CONFIG_SENSORS_AD7314
scripts/config --disable CONFIG_SENSORS_AD7414
scripts/config --disable CONFIG_SENSORS_AD7418
scripts/config --disable CONFIG_SENSORS_ADM1025
scripts/config --disable CONFIG_SENSORS_ADM1026
scripts/config --disable CONFIG_SENSORS_ADM1029
scripts/config --disable CONFIG_SENSORS_ADM1031
scripts/config --disable CONFIG_SENSORS_ADM1177
scripts/config --disable CONFIG_SENSORS_ADM9240
scripts/config --disable CONFIG_SENSORS_ADT7310
scripts/config --disable CONFIG_SENSORS_ADT7410
scripts/config --disable CONFIG_SENSORS_ADT7411
scripts/config --disable CONFIG_SENSORS_ADT7462
scripts/config --disable CONFIG_SENSORS_ADT7470
scripts/config --disable CONFIG_SENSORS_ADT7475
scripts/config --disable CONFIG_SENSORS_AHT10
scripts/config --disable CONFIG_SENSORS_AQUACOMPUTER_D5NEXT
scripts/config --disable CONFIG_SENSORS_AS370
scripts/config --disable CONFIG_SENSORS_ASC7621
# scripts/config --set-val CONFIG_SENSORS_ASUS_ROG_RYUJIN m
scripts/config --disable CONFIG_SENSORS_AXI_FAN_CONTROL
scripts/config --disable CONFIG_SENSORS_K8TEMP
scripts/config --disable CONFIG_SENSORS_K10TEMP
scripts/config --disable CONFIG_SENSORS_FAM15H_POWER
scripts/config --disable CONFIG_SENSORS_APPLESMC
scripts/config --disable CONFIG_SENSORS_ASB100
scripts/config --disable CONFIG_SENSORS_ATXP1
# scripts/config --set-val CONFIG_SENSORS_CHIPCAP2 m
scripts/config --disable CONFIG_SENSORS_CORSAIR_CPRO
scripts/config --disable CONFIG_SENSORS_CORSAIR_PSU
scripts/config --disable CONFIG_SENSORS_DRIVETEMP
scripts/config --disable CONFIG_SENSORS_DS620
scripts/config --disable CONFIG_SENSORS_DS1621
scripts/config --disable CONFIG_SENSORS_DELL_SMM
scripts/config --disable CONFIG_SENSORS_DA9052_ADC
scripts/config --disable CONFIG_SENSORS_DA9055
scripts/config --disable CONFIG_SENSORS_I5K_AMB
scripts/config --disable CONFIG_SENSORS_F71805F
scripts/config --disable CONFIG_SENSORS_F71882FG
scripts/config --disable CONFIG_SENSORS_F75375S
scripts/config --disable CONFIG_SENSORS_FSCHMD
scripts/config --disable CONFIG_SENSORS_GIGABYTE_WATERFORCE
scripts/config --disable CONFIG_SENSORS_GL518SM
scripts/config --disable CONFIG_SENSORS_GL520SM
scripts/config --disable CONFIG_SENSORS_G760A
scripts/config --disable CONFIG_SENSORS_G762
scripts/config --disable CONFIG_SENSORS_HIH6130
scripts/config --disable CONFIG_SENSORS_HS3001
scripts/config --disable CONFIG_SENSORS_IIO_HWMON
scripts/config --disable CONFIG_SENSORS_I5500
scripts/config --disable CONFIG_SENSORS_CORETEMP
scripts/config --disable CONFIG_SENSORS_IT87
scripts/config --disable CONFIG_SENSORS_JC42
scripts/config --disable CONFIG_SENSORS_POWERZ
scripts/config --disable CONFIG_SENSORS_POWR1220
# scripts/config --set-val CONFIG_SENSORS_LENOVO_EC m
scripts/config --disable CONFIG_SENSORS_LINEAGE
scripts/config --disable CONFIG_SENSORS_LTC2945
scripts/config --disable CONFIG_SENSORS_LTC2947_I2C
scripts/config --disable CONFIG_SENSORS_LTC2947_SPI
scripts/config --disable CONFIG_SENSORS_LTC2990
scripts/config --disable CONFIG_SENSORS_LTC2991
scripts/config --disable CONFIG_SENSORS_LTC2992
scripts/config --disable CONFIG_SENSORS_LTC4151
scripts/config --disable CONFIG_SENSORS_LTC4215
scripts/config --disable CONFIG_SENSORS_LTC4222
scripts/config --disable CONFIG_SENSORS_LTC4245
scripts/config --disable CONFIG_SENSORS_LTC4260
scripts/config --disable CONFIG_SENSORS_LTC4261
# scripts/config --set-val CONFIG_SENSORS_LTC4282 m
scripts/config --disable CONFIG_SENSORS_MAX1111
scripts/config --disable CONFIG_SENSORS_MAX127
scripts/config --disable CONFIG_SENSORS_MAX16065
scripts/config --disable CONFIG_SENSORS_MAX1619
scripts/config --disable CONFIG_SENSORS_MAX1668
scripts/config --disable CONFIG_SENSORS_MAX197
scripts/config --disable CONFIG_SENSORS_MAX31722
scripts/config --disable CONFIG_SENSORS_MAX31730
scripts/config --disable CONFIG_SENSORS_MAX31760
scripts/config --disable CONFIG_MAX31827
scripts/config --disable CONFIG_SENSORS_MAX6620
scripts/config --disable CONFIG_SENSORS_MAX6621
scripts/config --disable CONFIG_SENSORS_MAX6639
scripts/config --disable CONFIG_SENSORS_MAX6650
scripts/config --disable CONFIG_SENSORS_MAX6697
scripts/config --disable CONFIG_SENSORS_MAX31790
scripts/config --disable CONFIG_SENSORS_MC34VR500
scripts/config --disable CONFIG_SENSORS_MCP3021
scripts/config --disable CONFIG_SENSORS_MLXREG_FAN
scripts/config --disable CONFIG_SENSORS_TC654
scripts/config --disable CONFIG_SENSORS_TPS23861
scripts/config --disable CONFIG_SENSORS_MENF21BMC_HWMON
scripts/config --disable CONFIG_SENSORS_MR75203
scripts/config --disable CONFIG_SENSORS_ADCXX
scripts/config --disable CONFIG_SENSORS_LM63
scripts/config --disable CONFIG_SENSORS_LM70
scripts/config --disable CONFIG_SENSORS_LM73
scripts/config --disable CONFIG_SENSORS_LM75
scripts/config --disable CONFIG_SENSORS_LM77
scripts/config --disable CONFIG_SENSORS_LM78
scripts/config --disable CONFIG_SENSORS_LM80
scripts/config --disable CONFIG_SENSORS_LM83
scripts/config --disable CONFIG_SENSORS_LM85
scripts/config --disable CONFIG_SENSORS_LM87
scripts/config --disable CONFIG_SENSORS_LM90
scripts/config --disable CONFIG_SENSORS_LM92
scripts/config --disable CONFIG_SENSORS_LM93
scripts/config --disable CONFIG_SENSORS_LM95234
scripts/config --disable CONFIG_SENSORS_LM95241
scripts/config --disable CONFIG_SENSORS_LM95245
scripts/config --disable CONFIG_SENSORS_PC87360
scripts/config --disable CONFIG_SENSORS_PC87427
scripts/config --disable CONFIG_SENSORS_NTC_THERMISTOR
scripts/config --disable CONFIG_SENSORS_NCT6683
scripts/config --disable CONFIG_SENSORS_NCT6775
scripts/config --disable CONFIG_SENSORS_NCT6775_I2C
scripts/config --disable CONFIG_SENSORS_NCT7802
scripts/config --disable CONFIG_SENSORS_NPCM7XX
scripts/config --disable CONFIG_SENSORS_NZXT_KRAKEN2
# scripts/config --set-val CONFIG_SENSORS_NZXT_KRAKEN3 m
scripts/config --disable CONFIG_SENSORS_NZXT_SMART2
scripts/config --disable CONFIG_SENSORS_OCC_P8_I2C
scripts/config --disable CONFIG_SENSORS_OXP
scripts/config --disable CONFIG_SENSORS_PCF8591
scripts/config --disable CONFIG_SENSORS_PECI_CPUTEMP
scripts/config --disable CONFIG_SENSORS_PECI_DIMMTEMP
# scripts/config --set-val CONFIG_PMBUS m
scripts/config --disable CONFIG_SENSORS_PMBUS
scripts/config --disable CONFIG_SENSORS_ACBEL_FSG032
scripts/config --disable CONFIG_SENSORS_ADM1266
scripts/config --disable CONFIG_SENSORS_ADM1275
# scripts/config --set-val CONFIG_SENSORS_ADP1050 m
scripts/config --disable CONFIG_SENSORS_BEL_PFE
scripts/config --disable CONFIG_SENSORS_BPA_RS600
scripts/config --disable CONFIG_SENSORS_DELTA_AHE50DC_FAN
scripts/config --disable CONFIG_SENSORS_FSP_3Y
scripts/config --disable CONFIG_SENSORS_IBM_CFFPS
scripts/config --disable CONFIG_SENSORS_DPS920AB
scripts/config --disable CONFIG_SENSORS_INSPUR_IPSPS
scripts/config --disable CONFIG_SENSORS_IR35221
scripts/config --disable CONFIG_SENSORS_IR36021
scripts/config --disable CONFIG_SENSORS_IR38064
scripts/config --disable CONFIG_SENSORS_IRPS5401
scripts/config --disable CONFIG_SENSORS_ISL68137
scripts/config --disable CONFIG_SENSORS_LM25066
scripts/config --disable CONFIG_SENSORS_LT7182S
scripts/config --disable CONFIG_SENSORS_LTC2978
scripts/config --disable CONFIG_SENSORS_LTC3815
scripts/config --disable CONFIG_SENSORS_LTC4286
scripts/config --disable CONFIG_SENSORS_MAX15301
scripts/config --disable CONFIG_SENSORS_MAX16064
scripts/config --disable CONFIG_SENSORS_MAX16601
scripts/config --disable CONFIG_SENSORS_MAX20730
scripts/config --disable CONFIG_SENSORS_MAX20751
scripts/config --disable CONFIG_SENSORS_MAX31785
scripts/config --disable CONFIG_SENSORS_MAX34440
scripts/config --disable CONFIG_SENSORS_MAX8688
scripts/config --disable CONFIG_SENSORS_MP2856
scripts/config --disable CONFIG_SENSORS_MP2888
# scripts/config --set-val CONFIG_SENSORS_MP2891 m
scripts/config --disable CONFIG_SENSORS_MP2975
# scripts/config --set-val CONFIG_SENSORS_MP2993 m
scripts/config --disable CONFIG_SENSORS_MP5023
# scripts/config --set-val CONFIG_SENSORS_MP5920 m
scripts/config --disable CONFIG_SENSORS_MP5990
# scripts/config --set-val CONFIG_SENSORS_MP9941 m
scripts/config --disable CONFIG_SENSORS_MPQ7932
# scripts/config --set-val CONFIG_SENSORS_MPQ8785 m
scripts/config --disable CONFIG_SENSORS_PIM4328
scripts/config --disable CONFIG_SENSORS_PLI1209BC
scripts/config --disable CONFIG_SENSORS_PM6764TR
scripts/config --disable CONFIG_SENSORS_PXE1610
scripts/config --disable CONFIG_SENSORS_Q54SJ108A2
scripts/config --disable CONFIG_SENSORS_STPDDC60
scripts/config --disable CONFIG_SENSORS_TDA38640
scripts/config --disable CONFIG_SENSORS_TPS40422
scripts/config --disable CONFIG_SENSORS_TPS53679
scripts/config --disable CONFIG_SENSORS_TPS546D24
scripts/config --disable CONFIG_SENSORS_UCD9000
scripts/config --disable CONFIG_SENSORS_UCD9200
# scripts/config --set-val CONFIG_SENSORS_XDP710 m
scripts/config --disable CONFIG_SENSORS_XDPE152
scripts/config --disable CONFIG_SENSORS_XDPE122
scripts/config --disable CONFIG_SENSORS_ZL6100
# scripts/config --set-val CONFIG_SENSORS_PT5161L m
# scripts/config --set-val CONFIG_SENSORS_PWM_FAN m
scripts/config --disable CONFIG_SENSORS_SBTSI
scripts/config --disable CONFIG_SENSORS_SBRMI
scripts/config --disable CONFIG_SENSORS_SHT15
scripts/config --disable CONFIG_SENSORS_SHT21
# scripts/config --set-val CONFIG_SENSORS_SHT3x m
# scripts/config --set-val CONFIG_SENSORS_SHT4x m
scripts/config --disable CONFIG_SENSORS_SHTC1
scripts/config --disable CONFIG_SENSORS_SIS5595
scripts/config --disable CONFIG_SENSORS_SY7636A
scripts/config --disable CONFIG_SENSORS_DME1737
scripts/config --disable CONFIG_SENSORS_EMC1403
scripts/config --disable CONFIG_SENSORS_EMC2103
scripts/config --disable CONFIG_SENSORS_EMC2305
scripts/config --disable CONFIG_SENSORS_EMC6W201
scripts/config --disable CONFIG_SENSORS_SMSC47M1
scripts/config --disable CONFIG_SENSORS_SMSC47M192
scripts/config --disable CONFIG_SENSORS_SMSC47B397
# scripts/config --set-val CONFIG_SENSORS_STEAMDECK m
scripts/config --disable CONFIG_SENSORS_STTS751
# scripts/config --set-val CONFIG_SENSORS_SURFACE_FAN m
# scripts/config --set-val CONFIG_SENSORS_SURFACE_TEMP m
scripts/config --disable CONFIG_SENSORS_ADC128D818
scripts/config --disable CONFIG_SENSORS_ADS7828
scripts/config --disable CONFIG_SENSORS_ADS7871
scripts/config --disable CONFIG_SENSORS_AMC6821
scripts/config --disable CONFIG_SENSORS_INA209
scripts/config --disable CONFIG_SENSORS_INA2XX
scripts/config --disable CONFIG_SENSORS_INA238
scripts/config --disable CONFIG_SENSORS_INA3221
# scripts/config --set-val CONFIG_SENSORS_SPD5118 m
# scripts/config --disable CONFIG_SENSORS_SPD5118_DETECT
scripts/config --disable CONFIG_SENSORS_TC74
scripts/config --disable CONFIG_SENSORS_THMC50
scripts/config --disable CONFIG_SENSORS_TMP102
scripts/config --disable CONFIG_SENSORS_TMP103
scripts/config --disable CONFIG_SENSORS_TMP108
scripts/config --disable CONFIG_SENSORS_TMP401
scripts/config --disable CONFIG_SENSORS_TMP421
scripts/config --disable CONFIG_SENSORS_TMP464
scripts/config --disable CONFIG_SENSORS_TMP513
scripts/config --disable CONFIG_SENSORS_VIA_CPUTEMP
scripts/config --disable CONFIG_SENSORS_VIA686A
scripts/config --disable CONFIG_SENSORS_VT1211
scripts/config --disable CONFIG_SENSORS_VT8231
scripts/config --disable CONFIG_SENSORS_W83773G
scripts/config --disable CONFIG_SENSORS_W83781D
scripts/config --disable CONFIG_SENSORS_W83791D
scripts/config --disable CONFIG_SENSORS_W83792D
scripts/config --disable CONFIG_SENSORS_W83793
scripts/config --disable CONFIG_SENSORS_W83795
scripts/config --disable CONFIG_SENSORS_W83L785TS
scripts/config --disable CONFIG_SENSORS_W83L786NG
scripts/config --disable CONFIG_SENSORS_W83627HF
scripts/config --disable CONFIG_SENSORS_W83627EHF
scripts/config --disable CONFIG_SENSORS_XGENE
scripts/config --disable CONFIG_SENSORS_ACPI_POWER
scripts/config --disable CONFIG_SENSORS_ATK0110
scripts/config --disable CONFIG_SENSORS_ASUS_WMI
scripts/config --disable CONFIG_SENSORS_ASUS_EC
scripts/config --disable CONFIG_SENSORS_HP_WMI
# scripts/config --enable CONFIG_THERMAL
# scripts/config --enable CONFIG_THERMAL_NETLINK
scripts/config --disable CONFIG_THERMAL_STATISTICS
# scripts/config --disable CONFIG_THERMAL_DEBUGFS
# scripts/config --set-val CONFIG_THERMAL_CORE_TESTING m
# scripts/config --set-val CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS 0
# scripts/config --enable CONFIG_THERMAL_HWMON
# scripts/config --enable CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE
# scripts/config --disable CONFIG_THERMAL_DEFAULT_GOV_FAIR_SHARE
# scripts/config --disable CONFIG_THERMAL_DEFAULT_GOV_USER_SPACE
# scripts/config --disable CONFIG_THERMAL_DEFAULT_GOV_BANG_BANG
scripts/config --disable CONFIG_THERMAL_GOV_FAIR_SHARE
# scripts/config --enable CONFIG_THERMAL_GOV_STEP_WISE
# scripts/config --enable CONFIG_THERMAL_GOV_BANG_BANG
scripts/config --disable CONFIG_THERMAL_GOV_USER_SPACE
scripts/config --disable CONFIG_DEVFREQ_THERMAL
scripts/config --disable CONFIG_THERMAL_EMULATION
scripts/config --disable CONFIG_INTEL_POWERCLAMP
# scripts/config --enable CONFIG_X86_THERMAL_VECTOR
scripts/config --disable CONFIG_X86_PKG_TEMP_THERMAL
scripts/config --disable CONFIG_INTEL_SOC_DTS_THERMAL
scripts/config --disable CONFIG_INT340X_THERMAL
scripts/config --disable CONFIG_INTEL_BXT_PMIC_THERMAL
scripts/config --disable CONFIG_INTEL_PCH_THERMAL
scripts/config --disable CONFIG_INTEL_TCC_COOLING
# scripts/config --enable CONFIG_INTEL_HFI_THERMAL
# scripts/config --set-val CONFIG_GENERIC_ADC_THERMAL m
scripts/config --disable CONFIG_WATCHDOG
# scripts/config --enable CONFIG_SSB_POSSIBLE
# scripts/config --set-val CONFIG_SSB m
# scripts/config --enable CONFIG_SSB_SPROM
# scripts/config --enable CONFIG_SSB_PCIHOST_POSSIBLE
# scripts/config --enable CONFIG_SSB_PCIHOST
# scripts/config --enable CONFIG_SSB_PCMCIAHOST_POSSIBLE
# scripts/config --disable CONFIG_SSB_PCMCIAHOST
# scripts/config --enable CONFIG_SSB_SDIOHOST_POSSIBLE
# scripts/config --enable CONFIG_SSB_SDIOHOST
# scripts/config --enable CONFIG_SSB_DRIVER_PCICORE_POSSIBLE
# scripts/config --enable CONFIG_SSB_DRIVER_PCICORE
# scripts/config --enable CONFIG_SSB_DRIVER_GPIO
# scripts/config --enable CONFIG_BCMA_POSSIBLE
scripts/config --disable CONFIG_BCMA
# scripts/config --enable CONFIG_MFD_CORE
scripts/config --disable CONFIG_MFD_AS3711
scripts/config --disable CONFIG_MFD_SMPRO
# scripts/config --enable CONFIG_PMIC_ADP5520
# scripts/config --enable CONFIG_MFD_AAT2870_CORE
scripts/config --disable CONFIG_MFD_BCM590XX
scripts/config --disable CONFIG_MFD_BD9571MWV
scripts/config --disable CONFIG_MFD_AXP20X_I2C
scripts/config --disable CONFIG_MFD_CROS_EC_DEV
scripts/config --disable CONFIG_MFD_CS42L43_I2C
scripts/config --disable CONFIG_MFD_CS42L43_SDW
scripts/config --disable CONFIG_MFD_MADERA
# scripts/config --enable CONFIG_PMIC_DA903X
# scripts/config --enable CONFIG_PMIC_DA9052
# scripts/config --enable CONFIG_MFD_DA9052_SPI
# scripts/config --enable CONFIG_MFD_DA9052_I2C
# scripts/config --enable CONFIG_MFD_DA9055
# scripts/config --set-val CONFIG_MFD_DA9062 m
# scripts/config --enable CONFIG_MFD_DA9063
# scripts/config --set-val CONFIG_MFD_DA9150 m
# scripts/config --set-val CONFIG_MFD_DLN2 m
scripts/config --disable CONFIG_MFD_MC13XXX_SPI
scripts/config --disable CONFIG_MFD_MC13XXX_I2C
scripts/config --disable CONFIG_MFD_MP2629
scripts/config --disable CONFIG_MFD_INTEL_QUARK_I2C_GPIO
# scripts/config --set-val CONFIG_LPC_ICH m
# scripts/config --set-val CONFIG_LPC_SCH m
# scripts/config --set-val CONFIG_INTEL_SOC_PMIC_BXTWC m
# scripts/config --set-val CONFIG_INTEL_SOC_PMIC_MRFLD m
# scripts/config --set-val CONFIG_MFD_INTEL_LPSS m
# scripts/config --set-val CONFIG_MFD_INTEL_LPSS_ACPI m
# scripts/config --set-val CONFIG_MFD_INTEL_LPSS_PCI m
# scripts/config --set-val CONFIG_MFD_INTEL_PMC_BXT m
# scripts/config --set-val CONFIG_MFD_IQS62X m
# scripts/config --set-val CONFIG_MFD_JANZ_CMODIO m
# scripts/config --set-val CONFIG_MFD_KEMPLD m
# scripts/config --set-val CONFIG_MFD_88PM800 m
# scripts/config --set-val CONFIG_MFD_88PM805 m
# scripts/config --enable CONFIG_MFD_88PM860X
# scripts/config --enable CONFIG_MFD_MAX14577
# scripts/config --set-val CONFIG_MFD_MAX77541 m
# scripts/config --enable CONFIG_MFD_MAX77693
# scripts/config --enable CONFIG_MFD_MAX77843
# scripts/config --set-val CONFIG_MFD_MAX8907 m
# scripts/config --enable CONFIG_MFD_MAX8925
# scripts/config --enable CONFIG_MFD_MAX8997
# scripts/config --enable CONFIG_MFD_MAX8998
# scripts/config --set-val CONFIG_MFD_MT6360 m
# scripts/config --set-val CONFIG_MFD_MT6370 m
# scripts/config --set-val CONFIG_MFD_MT6397 m
# scripts/config --set-val CONFIG_MFD_MENF21BMC m
# scripts/config --set-val CONFIG_MFD_OCELOT m
# scripts/config --enable CONFIG_EZX_PCAP
# scripts/config --set-val CONFIG_MFD_VIPERBOARD m
# scripts/config --set-val CONFIG_MFD_RETU m
# scripts/config --set-val CONFIG_MFD_PCF50633 m
# scripts/config --set-val CONFIG_PCF50633_ADC m
# scripts/config --set-val CONFIG_PCF50633_GPIO m
# scripts/config --set-val CONFIG_MFD_SY7636A m
# scripts/config --set-val CONFIG_MFD_RDC321X m
# scripts/config --set-val CONFIG_MFD_RT4831 m
# scripts/config --set-val CONFIG_MFD_RT5033 m
# scripts/config --set-val CONFIG_MFD_RT5120 m
# scripts/config --enable CONFIG_MFD_RC5T583
# scripts/config --set-val CONFIG_MFD_SI476X_CORE m
# scripts/config --set-val CONFIG_MFD_SIMPLE_MFD_I2C m
# scripts/config --set-val CONFIG_MFD_SM501 m
# scripts/config --enable CONFIG_MFD_SM501_GPIO
# scripts/config --set-val CONFIG_MFD_SKY81452 m
# scripts/config --enable CONFIG_MFD_SYSCON
scripts/config --disable CONFIG_MFD_LP3943
# scripts/config --enable CONFIG_MFD_LP8788
scripts/config --disable CONFIG_MFD_TI_LMU
# scripts/config --enable CONFIG_MFD_PALMAS
# scripts/config --set-val CONFIG_TPS6105X m
# scripts/config --set-val CONFIG_TPS65010 m
# scripts/config --set-val CONFIG_TPS6507X m
scripts/config --disable CONFIG_MFD_TPS65086
scripts/config --disable CONFIG_MFD_TPS65090
scripts/config --disable CONFIG_MFD_TI_LP873X
scripts/config --disable CONFIG_MFD_TPS6586X
scripts/config --disable CONFIG_MFD_TPS65910
scripts/config --disable CONFIG_MFD_TPS65912_I2C
scripts/config --disable CONFIG_MFD_TPS65912_SPI
scripts/config --disable CONFIG_MFD_TPS6594_I2C
scripts/config --disable CONFIG_MFD_TPS6594_SPI
scripts/config --disable CONFIG_TWL4030_CORE
scripts/config --disable CONFIG_TWL6040_CORE
scripts/config --disable CONFIG_MFD_WL1273_CORE
scripts/config --disable CONFIG_MFD_LM3533
scripts/config --disable CONFIG_MFD_TQMX86
scripts/config --disable CONFIG_MFD_VX855
scripts/config --disable CONFIG_MFD_ARIZONA_I2C
scripts/config --disable CONFIG_MFD_ARIZONA_SPI
scripts/config --disable CONFIG_MFD_WM8400
scripts/config --disable CONFIG_MFD_WM831X_I2C
scripts/config --disable CONFIG_MFD_WM831X_SPI
scripts/config --disable CONFIG_MFD_WM8350_I2C
scripts/config --disable CONFIG_MFD_WM8994
scripts/config --disable CONFIG_MFD_WCD934X
scripts/config --disable CONFIG_MFD_ATC260X_I2C
# scripts/config --set-val CONFIG_MFD_CS40L50_CORE m
# scripts/config --set-val CONFIG_MFD_CS40L50_I2C m
# scripts/config --set-val CONFIG_MFD_CS40L50_SPI m
scripts/config --disable CONFIG_RAVE_SP_CORE
scripts/config --disable CONFIG_MFD_INTEL_M10_BMC_SPI
scripts/config --disable CONFIG_MFD_INTEL_M10_BMC_PMCI
# scripts/config --set-val CONFIG_MFD_STEAMDECK m
# scripts/config --enable CONFIG_REGULATOR
# scripts/config --disable CONFIG_REGULATOR_DEBUG
# scripts/config --set-val CONFIG_REGULATOR_FIXED_VOLTAGE m
scripts/config --disable CONFIG_REGULATOR_VIRTUAL_CONSUMER
scripts/config --disable CONFIG_REGULATOR_USERSPACE_CONSUMER
# scripts/config --enable CONFIG_REGULATOR_NETLINK_EVENTS
scripts/config --disable CONFIG_REGULATOR_88PG86X
scripts/config --disable CONFIG_REGULATOR_88PM800
scripts/config --disable CONFIG_REGULATOR_88PM8607
scripts/config --disable CONFIG_REGULATOR_ACT8865
scripts/config --disable CONFIG_REGULATOR_AD5398
scripts/config --disable CONFIG_REGULATOR_AAT2870
scripts/config --disable CONFIG_REGULATOR_AW37503
scripts/config --disable CONFIG_REGULATOR_DA9052
scripts/config --disable CONFIG_REGULATOR_DA9055
scripts/config --disable CONFIG_REGULATOR_DA9062
scripts/config --disable CONFIG_REGULATOR_DA9210
scripts/config --disable CONFIG_REGULATOR_DA9211
scripts/config --disable CONFIG_REGULATOR_FAN53555
scripts/config --disable CONFIG_REGULATOR_GPIO
scripts/config --disable CONFIG_REGULATOR_ISL9305
scripts/config --disable CONFIG_REGULATOR_ISL6271A
scripts/config --disable CONFIG_REGULATOR_LP3971
scripts/config --disable CONFIG_REGULATOR_LP3972
scripts/config --disable CONFIG_REGULATOR_LP872X
scripts/config --disable CONFIG_REGULATOR_LP8755
scripts/config --disable CONFIG_REGULATOR_LP8788
scripts/config --disable CONFIG_REGULATOR_LTC3589
scripts/config --disable CONFIG_REGULATOR_LTC3676
scripts/config --disable CONFIG_REGULATOR_MAX14577
scripts/config --disable CONFIG_REGULATOR_MAX1586
scripts/config --disable CONFIG_REGULATOR_MAX77503
scripts/config --disable CONFIG_REGULATOR_MAX77541
scripts/config --disable CONFIG_REGULATOR_MAX77857
scripts/config --disable CONFIG_REGULATOR_MAX8649
scripts/config --disable CONFIG_REGULATOR_MAX8660
scripts/config --disable CONFIG_REGULATOR_MAX8893
scripts/config --disable CONFIG_REGULATOR_MAX8907
scripts/config --disable CONFIG_REGULATOR_MAX8925
scripts/config --disable CONFIG_REGULATOR_MAX8952
scripts/config --disable CONFIG_REGULATOR_MAX8997
scripts/config --disable CONFIG_REGULATOR_MAX8998
scripts/config --disable CONFIG_REGULATOR_MAX20086
scripts/config --disable CONFIG_REGULATOR_MAX20411
scripts/config --disable CONFIG_REGULATOR_MAX77693
scripts/config --disable CONFIG_REGULATOR_MAX77826
scripts/config --disable CONFIG_REGULATOR_MP8859
scripts/config --disable CONFIG_REGULATOR_MT6311
scripts/config --disable CONFIG_REGULATOR_MT6323
scripts/config --disable CONFIG_REGULATOR_MT6331
scripts/config --disable CONFIG_REGULATOR_MT6332
scripts/config --disable CONFIG_REGULATOR_MT6357
scripts/config --disable CONFIG_REGULATOR_MT6358
scripts/config --disable CONFIG_REGULATOR_MT6359
scripts/config --disable CONFIG_REGULATOR_MT6360
scripts/config --disable CONFIG_REGULATOR_MT6370
scripts/config --disable CONFIG_REGULATOR_MT6397
scripts/config --disable CONFIG_REGULATOR_PALMAS
scripts/config --disable CONFIG_REGULATOR_PCA9450
scripts/config --disable CONFIG_REGULATOR_PCAP
scripts/config --disable CONFIG_REGULATOR_PCF50633
scripts/config --disable CONFIG_REGULATOR_PV88060
scripts/config --disable CONFIG_REGULATOR_PV88080
scripts/config --disable CONFIG_REGULATOR_PV88090
scripts/config --disable CONFIG_REGULATOR_PWM
scripts/config --disable CONFIG_REGULATOR_RAA215300
scripts/config --disable CONFIG_REGULATOR_RC5T583
scripts/config --disable CONFIG_REGULATOR_RT4801
scripts/config --disable CONFIG_REGULATOR_RT4803
scripts/config --disable CONFIG_REGULATOR_RT4831
scripts/config --disable CONFIG_REGULATOR_RT5033
scripts/config --disable CONFIG_REGULATOR_RT5120
scripts/config --disable CONFIG_REGULATOR_RT5190A
scripts/config --disable CONFIG_REGULATOR_RT5739
scripts/config --disable CONFIG_REGULATOR_RT5759
scripts/config --disable CONFIG_REGULATOR_RT6160
scripts/config --disable CONFIG_REGULATOR_RT6190
scripts/config --disable CONFIG_REGULATOR_RT6245
scripts/config --disable CONFIG_REGULATOR_RTQ2134
scripts/config --disable CONFIG_REGULATOR_RTMV20
scripts/config --disable CONFIG_REGULATOR_RTQ6752
scripts/config --disable CONFIG_REGULATOR_RTQ2208
scripts/config --disable CONFIG_REGULATOR_SKY81452
scripts/config --disable CONFIG_REGULATOR_SLG51000
scripts/config --disable CONFIG_REGULATOR_SY7636A
scripts/config --disable CONFIG_REGULATOR_TPS51632
scripts/config --disable CONFIG_REGULATOR_TPS6105X
scripts/config --disable CONFIG_REGULATOR_TPS62360
scripts/config --disable CONFIG_REGULATOR_TPS65023
scripts/config --disable CONFIG_REGULATOR_TPS6507X
scripts/config --disable CONFIG_REGULATOR_TPS65132
scripts/config --disable CONFIG_REGULATOR_TPS6524X
scripts/config --disable CONFIG_REGULATOR_TPS68470
scripts/config --disable CONFIG_RC_CORE
scripts/config --disable CONFIG_MEDIA_CEC_SUPPORT
scripts/config --disable CONFIG_MEDIA_SUPPORT
# scripts/config --enable CONFIG_APERTURE_HELPERS
# scripts/config --enable CONFIG_SCREEN_INFO
# scripts/config --enable CONFIG_AUXDISPLAY
# scripts/config --set-val CONFIG_CHARLCD m
# scripts/config --set-val CONFIG_HD44780_COMMON m
# scripts/config --set-val CONFIG_HD44780 m
# scripts/config --set-val CONFIG_LCD2S m
# scripts/config --set-val CONFIG_PARPORT_PANEL m
# scripts/config --set-val CONFIG_PANEL_PARPORT 0
# scripts/config --set-val CONFIG_PANEL_PROFILE 5
# scripts/config --disable CONFIG_PANEL_CHANGE_MESSAGE
# scripts/config --disable CONFIG_CHARLCD_BL_OFF
# scripts/config --disable CONFIG_CHARLCD_BL_ON
# scripts/config --enable CONFIG_CHARLCD_BL_FLASH
# scripts/config --set-val CONFIG_KS0108 m
# scripts/config --set-val CONFIG_KS0108_PORT 0x378
# scripts/config --set-val CONFIG_KS0108_DELAY 2
# scripts/config --set-val CONFIG_LINEDISP m
# scripts/config --set-val CONFIG_IMG_ASCII_LCD m
# scripts/config --set-val CONFIG_MAX6959 m
# scripts/config --set-val CONFIG_SEG_LED_GPIO m
# scripts/config --set-val CONFIG_PANEL m
scripts/config --disable CONFIG_AGP
scripts/config --disable CONFIG_VGA_SWITCHEROO
scripts/config --disable CONFIG_DRM
scripts/config --disable CONFIG_FB
scripts/config --disable CONFIG_LCD_CLASS_DEVICE
# scripts/config --set-val CONFIG_BACKLIGHT_CLASS_DEVICE m
scripts/config --disable CONFIG_BACKLIGHT_KTD253
# scripts/config --set-val CONFIG_BACKLIGHT_KTD2801 m
scripts/config --disable CONFIG_BACKLIGHT_KTZ8866
scripts/config --disable CONFIG_BACKLIGHT_PWM
scripts/config --disable CONFIG_BACKLIGHT_DA903X
scripts/config --disable CONFIG_BACKLIGHT_DA9052
scripts/config --disable CONFIG_BACKLIGHT_MAX8925
scripts/config --disable CONFIG_BACKLIGHT_MT6370
scripts/config --disable CONFIG_BACKLIGHT_APPLE
scripts/config --disable CONFIG_BACKLIGHT_QCOM_WLED
scripts/config --disable CONFIG_BACKLIGHT_RT4831
scripts/config --disable CONFIG_BACKLIGHT_SAHARA
scripts/config --disable CONFIG_BACKLIGHT_ADP5520
scripts/config --disable CONFIG_BACKLIGHT_ADP8860
scripts/config --disable CONFIG_BACKLIGHT_ADP8870
scripts/config --disable CONFIG_BACKLIGHT_88PM860X
scripts/config --disable CONFIG_BACKLIGHT_PCF50633
scripts/config --disable CONFIG_BACKLIGHT_AAT2870
scripts/config --disable CONFIG_BACKLIGHT_LM3509
scripts/config --disable CONFIG_BACKLIGHT_LM3630A
scripts/config --disable CONFIG_BACKLIGHT_LM3639
scripts/config --disable CONFIG_BACKLIGHT_LP855X
scripts/config --disable CONFIG_BACKLIGHT_LP8788
scripts/config --disable CONFIG_BACKLIGHT_MP3309C
scripts/config --disable CONFIG_BACKLIGHT_SKY81452
scripts/config --disable CONFIG_BACKLIGHT_GPIO
scripts/config --disable CONFIG_BACKLIGHT_LV5207LP
scripts/config --disable CONFIG_BACKLIGHT_BD6107
scripts/config --disable CONFIG_BACKLIGHT_ARCXCNN
# scripts/config --enable CONFIG_VGA_CONSOLE
# scripts/config --enable CONFIG_DUMMY_CONSOLE
# scripts/config --set-val CONFIG_DUMMY_CONSOLE_COLUMNS 80
# scripts/config --set-val CONFIG_DUMMY_CONSOLE_ROWS 25
scripts/config --disable CONFIG_SOUND
# scripts/config --enable CONFIG_HID_SUPPORT
# scripts/config --set-val CONFIG_HID m
# scripts/config --enable CONFIG_HID_BATTERY_STRENGTH
# scripts/config --enable CONFIG_HIDRAW
# scripts/config --set-val CONFIG_UHID m
# scripts/config --set-val CONFIG_HID_GENERIC m
# scripts/config --set-val CONFIG_HID_A4TECH m
# scripts/config --set-val CONFIG_HID_ACCUTOUCH m
# scripts/config --set-val CONFIG_HID_ACRUX m
# scripts/config --enable CONFIG_HID_ACRUX_FF
# scripts/config --set-val CONFIG_HID_APPLE m
# scripts/config --set-val CONFIG_HID_APPLEIR m
# scripts/config --set-val CONFIG_HID_ASUS m
# scripts/config --set-val CONFIG_HID_AUREAL m
# scripts/config --set-val CONFIG_HID_BELKIN m
# scripts/config --set-val CONFIG_HID_BETOP_FF m
# scripts/config --set-val CONFIG_HID_BIGBEN_FF m
# scripts/config --set-val CONFIG_HID_CHERRY m
# scripts/config --set-val CONFIG_HID_CHICONY m
# scripts/config --set-val CONFIG_HID_CORSAIR m
# scripts/config --set-val CONFIG_HID_COUGAR m
# scripts/config --set-val CONFIG_HID_MACALLY m
# scripts/config --set-val CONFIG_HID_CMEDIA m
# scripts/config --set-val CONFIG_HID_CP2112 m
# scripts/config --set-val CONFIG_HID_CREATIVE_SB0540 m
# scripts/config --set-val CONFIG_HID_CYPRESS m
# scripts/config --set-val CONFIG_HID_DRAGONRISE m
# scripts/config --enable CONFIG_DRAGONRISE_FF
# scripts/config --set-val CONFIG_HID_EMS_FF m
# scripts/config --set-val CONFIG_HID_ELAN m
# scripts/config --set-val CONFIG_HID_ELECOM m
# scripts/config --set-val CONFIG_HID_ELO m
# scripts/config --set-val CONFIG_HID_EVISION m
# scripts/config --set-val CONFIG_HID_EZKEY m
# scripts/config --set-val CONFIG_HID_FT260 m
# scripts/config --set-val CONFIG_HID_GEMBIRD m
# scripts/config --set-val CONFIG_HID_GFRM m
# scripts/config --set-val CONFIG_HID_GLORIOUS m
# scripts/config --set-val CONFIG_HID_HOLTEK m
# scripts/config --enable CONFIG_HOLTEK_FF
# scripts/config --set-val CONFIG_HID_VIVALDI_COMMON m
# scripts/config --set-val CONFIG_HID_GOODIX_SPI m
# scripts/config --set-val CONFIG_HID_GOOGLE_HAMMER m
# scripts/config --set-val CONFIG_HID_GOOGLE_STADIA_FF m
# scripts/config --set-val CONFIG_HID_VIVALDI m
# scripts/config --set-val CONFIG_HID_GT683R m
# scripts/config --set-val CONFIG_HID_KEYTOUCH m
# scripts/config --set-val CONFIG_HID_KYE m
# scripts/config --set-val CONFIG_HID_UCLOGIC m
# scripts/config --set-val CONFIG_HID_WALTOP m
# scripts/config --set-val CONFIG_HID_VIEWSONIC m
# scripts/config --set-val CONFIG_HID_VRC2 m
# scripts/config --set-val CONFIG_HID_XIAOMI m
# scripts/config --set-val CONFIG_HID_GYRATION m
# scripts/config --set-val CONFIG_HID_ICADE m
# scripts/config --set-val CONFIG_HID_ITE m
# scripts/config --set-val CONFIG_HID_JABRA m
# scripts/config --set-val CONFIG_HID_TWINHAN m
# scripts/config --set-val CONFIG_HID_KENSINGTON m
# scripts/config --set-val CONFIG_HID_LCPOWER m
# scripts/config --set-val CONFIG_HID_LED m
# scripts/config --set-val CONFIG_HID_LENOVO m
# scripts/config --set-val CONFIG_HID_LETSKETCH m
# scripts/config --set-val CONFIG_HID_LOGITECH m
# scripts/config --set-val CONFIG_HID_LOGITECH_DJ m
# scripts/config --set-val CONFIG_HID_LOGITECH_HIDPP m
# scripts/config --enable CONFIG_LOGITECH_FF
# scripts/config --enable CONFIG_LOGIRUMBLEPAD2_FF
# scripts/config --enable CONFIG_LOGIG940_FF
# scripts/config --enable CONFIG_LOGIWHEELS_FF
# scripts/config --set-val CONFIG_HID_MAGICMOUSE m
# scripts/config --set-val CONFIG_HID_MALTRON m
# scripts/config --set-val CONFIG_HID_MAYFLASH m
# scripts/config --set-val CONFIG_HID_MEGAWORLD_FF m
# scripts/config --set-val CONFIG_HID_REDRAGON m
# scripts/config --set-val CONFIG_HID_MICROSOFT m
# scripts/config --set-val CONFIG_HID_MONTEREY m
# scripts/config --set-val CONFIG_HID_MULTITOUCH m
# scripts/config --set-val CONFIG_HID_NINTENDO m
# scripts/config --enable CONFIG_NINTENDO_FF
# scripts/config --set-val CONFIG_HID_NTI m
# scripts/config --set-val CONFIG_HID_NTRIG m
# scripts/config --set-val CONFIG_HID_ORTEK m
# scripts/config --set-val CONFIG_HID_PANTHERLORD m
# scripts/config --enable CONFIG_PANTHERLORD_FF
# scripts/config --set-val CONFIG_HID_PENMOUNT m
# scripts/config --set-val CONFIG_HID_PETALYNX m
# scripts/config --set-val CONFIG_HID_PICOLCD m
# scripts/config --enable CONFIG_HID_PICOLCD_BACKLIGHT
# scripts/config --enable CONFIG_HID_PICOLCD_LEDS
# scripts/config --set-val CONFIG_HID_PLANTRONICS m
# scripts/config --set-val CONFIG_HID_PLAYSTATION m
# scripts/config --enable CONFIG_PLAYSTATION_FF
# scripts/config --set-val CONFIG_HID_PXRC m
# scripts/config --set-val CONFIG_HID_RAZER m
# scripts/config --set-val CONFIG_HID_PRIMAX m
# scripts/config --set-val CONFIG_HID_RETRODE m
# scripts/config --set-val CONFIG_HID_ROCCAT m
# scripts/config --set-val CONFIG_HID_SAITEK m
# scripts/config --set-val CONFIG_HID_SAMSUNG m
# scripts/config --set-val CONFIG_HID_SEMITEK m
# scripts/config --set-val CONFIG_HID_SIGMAMICRO m
# scripts/config --set-val CONFIG_HID_SONY m
# scripts/config --enable CONFIG_SONY_FF
# scripts/config --set-val CONFIG_HID_SPEEDLINK m
# scripts/config --set-val CONFIG_HID_STEAM m
# scripts/config --enable CONFIG_STEAM_FF
# scripts/config --set-val CONFIG_HID_STEELSERIES m
# scripts/config --set-val CONFIG_HID_SUNPLUS m
# scripts/config --set-val CONFIG_HID_RMI m
# scripts/config --set-val CONFIG_HID_GREENASIA m
# scripts/config --enable CONFIG_GREENASIA_FF
# scripts/config --set-val CONFIG_HID_HYPERV_MOUSE m
# scripts/config --set-val CONFIG_HID_SMARTJOYPLUS m
# scripts/config --enable CONFIG_SMARTJOYPLUS_FF
# scripts/config --set-val CONFIG_HID_TIVO m
# scripts/config --set-val CONFIG_HID_TOPSEED m
# scripts/config --set-val CONFIG_HID_TOPRE m
# scripts/config --set-val CONFIG_HID_THINGM m
# scripts/config --set-val CONFIG_HID_THRUSTMASTER m
# scripts/config --enable CONFIG_THRUSTMASTER_FF
# scripts/config --set-val CONFIG_HID_UDRAW_PS3 m
# scripts/config --set-val CONFIG_HID_U2FZERO m
# scripts/config --set-val CONFIG_HID_UNIVERSAL_PIDFF m
# scripts/config --set-val CONFIG_HID_WACOM m
# scripts/config --set-val CONFIG_HID_WIIMOTE m
# scripts/config --set-val CONFIG_HID_WINWING m
# scripts/config --set-val CONFIG_HID_XINMO m
# scripts/config --set-val CONFIG_HID_ZEROPLUS m
# scripts/config --enable CONFIG_ZEROPLUS_FF
# scripts/config --set-val CONFIG_HID_ZYDACRON m
# scripts/config --set-val CONFIG_HID_SENSOR_HUB m
# scripts/config --set-val CONFIG_HID_SENSOR_CUSTOM_SENSOR m
# scripts/config --set-val CONFIG_HID_ALPS m
# scripts/config --set-val CONFIG_HID_MCP2200 m
# scripts/config --set-val CONFIG_HID_MCP2221 m
# scripts/config --enable CONFIG_HID_BPF
# scripts/config --set-val CONFIG_USB_HID m
# scripts/config --enable CONFIG_HID_PID
# scripts/config --enable CONFIG_USB_HIDDEV
# scripts/config --set-val CONFIG_I2C_HID m
# scripts/config --set-val CONFIG_I2C_HID_ACPI m
# scripts/config --set-val CONFIG_I2C_HID_OF m
# scripts/config --set-val CONFIG_I2C_HID_CORE m
# scripts/config --set-val CONFIG_INTEL_ISH_HID m
# scripts/config --set-val CONFIG_INTEL_ISH_FIRMWARE_DOWNLOADER m
# scripts/config --set-val CONFIG_AMD_SFH_HID m
# scripts/config --set-val CONFIG_SURFACE_HID m
# scripts/config --set-val CONFIG_SURFACE_KBD m
# scripts/config --set-val CONFIG_SURFACE_HID_CORE m
# scripts/config --enable CONFIG_USB_OHCI_LITTLE_ENDIAN
# scripts/config --enable CONFIG_USB_SUPPORT
# scripts/config --enable CONFIG_USB_COMMON
# scripts/config --enable CONFIG_USB_LED_TRIG
# scripts/config --set-val CONFIG_USB_ULPI_BUS m
# scripts/config --set-val CONFIG_USB_CONN_GPIO m
# scripts/config --enable CONFIG_USB_ARCH_HAS_HCD
# scripts/config --enable CONFIG_USB
# scripts/config --enable CONFIG_USB_PCI
# scripts/config --enable CONFIG_USB_PCI_AMD
# scripts/config --enable CONFIG_USB_ANNOUNCE_NEW_DEVICES
# scripts/config --enable CONFIG_USB_DEFAULT_PERSIST
# scripts/config --disable CONFIG_USB_FEW_INIT_RETRIES
# scripts/config --enable CONFIG_USB_DYNAMIC_MINORS
# scripts/config --disable CONFIG_USB_OTG
# scripts/config --disable CONFIG_USB_OTG_PRODUCTLIST
# scripts/config --set-val CONFIG_USB_LEDS_TRIGGER_USBPORT m
# scripts/config --set-val CONFIG_USB_AUTOSUSPEND_DELAY 2
# scripts/config --set-val CONFIG_USB_DEFAULT_AUTHORIZATION_MODE 1
# scripts/config --set-val CONFIG_USB_MON m
# scripts/config --set-val CONFIG_USB_C67X00_HCD m
# scripts/config --enable CONFIG_USB_XHCI_HCD
# scripts/config --enable CONFIG_USB_XHCI_DBGCAP
# scripts/config --enable CONFIG_USB_XHCI_PCI
# scripts/config --set-val CONFIG_USB_XHCI_PCI_RENESAS m
# scripts/config --set-val CONFIG_USB_XHCI_PLATFORM m
# scripts/config --enable CONFIG_USB_EHCI_HCD
# scripts/config --enable CONFIG_USB_EHCI_ROOT_HUB_TT
# scripts/config --enable CONFIG_USB_EHCI_TT_NEWSCHED
# scripts/config --enable CONFIG_USB_EHCI_PCI
# scripts/config --set-val CONFIG_USB_EHCI_FSL m
# scripts/config --enable CONFIG_USB_EHCI_HCD_PLATFORM
# scripts/config --set-val CONFIG_USB_OXU210HP_HCD m
# scripts/config --set-val CONFIG_USB_ISP116X_HCD m
# scripts/config --set-val CONFIG_USB_MAX3421_HCD m
# scripts/config --enable CONFIG_USB_OHCI_HCD
# scripts/config --enable CONFIG_USB_OHCI_HCD_PCI
# scripts/config --enable CONFIG_USB_OHCI_HCD_PLATFORM
# scripts/config --enable CONFIG_USB_UHCI_HCD
# scripts/config --set-val CONFIG_USB_SL811_HCD m
# scripts/config --enable CONFIG_USB_SL811_HCD_ISO
# scripts/config --set-val CONFIG_USB_SL811_CS m
# scripts/config --set-val CONFIG_USB_R8A66597_HCD m
# scripts/config --set-val CONFIG_USB_HCD_SSB m
# scripts/config --disable CONFIG_USB_HCD_TEST_MODE
# scripts/config --set-val CONFIG_USB_XEN_HCD m
# scripts/config --set-val CONFIG_USB_ACM m
# scripts/config --set-val CONFIG_USB_PRINTER m
# scripts/config --set-val CONFIG_USB_WDM m
# scripts/config --set-val CONFIG_USB_TMC m
# scripts/config --set-val CONFIG_USB_STORAGE m
# scripts/config --disable CONFIG_USB_STORAGE_DEBUG
# scripts/config --set-val CONFIG_USB_STORAGE_REALTEK m
# scripts/config --enable CONFIG_REALTEK_AUTOPM
# scripts/config --set-val CONFIG_USB_STORAGE_DATAFAB m
# scripts/config --set-val CONFIG_USB_STORAGE_FREECOM m
# scripts/config --set-val CONFIG_USB_STORAGE_ISD200 m
# scripts/config --set-val CONFIG_USB_STORAGE_USBAT m
# scripts/config --set-val CONFIG_USB_STORAGE_SDDR09 m
# scripts/config --set-val CONFIG_USB_STORAGE_SDDR55 m
# scripts/config --set-val CONFIG_USB_STORAGE_JUMPSHOT m
# scripts/config --set-val CONFIG_USB_STORAGE_ALAUDA m
# scripts/config --set-val CONFIG_USB_STORAGE_ONETOUCH m
# scripts/config --set-val CONFIG_USB_STORAGE_KARMA m
# scripts/config --set-val CONFIG_USB_STORAGE_CYPRESS_ATACB m
# scripts/config --set-val CONFIG_USB_STORAGE_ENE_UB6250 m
# scripts/config --set-val CONFIG_USB_UAS m
# scripts/config --set-val CONFIG_USB_MDC800 m
# scripts/config --set-val CONFIG_USB_MICROTEK m
# scripts/config --set-val CONFIG_USBIP_CORE m
# scripts/config --set-val CONFIG_USBIP_VHCI_HCD m
# scripts/config --set-val CONFIG_USBIP_VHCI_HC_PORTS 8
# scripts/config --set-val CONFIG_USBIP_VHCI_NR_HCS 1
# scripts/config --set-val CONFIG_USBIP_HOST m
# scripts/config --set-val CONFIG_USBIP_VUDC m
# scripts/config --disable CONFIG_USBIP_DEBUG
# scripts/config --set-val CONFIG_USB_CDNS_SUPPORT m
# scripts/config --enable CONFIG_USB_CDNS_HOST
# scripts/config --set-val CONFIG_USB_CDNS3 m
# scripts/config --enable CONFIG_USB_CDNS3_GADGET
# scripts/config --enable CONFIG_USB_CDNS3_HOST
# scripts/config --set-val CONFIG_USB_CDNS3_PCI_WRAP m
# scripts/config --set-val CONFIG_USB_CDNSP_PCI m
# scripts/config --enable CONFIG_USB_CDNSP_GADGET
# scripts/config --enable CONFIG_USB_CDNSP_HOST
# scripts/config --set-val CONFIG_USB_MUSB_HDRC m
# scripts/config --disable CONFIG_USB_MUSB_HOST
# scripts/config --disable CONFIG_USB_MUSB_GADGET
# scripts/config --enable CONFIG_USB_MUSB_DUAL_ROLE
# scripts/config --enable CONFIG_MUSB_PIO_ONLY
# scripts/config --set-val CONFIG_USB_DWC3 m
# scripts/config --enable CONFIG_USB_DWC3_ULPI
# scripts/config --disable CONFIG_USB_DWC3_HOST
# scripts/config --disable CONFIG_USB_DWC3_GADGET
# scripts/config --enable CONFIG_USB_DWC3_DUAL_ROLE
# scripts/config --set-val CONFIG_USB_DWC3_PCI m
# scripts/config --set-val CONFIG_USB_DWC3_HAPS m
# scripts/config --enable CONFIG_USB_DWC2
# scripts/config --enable CONFIG_USB_DWC2_HOST
# scripts/config --set-val CONFIG_USB_DWC2_PCI m
# scripts/config --disable CONFIG_USB_DWC2_DEBUG
# scripts/config --disable CONFIG_USB_DWC2_TRACK_MISSED_SOFS
# scripts/config --set-val CONFIG_USB_CHIPIDEA m
# scripts/config --enable CONFIG_USB_CHIPIDEA_UDC
# scripts/config --enable CONFIG_USB_CHIPIDEA_HOST
# scripts/config --set-val CONFIG_USB_CHIPIDEA_PCI m
# scripts/config --set-val CONFIG_USB_CHIPIDEA_MSM m
# scripts/config --set-val CONFIG_USB_CHIPIDEA_NPCM m
# scripts/config --set-val CONFIG_USB_CHIPIDEA_GENERIC m
# scripts/config --set-val CONFIG_USB_ISP1760 m
# scripts/config --enable CONFIG_USB_ISP1760_HCD
# scripts/config --enable CONFIG_USB_ISP1761_UDC
# scripts/config --disable CONFIG_USB_ISP1760_HOST_ROLE
# scripts/config --disable CONFIG_USB_ISP1760_GADGET_ROLE
# scripts/config --enable CONFIG_USB_ISP1760_DUAL_ROLE
# scripts/config --set-val CONFIG_USB_SERIAL m
# scripts/config --enable CONFIG_USB_SERIAL_GENERIC
# scripts/config --set-val CONFIG_USB_SERIAL_SIMPLE m
# scripts/config --set-val CONFIG_USB_SERIAL_AIRCABLE m
# scripts/config --set-val CONFIG_USB_SERIAL_ARK3116 m
# scripts/config --set-val CONFIG_USB_SERIAL_BELKIN m
# scripts/config --set-val CONFIG_USB_SERIAL_CH341 m
# scripts/config --set-val CONFIG_USB_SERIAL_WHITEHEAT m
# scripts/config --set-val CONFIG_USB_SERIAL_DIGI_ACCELEPORT m
# scripts/config --set-val CONFIG_USB_SERIAL_CP210X m
# scripts/config --set-val CONFIG_USB_SERIAL_CYPRESS_M8 m
# scripts/config --set-val CONFIG_USB_SERIAL_EMPEG m
# scripts/config --set-val CONFIG_USB_SERIAL_FTDI_SIO m
# scripts/config --set-val CONFIG_USB_SERIAL_VISOR m
# scripts/config --set-val CONFIG_USB_SERIAL_IPAQ m
# scripts/config --set-val CONFIG_USB_SERIAL_IR m
# scripts/config --set-val CONFIG_USB_SERIAL_EDGEPORT m
# scripts/config --set-val CONFIG_USB_SERIAL_EDGEPORT_TI m
# scripts/config --set-val CONFIG_USB_SERIAL_F81232 m
# scripts/config --set-val CONFIG_USB_SERIAL_F8153X m
# scripts/config --set-val CONFIG_USB_SERIAL_GARMIN m
# scripts/config --set-val CONFIG_USB_SERIAL_IPW m
# scripts/config --set-val CONFIG_USB_SERIAL_IUU m
# scripts/config --set-val CONFIG_USB_SERIAL_KEYSPAN_PDA m
# scripts/config --set-val CONFIG_USB_SERIAL_KEYSPAN m
# scripts/config --set-val CONFIG_USB_SERIAL_KLSI m
# scripts/config --set-val CONFIG_USB_SERIAL_KOBIL_SCT m
# scripts/config --set-val CONFIG_USB_SERIAL_MCT_U232 m
# scripts/config --set-val CONFIG_USB_SERIAL_METRO m
# scripts/config --set-val CONFIG_USB_SERIAL_MOS7720 m
# scripts/config --enable CONFIG_USB_SERIAL_MOS7715_PARPORT
# scripts/config --set-val CONFIG_USB_SERIAL_MOS7840 m
# scripts/config --set-val CONFIG_USB_SERIAL_MXUPORT m
# scripts/config --set-val CONFIG_USB_SERIAL_NAVMAN m
# scripts/config --set-val CONFIG_USB_SERIAL_PL2303 m
# scripts/config --set-val CONFIG_USB_SERIAL_OTI6858 m
# scripts/config --set-val CONFIG_USB_SERIAL_QCAUX m
# scripts/config --set-val CONFIG_USB_SERIAL_QUALCOMM m
# scripts/config --set-val CONFIG_USB_SERIAL_SPCP8X5 m
# scripts/config --set-val CONFIG_USB_SERIAL_SAFE m
# scripts/config --disable CONFIG_USB_SERIAL_SAFE_PADDED
# scripts/config --set-val CONFIG_USB_SERIAL_SIERRAWIRELESS m
# scripts/config --set-val CONFIG_USB_SERIAL_SYMBOL m
# scripts/config --set-val CONFIG_USB_SERIAL_TI m
# scripts/config --set-val CONFIG_USB_SERIAL_CYBERJACK m
# scripts/config --set-val CONFIG_USB_SERIAL_WWAN m
# scripts/config --set-val CONFIG_USB_SERIAL_OPTION m
# scripts/config --set-val CONFIG_USB_SERIAL_OMNINET m
# scripts/config --set-val CONFIG_USB_SERIAL_OPTICON m
# scripts/config --set-val CONFIG_USB_SERIAL_XSENS_MT m
# scripts/config --set-val CONFIG_USB_SERIAL_WISHBONE m
# scripts/config --set-val CONFIG_USB_SERIAL_SSU100 m
# scripts/config --set-val CONFIG_USB_SERIAL_QT2 m
# scripts/config --set-val CONFIG_USB_SERIAL_UPD78F0730 m
# scripts/config --set-val CONFIG_USB_SERIAL_XR m
# scripts/config --set-val CONFIG_USB_SERIAL_DEBUG m
# scripts/config --set-val CONFIG_USB_USS720 m
# scripts/config --set-val CONFIG_USB_EMI62 m
# scripts/config --set-val CONFIG_USB_EMI26 m
# scripts/config --set-val CONFIG_USB_ADUTUX m
# scripts/config --set-val CONFIG_USB_SEVSEG m
# scripts/config --set-val CONFIG_USB_LEGOTOWER m
# scripts/config --set-val CONFIG_USB_LCD m
# scripts/config --set-val CONFIG_USB_CYPRESS_CY7C63 m
# scripts/config --set-val CONFIG_USB_CYTHERM m
# scripts/config --set-val CONFIG_USB_IDMOUSE m
# scripts/config --set-val CONFIG_USB_APPLEDISPLAY m
# scripts/config --set-val CONFIG_APPLE_MFI_FASTCHARGE m
# scripts/config --set-val CONFIG_USB_LJCA m
# scripts/config --set-val CONFIG_USB_SISUSBVGA m
# scripts/config --set-val CONFIG_USB_LD m
# scripts/config --set-val CONFIG_USB_TRANCEVIBRATOR m
# scripts/config --set-val CONFIG_USB_IOWARRIOR m
# scripts/config --set-val CONFIG_USB_TEST m
# scripts/config --set-val CONFIG_USB_EHSET_TEST_FIXTURE m
# scripts/config --set-val CONFIG_USB_ISIGHTFW m
# scripts/config --set-val CONFIG_USB_YUREX m
# scripts/config --set-val CONFIG_USB_EZUSB_FX2 m
# scripts/config --set-val CONFIG_USB_HUB_USB251XB m
# scripts/config --set-val CONFIG_USB_HSIC_USB3503 m
# scripts/config --set-val CONFIG_USB_HSIC_USB4604 m
# scripts/config --set-val CONFIG_USB_LINK_LAYER_TEST m
# scripts/config --set-val CONFIG_USB_CHAOSKEY m
# scripts/config --set-val CONFIG_USB_ATM m
# scripts/config --set-val CONFIG_USB_SPEEDTOUCH m
# scripts/config --set-val CONFIG_USB_CXACRU m
# scripts/config --set-val CONFIG_USB_UEAGLEATM m
# scripts/config --set-val CONFIG_USB_XUSBATM m
# scripts/config --enable CONFIG_USB_PHY
# scripts/config --set-val CONFIG_NOP_USB_XCEIV m
# scripts/config --set-val CONFIG_USB_GPIO_VBUS m
# scripts/config --set-val CONFIG_TAHVO_USB m
# scripts/config --enable CONFIG_TAHVO_USB_HOST_BY_DEFAULT
# scripts/config --set-val CONFIG_USB_ISP1301 m
# scripts/config --set-val CONFIG_USB_GADGET m
# scripts/config --disable CONFIG_USB_GADGET_DEBUG
# scripts/config --disable CONFIG_USB_GADGET_DEBUG_FILES
# scripts/config --disable CONFIG_USB_GADGET_DEBUG_FS
# scripts/config --set-val CONFIG_USB_GADGET_VBUS_DRAW 2
# scripts/config --set-val CONFIG_USB_GADGET_STORAGE_NUM_BUFFERS 2
# scripts/config --enable CONFIG_U_SERIAL_CONSOLE
# scripts/config --set-val CONFIG_USB_GR_UDC m
# scripts/config --set-val CONFIG_USB_R8A66597 m
# scripts/config --set-val CONFIG_USB_PXA27X m
# scripts/config --set-val CONFIG_USB_MV_UDC m
# scripts/config --set-val CONFIG_USB_MV_U3D m
# scripts/config --set-val CONFIG_USB_SNP_CORE m
# scripts/config --disable CONFIG_USB_M66592
# scripts/config --set-val CONFIG_USB_BDC_UDC m
# scripts/config --set-val CONFIG_USB_AMD5536UDC m
# scripts/config --set-val CONFIG_USB_NET2272 m
# scripts/config --enable CONFIG_USB_NET2272_DMA
# scripts/config --set-val CONFIG_USB_NET2280 m
# scripts/config --set-val CONFIG_USB_GOKU m
# scripts/config --set-val CONFIG_USB_EG20T m
# scripts/config --set-val CONFIG_USB_MAX3420_UDC m
# scripts/config --set-val CONFIG_USB_CDNS2_UDC m
# scripts/config --disable CONFIG_USB_DUMMY_HCD
# scripts/config --set-val CONFIG_USB_LIBCOMPOSITE m
# scripts/config --set-val CONFIG_USB_F_ACM m
# scripts/config --set-val CONFIG_USB_F_SS_LB m
# scripts/config --set-val CONFIG_USB_U_SERIAL m
# scripts/config --set-val CONFIG_USB_U_ETHER m
# scripts/config --set-val CONFIG_USB_F_SERIAL m
# scripts/config --set-val CONFIG_USB_F_OBEX m
# scripts/config --set-val CONFIG_USB_F_NCM m
# scripts/config --set-val CONFIG_USB_F_ECM m
# scripts/config --set-val CONFIG_USB_F_PHONET m
# scripts/config --set-val CONFIG_USB_F_EEM m
# scripts/config --set-val CONFIG_USB_F_SUBSET m
# scripts/config --set-val CONFIG_USB_F_RNDIS m
# scripts/config --set-val CONFIG_USB_F_MASS_STORAGE m
# scripts/config --set-val CONFIG_USB_F_FS m
# scripts/config --set-val CONFIG_USB_F_HID m
# scripts/config --set-val CONFIG_USB_F_PRINTER m
# scripts/config --set-val CONFIG_USB_F_TCM m
# scripts/config --set-val CONFIG_USB_CONFIGFS m
# scripts/config --enable CONFIG_USB_CONFIGFS_SERIAL
# scripts/config --enable CONFIG_USB_CONFIGFS_ACM
# scripts/config --enable CONFIG_USB_CONFIGFS_OBEX
# scripts/config --enable CONFIG_USB_CONFIGFS_NCM
# scripts/config --enable CONFIG_USB_CONFIGFS_ECM
# scripts/config --enable CONFIG_USB_CONFIGFS_ECM_SUBSET
# scripts/config --enable CONFIG_USB_CONFIGFS_RNDIS
# scripts/config --enable CONFIG_USB_CONFIGFS_EEM
# scripts/config --enable CONFIG_USB_CONFIGFS_PHONET
# scripts/config --enable CONFIG_USB_CONFIGFS_MASS_STORAGE
# scripts/config --enable CONFIG_USB_CONFIGFS_F_LB_SS
# scripts/config --enable CONFIG_USB_CONFIGFS_F_FS
# scripts/config --enable CONFIG_USB_CONFIGFS_F_HID
# scripts/config --enable CONFIG_USB_CONFIGFS_F_PRINTER
# scripts/config --enable CONFIG_USB_CONFIGFS_F_TCM
# scripts/config --set-val CONFIG_USB_ZERO m
# scripts/config --set-val CONFIG_USB_ETH m
# scripts/config --enable CONFIG_USB_ETH_RNDIS
# scripts/config --enable CONFIG_USB_ETH_EEM
# scripts/config --set-val CONFIG_USB_G_NCM m
# scripts/config --set-val CONFIG_USB_GADGETFS m
# scripts/config --set-val CONFIG_USB_FUNCTIONFS m
# scripts/config --enable CONFIG_USB_FUNCTIONFS_ETH
# scripts/config --enable CONFIG_USB_FUNCTIONFS_RNDIS
# scripts/config --enable CONFIG_USB_FUNCTIONFS_GENERIC
# scripts/config --set-val CONFIG_USB_MASS_STORAGE m
# scripts/config --set-val CONFIG_USB_GADGET_TARGET m
# scripts/config --set-val CONFIG_USB_G_SERIAL m
# scripts/config --set-val CONFIG_USB_G_PRINTER m
# scripts/config --set-val CONFIG_USB_CDC_COMPOSITE m
# scripts/config --set-val CONFIG_USB_G_NOKIA m
# scripts/config --set-val CONFIG_USB_G_ACM_MS m
# scripts/config --disable CONFIG_USB_G_MULTI
# scripts/config --set-val CONFIG_USB_G_HID m
# scripts/config --set-val CONFIG_USB_G_DBGP m
# scripts/config --disable CONFIG_USB_G_DBGP_PRINTK
# scripts/config --enable CONFIG_USB_G_DBGP_SERIAL
# scripts/config --set-val CONFIG_USB_RAW_GADGET m
# scripts/config --set-val CONFIG_TYPEC m
# scripts/config --set-val CONFIG_TYPEC_TCPM m
# scripts/config --set-val CONFIG_TYPEC_TCPCI m
# scripts/config --set-val CONFIG_TYPEC_RT1711H m
# scripts/config --set-val CONFIG_TYPEC_MT6360 m
# scripts/config --set-val CONFIG_TYPEC_TCPCI_MT6370 m
# scripts/config --set-val CONFIG_TYPEC_TCPCI_MAXIM m
# scripts/config --set-val CONFIG_TYPEC_FUSB302 m
# scripts/config --set-val CONFIG_TYPEC_UCSI m
# scripts/config --set-val CONFIG_UCSI_CCG m
# scripts/config --set-val CONFIG_UCSI_ACPI m
# scripts/config --set-val CONFIG_UCSI_STM32G0 m
# scripts/config --set-val CONFIG_TYPEC_TPS6598X m
# scripts/config --set-val CONFIG_TYPEC_ANX7411 m
# scripts/config --set-val CONFIG_TYPEC_RT1719 m
# scripts/config --set-val CONFIG_TYPEC_HD3SS3220 m
# scripts/config --set-val CONFIG_TYPEC_STUSB160X m
# scripts/config --set-val CONFIG_TYPEC_WUSB3801 m
# scripts/config --set-val CONFIG_TYPEC_MUX_FSA4480 m
# scripts/config --set-val CONFIG_TYPEC_MUX_GPIO_SBU m
# scripts/config --set-val CONFIG_TYPEC_MUX_PI3USB30532 m
# scripts/config --set-val CONFIG_TYPEC_MUX_INTEL_PMC m
# scripts/config --set-val CONFIG_TYPEC_MUX_IT5205 m
# scripts/config --set-val CONFIG_TYPEC_MUX_NB7VPQ904M m
# scripts/config --set-val CONFIG_TYPEC_MUX_PTN36502 m
# scripts/config --set-val CONFIG_TYPEC_MUX_WCD939X_USBSS m
# scripts/config --enable CONFIG_USB_ROLE_SWITCH
# scripts/config --set-val CONFIG_USB_ROLES_INTEL_XHCI m
# scripts/config --enable CONFIG_MMC
# scripts/config --set-val CONFIG_MMC_BLOCK m
# scripts/config --set-val CONFIG_MMC_BLOCK_MINORS 8
# scripts/config --set-val CONFIG_SDIO_UART m
# scripts/config --disable CONFIG_MMC_TEST
# scripts/config --enable CONFIG_MMC_CRYPTO
# scripts/config --disable CONFIG_MMC_DEBUG
# scripts/config --set-val CONFIG_MMC_SDHCI m
# scripts/config --enable CONFIG_MMC_SDHCI_IO_ACCESSORS
# scripts/config --set-val CONFIG_MMC_SDHCI_PCI m
# scripts/config --enable CONFIG_MMC_RICOH_MMC
# scripts/config --set-val CONFIG_MMC_SDHCI_ACPI m
# scripts/config --set-val CONFIG_MMC_SDHCI_PLTFM m
# scripts/config --set-val CONFIG_MMC_SDHCI_F_SDH30 m
# scripts/config --set-val CONFIG_MMC_WBSD m
# scripts/config --set-val CONFIG_MMC_ALCOR m
# scripts/config --set-val CONFIG_MMC_TIFM_SD m
# scripts/config --set-val CONFIG_MMC_SPI m
# scripts/config --set-val CONFIG_MMC_SDRICOH_CS m
# scripts/config --set-val CONFIG_MMC_CB710 m
# scripts/config --set-val CONFIG_MMC_VIA_SDMMC m
# scripts/config --set-val CONFIG_MMC_VUB300 m
# scripts/config --set-val CONFIG_MMC_USHC m
# scripts/config --set-val CONFIG_MMC_USDHI6ROL0 m
# scripts/config --set-val CONFIG_MMC_REALTEK_PCI m
# scripts/config --set-val CONFIG_MMC_REALTEK_USB m
# scripts/config --set-val CONFIG_MMC_CQHCI m
# scripts/config --disable CONFIG_MMC_HSQ
# scripts/config --set-val CONFIG_MMC_TOSHIBA_PCI m
# scripts/config --set-val CONFIG_MMC_MTK m
# scripts/config --set-val CONFIG_MMC_SDHCI_XENON m
# scripts/config --set-val CONFIG_SCSI_UFSHCD m
# scripts/config --enable CONFIG_SCSI_UFS_BSG
# scripts/config --enable CONFIG_SCSI_UFS_CRYPTO
# scripts/config --disable CONFIG_SCSI_UFS_HWMON
# scripts/config --set-val CONFIG_SCSI_UFSHCD_PCI m
# scripts/config --set-val CONFIG_SCSI_UFS_DWC_TC_PCI m
# scripts/config --set-val CONFIG_SCSI_UFSHCD_PLATFORM m
# scripts/config --set-val CONFIG_SCSI_UFS_CDNS_PLATFORM m
# scripts/config --set-val CONFIG_MEMSTICK m
# scripts/config --disable CONFIG_MEMSTICK_DEBUG
# scripts/config --disable CONFIG_MEMSTICK_UNSAFE_RESUME
# scripts/config --set-val CONFIG_MSPRO_BLOCK m
# scripts/config --set-val CONFIG_MS_BLOCK m
# scripts/config --set-val CONFIG_MEMSTICK_TIFM_MS m
# scripts/config --set-val CONFIG_MEMSTICK_JMICRON_38X m
# scripts/config --set-val CONFIG_MEMSTICK_R592 m
# scripts/config --set-val CONFIG_MEMSTICK_REALTEK_USB m
# scripts/config --enable CONFIG_LEDS_EXPRESSWIRE
# scripts/config --enable CONFIG_NEW_LEDS
# scripts/config --enable CONFIG_LEDS_CLASS
# scripts/config --set-val CONFIG_LEDS_CLASS_FLASH m
# scripts/config --set-val CONFIG_LEDS_CLASS_MULTICOLOR m
# scripts/config --enable CONFIG_LEDS_BRIGHTNESS_HW_CHANGED
# scripts/config --set-val CONFIG_LEDS_88PM860X m
# scripts/config --set-val CONFIG_LEDS_APU m
# scripts/config --set-val CONFIG_LEDS_AW200XX m
# scripts/config --set-val CONFIG_LEDS_LM3530 m
# scripts/config --set-val CONFIG_LEDS_LM3532 m
# scripts/config --set-val CONFIG_LEDS_LM3642 m
# scripts/config --set-val CONFIG_LEDS_MT6323 m
# scripts/config --set-val CONFIG_LEDS_PCA9532 m
# scripts/config --enable CONFIG_LEDS_PCA9532_GPIO
# scripts/config --set-val CONFIG_LEDS_GPIO m
# scripts/config --set-val CONFIG_LEDS_LP3944 m
# scripts/config --set-val CONFIG_LEDS_LP3952 m
# scripts/config --set-val CONFIG_LEDS_LP50XX m
# scripts/config --set-val CONFIG_LEDS_LP8788 m
# scripts/config --set-val CONFIG_LEDS_PCA955X m
# scripts/config --enable CONFIG_LEDS_PCA955X_GPIO
# scripts/config --set-val CONFIG_LEDS_PCA963X m
# scripts/config --set-val CONFIG_LEDS_PCA995X m
# scripts/config --set-val CONFIG_LEDS_DA903X m
# scripts/config --set-val CONFIG_LEDS_DA9052 m
# scripts/config --set-val CONFIG_LEDS_DAC124S085 m
# scripts/config --set-val CONFIG_LEDS_PWM m
# scripts/config --set-val CONFIG_LEDS_REGULATOR m
# scripts/config --set-val CONFIG_LEDS_BD2606MVV m
# scripts/config --set-val CONFIG_LEDS_BD2802 m
# scripts/config --set-val CONFIG_LEDS_INTEL_SS4200 m
# scripts/config --set-val CONFIG_LEDS_LT3593 m
# scripts/config --set-val CONFIG_LEDS_ADP5520 m
# scripts/config --set-val CONFIG_LEDS_TCA6507 m
# scripts/config --set-val CONFIG_LEDS_TLC591XX m
# scripts/config --set-val CONFIG_LEDS_MAX8997 m
# scripts/config --set-val CONFIG_LEDS_LM355x m
# scripts/config --set-val CONFIG_LEDS_MENF21BMC m
# scripts/config --set-val CONFIG_LEDS_IS31FL319X m
# scripts/config --set-val CONFIG_LEDS_BLINKM m
# scripts/config --enable CONFIG_LEDS_BLINKM_MULTICOLOR
# scripts/config --set-val CONFIG_LEDS_MLXCPLD m
# scripts/config --set-val CONFIG_LEDS_MLXREG m
# scripts/config --set-val CONFIG_LEDS_USER m
# scripts/config --set-val CONFIG_LEDS_NIC78BX m
# scripts/config --set-val CONFIG_LEDS_SPI_BYTE m
# scripts/config --set-val CONFIG_LEDS_TPS6105X m
# scripts/config --set-val CONFIG_LEDS_STEAMDECK m
# scripts/config --set-val CONFIG_LEDS_AS3645A m
# scripts/config --set-val CONFIG_LEDS_LM3601X m
# scripts/config --set-val CONFIG_LEDS_MT6370_FLASH m
# scripts/config --set-val CONFIG_LEDS_RT8515 m
# scripts/config --set-val CONFIG_LEDS_SGM3140 m
# scripts/config --set-val CONFIG_LEDS_KTD202X m
# scripts/config --set-val CONFIG_LEDS_PWM_MULTICOLOR m
# scripts/config --set-val CONFIG_LEDS_MT6370_RGB m
# scripts/config --enable CONFIG_LEDS_TRIGGERS
# scripts/config --set-val CONFIG_LEDS_TRIGGER_TIMER m
# scripts/config --set-val CONFIG_LEDS_TRIGGER_ONESHOT m
# scripts/config --enable CONFIG_LEDS_TRIGGER_DISK
# scripts/config --enable CONFIG_LEDS_TRIGGER_MTD
# scripts/config --set-val CONFIG_LEDS_TRIGGER_HEARTBEAT m
# scripts/config --set-val CONFIG_LEDS_TRIGGER_BACKLIGHT m
# scripts/config --enable CONFIG_LEDS_TRIGGER_CPU
# scripts/config --set-val CONFIG_LEDS_TRIGGER_ACTIVITY m
# scripts/config --set-val CONFIG_LEDS_TRIGGER_GPIO m
# scripts/config --set-val CONFIG_LEDS_TRIGGER_DEFAULT_ON m
# scripts/config --set-val CONFIG_LEDS_TRIGGER_TRANSIENT m
# scripts/config --set-val CONFIG_LEDS_TRIGGER_CAMERA m
# scripts/config --enable CONFIG_LEDS_TRIGGER_PANIC
# scripts/config --set-val CONFIG_LEDS_TRIGGER_NETDEV m
# scripts/config --set-val CONFIG_LEDS_TRIGGER_PATTERN m
# scripts/config --set-val CONFIG_LEDS_TRIGGER_TTY m
# scripts/config --set-val CONFIG_LEDS_TRIGGER_INPUT_EVENTS m
# scripts/config --set-val CONFIG_LEDS_SIEMENS_SIMATIC_IPC m
# scripts/config --enable CONFIG_ACCESSIBILITY
# scripts/config --disable CONFIG_A11Y_BRAILLE_CONSOLE
# scripts/config --set-val CONFIG_SPEAKUP m
# scripts/config --set-val CONFIG_SPEAKUP_SYNTH_ACNTSA m
# scripts/config --set-val CONFIG_SPEAKUP_SYNTH_APOLLO m
# scripts/config --set-val CONFIG_SPEAKUP_SYNTH_AUDPTR m
# scripts/config --set-val CONFIG_SPEAKUP_SYNTH_BNS m
# scripts/config --set-val CONFIG_SPEAKUP_SYNTH_DECTLK m
# scripts/config --set-val CONFIG_SPEAKUP_SYNTH_DECEXT m
# scripts/config --set-val CONFIG_SPEAKUP_SYNTH_LTLK m
# scripts/config --set-val CONFIG_SPEAKUP_SYNTH_SOFT m
# scripts/config --set-val CONFIG_SPEAKUP_SYNTH_SPKOUT m
# scripts/config --set-val CONFIG_SPEAKUP_SYNTH_TXPRT m
# scripts/config --set-val CONFIG_SPEAKUP_SYNTH_DUMMY m
# scripts/config --set-val CONFIG_INFINIBAND m
# scripts/config --set-val CONFIG_INFINIBAND_USER_MAD m
# scripts/config --set-val CONFIG_INFINIBAND_USER_ACCESS m
# scripts/config --enable CONFIG_INFINIBAND_USER_MEM
# scripts/config --enable CONFIG_INFINIBAND_ON_DEMAND_PAGING
# scripts/config --enable CONFIG_INFINIBAND_ADDR_TRANS
# scripts/config --enable CONFIG_INFINIBAND_ADDR_TRANS_CONFIGFS
# scripts/config --enable CONFIG_INFINIBAND_VIRT_DMA
# scripts/config --set-val CONFIG_INFINIBAND_BNXT_RE m
# scripts/config --set-val CONFIG_INFINIBAND_CXGB4 m
# scripts/config --set-val CONFIG_INFINIBAND_EFA m
# scripts/config --set-val CONFIG_INFINIBAND_ERDMA m
# scripts/config --set-val CONFIG_INFINIBAND_HFI1 m
# scripts/config --disable CONFIG_HFI1_DEBUG_SDMA_ORDER
# scripts/config --disable CONFIG_SDMA_VERBOSITY
# scripts/config --set-val CONFIG_INFINIBAND_IRDMA m
# scripts/config --set-val CONFIG_MANA_INFINIBAND m
# scripts/config --set-val CONFIG_MLX4_INFINIBAND m
# scripts/config --set-val CONFIG_MLX5_INFINIBAND m
# scripts/config --set-val CONFIG_INFINIBAND_MTHCA m
# scripts/config --enable CONFIG_INFINIBAND_MTHCA_DEBUG
# scripts/config --set-val CONFIG_INFINIBAND_OCRDMA m
# scripts/config --set-val CONFIG_INFINIBAND_QEDR m
# scripts/config --set-val CONFIG_INFINIBAND_QIB m
# scripts/config --enable CONFIG_INFINIBAND_QIB_DCA
# scripts/config --set-val CONFIG_INFINIBAND_USNIC m
# scripts/config --set-val CONFIG_INFINIBAND_VMWARE_PVRDMA m
# scripts/config --set-val CONFIG_INFINIBAND_RDMAVT m
# scripts/config --set-val CONFIG_RDMA_RXE m
# scripts/config --set-val CONFIG_RDMA_SIW m
# scripts/config --set-val CONFIG_INFINIBAND_IPOIB m
# scripts/config --enable CONFIG_INFINIBAND_IPOIB_CM
# scripts/config --enable CONFIG_INFINIBAND_IPOIB_DEBUG
# scripts/config --disable CONFIG_INFINIBAND_IPOIB_DEBUG_DATA
# scripts/config --set-val CONFIG_INFINIBAND_SRP m
# scripts/config --set-val CONFIG_INFINIBAND_SRPT m
# scripts/config --set-val CONFIG_INFINIBAND_ISER m
# scripts/config --set-val CONFIG_INFINIBAND_ISERT m
# scripts/config --set-val CONFIG_INFINIBAND_RTRS m
# scripts/config --set-val CONFIG_INFINIBAND_RTRS_CLIENT m
# scripts/config --set-val CONFIG_INFINIBAND_RTRS_SERVER m
# scripts/config --set-val CONFIG_INFINIBAND_OPA_VNIC m
# scripts/config --enable CONFIG_EDAC_ATOMIC_SCRUB
# scripts/config --enable CONFIG_EDAC_SUPPORT
# scripts/config --enable CONFIG_EDAC
# scripts/config --disable CONFIG_EDAC_LEGACY_SYSFS
# scripts/config --disable CONFIG_EDAC_DEBUG
# scripts/config --enable CONFIG_EDAC_GHES
# scripts/config --set-val CONFIG_EDAC_E752X m
# scripts/config --set-val CONFIG_EDAC_I82975X m
# scripts/config --set-val CONFIG_EDAC_I3000 m
# scripts/config --set-val CONFIG_EDAC_I3200 m
# scripts/config --set-val CONFIG_EDAC_IE31200 m
# scripts/config --set-val CONFIG_EDAC_X38 m
# scripts/config --set-val CONFIG_EDAC_I5400 m
# scripts/config --set-val CONFIG_EDAC_I5100 m
# scripts/config --set-val CONFIG_EDAC_I7300 m
# scripts/config --enable CONFIG_RTC_LIB
# scripts/config --enable CONFIG_RTC_MC146818_LIB
# scripts/config --enable CONFIG_RTC_CLASS
# scripts/config --enable CONFIG_RTC_HCTOSYS
# scripts/config --set-val CONFIG_RTC_HCTOSYS_DEVICE "rtc0"
# scripts/config --enable CONFIG_RTC_SYSTOHC
# scripts/config --set-val CONFIG_RTC_SYSTOHC_DEVICE "rtc0"
# scripts/config --disable CONFIG_RTC_DEBUG
# scripts/config --enable CONFIG_RTC_NVMEM
# scripts/config --enable CONFIG_RTC_INTF_SYSFS
# scripts/config --enable CONFIG_RTC_INTF_PROC
# scripts/config --enable CONFIG_RTC_INTF_DEV
# scripts/config --disable CONFIG_RTC_INTF_DEV_UIE_EMUL
# scripts/config --disable CONFIG_RTC_DRV_TEST
# scripts/config --set-val CONFIG_RTC_DRV_88PM860X m
# scripts/config --set-val CONFIG_RTC_DRV_88PM80X m
# scripts/config --set-val CONFIG_RTC_DRV_ABB5ZES3 m
# scripts/config --set-val CONFIG_RTC_DRV_ABEOZ9 m
# scripts/config --set-val CONFIG_RTC_DRV_ABX80X m
# scripts/config --set-val CONFIG_RTC_DRV_DS1307 m
# scripts/config --enable CONFIG_RTC_DRV_DS1307_CENTURY
# scripts/config --set-val CONFIG_RTC_DRV_DS1374 m
# scripts/config --set-val CONFIG_RTC_DRV_DS1672 m
# scripts/config --set-val CONFIG_RTC_DRV_LP8788 m
# scripts/config --set-val CONFIG_RTC_DRV_MAX6900 m
# scripts/config --set-val CONFIG_RTC_DRV_MAX8907 m
# scripts/config --set-val CONFIG_RTC_DRV_MAX8925 m
# scripts/config --set-val CONFIG_RTC_DRV_MAX8998 m
# scripts/config --set-val CONFIG_RTC_DRV_MAX8997 m
# scripts/config --set-val CONFIG_RTC_DRV_MAX31335 m
# scripts/config --set-val CONFIG_RTC_DRV_RS5C372 m
# scripts/config --set-val CONFIG_RTC_DRV_ISL1208 m
# scripts/config --set-val CONFIG_RTC_DRV_ISL12022 m
# scripts/config --set-val CONFIG_RTC_DRV_X1205 m
# scripts/config --set-val CONFIG_RTC_DRV_PCF8523 m
# scripts/config --set-val CONFIG_RTC_DRV_PCF85063 m
# scripts/config --set-val CONFIG_RTC_DRV_PCF85363 m
# scripts/config --set-val CONFIG_RTC_DRV_PCF8563 m
# scripts/config --set-val CONFIG_RTC_DRV_PCF8583 m
# scripts/config --set-val CONFIG_RTC_DRV_M41T80 m
# scripts/config --enable CONFIG_RTC_DRV_M41T80_WDT
# scripts/config --set-val CONFIG_RTC_DRV_BQ32K m
# scripts/config --set-val CONFIG_RTC_DRV_PALMAS m
# scripts/config --set-val CONFIG_RTC_DRV_RC5T583 m
# scripts/config --set-val CONFIG_RTC_DRV_S35390A m
# scripts/config --set-val CONFIG_RTC_DRV_FM3130 m
# scripts/config --set-val CONFIG_RTC_DRV_RX8010 m
# scripts/config --set-val CONFIG_RTC_DRV_RX8111 m
# scripts/config --set-val CONFIG_RTC_DRV_RX8581 m
# scripts/config --set-val CONFIG_RTC_DRV_RX8025 m
# scripts/config --set-val CONFIG_RTC_DRV_EM3027 m
# scripts/config --set-val CONFIG_RTC_DRV_RV3028 m
# scripts/config --set-val CONFIG_RTC_DRV_RV3032 m
# scripts/config --set-val CONFIG_RTC_DRV_RV8803 m
# scripts/config --set-val CONFIG_RTC_DRV_SD2405AL m
# scripts/config --set-val CONFIG_RTC_DRV_SD3078 m
# scripts/config --set-val CONFIG_RTC_DRV_M41T93 m
# scripts/config --set-val CONFIG_RTC_DRV_M41T94 m
# scripts/config --set-val CONFIG_RTC_DRV_DS1302 m
# scripts/config --set-val CONFIG_RTC_DRV_DS1305 m
# scripts/config --set-val CONFIG_RTC_DRV_DS1343 m
# scripts/config --set-val CONFIG_RTC_DRV_DS1347 m
# scripts/config --set-val CONFIG_RTC_DRV_DS1390 m
# scripts/config --set-val CONFIG_RTC_DRV_MAX6916 m
# scripts/config --set-val CONFIG_RTC_DRV_R9701 m
# scripts/config --set-val CONFIG_RTC_DRV_RX4581 m
# scripts/config --set-val CONFIG_RTC_DRV_RS5C348 m
# scripts/config --set-val CONFIG_RTC_DRV_MAX6902 m
# scripts/config --set-val CONFIG_RTC_DRV_PCF2123 m
# scripts/config --set-val CONFIG_RTC_DRV_MCP795 m
# scripts/config --enable CONFIG_RTC_I2C_AND_SPI
# scripts/config --set-val CONFIG_RTC_DRV_DS3232 m
# scripts/config --enable CONFIG_RTC_DRV_DS3232_HWMON
# scripts/config --set-val CONFIG_RTC_DRV_PCF2127 m
# scripts/config --set-val CONFIG_RTC_DRV_RV3029C2 m
# scripts/config --enable CONFIG_RTC_DRV_RV3029_HWMON
# scripts/config --set-val CONFIG_RTC_DRV_RX6110 m
# scripts/config --enable CONFIG_RTC_DRV_CMOS
# scripts/config --set-val CONFIG_RTC_DRV_DS1286 m
# scripts/config --set-val CONFIG_RTC_DRV_DS1511 m
# scripts/config --set-val CONFIG_RTC_DRV_DS1553 m
# scripts/config --set-val CONFIG_RTC_DRV_DS1685_FAMILY m
# scripts/config --enable CONFIG_RTC_DRV_DS1685
# scripts/config --disable CONFIG_RTC_DRV_DS1689
# scripts/config --disable CONFIG_RTC_DRV_DS17285
# scripts/config --disable CONFIG_RTC_DRV_DS17485
# scripts/config --disable CONFIG_RTC_DRV_DS17885
# scripts/config --set-val CONFIG_RTC_DRV_DS1742 m
# scripts/config --set-val CONFIG_RTC_DRV_DS2404 m
# scripts/config --set-val CONFIG_RTC_DRV_DA9052 m
# scripts/config --set-val CONFIG_RTC_DRV_DA9055 m
# scripts/config --set-val CONFIG_RTC_DRV_DA9063 m
# scripts/config --set-val CONFIG_RTC_DRV_STK17TA8 m
# scripts/config --set-val CONFIG_RTC_DRV_M48T86 m
# scripts/config --set-val CONFIG_RTC_DRV_M48T35 m
# scripts/config --set-val CONFIG_RTC_DRV_M48T59 m
# scripts/config --set-val CONFIG_RTC_DRV_MSM6242 m
# scripts/config --set-val CONFIG_RTC_DRV_RP5C01 m
# scripts/config --set-val CONFIG_RTC_DRV_PCF50633 m
# scripts/config --set-val CONFIG_RTC_DRV_CROS_EC m
# scripts/config --set-val CONFIG_RTC_DRV_FTRTC010 m
# scripts/config --set-val CONFIG_RTC_DRV_PCAP m
# scripts/config --set-val CONFIG_RTC_DRV_MT6397 m
# scripts/config --set-val CONFIG_RTC_DRV_HID_SENSOR_TIME m
# scripts/config --set-val CONFIG_RTC_DRV_GOLDFISH m
# scripts/config --set-val CONFIG_RTC_DRV_WILCO_EC m
# scripts/config --enable CONFIG_DMADEVICES
# scripts/config --disable CONFIG_DMADEVICES_DEBUG
# scripts/config --enable CONFIG_DMA_ENGINE
# scripts/config --enable CONFIG_DMA_VIRTUAL_CHANNELS
# scripts/config --enable CONFIG_DMA_ACPI
# scripts/config --set-val CONFIG_ALTERA_MSGDMA m
# scripts/config --set-val CONFIG_INTEL_IDMA64 m
# scripts/config --set-val CONFIG_INTEL_IDXD_BUS m
# scripts/config --set-val CONFIG_INTEL_IDXD m
# scripts/config --disable CONFIG_INTEL_IDXD_COMPAT
# scripts/config --enable CONFIG_INTEL_IDXD_SVM
# scripts/config --enable CONFIG_INTEL_IDXD_PERFMON
# scripts/config --set-val CONFIG_INTEL_IOATDMA m
# scripts/config --set-val CONFIG_PLX_DMA m
# scripts/config --set-val CONFIG_XILINX_DMA m
# scripts/config --set-val CONFIG_XILINX_XDMA m
# scripts/config --set-val CONFIG_AMD_QDMA m
# scripts/config --set-val CONFIG_AMD_PTDMA m
# scripts/config --set-val CONFIG_QCOM_HIDMA_MGMT m
# scripts/config --set-val CONFIG_QCOM_HIDMA m
# scripts/config --set-val CONFIG_DW_DMAC_CORE m
# scripts/config --set-val CONFIG_DW_DMAC m
# scripts/config --set-val CONFIG_DW_DMAC_PCI m
# scripts/config --set-val CONFIG_DW_EDMA m
# scripts/config --set-val CONFIG_DW_EDMA_PCIE m
# scripts/config --set-val CONFIG_SF_PDMA m
# scripts/config --enable CONFIG_INTEL_LDMA
# scripts/config --enable CONFIG_ASYNC_TX_DMA
# scripts/config --disable CONFIG_DMATEST
# scripts/config --enable CONFIG_DMA_ENGINE_RAID
# scripts/config --enable CONFIG_SYNC_FILE
# scripts/config --enable CONFIG_SW_SYNC
# scripts/config --enable CONFIG_UDMABUF
# scripts/config --enable CONFIG_DMABUF_MOVE_NOTIFY
# scripts/config --disable CONFIG_DMABUF_DEBUG
# scripts/config --disable CONFIG_DMABUF_SELFTESTS
# scripts/config --enable CONFIG_DMABUF_HEAPS
# scripts/config --disable CONFIG_DMABUF_SYSFS_STATS
# scripts/config --enable CONFIG_DMABUF_HEAPS_SYSTEM
# scripts/config --set-val CONFIG_DCA m
# scripts/config --set-val CONFIG_UIO m
# scripts/config --set-val CONFIG_UIO_CIF m
# scripts/config --set-val CONFIG_UIO_PDRV_GENIRQ m
# scripts/config --set-val CONFIG_UIO_DMEM_GENIRQ m
# scripts/config --set-val CONFIG_UIO_AEC m
# scripts/config --set-val CONFIG_UIO_SERCOS3 m
# scripts/config --set-val CONFIG_UIO_PCI_GENERIC m
# scripts/config --set-val CONFIG_UIO_NETX m
# scripts/config --set-val CONFIG_UIO_MF624 m
# scripts/config --set-val CONFIG_UIO_HV_GENERIC m
# scripts/config --set-val CONFIG_UIO_DFL m
# scripts/config --set-val CONFIG_VFIO m
# scripts/config --enable CONFIG_VFIO_DEVICE_CDEV
# scripts/config --enable CONFIG_VFIO_GROUP
# scripts/config --enable CONFIG_VFIO_CONTAINER
# scripts/config --set-val CONFIG_VFIO_IOMMU_TYPE1 m
# scripts/config --enable CONFIG_VFIO_NOIOMMU
# scripts/config --enable CONFIG_VFIO_VIRQFD
# scripts/config --disable CONFIG_VFIO_DEBUGFS
# scripts/config --set-val CONFIG_VFIO_PCI_CORE m
# scripts/config --enable CONFIG_VFIO_PCI_MMAP
# scripts/config --enable CONFIG_VFIO_PCI_INTX
# scripts/config --set-val CONFIG_VFIO_PCI m
# scripts/config --enable CONFIG_VFIO_PCI_VGA
# scripts/config --enable CONFIG_VFIO_PCI_IGD
# scripts/config --set-val CONFIG_MLX5_VFIO_PCI m
# scripts/config --set-val CONFIG_PDS_VFIO_PCI m
# scripts/config --set-val CONFIG_VIRTIO_VFIO_PCI m
# scripts/config --set-val CONFIG_QAT_VFIO_PCI m
# scripts/config --set-val CONFIG_IRQ_BYPASS_MANAGER m
# scripts/config --enable CONFIG_VIRT_DRIVERS
# scripts/config --set-val CONFIG_VMGENID m
# scripts/config --set-val CONFIG_VBOXGUEST m
# scripts/config --set-val CONFIG_NITRO_ENCLAVES m
# scripts/config --set-val CONFIG_EFI_SECRET m
# scripts/config --enable CONFIG_VIRTIO_ANCHOR
# scripts/config --enable CONFIG_VIRTIO
# scripts/config --enable CONFIG_VIRTIO_PCI_LIB
# scripts/config --enable CONFIG_VIRTIO_PCI_LIB_LEGACY
# scripts/config --enable CONFIG_VIRTIO_MENU
# scripts/config --enable CONFIG_VIRTIO_PCI
# scripts/config --enable CONFIG_VIRTIO_PCI_ADMIN_LEGACY
# scripts/config --enable CONFIG_VIRTIO_PCI_LEGACY
# scripts/config --set-val CONFIG_VIRTIO_VDPA m
# scripts/config --set-val CONFIG_VIRTIO_PMEM m
# scripts/config --enable CONFIG_VIRTIO_BALLOON
# scripts/config --set-val CONFIG_VIRTIO_MEM m
# scripts/config --set-val CONFIG_VIRTIO_INPUT m
# scripts/config --enable CONFIG_VIRTIO_MMIO
# scripts/config --enable CONFIG_VIRTIO_MMIO_CMDLINE_DEVICES
# scripts/config --disable CONFIG_VIRTIO_DEBUG
# scripts/config --set-val CONFIG_VDPA m
# scripts/config --set-val CONFIG_VDPA_SIM m
# scripts/config --set-val CONFIG_VDPA_SIM_NET m
# scripts/config --set-val CONFIG_VDPA_SIM_BLOCK m
# scripts/config --set-val CONFIG_VDPA_USER m
# scripts/config --set-val CONFIG_IFCVF m
# scripts/config --enable CONFIG_MLX5_VDPA
# scripts/config --set-val CONFIG_MLX5_VDPA_NET m
# scripts/config --disable CONFIG_MLX5_VDPA_STEERING_DEBUG
# scripts/config --set-val CONFIG_VP_VDPA m
# scripts/config --set-val CONFIG_ALIBABA_ENI_VDPA m
# scripts/config --set-val CONFIG_SNET_VDPA m
# scripts/config --set-val CONFIG_PDS_VDPA m
# scripts/config --set-val CONFIG_OCTEONEP_VDPA m
# scripts/config --set-val CONFIG_VHOST_IOTLB m
# scripts/config --set-val CONFIG_VHOST_RING m
# scripts/config --enable CONFIG_VHOST_TASK
# scripts/config --set-val CONFIG_VHOST m
# scripts/config --enable CONFIG_VHOST_MENU
# scripts/config --set-val CONFIG_VHOST_NET m
# scripts/config --set-val CONFIG_VHOST_SCSI m
# scripts/config --set-val CONFIG_VHOST_VSOCK m
# scripts/config --set-val CONFIG_VHOST_VDPA m
# scripts/config --disable CONFIG_VHOST_CROSS_ENDIAN_LEGACY
# scripts/config --enable CONFIG_VHOST_ENABLE_FORK_OWNER_CONTROL
# scripts/config --set-val CONFIG_HYPERV m
# scripts/config --disable CONFIG_HYPERV_VTL_MODE
# scripts/config --enable CONFIG_HYPERV_TIMER
# scripts/config --set-val CONFIG_HYPERV_UTILS m
# scripts/config --set-val CONFIG_HYPERV_BALLOON m
# scripts/config --enable CONFIG_XEN_BALLOON
# scripts/config --enable CONFIG_XEN_BALLOON_MEMORY_HOTPLUG
# scripts/config --set-val CONFIG_XEN_MEMORY_HOTPLUG_LIMIT 512
# scripts/config --enable CONFIG_XEN_SCRUB_PAGES_DEFAULT
# scripts/config --set-val CONFIG_XEN_DEV_EVTCHN m
# scripts/config --enable CONFIG_XEN_BACKEND
# scripts/config --set-val CONFIG_XENFS m
# scripts/config --enable CONFIG_XEN_COMPAT_XENFS
# scripts/config --enable CONFIG_XEN_SYS_HYPERVISOR
# scripts/config --enable CONFIG_XEN_XENBUS_FRONTEND
# scripts/config --set-val CONFIG_XEN_GNTDEV m
# scripts/config --enable CONFIG_XEN_GNTDEV_DMABUF
# scripts/config --set-val CONFIG_XEN_GRANT_DEV_ALLOC m
# scripts/config --enable CONFIG_XEN_GRANT_DMA_ALLOC
# scripts/config --enable CONFIG_SWIOTLB_XEN
# scripts/config --enable CONFIG_XEN_PCI_STUB
# scripts/config --set-val CONFIG_XEN_PCIDEV_BACKEND m
# scripts/config --set-val CONFIG_XEN_PVCALLS_FRONTEND m
# scripts/config --disable CONFIG_XEN_PVCALLS_BACKEND
# scripts/config --set-val CONFIG_XEN_SCSI_BACKEND m
# scripts/config --set-val CONFIG_XEN_PRIVCMD m
# scripts/config --enable CONFIG_XEN_PRIVCMD_EVENTFD
# scripts/config --enable CONFIG_XEN_HAVE_PVMMU
# scripts/config --enable CONFIG_XEN_EFI
# scripts/config --enable CONFIG_XEN_AUTO_XLATE
# scripts/config --enable CONFIG_XEN_ACPI
# scripts/config --enable CONFIG_XEN_SYMS
# scripts/config --enable CONFIG_XEN_HAVE_VPMU
# scripts/config --enable CONFIG_XEN_UNPOPULATED_ALLOC
# scripts/config --enable CONFIG_XEN_GRANT_DMA_OPS
# scripts/config --enable CONFIG_XEN_VIRTIO
# scripts/config --disable CONFIG_XEN_VIRTIO_FORCE_GRANT
# scripts/config --set-val CONFIG_GREYBUS m
# scripts/config --set-val CONFIG_GREYBUS_BEAGLEPLAY m
# scripts/config --set-val CONFIG_GREYBUS_ES2 m
# scripts/config --set-val CONFIG_COMEDI m
# scripts/config --disable CONFIG_COMEDI_DEBUG
# scripts/config --set-val CONFIG_COMEDI_DEFAULT_BUF_SIZE_KB 2048
# scripts/config --set-val CONFIG_COMEDI_DEFAULT_BUF_MAXSIZE_KB 20480
# scripts/config --enable CONFIG_COMEDI_MISC_DRIVERS
# scripts/config --set-val CONFIG_COMEDI_BOND m
# scripts/config --set-val CONFIG_COMEDI_TEST m
# scripts/config --set-val CONFIG_COMEDI_PARPORT m
# scripts/config --set-val CONFIG_COMEDI_PCI_DRIVERS m
# scripts/config --set-val CONFIG_COMEDI_8255_PCI m
# scripts/config --set-val CONFIG_COMEDI_ADDI_WATCHDOG m
# scripts/config --set-val CONFIG_COMEDI_ADDI_APCI_1032 m
# scripts/config --set-val CONFIG_COMEDI_ADDI_APCI_1500 m
# scripts/config --set-val CONFIG_COMEDI_ADDI_APCI_1516 m
# scripts/config --set-val CONFIG_COMEDI_ADDI_APCI_1564 m
# scripts/config --set-val CONFIG_COMEDI_ADDI_APCI_16XX m
# scripts/config --set-val CONFIG_COMEDI_ADDI_APCI_2032 m
# scripts/config --set-val CONFIG_COMEDI_ADDI_APCI_2200 m
# scripts/config --set-val CONFIG_COMEDI_ADDI_APCI_3120 m
# scripts/config --set-val CONFIG_COMEDI_ADDI_APCI_3501 m
# scripts/config --set-val CONFIG_COMEDI_ADDI_APCI_3XXX m
# scripts/config --set-val CONFIG_COMEDI_ADL_PCI6208 m
# scripts/config --set-val CONFIG_COMEDI_ADL_PCI7X3X m
# scripts/config --set-val CONFIG_COMEDI_ADL_PCI8164 m
# scripts/config --set-val CONFIG_COMEDI_ADL_PCI9111 m
# scripts/config --set-val CONFIG_COMEDI_ADL_PCI9118 m
# scripts/config --set-val CONFIG_COMEDI_ADV_PCI1710 m
# scripts/config --set-val CONFIG_COMEDI_ADV_PCI1720 m
# scripts/config --set-val CONFIG_COMEDI_ADV_PCI1723 m
# scripts/config --set-val CONFIG_COMEDI_ADV_PCI1724 m
# scripts/config --set-val CONFIG_COMEDI_ADV_PCI1760 m
# scripts/config --set-val CONFIG_COMEDI_ADV_PCI_DIO m
# scripts/config --set-val CONFIG_COMEDI_AMPLC_DIO200_PCI m
# scripts/config --set-val CONFIG_COMEDI_AMPLC_PC236_PCI m
# scripts/config --set-val CONFIG_COMEDI_AMPLC_PC263_PCI m
# scripts/config --set-val CONFIG_COMEDI_AMPLC_PCI224 m
# scripts/config --set-val CONFIG_COMEDI_AMPLC_PCI230 m
# scripts/config --set-val CONFIG_COMEDI_CONTEC_PCI_DIO m
# scripts/config --set-val CONFIG_COMEDI_DAS08_PCI m
# scripts/config --set-val CONFIG_COMEDI_DT3000 m
# scripts/config --set-val CONFIG_COMEDI_DYNA_PCI10XX m
# scripts/config --set-val CONFIG_COMEDI_GSC_HPDI m
# scripts/config --set-val CONFIG_COMEDI_MF6X4 m
# scripts/config --set-val CONFIG_COMEDI_ICP_MULTI m
# scripts/config --set-val CONFIG_COMEDI_DAQBOARD2000 m
# scripts/config --set-val CONFIG_COMEDI_JR3_PCI m
# scripts/config --set-val CONFIG_COMEDI_KE_COUNTER m
# scripts/config --set-val CONFIG_COMEDI_CB_PCIDAS64 m
# scripts/config --set-val CONFIG_COMEDI_CB_PCIDAS m
# scripts/config --set-val CONFIG_COMEDI_CB_PCIDDA m
# scripts/config --set-val CONFIG_COMEDI_CB_PCIMDAS m
# scripts/config --set-val CONFIG_COMEDI_CB_PCIMDDA m
# scripts/config --set-val CONFIG_COMEDI_ME4000 m
# scripts/config --set-val CONFIG_COMEDI_ME_DAQ m
# scripts/config --set-val CONFIG_COMEDI_NI_6527 m
# scripts/config --set-val CONFIG_COMEDI_NI_65XX m
# scripts/config --set-val CONFIG_COMEDI_NI_660X m
# scripts/config --set-val CONFIG_COMEDI_NI_670X m
# scripts/config --set-val CONFIG_COMEDI_NI_LABPC_PCI m
# scripts/config --set-val CONFIG_COMEDI_NI_PCIDIO m
# scripts/config --set-val CONFIG_COMEDI_NI_PCIMIO m
# scripts/config --set-val CONFIG_COMEDI_RTD520 m
# scripts/config --set-val CONFIG_COMEDI_S626 m
# scripts/config --set-val CONFIG_COMEDI_MITE m
# scripts/config --set-val CONFIG_COMEDI_NI_TIOCMD m
# scripts/config --set-val CONFIG_COMEDI_PCMCIA_DRIVERS m
# scripts/config --set-val CONFIG_COMEDI_CB_DAS16_CS m
# scripts/config --set-val CONFIG_COMEDI_DAS08_CS m
# scripts/config --set-val CONFIG_COMEDI_NI_DAQ_700_CS m
# scripts/config --set-val CONFIG_COMEDI_NI_DAQ_DIO24_CS m
# scripts/config --set-val CONFIG_COMEDI_NI_LABPC_CS m
# scripts/config --set-val CONFIG_COMEDI_NI_MIO_CS m
# scripts/config --set-val CONFIG_COMEDI_QUATECH_DAQP_CS m
# scripts/config --set-val CONFIG_COMEDI_USB_DRIVERS m
# scripts/config --set-val CONFIG_COMEDI_DT9812 m
# scripts/config --set-val CONFIG_COMEDI_NI_USB6501 m
# scripts/config --set-val CONFIG_COMEDI_USBDUX m
# scripts/config --set-val CONFIG_COMEDI_USBDUXFAST m
# scripts/config --set-val CONFIG_COMEDI_USBDUXSIGMA m
# scripts/config --set-val CONFIG_COMEDI_VMK80XX m
# scripts/config --set-val CONFIG_COMEDI_8254 m
# scripts/config --set-val CONFIG_COMEDI_8255 m
# scripts/config --set-val CONFIG_COMEDI_8255_SA m
# scripts/config --set-val CONFIG_COMEDI_KCOMEDILIB m
# scripts/config --set-val CONFIG_COMEDI_AMPLC_DIO200 m
# scripts/config --set-val CONFIG_COMEDI_AMPLC_PC236 m
# scripts/config --set-val CONFIG_COMEDI_DAS08 m
# scripts/config --set-val CONFIG_COMEDI_NI_LABPC m
# scripts/config --set-val CONFIG_COMEDI_NI_TIO m
# scripts/config --set-val CONFIG_COMEDI_NI_ROUTING m
# scripts/config --set-val CONFIG_COMEDI_TESTS m
# scripts/config --set-val CONFIG_COMEDI_TESTS_EXAMPLE m
# scripts/config --set-val CONFIG_COMEDI_TESTS_NI_ROUTES m
# scripts/config --enable CONFIG_STAGING
# scripts/config --set-val CONFIG_RTS5208 m
# scripts/config --set-val CONFIG_VT6655 m
# scripts/config --set-val CONFIG_ADIS16203 m
# scripts/config --set-val CONFIG_ADIS16240 m
# scripts/config --set-val CONFIG_AD7816 m
# scripts/config --set-val CONFIG_ADT7316 m
# scripts/config --set-val CONFIG_ADT7316_SPI m
# scripts/config --set-val CONFIG_ADT7316_I2C m
# scripts/config --set-val CONFIG_AD9832 m
# scripts/config --set-val CONFIG_AD9834 m
# scripts/config --set-val CONFIG_AD5933 m
# scripts/config --enable CONFIG_STAGING_MEDIA
# scripts/config --set-val CONFIG_LTE_GDM724X m
# scripts/config --set-val CONFIG_MOST_COMPONENTS m
# scripts/config --set-val CONFIG_MOST_NET m
# scripts/config --set-val CONFIG_MOST_I2C m
# scripts/config --set-val CONFIG_GREYBUS_BOOTROM m
# scripts/config --set-val CONFIG_GREYBUS_FIRMWARE m
# scripts/config --set-val CONFIG_GREYBUS_HID m
# scripts/config --set-val CONFIG_GREYBUS_LIGHT m
# scripts/config --set-val CONFIG_GREYBUS_LOG m
# scripts/config --set-val CONFIG_GREYBUS_LOOPBACK m
# scripts/config --set-val CONFIG_GREYBUS_POWER m
# scripts/config --set-val CONFIG_GREYBUS_RAW m
# scripts/config --set-val CONFIG_GREYBUS_VIBRATOR m
# scripts/config --set-val CONFIG_GREYBUS_BRIDGED_PHY m
# scripts/config --set-val CONFIG_GREYBUS_GPIO m
# scripts/config --set-val CONFIG_GREYBUS_I2C m
# scripts/config --set-val CONFIG_GREYBUS_PWM m
# scripts/config --set-val CONFIG_GREYBUS_SDIO m
# scripts/config --set-val CONFIG_GREYBUS_SPI m
# scripts/config --set-val CONFIG_GREYBUS_UART m
# scripts/config --set-val CONFIG_GREYBUS_USB m
# scripts/config --set-val CONFIG_FIELDBUS_DEV m
# scripts/config --enable CONFIG_VME_BUS
# scripts/config --set-val CONFIG_VME_TSI148 m
# scripts/config --set-val CONFIG_VME_FAKE m
# scripts/config --set-val CONFIG_VME_USER m
# scripts/config --disable CONFIG_GOLDFISH
# scripts/config --enable CONFIG_CHROME_PLATFORMS
# scripts/config --set-val CONFIG_CHROMEOS_ACPI m
# scripts/config --set-val CONFIG_CHROMEOS_LAPTOP m
# scripts/config --set-val CONFIG_CHROMEOS_PSTORE m
# scripts/config --set-val CONFIG_CHROMEOS_TBMC m
# scripts/config --set-val CONFIG_CROS_EC m
# scripts/config --set-val CONFIG_CROS_EC_I2C m
# scripts/config --set-val CONFIG_CROS_EC_ISHTP m
# scripts/config --set-val CONFIG_CROS_EC_SPI m
# scripts/config --set-val CONFIG_CROS_EC_UART m
# scripts/config --set-val CONFIG_CROS_EC_LPC m
# scripts/config --enable CONFIG_CROS_EC_PROTO
# scripts/config --set-val CONFIG_CROS_KBD_LED_BACKLIGHT m
# scripts/config --set-val CONFIG_CROS_HPS_I2C m
# scripts/config --set-val CONFIG_WILCO_EC m
# scripts/config --set-val CONFIG_WILCO_EC_DEBUGFS m
# scripts/config --set-val CONFIG_WILCO_EC_EVENTS m
# scripts/config --set-val CONFIG_WILCO_EC_TELEMETRY m
# scripts/config --enable CONFIG_MELLANOX_PLATFORM
# scripts/config --set-val CONFIG_MLXREG_HOTPLUG m
# scripts/config --set-val CONFIG_MLXREG_IO m
# scripts/config --set-val CONFIG_MLXREG_LC m
# scripts/config --set-val CONFIG_NVSW_SN2201 m
# scripts/config --enable CONFIG_SURFACE_PLATFORMS
# scripts/config --set-val CONFIG_SURFACE3_WMI m
# scripts/config --set-val CONFIG_SURFACE_3_POWER_OPREGION m
# scripts/config --set-val CONFIG_SURFACE_ACPI_NOTIFY m
# scripts/config --set-val CONFIG_SURFACE_AGGREGATOR_CDEV m
# scripts/config --set-val CONFIG_SURFACE_AGGREGATOR_HUB m
# scripts/config --set-val CONFIG_SURFACE_AGGREGATOR_REGISTRY m
# scripts/config --set-val CONFIG_SURFACE_AGGREGATOR_TABLET_SWITCH m
# scripts/config --set-val CONFIG_SURFACE_DTX m
# scripts/config --set-val CONFIG_SURFACE_GPE m
# scripts/config --set-val CONFIG_SURFACE_HOTPLUG m
# scripts/config --set-val CONFIG_SURFACE_PLATFORM_PROFILE m
# scripts/config --set-val CONFIG_SURFACE_PRO3_BUTTON m
# scripts/config --set-val CONFIG_SURFACE_AGGREGATOR m
# scripts/config --enable CONFIG_SURFACE_AGGREGATOR_BUS
# scripts/config --enable CONFIG_X86_PLATFORM_DEVICES
# scripts/config --set-val CONFIG_ACPI_WMI m
# scripts/config --set-val CONFIG_WMI_BMOF m
# scripts/config --set-val CONFIG_MXM_WMI m
# scripts/config --set-val CONFIG_NVIDIA_WMI_EC_BACKLIGHT m
# scripts/config --set-val CONFIG_XIAOMI_WMI m
# scripts/config --set-val CONFIG_GIGABYTE_WMI m
# scripts/config --set-val CONFIG_YOGABOOK m
# scripts/config --set-val CONFIG_YT2_1380 m
# scripts/config --set-val CONFIG_ACERHDF m
# scripts/config --set-val CONFIG_ACER_WIRELESS m
# scripts/config --set-val CONFIG_ACER_WMI m
# scripts/config --set-val CONFIG_AMD_PMF m
# scripts/config --enable CONFIG_AMD_PMF_DEBUG
# scripts/config --set-val CONFIG_AMD_HSMP m
# scripts/config --set-val CONFIG_AMD_3D_VCACHE m
# scripts/config --enable CONFIG_AMD_WBRF
# scripts/config --set-val CONFIG_ADV_SWBUTTON m
# scripts/config --set-val CONFIG_APPLE_GMUX m
# scripts/config --set-val CONFIG_ASUS_LAPTOP m
# scripts/config --set-val CONFIG_ASUS_WIRELESS m
# scripts/config --set-val CONFIG_ASUS_TF103C_DOCK m
# scripts/config --set-val CONFIG_EEEPC_LAPTOP m
# scripts/config --enable CONFIG_X86_PLATFORM_DRIVERS_DELL
# scripts/config --set-val CONFIG_ALIENWARE_WMI m
# scripts/config --set-val CONFIG_DCDBAS m
# scripts/config --set-val CONFIG_DELL_RBU m
# scripts/config --set-val CONFIG_DELL_RBTN m
# scripts/config --set-val CONFIG_DELL_PC m
# scripts/config --set-val CONFIG_DELL_SMBIOS m
# scripts/config --enable CONFIG_DELL_SMBIOS_WMI
# scripts/config --enable CONFIG_DELL_SMBIOS_SMM
# scripts/config --set-val CONFIG_DELL_SMO8800 m
# scripts/config --set-val CONFIG_DELL_UART_BACKLIGHT m
# scripts/config --set-val CONFIG_DELL_WMI m
# scripts/config --enable CONFIG_DELL_WMI_PRIVACY
# scripts/config --set-val CONFIG_DELL_WMI_AIO m
# scripts/config --set-val CONFIG_DELL_WMI_DESCRIPTOR m
# scripts/config --set-val CONFIG_DELL_WMI_DDV m
# scripts/config --set-val CONFIG_DELL_WMI_LED m
# scripts/config --set-val CONFIG_DELL_WMI_SYSMAN m
# scripts/config --set-val CONFIG_AMILO_RFKILL m
# scripts/config --set-val CONFIG_FUJITSU_TABLET m
# scripts/config --set-val CONFIG_GPD_POCKET_FAN m
# scripts/config --enable CONFIG_X86_PLATFORM_DRIVERS_HP
# scripts/config --set-val CONFIG_HP_ACCEL m
# scripts/config --set-val CONFIG_HP_WMI m
# scripts/config --set-val CONFIG_HP_BIOSCFG m
# scripts/config --set-val CONFIG_WIRELESS_HOTKEY m
# scripts/config --set-val CONFIG_IBM_RTL m
# scripts/config --set-val CONFIG_IDEAPAD_LAPTOP m
# scripts/config --set-val CONFIG_LENOVO_YMC m
# scripts/config --set-val CONFIG_SENSORS_HDAPS m
# scripts/config --set-val CONFIG_THINKPAD_LMI m
# scripts/config --enable CONFIG_INTEL_ATOMISP2_PDX86
# scripts/config --set-val CONFIG_INTEL_ATOMISP2_LED m
# scripts/config --set-val CONFIG_INTEL_ATOMISP2_PM m
# scripts/config --set-val CONFIG_INTEL_IFS m
# scripts/config --set-val CONFIG_INTEL_SAR_INT1092 m
# scripts/config --set-val CONFIG_INTEL_SKL_INT3472 m
# scripts/config --set-val CONFIG_INTEL_PMC_CORE m
# scripts/config --set-val CONFIG_INTEL_PMT_CLASS m
# scripts/config --set-val CONFIG_INTEL_PMT_TELEMETRY m
# scripts/config --set-val CONFIG_INTEL_PMT_CRASHLOG m
# scripts/config --set-val CONFIG_INTEL_SPEED_SELECT_TPMI m
# scripts/config --set-val CONFIG_INTEL_SPEED_SELECT_INTERFACE m
# scripts/config --set-val CONFIG_INTEL_TELEMETRY m
# scripts/config --enable CONFIG_INTEL_WMI
# scripts/config --set-val CONFIG_INTEL_WMI_SBL_FW_UPDATE m
# scripts/config --set-val CONFIG_INTEL_WMI_THUNDERBOLT m
# scripts/config --set-val CONFIG_INTEL_UNCORE_FREQ_CONTROL_TPMI m
# scripts/config --set-val CONFIG_INTEL_UNCORE_FREQ_CONTROL m
# scripts/config --set-val CONFIG_INTEL_HID_EVENT m
# scripts/config --set-val CONFIG_INTEL_VBTN m
# scripts/config --set-val CONFIG_INTEL_INT0002_VGPIO m
# scripts/config --set-val CONFIG_INTEL_OAKTRAIL m
# scripts/config --set-val CONFIG_INTEL_BXTWC_PMIC_TMU m
# scripts/config --set-val CONFIG_INTEL_ISHTP_ECLITE m
# scripts/config --set-val CONFIG_INTEL_MRFLD_PWRBTN m
# scripts/config --set-val CONFIG_INTEL_PUNIT_IPC m
# scripts/config --set-val CONFIG_INTEL_RST m
# scripts/config --set-val CONFIG_INTEL_SDSI m
# scripts/config --set-val CONFIG_INTEL_SMARTCONNECT m
# scripts/config --set-val CONFIG_INTEL_TPMI_POWER_DOMAINS m
# scripts/config --set-val CONFIG_INTEL_TPMI m
# scripts/config --set-val CONFIG_INTEL_PLR_TPMI m
# scripts/config --set-val CONFIG_INTEL_VSEC m
# scripts/config --set-val CONFIG_ACPI_QUICKSTART m
# scripts/config --set-val CONFIG_MEEGOPAD_ANX7428 m
# scripts/config --set-val CONFIG_MSI_LAPTOP m
# scripts/config --set-val CONFIG_MSI_WMI m
# scripts/config --set-val CONFIG_MSI_WMI_PLATFORM m
# scripts/config --set-val CONFIG_PCENGINES_APU2 m
# scripts/config --set-val CONFIG_BARCO_P50_GPIO m
# scripts/config --set-val CONFIG_SAMSUNG_LAPTOP m
# scripts/config --set-val CONFIG_SAMSUNG_Q10 m
# scripts/config --set-val CONFIG_TOSHIBA_BT_RFKILL m
# scripts/config --set-val CONFIG_TOSHIBA_HAPS m
# scripts/config --disable CONFIG_TOSHIBA_WMI
# scripts/config --set-val CONFIG_ACPI_CMPC m
# scripts/config --set-val CONFIG_COMPAL_LAPTOP m
# scripts/config --set-val CONFIG_PANASONIC_LAPTOP m
# scripts/config --set-val CONFIG_SONY_LAPTOP m
# scripts/config --enable CONFIG_SONYPI_COMPAT
# scripts/config --set-val CONFIG_TOPSTAR_LAPTOP m
# scripts/config --set-val CONFIG_SERIAL_MULTI_INSTANTIATE m
# scripts/config --set-val CONFIG_MLX_PLATFORM m
# scripts/config --set-val CONFIG_INSPUR_PLATFORM_PROFILE m
# scripts/config --set-val CONFIG_LENOVO_WMI_CAMERA m
# scripts/config --set-val CONFIG_FW_ATTR_CLASS m
# scripts/config --set-val CONFIG_INTEL_IPS m
# scripts/config --enable CONFIG_INTEL_SCU_IPC
# scripts/config --enable CONFIG_INTEL_SCU
# scripts/config --enable CONFIG_INTEL_SCU_PCI
# scripts/config --set-val CONFIG_INTEL_SCU_PLATFORM m
# scripts/config --set-val CONFIG_INTEL_SCU_IPC_UTIL m
# scripts/config --set-val CONFIG_SIEMENS_SIMATIC_IPC m
# scripts/config --set-val CONFIG_SIEMENS_SIMATIC_IPC_BATT m
# scripts/config --set-val CONFIG_SILICOM_PLATFORM m
# scripts/config --set-val CONFIG_WINMATE_FM07_KEYS m
# scripts/config --enable CONFIG_P2SB
# scripts/config --enable CONFIG_HAVE_CLK
# scripts/config --enable CONFIG_HAVE_CLK_PREPARE
# scripts/config --enable CONFIG_COMMON_CLK
# scripts/config --set-val CONFIG_LMK04832 m
# scripts/config --set-val CONFIG_COMMON_CLK_MAX9485 m
# scripts/config --set-val CONFIG_COMMON_CLK_SI5341 m
# scripts/config --set-val CONFIG_COMMON_CLK_SI5351 m
# scripts/config --set-val CONFIG_COMMON_CLK_SI544 m
# scripts/config --set-val CONFIG_COMMON_CLK_CDCE706 m
# scripts/config --set-val CONFIG_COMMON_CLK_TPS68470 m
# scripts/config --set-val CONFIG_COMMON_CLK_CS2000_CP m
# scripts/config --set-val CONFIG_COMMON_CLK_PALMAS m
# scripts/config --set-val CONFIG_COMMON_CLK_PWM m
# scripts/config --set-val CONFIG_XILINX_VCU m
# scripts/config --enable CONFIG_HWSPINLOCK
# scripts/config --enable CONFIG_CLKEVT_I8253
# scripts/config --enable CONFIG_I8253_LOCK
# scripts/config --enable CONFIG_CLKBLD_I8253
# scripts/config --enable CONFIG_MAILBOX
# scripts/config --enable CONFIG_PCC
# scripts/config --set-val CONFIG_ALTERA_MBOX m
# scripts/config --enable CONFIG_IOMMU_IOVA
# scripts/config --enable CONFIG_IOMMU_API
# scripts/config --enable CONFIG_IOMMUFD_DRIVER
# scripts/config --enable CONFIG_IOMMU_SUPPORT
# scripts/config --enable CONFIG_IOMMU_IO_PGTABLE
# scripts/config --disable CONFIG_IOMMU_DEBUGFS
# scripts/config --disable CONFIG_IOMMU_DEFAULT_DMA_STRICT
# scripts/config --enable CONFIG_IOMMU_DEFAULT_DMA_LAZY
# scripts/config --disable CONFIG_IOMMU_DEFAULT_PASSTHROUGH
# scripts/config --enable CONFIG_IOMMU_DMA
# scripts/config --enable CONFIG_IOMMU_SVA
# scripts/config --enable CONFIG_IOMMU_IOPF
# scripts/config --enable CONFIG_AMD_IOMMU
# scripts/config --enable CONFIG_DMAR_TABLE
# scripts/config --enable CONFIG_INTEL_IOMMU
# scripts/config --enable CONFIG_INTEL_IOMMU_SVM
# scripts/config --enable CONFIG_INTEL_IOMMU_DEFAULT_ON
# scripts/config --enable CONFIG_INTEL_IOMMU_FLOPPY_WA
# scripts/config --enable CONFIG_INTEL_IOMMU_SCALABLE_MODE_DEFAULT_ON
# scripts/config --enable CONFIG_INTEL_IOMMU_PERF_EVENTS
# scripts/config --set-val CONFIG_IOMMUFD m
# scripts/config --enable CONFIG_IRQ_REMAP
# scripts/config --enable CONFIG_HYPERV_IOMMU
# scripts/config --enable CONFIG_VIRTIO_IOMMU
# scripts/config --enable CONFIG_REMOTEPROC
# scripts/config --enable CONFIG_REMOTEPROC_CDEV
# scripts/config --set-val CONFIG_RPMSG m
# scripts/config --set-val CONFIG_RPMSG_CHAR m
# scripts/config --set-val CONFIG_RPMSG_CTRL m
# scripts/config --set-val CONFIG_RPMSG_NS m
# scripts/config --set-val CONFIG_RPMSG_QCOM_GLINK m
# scripts/config --set-val CONFIG_RPMSG_QCOM_GLINK_RPM m
# scripts/config --set-val CONFIG_RPMSG_VIRTIO m
# scripts/config --set-val CONFIG_SOUNDWIRE m
# scripts/config --set-val CONFIG_WPCM450_SOC m
# scripts/config --set-val CONFIG_QCOM_PMIC_PDCHARGER_ULOG m
# scripts/config --enable CONFIG_SOC_TI
# scripts/config --enable CONFIG_PM_DEVFREQ
# scripts/config --enable CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND
# scripts/config --enable CONFIG_DEVFREQ_GOV_PERFORMANCE
# scripts/config --enable CONFIG_DEVFREQ_GOV_POWERSAVE
# scripts/config --enable CONFIG_DEVFREQ_GOV_USERSPACE
# scripts/config --enable CONFIG_DEVFREQ_GOV_PASSIVE
# scripts/config --enable CONFIG_PM_DEVFREQ_EVENT
# scripts/config --enable CONFIG_EXTCON
# scripts/config --set-val CONFIG_EXTCON_ADC_JACK m
# scripts/config --set-val CONFIG_EXTCON_FSA9480 m
# scripts/config --set-val CONFIG_EXTCON_GPIO m
# scripts/config --set-val CONFIG_EXTCON_INTEL_INT3496 m
# scripts/config --set-val CONFIG_EXTCON_INTEL_MRFLD m
# scripts/config --set-val CONFIG_EXTCON_LC824206XA m
# scripts/config --set-val CONFIG_EXTCON_MAX14577 m
# scripts/config --set-val CONFIG_EXTCON_MAX3355 m
# scripts/config --set-val CONFIG_EXTCON_MAX77693 m
# scripts/config --set-val CONFIG_EXTCON_MAX77843 m
# scripts/config --set-val CONFIG_EXTCON_MAX8997 m
# scripts/config --set-val CONFIG_EXTCON_PALMAS m
# scripts/config --set-val CONFIG_EXTCON_PTN5150 m
# scripts/config --set-val CONFIG_EXTCON_RT8973A m
# scripts/config --set-val CONFIG_EXTCON_SM5502 m
# scripts/config --set-val CONFIG_EXTCON_USB_GPIO m
# scripts/config --set-val CONFIG_EXTCON_USBC_CROS_EC m
# scripts/config --set-val CONFIG_EXTCON_USBC_TUSB320 m
# scripts/config --set-val CONFIG_EXTCON_STEAMDECK m
# scripts/config --enable CONFIG_MEMORY
# scripts/config --set-val CONFIG_FPGA_DFL_EMIF m
# scripts/config --set-val CONFIG_IIO m
# scripts/config --enable CONFIG_IIO_BUFFER
# scripts/config --set-val CONFIG_IIO_BUFFER_CB m
# scripts/config --set-val CONFIG_IIO_BUFFER_DMA m
# scripts/config --set-val CONFIG_IIO_BUFFER_DMAENGINE m
# scripts/config --set-val CONFIG_IIO_BUFFER_HW_CONSUMER m
# scripts/config --set-val CONFIG_IIO_KFIFO_BUF m
# scripts/config --set-val CONFIG_IIO_TRIGGERED_BUFFER m
# scripts/config --set-val CONFIG_IIO_CONFIGFS m
# scripts/config --set-val CONFIG_IIO_GTS_HELPER m
# scripts/config --enable CONFIG_IIO_TRIGGER
# scripts/config --set-val CONFIG_IIO_CONSUMERS_PER_TRIGGER 2
# scripts/config --set-val CONFIG_IIO_SW_DEVICE m
# scripts/config --set-val CONFIG_IIO_SW_TRIGGER m
# scripts/config --set-val CONFIG_IIO_TRIGGERED_EVENT m
# scripts/config --set-val CONFIG_IIO_BACKEND m
# scripts/config --set-val CONFIG_ADIS16201 m
# scripts/config --set-val CONFIG_ADIS16209 m
# scripts/config --set-val CONFIG_ADXL313 m
# scripts/config --set-val CONFIG_ADXL313_I2C m
# scripts/config --set-val CONFIG_ADXL313_SPI m
# scripts/config --disable CONFIG_ADXL345_I2C
# scripts/config --disable CONFIG_ADXL345_SPI
# scripts/config --set-val CONFIG_ADXL355 m
# scripts/config --set-val CONFIG_ADXL355_I2C m
# scripts/config --set-val CONFIG_ADXL355_SPI m
# scripts/config --set-val CONFIG_ADXL367 m
# scripts/config --set-val CONFIG_ADXL367_SPI m
# scripts/config --set-val CONFIG_ADXL367_I2C m
# scripts/config --set-val CONFIG_ADXL372 m
# scripts/config --set-val CONFIG_ADXL372_SPI m
# scripts/config --set-val CONFIG_ADXL372_I2C m
# scripts/config --set-val CONFIG_ADXL380 m
# scripts/config --set-val CONFIG_ADXL380_SPI m
# scripts/config --set-val CONFIG_ADXL380_I2C m
# scripts/config --disable CONFIG_BMA180
# scripts/config --set-val CONFIG_BMA220 m
# scripts/config --set-val CONFIG_BMA400 m
# scripts/config --set-val CONFIG_BMA400_I2C m
# scripts/config --set-val CONFIG_BMA400_SPI m
# scripts/config --set-val CONFIG_BMC150_ACCEL m
# scripts/config --set-val CONFIG_BMC150_ACCEL_I2C m
# scripts/config --set-val CONFIG_BMC150_ACCEL_SPI m
# scripts/config --set-val CONFIG_BMI088_ACCEL m
# scripts/config --set-val CONFIG_BMI088_ACCEL_I2C m
# scripts/config --set-val CONFIG_BMI088_ACCEL_SPI m
# scripts/config --set-val CONFIG_DA280 m
# scripts/config --set-val CONFIG_DA311 m
# scripts/config --set-val CONFIG_DMARD06 m
# scripts/config --set-val CONFIG_DMARD09 m
# scripts/config --set-val CONFIG_DMARD10 m
# scripts/config --set-val CONFIG_FXLS8962AF m
# scripts/config --set-val CONFIG_FXLS8962AF_I2C m
# scripts/config --set-val CONFIG_FXLS8962AF_SPI m
# scripts/config --set-val CONFIG_HID_SENSOR_ACCEL_3D m
# scripts/config --set-val CONFIG_IIO_ST_ACCEL_3AXIS m
# scripts/config --set-val CONFIG_IIO_ST_ACCEL_I2C_3AXIS m
# scripts/config --set-val CONFIG_IIO_ST_ACCEL_SPI_3AXIS m
# scripts/config --set-val CONFIG_IIO_KX022A m
# scripts/config --set-val CONFIG_IIO_KX022A_SPI m
# scripts/config --set-val CONFIG_IIO_KX022A_I2C m
# scripts/config --set-val CONFIG_KXSD9 m
# scripts/config --set-val CONFIG_KXSD9_SPI m
# scripts/config --set-val CONFIG_KXSD9_I2C m
# scripts/config --set-val CONFIG_KXCJK1013 m
# scripts/config --set-val CONFIG_MC3230 m
# scripts/config --set-val CONFIG_MMA7455 m
# scripts/config --set-val CONFIG_MMA7455_I2C m
# scripts/config --set-val CONFIG_MMA7455_SPI m
# scripts/config --set-val CONFIG_MMA7660 m
# scripts/config --set-val CONFIG_MMA8452 m
# scripts/config --set-val CONFIG_MMA9551_CORE m
# scripts/config --set-val CONFIG_MMA9551 m
# scripts/config --set-val CONFIG_MMA9553 m
# scripts/config --set-val CONFIG_MSA311 m
# scripts/config --set-val CONFIG_MXC4005 m
# scripts/config --set-val CONFIG_MXC6255 m
# scripts/config --set-val CONFIG_SCA3000 m
# scripts/config --set-val CONFIG_SCA3300 m
# scripts/config --set-val CONFIG_STK8312 m
# scripts/config --set-val CONFIG_STK8BA50 m
# scripts/config --set-val CONFIG_AD_SIGMA_DELTA m
# scripts/config --set-val CONFIG_AD4000 m
# scripts/config --set-val CONFIG_AD4130 m
# scripts/config --set-val CONFIG_AD4695 m
# scripts/config --set-val CONFIG_AD7091R m
# scripts/config --set-val CONFIG_AD7091R5 m
# scripts/config --set-val CONFIG_AD7091R8 m
# scripts/config --set-val CONFIG_AD7124 m
# scripts/config --set-val CONFIG_AD7173 m
# scripts/config --set-val CONFIG_AD7192 m
# scripts/config --set-val CONFIG_AD7266 m
# scripts/config --set-val CONFIG_AD7280 m
# scripts/config --set-val CONFIG_AD7291 m
# scripts/config --set-val CONFIG_AD7292 m
# scripts/config --set-val CONFIG_AD7298 m
# scripts/config --set-val CONFIG_AD7380 m
# scripts/config --set-val CONFIG_AD7476 m
# scripts/config --set-val CONFIG_AD7606 m
# scripts/config --set-val CONFIG_AD7606_IFACE_PARALLEL m
# scripts/config --set-val CONFIG_AD7606_IFACE_SPI m
# scripts/config --set-val CONFIG_AD7766 m
# scripts/config --set-val CONFIG_AD7768_1 m
# scripts/config --set-val CONFIG_AD7780 m
# scripts/config --set-val CONFIG_AD7791 m
# scripts/config --set-val CONFIG_AD7793 m
# scripts/config --set-val CONFIG_AD7887 m
# scripts/config --set-val CONFIG_AD7923 m
# scripts/config --set-val CONFIG_AD7944 m
# scripts/config --set-val CONFIG_AD7949 m
# scripts/config --set-val CONFIG_AD799X m
# scripts/config --set-val CONFIG_AD9467 m
# scripts/config --set-val CONFIG_CC10001_ADC m
# scripts/config --set-val CONFIG_DA9150_GPADC m
# scripts/config --set-val CONFIG_DLN2_ADC m
# scripts/config --set-val CONFIG_ENVELOPE_DETECTOR m
# scripts/config --set-val CONFIG_HI8435 m
# scripts/config --set-val CONFIG_HX711 m
# scripts/config --set-val CONFIG_INA2XX_ADC m
# scripts/config --set-val CONFIG_INTEL_MRFLD_ADC m
# scripts/config --set-val CONFIG_LP8788_ADC m
# scripts/config --set-val CONFIG_LTC2309 m
# scripts/config --set-val CONFIG_LTC2471 m
# scripts/config --set-val CONFIG_LTC2485 m
# scripts/config --set-val CONFIG_LTC2496 m
# scripts/config --set-val CONFIG_LTC2497 m
# scripts/config --set-val CONFIG_MAX1027 m
# scripts/config --set-val CONFIG_MAX11100 m
# scripts/config --set-val CONFIG_MAX1118 m
# scripts/config --set-val CONFIG_MAX11205 m
# scripts/config --set-val CONFIG_MAX11410 m
# scripts/config --set-val CONFIG_MAX1241 m
# scripts/config --set-val CONFIG_MAX1363 m
# scripts/config --set-val CONFIG_MAX34408 m
# scripts/config --set-val CONFIG_MAX77541_ADC m
# scripts/config --set-val CONFIG_MAX9611 m
# scripts/config --set-val CONFIG_MCP320X m
# scripts/config --set-val CONFIG_MCP3422 m
# scripts/config --set-val CONFIG_MCP3564 m
# scripts/config --set-val CONFIG_MCP3911 m
# scripts/config --set-val CONFIG_MEDIATEK_MT6359_AUXADC m
# scripts/config --set-val CONFIG_MEDIATEK_MT6360_ADC m
# scripts/config --set-val CONFIG_MEDIATEK_MT6370_ADC m
# scripts/config --set-val CONFIG_MEN_Z188_ADC m
# scripts/config --set-val CONFIG_NAU7802 m
# scripts/config --set-val CONFIG_PAC1921 m
# scripts/config --set-val CONFIG_PAC1934 m
# scripts/config --set-val CONFIG_PALMAS_GPADC m
# scripts/config --set-val CONFIG_RICHTEK_RTQ6056 m
# scripts/config --set-val CONFIG_SD_ADC_MODULATOR m
# scripts/config --set-val CONFIG_TI_ADC081C m
# scripts/config --set-val CONFIG_TI_ADC0832 m
# scripts/config --set-val CONFIG_TI_ADC084S021 m
# scripts/config --set-val CONFIG_TI_ADC12138 m
# scripts/config --set-val CONFIG_TI_ADC108S102 m
# scripts/config --set-val CONFIG_TI_ADC128S052 m
# scripts/config --set-val CONFIG_TI_ADC161S626 m
# scripts/config --set-val CONFIG_TI_ADS1015 m
# scripts/config --set-val CONFIG_TI_ADS1119 m
# scripts/config --set-val CONFIG_TI_ADS7924 m
# scripts/config --set-val CONFIG_TI_ADS1100 m
# scripts/config --set-val CONFIG_TI_ADS1298 m
# scripts/config --set-val CONFIG_TI_ADS7950 m
# scripts/config --set-val CONFIG_TI_ADS8344 m
# scripts/config --set-val CONFIG_TI_ADS8688 m
# scripts/config --set-val CONFIG_TI_ADS124S08 m
# scripts/config --set-val CONFIG_TI_ADS131E08 m
# scripts/config --set-val CONFIG_TI_LMP92064 m
# scripts/config --set-val CONFIG_TI_TLC4541 m
# scripts/config --set-val CONFIG_TI_TSC2046 m
# scripts/config --set-val CONFIG_VF610_ADC m
# scripts/config --set-val CONFIG_VIPERBOARD_ADC m
# scripts/config --set-val CONFIG_XILINX_XADC m
# scripts/config --set-val CONFIG_AD74115 m
# scripts/config --set-val CONFIG_AD74413R m
# scripts/config --set-val CONFIG_IIO_RESCALE m
# scripts/config --set-val CONFIG_AD8366 m
# scripts/config --set-val CONFIG_ADA4250 m
# scripts/config --set-val CONFIG_HMC425 m
# scripts/config --set-val CONFIG_AD7150 m
# scripts/config --set-val CONFIG_AD7746 m
# scripts/config --set-val CONFIG_AOSONG_AGS02MA m
# scripts/config --set-val CONFIG_ATLAS_PH_SENSOR m
# scripts/config --set-val CONFIG_ATLAS_EZO_SENSOR m
# scripts/config --set-val CONFIG_BME680 m
# scripts/config --set-val CONFIG_BME680_I2C m
# scripts/config --set-val CONFIG_BME680_SPI m
# scripts/config --set-val CONFIG_CCS811 m
# scripts/config --set-val CONFIG_ENS160 m
# scripts/config --set-val CONFIG_ENS160_I2C m
# scripts/config --set-val CONFIG_ENS160_SPI m
# scripts/config --set-val CONFIG_IAQCORE m
# scripts/config --set-val CONFIG_PMS7003 m
# scripts/config --set-val CONFIG_SCD30_CORE m
# scripts/config --set-val CONFIG_SCD30_I2C m
# scripts/config --set-val CONFIG_SCD30_SERIAL m
# scripts/config --set-val CONFIG_SCD4X m
# scripts/config --set-val CONFIG_SENSIRION_SGP30 m
# scripts/config --set-val CONFIG_SENSIRION_SGP40 m
# scripts/config --set-val CONFIG_SPS30 m
# scripts/config --set-val CONFIG_SPS30_I2C m
# scripts/config --set-val CONFIG_SPS30_SERIAL m
# scripts/config --set-val CONFIG_SENSEAIR_SUNRISE_CO2 m
# scripts/config --set-val CONFIG_VZ89X m
# scripts/config --set-val CONFIG_HID_SENSOR_IIO_COMMON m
# scripts/config --set-val CONFIG_HID_SENSOR_IIO_TRIGGER m
# scripts/config --set-val CONFIG_IIO_INV_SENSORS_TIMESTAMP m
# scripts/config --set-val CONFIG_IIO_MS_SENSORS_I2C m
# scripts/config --set-val CONFIG_IIO_SSP_SENSORS_COMMONS m
# scripts/config --set-val CONFIG_IIO_SSP_SENSORHUB m
# scripts/config --set-val CONFIG_IIO_ST_SENSORS_I2C m
# scripts/config --set-val CONFIG_IIO_ST_SENSORS_SPI m
# scripts/config --set-val CONFIG_IIO_ST_SENSORS_CORE m
# scripts/config --set-val CONFIG_AD3552R m
# scripts/config --set-val CONFIG_AD5064 m
# scripts/config --set-val CONFIG_AD5360 m
# scripts/config --set-val CONFIG_AD5380 m
# scripts/config --set-val CONFIG_AD5421 m
# scripts/config --set-val CONFIG_AD5446 m
# scripts/config --set-val CONFIG_AD5449 m
# scripts/config --set-val CONFIG_AD5592R_BASE m
# scripts/config --set-val CONFIG_AD5592R m
# scripts/config --set-val CONFIG_AD5593R m
# scripts/config --set-val CONFIG_AD5504 m
# scripts/config --set-val CONFIG_AD5624R_SPI m
# scripts/config --set-val CONFIG_AD9739A m
# scripts/config --set-val CONFIG_LTC2688 m
# scripts/config --set-val CONFIG_AD5686 m
# scripts/config --set-val CONFIG_AD5686_SPI m
# scripts/config --set-val CONFIG_AD5696_I2C m
# scripts/config --set-val CONFIG_AD5755 m
# scripts/config --set-val CONFIG_AD5758 m
# scripts/config --set-val CONFIG_AD5761 m
# scripts/config --set-val CONFIG_AD5764 m
# scripts/config --set-val CONFIG_AD5766 m
# scripts/config --set-val CONFIG_AD5770R m
# scripts/config --set-val CONFIG_AD5791 m
# scripts/config --set-val CONFIG_AD7293 m
# scripts/config --set-val CONFIG_AD7303 m
# scripts/config --set-val CONFIG_AD8801 m
# scripts/config --set-val CONFIG_DPOT_DAC m
# scripts/config --set-val CONFIG_DS4424 m
# scripts/config --set-val CONFIG_LTC1660 m
# scripts/config --set-val CONFIG_LTC2632 m
# scripts/config --set-val CONFIG_LTC2664 m
# scripts/config --set-val CONFIG_M62332 m
# scripts/config --set-val CONFIG_MAX517 m
# scripts/config --set-val CONFIG_MAX5522 m
# scripts/config --set-val CONFIG_MAX5821 m
# scripts/config --set-val CONFIG_MCP4725 m
# scripts/config --set-val CONFIG_MCP4728 m
# scripts/config --set-val CONFIG_MCP4821 m
# scripts/config --set-val CONFIG_MCP4922 m
# scripts/config --set-val CONFIG_TI_DAC082S085 m
# scripts/config --set-val CONFIG_TI_DAC5571 m
# scripts/config --set-val CONFIG_TI_DAC7311 m
# scripts/config --set-val CONFIG_TI_DAC7612 m
# scripts/config --set-val CONFIG_VF610_DAC m
# scripts/config --set-val CONFIG_IIO_SIMPLE_DUMMY m
# scripts/config --disable CONFIG_IIO_SIMPLE_DUMMY_EVENTS
# scripts/config --disable CONFIG_IIO_SIMPLE_DUMMY_BUFFER
# scripts/config --set-val CONFIG_ADMV8818 m
# scripts/config --set-val CONFIG_AD9523 m
# scripts/config --set-val CONFIG_ADF4350 m
# scripts/config --set-val CONFIG_ADF4371 m
# scripts/config --set-val CONFIG_ADF4377 m
# scripts/config --set-val CONFIG_ADMFM2000 m
# scripts/config --set-val CONFIG_ADMV1013 m
# scripts/config --set-val CONFIG_ADMV1014 m
# scripts/config --set-val CONFIG_ADMV4420 m
# scripts/config --set-val CONFIG_ADRF6780 m
# scripts/config --set-val CONFIG_ADIS16080 m
# scripts/config --set-val CONFIG_ADIS16130 m
# scripts/config --set-val CONFIG_ADIS16136 m
# scripts/config --set-val CONFIG_ADIS16260 m
# scripts/config --set-val CONFIG_ADXRS290 m
# scripts/config --set-val CONFIG_ADXRS450 m
# scripts/config --set-val CONFIG_BMG160 m
# scripts/config --set-val CONFIG_BMG160_I2C m
# scripts/config --set-val CONFIG_BMG160_SPI m
# scripts/config --set-val CONFIG_FXAS21002C m
# scripts/config --set-val CONFIG_FXAS21002C_I2C m
# scripts/config --set-val CONFIG_FXAS21002C_SPI m
# scripts/config --set-val CONFIG_HID_SENSOR_GYRO_3D m
# scripts/config --set-val CONFIG_MPU3050 m
# scripts/config --set-val CONFIG_MPU3050_I2C m
# scripts/config --set-val CONFIG_IIO_ST_GYRO_3AXIS m
# scripts/config --set-val CONFIG_IIO_ST_GYRO_I2C_3AXIS m
# scripts/config --set-val CONFIG_IIO_ST_GYRO_SPI_3AXIS m
# scripts/config --set-val CONFIG_ITG3200 m
# scripts/config --set-val CONFIG_AFE4403 m
# scripts/config --set-val CONFIG_AFE4404 m
# scripts/config --set-val CONFIG_MAX30100 m
# scripts/config --set-val CONFIG_MAX30102 m
# scripts/config --set-val CONFIG_AM2315 m
# scripts/config --set-val CONFIG_DHT11 m
# scripts/config --set-val CONFIG_ENS210 m
# scripts/config --set-val CONFIG_HDC100X m
# scripts/config --set-val CONFIG_HDC2010 m
# scripts/config --set-val CONFIG_HDC3020 m
# scripts/config --set-val CONFIG_HID_SENSOR_HUMIDITY m
# scripts/config --set-val CONFIG_HTS221 m
# scripts/config --set-val CONFIG_HTS221_I2C m
# scripts/config --set-val CONFIG_HTS221_SPI m
# scripts/config --set-val CONFIG_HTU21 m
# scripts/config --set-val CONFIG_SI7005 m
# scripts/config --set-val CONFIG_SI7020 m
# scripts/config --set-val CONFIG_ADIS16400 m
# scripts/config --set-val CONFIG_ADIS16460 m
# scripts/config --set-val CONFIG_ADIS16475 m
# scripts/config --set-val CONFIG_ADIS16480 m
# scripts/config --set-val CONFIG_BMI160 m
# scripts/config --set-val CONFIG_BMI160_I2C m
# scripts/config --set-val CONFIG_BMI160_SPI m
# scripts/config --set-val CONFIG_BMI323 m
# scripts/config --set-val CONFIG_BMI323_I2C m
# scripts/config --set-val CONFIG_BMI323_SPI m
# scripts/config --set-val CONFIG_BOSCH_BNO055 m
# scripts/config --set-val CONFIG_BOSCH_BNO055_SERIAL m
# scripts/config --set-val CONFIG_BOSCH_BNO055_I2C m
# scripts/config --set-val CONFIG_FXOS8700 m
# scripts/config --set-val CONFIG_FXOS8700_I2C m
# scripts/config --set-val CONFIG_FXOS8700_SPI m
# scripts/config --set-val CONFIG_KMX61 m
# scripts/config --set-val CONFIG_INV_ICM42600 m
# scripts/config --set-val CONFIG_INV_ICM42600_I2C m
# scripts/config --set-val CONFIG_INV_ICM42600_SPI m
# scripts/config --set-val CONFIG_INV_MPU6050_IIO m
# scripts/config --set-val CONFIG_INV_MPU6050_I2C m
# scripts/config --set-val CONFIG_INV_MPU6050_SPI m
# scripts/config --set-val CONFIG_IIO_ST_LSM6DSX m
# scripts/config --set-val CONFIG_IIO_ST_LSM6DSX_I2C m
# scripts/config --set-val CONFIG_IIO_ST_LSM6DSX_SPI m
# scripts/config --set-val CONFIG_IIO_ST_LSM9DS0 m
# scripts/config --set-val CONFIG_IIO_ST_LSM9DS0_I2C m
# scripts/config --set-val CONFIG_IIO_ST_LSM9DS0_SPI m
# scripts/config --set-val CONFIG_IIO_ADIS_LIB m
# scripts/config --enable CONFIG_IIO_ADIS_LIB_BUFFER
# scripts/config --set-val CONFIG_ACPI_ALS m
# scripts/config --set-val CONFIG_ADJD_S311 m
# scripts/config --set-val CONFIG_ADUX1020 m
# scripts/config --set-val CONFIG_AL3010 m
# scripts/config --set-val CONFIG_AL3320A m
# scripts/config --set-val CONFIG_APDS9300 m
# scripts/config --set-val CONFIG_APDS9306 m
# scripts/config --set-val CONFIG_APDS9960 m
# scripts/config --set-val CONFIG_AS73211 m
# scripts/config --set-val CONFIG_BH1745 m
# scripts/config --set-val CONFIG_BH1750 m
# scripts/config --set-val CONFIG_BH1780 m
# scripts/config --set-val CONFIG_CM32181 m
# scripts/config --set-val CONFIG_CM3232 m
# scripts/config --set-val CONFIG_CM3323 m
# scripts/config --set-val CONFIG_CM3605 m
# scripts/config --set-val CONFIG_CM36651 m
# scripts/config --set-val CONFIG_GP2AP002 m
# scripts/config --set-val CONFIG_GP2AP020A00F m
# scripts/config --set-val CONFIG_IQS621_ALS m
# scripts/config --set-val CONFIG_SENSORS_ISL29018 m
# scripts/config --set-val CONFIG_SENSORS_ISL29028 m
# scripts/config --set-val CONFIG_ISL29125 m
# scripts/config --set-val CONFIG_ISL76682 m
# scripts/config --set-val CONFIG_HID_SENSOR_ALS m
# scripts/config --set-val CONFIG_HID_SENSOR_PROX m
# scripts/config --set-val CONFIG_JSA1212 m
# scripts/config --set-val CONFIG_ROHM_BU27008 m
# scripts/config --set-val CONFIG_ROHM_BU27034 m
# scripts/config --set-val CONFIG_RPR0521 m
# scripts/config --set-val CONFIG_LTR390 m
# scripts/config --set-val CONFIG_LTR501 m
# scripts/config --set-val CONFIG_LTRF216A m
# scripts/config --set-val CONFIG_LV0104CS m
# scripts/config --set-val CONFIG_MAX44000 m
# scripts/config --set-val CONFIG_MAX44009 m
# scripts/config --set-val CONFIG_NOA1305 m
# scripts/config --set-val CONFIG_OPT3001 m
# scripts/config --set-val CONFIG_OPT4001 m
# scripts/config --set-val CONFIG_PA12203001 m
# scripts/config --set-val CONFIG_SI1133 m
# scripts/config --set-val CONFIG_SI1145 m
# scripts/config --set-val CONFIG_STK3310 m
# scripts/config --set-val CONFIG_ST_UVIS25 m
# scripts/config --set-val CONFIG_ST_UVIS25_I2C m
# scripts/config --set-val CONFIG_ST_UVIS25_SPI m
# scripts/config --set-val CONFIG_TCS3414 m
# scripts/config --set-val CONFIG_TCS3472 m
# scripts/config --set-val CONFIG_SENSORS_TSL2563 m
# scripts/config --set-val CONFIG_TSL2583 m
# scripts/config --set-val CONFIG_TSL2591 m
# scripts/config --set-val CONFIG_TSL2772 m
# scripts/config --set-val CONFIG_TSL4531 m
# scripts/config --set-val CONFIG_US5182D m
# scripts/config --set-val CONFIG_VCNL4000 m
# scripts/config --set-val CONFIG_VCNL4035 m
# scripts/config --set-val CONFIG_VEML6030 m
# scripts/config --set-val CONFIG_VEML6040 m
# scripts/config --set-val CONFIG_VEML6070 m
# scripts/config --set-val CONFIG_VEML6075 m
# scripts/config --set-val CONFIG_VL6180 m
# scripts/config --set-val CONFIG_ZOPT2201 m
# scripts/config --set-val CONFIG_AK8974 m
# scripts/config --set-val CONFIG_AK8975 m
# scripts/config --set-val CONFIG_AK09911 m
# scripts/config --set-val CONFIG_BMC150_MAGN m
# scripts/config --set-val CONFIG_BMC150_MAGN_I2C m
# scripts/config --set-val CONFIG_BMC150_MAGN_SPI m
# scripts/config --set-val CONFIG_MAG3110 m
# scripts/config --set-val CONFIG_HID_SENSOR_MAGNETOMETER_3D m
# scripts/config --set-val CONFIG_MMC35240 m
# scripts/config --set-val CONFIG_IIO_ST_MAGN_3AXIS m
# scripts/config --set-val CONFIG_IIO_ST_MAGN_I2C_3AXIS m
# scripts/config --set-val CONFIG_IIO_ST_MAGN_SPI_3AXIS m
# scripts/config --set-val CONFIG_SENSORS_HMC5843 m
# scripts/config --set-val CONFIG_SENSORS_HMC5843_I2C m
# scripts/config --set-val CONFIG_SENSORS_HMC5843_SPI m
# scripts/config --set-val CONFIG_SENSORS_RM3100 m
# scripts/config --set-val CONFIG_SENSORS_RM3100_I2C m
# scripts/config --set-val CONFIG_SENSORS_RM3100_SPI m
# scripts/config --set-val CONFIG_TI_TMAG5273 m
# scripts/config --set-val CONFIG_YAMAHA_YAS530 m
# scripts/config --set-val CONFIG_IIO_MUX m
# scripts/config --set-val CONFIG_HID_SENSOR_INCLINOMETER_3D m
# scripts/config --set-val CONFIG_HID_SENSOR_DEVICE_ROTATION m
# scripts/config --set-val CONFIG_IIO_HRTIMER_TRIGGER m
# scripts/config --set-val CONFIG_IIO_INTERRUPT_TRIGGER m
# scripts/config --set-val CONFIG_IIO_TIGHTLOOP_TRIGGER m
# scripts/config --set-val CONFIG_IIO_SYSFS_TRIGGER m
# scripts/config --set-val CONFIG_IQS624_POS m
# scripts/config --set-val CONFIG_HID_SENSOR_CUSTOM_INTEL_HINGE m
# scripts/config --set-val CONFIG_AD5110 m
# scripts/config --set-val CONFIG_AD5272 m
# scripts/config --set-val CONFIG_DS1803 m
# scripts/config --set-val CONFIG_MAX5432 m
# scripts/config --set-val CONFIG_MAX5481 m
# scripts/config --set-val CONFIG_MAX5487 m
# scripts/config --set-val CONFIG_MCP4018 m
# scripts/config --set-val CONFIG_MCP4131 m
# scripts/config --set-val CONFIG_MCP4531 m
# scripts/config --set-val CONFIG_MCP41010 m
# scripts/config --set-val CONFIG_TPL0102 m
# scripts/config --set-val CONFIG_X9250 m
# scripts/config --set-val CONFIG_LMP91000 m
# scripts/config --set-val CONFIG_ABP060MG m
# scripts/config --set-val CONFIG_ROHM_BM1390 m
# scripts/config --set-val CONFIG_BMP280 m
# scripts/config --set-val CONFIG_BMP280_I2C m
# scripts/config --set-val CONFIG_BMP280_SPI m
# scripts/config --set-val CONFIG_DLHL60D m
# scripts/config --set-val CONFIG_DPS310 m
# scripts/config --set-val CONFIG_HID_SENSOR_PRESS m
# scripts/config --set-val CONFIG_HP03 m
# scripts/config --set-val CONFIG_HSC030PA m
# scripts/config --set-val CONFIG_HSC030PA_I2C m
# scripts/config --set-val CONFIG_HSC030PA_SPI m
# scripts/config --set-val CONFIG_ICP10100 m
# scripts/config --set-val CONFIG_MPL115 m
# scripts/config --set-val CONFIG_MPL115_I2C m
# scripts/config --set-val CONFIG_MPL115_SPI m
# scripts/config --set-val CONFIG_MPL3115 m
# scripts/config --set-val CONFIG_MPRLS0025PA m
# scripts/config --set-val CONFIG_MPRLS0025PA_I2C m
# scripts/config --set-val CONFIG_MPRLS0025PA_SPI m
# scripts/config --set-val CONFIG_MS5611 m
# scripts/config --set-val CONFIG_MS5611_I2C m
# scripts/config --set-val CONFIG_MS5611_SPI m
# scripts/config --set-val CONFIG_MS5637 m
# scripts/config --set-val CONFIG_SDP500 m
# scripts/config --set-val CONFIG_IIO_ST_PRESS m
# scripts/config --set-val CONFIG_IIO_ST_PRESS_I2C m
# scripts/config --set-val CONFIG_IIO_ST_PRESS_SPI m
# scripts/config --set-val CONFIG_T5403 m
# scripts/config --set-val CONFIG_HP206C m
# scripts/config --set-val CONFIG_ZPA2326 m
# scripts/config --set-val CONFIG_ZPA2326_I2C m
# scripts/config --set-val CONFIG_ZPA2326_SPI m
# scripts/config --set-val CONFIG_AS3935 m
# scripts/config --set-val CONFIG_CROS_EC_MKBP_PROXIMITY m
# scripts/config --set-val CONFIG_HX9023S m
# scripts/config --set-val CONFIG_IRSD200 m
# scripts/config --set-val CONFIG_ISL29501 m
# scripts/config --set-val CONFIG_LIDAR_LITE_V2 m
# scripts/config --set-val CONFIG_MB1232 m
# scripts/config --set-val CONFIG_PING m
# scripts/config --set-val CONFIG_RFD77402 m
# scripts/config --set-val CONFIG_SRF04 m
# scripts/config --set-val CONFIG_SX_COMMON m
# scripts/config --set-val CONFIG_SX9310 m
# scripts/config --set-val CONFIG_SX9324 m
# scripts/config --set-val CONFIG_SX9360 m
# scripts/config --set-val CONFIG_SX9500 m
# scripts/config --set-val CONFIG_SRF08 m
# scripts/config --set-val CONFIG_VCNL3020 m
# scripts/config --set-val CONFIG_VL53L0X_I2C m
# scripts/config --set-val CONFIG_AW96103 m
# scripts/config --set-val CONFIG_AD2S90 m
# scripts/config --set-val CONFIG_AD2S1200 m
# scripts/config --set-val CONFIG_AD2S1210 m
# scripts/config --set-val CONFIG_IQS620AT_TEMP m
# scripts/config --set-val CONFIG_LTC2983 m
# scripts/config --set-val CONFIG_MAXIM_THERMOCOUPLE m
# scripts/config --set-val CONFIG_HID_SENSOR_TEMP m
# scripts/config --set-val CONFIG_MLX90614 m
# scripts/config --set-val CONFIG_MLX90632 m
# scripts/config --set-val CONFIG_MLX90635 m
# scripts/config --set-val CONFIG_TMP006 m
# scripts/config --set-val CONFIG_TMP007 m
# scripts/config --set-val CONFIG_TMP117 m
# scripts/config --set-val CONFIG_TSYS01 m
# scripts/config --set-val CONFIG_TSYS02D m
# scripts/config --set-val CONFIG_MAX30208 m
# scripts/config --set-val CONFIG_MAX31856 m
# scripts/config --set-val CONFIG_MAX31865 m
# scripts/config --set-val CONFIG_MCP9600 m
# scripts/config --set-val CONFIG_NTB m
# scripts/config --enable CONFIG_NTB_MSI
# scripts/config --disable CONFIG_NTB_AMD
# scripts/config --set-val CONFIG_NTB_IDT m
# scripts/config --set-val CONFIG_NTB_INTEL m
# scripts/config --set-val CONFIG_NTB_EPF m
# scripts/config --set-val CONFIG_NTB_SWITCHTEC m
# scripts/config --set-val CONFIG_NTB_PINGPONG m
# scripts/config --set-val CONFIG_NTB_TOOL m
# scripts/config --set-val CONFIG_NTB_PERF m
# scripts/config --disable CONFIG_NTB_MSI_TEST
# scripts/config --set-val CONFIG_NTB_TRANSPORT m
# scripts/config --enable CONFIG_PWM
# scripts/config --disable CONFIG_PWM_DEBUG
# scripts/config --set-val CONFIG_PWM_CLK m
# scripts/config --set-val CONFIG_PWM_CROS_EC m
# scripts/config --set-val CONFIG_PWM_DWC_CORE m
# scripts/config --set-val CONFIG_PWM_DWC m
# scripts/config --set-val CONFIG_PWM_GPIO m
# scripts/config --set-val CONFIG_PWM_IQS620A m
# scripts/config --enable CONFIG_PWM_LPSS
# scripts/config --enable CONFIG_PWM_LPSS_PCI
# scripts/config --enable CONFIG_PWM_LPSS_PLATFORM
# scripts/config --set-val CONFIG_PWM_PCA9685 m
# scripts/config --set-val CONFIG_IPACK_BUS m
# scripts/config --set-val CONFIG_BOARD_TPCI200 m
# scripts/config --set-val CONFIG_SERIAL_IPOCTAL m
# scripts/config --enable CONFIG_RESET_CONTROLLER
# scripts/config --set-val CONFIG_RESET_GPIO m
# scripts/config --set-val CONFIG_RESET_TI_SYSCON m
# scripts/config --set-val CONFIG_RESET_TI_TPS380X m
# scripts/config --enable CONFIG_GENERIC_PHY
# scripts/config --set-val CONFIG_USB_LGM_PHY m
# scripts/config --set-val CONFIG_PHY_CAN_TRANSCEIVER m
# scripts/config --set-val CONFIG_BCM_KONA_USB2_PHY m
# scripts/config --set-val CONFIG_PHY_PXA_28NM_HSIC m
# scripts/config --set-val CONFIG_PHY_PXA_28NM_USB2 m
# scripts/config --set-val CONFIG_PHY_CPCAP_USB m
# scripts/config --set-val CONFIG_PHY_QCOM_USB_HS m
# scripts/config --set-val CONFIG_PHY_QCOM_USB_HSIC m
# scripts/config --set-val CONFIG_PHY_SAMSUNG_USB2 m
# scripts/config --set-val CONFIG_PHY_TUSB1210 m
# scripts/config --set-val CONFIG_PHY_INTEL_LGM_EMMC m
# scripts/config --enable CONFIG_POWERCAP
# scripts/config --set-val CONFIG_INTEL_RAPL_CORE m
# scripts/config --set-val CONFIG_INTEL_RAPL m
# scripts/config --set-val CONFIG_INTEL_RAPL_TPMI m
# scripts/config --enable CONFIG_IDLE_INJECT
# scripts/config --set-val CONFIG_MCB m
# scripts/config --set-val CONFIG_MCB_PCI m
# scripts/config --set-val CONFIG_MCB_LPC m
# scripts/config --set-val CONFIG_DWC_PCIE_PMU m
# scripts/config --set-val CONFIG_CXL_PMU m
# scripts/config --enable CONFIG_RAS
# scripts/config --set-val CONFIG_USB4 m
# scripts/config --disable CONFIG_USB4_DEBUGFS_WRITE
# scripts/config --disable CONFIG_USB4_DMA_TEST
# scripts/config --set-val CONFIG_ANDROID_BINDER_IPC m
# scripts/config --set-val CONFIG_ANDROID_BINDERFS m
# scripts/config --set-val CONFIG_ANDROID_BINDER_DEVICES "binder,hwbinder,vndbinder"
# scripts/config --disable CONFIG_ANDROID_BINDER_IPC_SELFTEST
# scripts/config --enable CONFIG_LIBNVDIMM
# scripts/config --set-val CONFIG_BLK_DEV_PMEM m
# scripts/config --enable CONFIG_ND_CLAIM
# scripts/config --set-val CONFIG_ND_BTT m
# scripts/config --enable CONFIG_BTT
# scripts/config --set-val CONFIG_ND_PFN m
# scripts/config --enable CONFIG_NVDIMM_PFN
# scripts/config --enable CONFIG_NVDIMM_DAX
# scripts/config --enable CONFIG_NVDIMM_KEYS
# scripts/config --disable CONFIG_NVDIMM_SECURITY_TEST
# scripts/config --enable CONFIG_DAX
# scripts/config --set-val CONFIG_DEV_DAX m
# scripts/config --set-val CONFIG_DEV_DAX_PMEM m
# scripts/config --set-val CONFIG_DEV_DAX_HMEM m
# scripts/config --set-val CONFIG_DEV_DAX_CXL m
# scripts/config --enable CONFIG_DEV_DAX_HMEM_DEVICES
# scripts/config --set-val CONFIG_DEV_DAX_KMEM m
# scripts/config --enable CONFIG_NVMEM
# scripts/config --enable CONFIG_NVMEM_SYSFS
# scripts/config --disable CONFIG_NVMEM_LAYOUTS
# scripts/config --set-val CONFIG_NVMEM_RMEM m
# scripts/config --set-val CONFIG_STM m
# scripts/config --set-val CONFIG_STM_PROTO_BASIC m
# scripts/config --set-val CONFIG_STM_PROTO_SYS_T m
# scripts/config --set-val CONFIG_STM_DUMMY m
# scripts/config --set-val CONFIG_STM_SOURCE_CONSOLE m
# scripts/config --set-val CONFIG_STM_SOURCE_HEARTBEAT m
# scripts/config --set-val CONFIG_STM_SOURCE_FTRACE m
# scripts/config --set-val CONFIG_INTEL_TH m
# scripts/config --set-val CONFIG_INTEL_TH_PCI m
# scripts/config --set-val CONFIG_INTEL_TH_ACPI m
# scripts/config --set-val CONFIG_INTEL_TH_GTH m
# scripts/config --set-val CONFIG_INTEL_TH_STH m
# scripts/config --set-val CONFIG_INTEL_TH_MSU m
# scripts/config --set-val CONFIG_INTEL_TH_PTI m
# scripts/config --disable CONFIG_INTEL_TH_DEBUG
# scripts/config --set-val CONFIG_FPGA m
# scripts/config --set-val CONFIG_ALTERA_PR_IP_CORE m
# scripts/config --set-val CONFIG_FPGA_MGR_ALTERA_PS_SPI m
# scripts/config --set-val CONFIG_FPGA_MGR_ALTERA_CVP m
# scripts/config --set-val CONFIG_FPGA_MGR_XILINX_CORE m
# scripts/config --set-val CONFIG_FPGA_MGR_XILINX_SELECTMAP m
# scripts/config --set-val CONFIG_FPGA_MGR_XILINX_SPI m
# scripts/config --set-val CONFIG_FPGA_MGR_MACHXO2_SPI m
# scripts/config --set-val CONFIG_FPGA_BRIDGE m
# scripts/config --set-val CONFIG_ALTERA_FREEZE_BRIDGE m
# scripts/config --set-val CONFIG_XILINX_PR_DECOUPLER m
# scripts/config --set-val CONFIG_FPGA_REGION m
# scripts/config --set-val CONFIG_FPGA_DFL m
# scripts/config --set-val CONFIG_FPGA_DFL_FME m
# scripts/config --set-val CONFIG_FPGA_DFL_FME_MGR m
# scripts/config --set-val CONFIG_FPGA_DFL_FME_BRIDGE m
# scripts/config --set-val CONFIG_FPGA_DFL_FME_REGION m
# scripts/config --set-val CONFIG_FPGA_DFL_AFU m
# scripts/config --set-val CONFIG_FPGA_DFL_NIOS_INTEL_PAC_N3000 m
# scripts/config --set-val CONFIG_FPGA_DFL_PCI m
# scripts/config --set-val CONFIG_FPGA_MGR_MICROCHIP_SPI m
# scripts/config --set-val CONFIG_FPGA_MGR_LATTICE_SYSCONFIG m
# scripts/config --set-val CONFIG_FPGA_MGR_LATTICE_SYSCONFIG_SPI m
# scripts/config --set-val CONFIG_TEE m
# scripts/config --set-val CONFIG_AMDTEE m
# scripts/config --set-val CONFIG_MULTIPLEXER m
# scripts/config --set-val CONFIG_MUX_ADG792A m
# scripts/config --set-val CONFIG_MUX_ADGS1408 m
# scripts/config --set-val CONFIG_MUX_GPIO m
# scripts/config --enable CONFIG_PM_OPP
# scripts/config --set-val CONFIG_SIOX m
# scripts/config --set-val CONFIG_SIOX_BUS_GPIO m
# scripts/config --set-val CONFIG_SLIMBUS m
# scripts/config --set-val CONFIG_SLIM_QCOM_CTRL m
# scripts/config --enable CONFIG_INTERCONNECT
# scripts/config --set-val CONFIG_COUNTER m
# scripts/config --set-val CONFIG_INTEL_QEP m
# scripts/config --set-val CONFIG_INTERRUPT_CNT m
# scripts/config --set-val CONFIG_MOST m
# scripts/config --set-val CONFIG_MOST_USB_HDM m
# scripts/config --set-val CONFIG_MOST_CDEV m
# scripts/config --set-val CONFIG_PECI m
# scripts/config --set-val CONFIG_PECI_CPU m
# scripts/config --enable CONFIG_HTE
# scripts/config --enable CONFIG_DPLL
# scripts/config --enable CONFIG_DCACHE_WORD_ACCESS
# scripts/config --enable CONFIG_VALIDATE_FS_PARSER
# scripts/config --enable CONFIG_FS_IOMAP
# scripts/config --enable CONFIG_FS_STACK
# scripts/config --enable CONFIG_BUFFER_HEAD
# scripts/config --enable CONFIG_LEGACY_DIRECT_IO
# scripts/config --disable CONFIG_EXT2_FS
# scripts/config --disable CONFIG_EXT3_FS
# scripts/config --enable CONFIG_EXT4_FS
# scripts/config --enable CONFIG_EXT4_USE_FOR_EXT2
# scripts/config --enable CONFIG_EXT4_FS_POSIX_ACL
# scripts/config --enable CONFIG_EXT4_FS_SECURITY
# scripts/config --disable CONFIG_EXT4_DEBUG
# scripts/config --enable CONFIG_JBD2
# scripts/config --disable CONFIG_JBD2_DEBUG
# scripts/config --enable CONFIG_FS_MBCACHE
# scripts/config --set-val CONFIG_REISERFS_FS m
# scripts/config --disable CONFIG_REISERFS_CHECK
# scripts/config --disable CONFIG_REISERFS_PROC_INFO
# scripts/config --enable CONFIG_REISERFS_FS_XATTR
# scripts/config --enable CONFIG_REISERFS_FS_POSIX_ACL
# scripts/config --enable CONFIG_REISERFS_FS_SECURITY
# scripts/config --set-val CONFIG_JFS_FS m
# scripts/config --enable CONFIG_JFS_POSIX_ACL
# scripts/config --enable CONFIG_JFS_SECURITY
# scripts/config --disable CONFIG_JFS_DEBUG
# scripts/config --enable CONFIG_JFS_STATISTICS
scripts/config --enable CONFIG_XFS_FS
# scripts/config --enable CONFIG_XFS_SUPPORT_V4
# scripts/config --enable CONFIG_XFS_SUPPORT_ASCII_CI
# scripts/config --enable CONFIG_XFS_QUOTA
# scripts/config --enable CONFIG_XFS_POSIX_ACL
# scripts/config --enable CONFIG_XFS_RT
# scripts/config --disable CONFIG_XFS_ONLINE_SCRUB
# scripts/config --disable CONFIG_XFS_WARN
# scripts/config --disable CONFIG_XFS_DEBUG
# scripts/config --set-val CONFIG_GFS2_FS m
# scripts/config --enable CONFIG_GFS2_FS_LOCKING_DLM
# scripts/config --set-val CONFIG_OCFS2_FS m
# scripts/config --set-val CONFIG_OCFS2_FS_O2CB m
# scripts/config --set-val CONFIG_OCFS2_FS_USERSPACE_CLUSTER m
# scripts/config --enable CONFIG_OCFS2_FS_STATS
# scripts/config --enable CONFIG_OCFS2_DEBUG_MASKLOG
# scripts/config --disable CONFIG_OCFS2_DEBUG_FS
scripts/config --enable CONFIG_BTRFS_FS
# scripts/config --enable CONFIG_BTRFS_FS_POSIX_ACL
# scripts/config --disable CONFIG_BTRFS_FS_RUN_SANITY_TESTS
# scripts/config --disable CONFIG_BTRFS_DEBUG
# scripts/config --disable CONFIG_BTRFS_ASSERT
# scripts/config --disable CONFIG_BTRFS_FS_REF_VERIFY
# scripts/config --set-val CONFIG_NILFS2_FS m
# scripts/config --set-val CONFIG_F2FS_FS m
# scripts/config --enable CONFIG_F2FS_STAT_FS
# scripts/config --enable CONFIG_F2FS_FS_XATTR
# scripts/config --enable CONFIG_F2FS_FS_POSIX_ACL
# scripts/config --enable CONFIG_F2FS_FS_SECURITY
# scripts/config --disable CONFIG_F2FS_CHECK_FS
# scripts/config --disable CONFIG_F2FS_FAULT_INJECTION
# scripts/config --enable CONFIG_F2FS_FS_COMPRESSION
# scripts/config --enable CONFIG_F2FS_FS_LZO
# scripts/config --enable CONFIG_F2FS_FS_LZORLE
# scripts/config --enable CONFIG_F2FS_FS_LZ4
# scripts/config --enable CONFIG_F2FS_FS_LZ4HC
# scripts/config --enable CONFIG_F2FS_FS_ZSTD
# scripts/config --disable CONFIG_F2FS_IOSTAT
# scripts/config --enable CONFIG_F2FS_UNFAIR_RWSEM
# scripts/config --set-val CONFIG_BCACHEFS_FS m
# scripts/config --enable CONFIG_BCACHEFS_QUOTA
# scripts/config --enable CONFIG_BCACHEFS_ERASURE_CODING
# scripts/config --enable CONFIG_BCACHEFS_POSIX_ACL
# scripts/config --disable CONFIG_BCACHEFS_DEBUG
# scripts/config --disable CONFIG_BCACHEFS_TESTS
# scripts/config --disable CONFIG_BCACHEFS_LOCK_TIME_STATS
# scripts/config --disable CONFIG_BCACHEFS_NO_LATENCY_ACCT
# scripts/config --enable CONFIG_BCACHEFS_SIX_OPTIMISTIC_SPIN
# scripts/config --disable CONFIG_BCACHEFS_PATH_TRACEPOINTS
# scripts/config --set-val CONFIG_ZONEFS_FS m
# scripts/config --enable CONFIG_FS_DAX
# scripts/config --enable CONFIG_FS_DAX_PMD
# scripts/config --enable CONFIG_FS_POSIX_ACL
# scripts/config --enable CONFIG_EXPORTFS
# scripts/config --enable CONFIG_EXPORTFS_BLOCK_OPS
# scripts/config --enable CONFIG_FILE_LOCKING
# scripts/config --enable CONFIG_FS_ENCRYPTION
# scripts/config --enable CONFIG_FS_ENCRYPTION_ALGS
# scripts/config --enable CONFIG_FS_ENCRYPTION_INLINE_CRYPT
# scripts/config --enable CONFIG_FS_VERITY
# scripts/config --enable CONFIG_FS_VERITY_BUILTIN_SIGNATURES
# scripts/config --enable CONFIG_FSNOTIFY
# scripts/config --enable CONFIG_DNOTIFY
# scripts/config --enable CONFIG_INOTIFY_USER
# scripts/config --enable CONFIG_FANOTIFY
# scripts/config --enable CONFIG_FANOTIFY_ACCESS_PERMISSIONS
# scripts/config --enable CONFIG_QUOTA
# scripts/config --enable CONFIG_QUOTA_NETLINK_INTERFACE
# scripts/config --disable CONFIG_QUOTA_DEBUG
# scripts/config --set-val CONFIG_QUOTA_TREE m
# scripts/config --set-val CONFIG_QFMT_V1 m
# scripts/config --set-val CONFIG_QFMT_V2 m
# scripts/config --enable CONFIG_QUOTACTL
# scripts/config --set-val CONFIG_AUTOFS_FS m
# scripts/config --enable CONFIG_FUSE_FS
# scripts/config --set-val CONFIG_CUSE m
scripts/config --enable CONFIG_VIRTIO_FS
# scripts/config --enable CONFIG_FUSE_DAX
# scripts/config --enable CONFIG_FUSE_PASSTHROUGH
scripts/config --enable CONFIG_OVERLAY_FS
# scripts/config --disable CONFIG_OVERLAY_FS_REDIRECT_DIR
# scripts/config --enable CONFIG_OVERLAY_FS_REDIRECT_ALWAYS_FOLLOW
# scripts/config --disable CONFIG_OVERLAY_FS_INDEX
# scripts/config --enable CONFIG_OVERLAY_FS_XINO_AUTO
# scripts/config --disable CONFIG_OVERLAY_FS_METACOPY
# scripts/config --disable CONFIG_OVERLAY_FS_DEBUG
# scripts/config --set-val CONFIG_NETFS_SUPPORT m
# scripts/config --enable CONFIG_NETFS_STATS
# scripts/config --enable CONFIG_NETFS_DEBUG
# scripts/config --enable CONFIG_FSCACHE
# scripts/config --enable CONFIG_FSCACHE_STATS
# scripts/config --set-val CONFIG_CACHEFILES m
# scripts/config --disable CONFIG_CACHEFILES_DEBUG
# scripts/config --enable CONFIG_CACHEFILES_ERROR_INJECTION
# scripts/config --disable CONFIG_CACHEFILES_ONDEMAND
# scripts/config --set-val CONFIG_ISO9660_FS m
# scripts/config --enable CONFIG_JOLIET
# scripts/config --enable CONFIG_ZISOFS
# scripts/config --set-val CONFIG_UDF_FS m
# scripts/config --enable CONFIG_FAT_FS
# scripts/config --set-val CONFIG_MSDOS_FS m
# scripts/config --enable CONFIG_VFAT_FS
# scripts/config --set-val CONFIG_FAT_DEFAULT_CODEPAGE 437
# scripts/config --set-val CONFIG_FAT_DEFAULT_IOCHARSET "iso8859-1"
# scripts/config --disable CONFIG_FAT_DEFAULT_UTF8
# scripts/config --set-val CONFIG_EXFAT_FS m
# scripts/config --set-val CONFIG_EXFAT_DEFAULT_IOCHARSET "utf8"
# scripts/config --set-val CONFIG_NTFS3_FS m
# scripts/config --disable CONFIG_NTFS3_64BIT_CLUSTER
# scripts/config --enable CONFIG_NTFS3_LZX_XPRESS
# scripts/config --enable CONFIG_NTFS3_FS_POSIX_ACL
# scripts/config --set-val CONFIG_NTFS_FS m
# scripts/config --enable CONFIG_PROC_FS
# scripts/config --enable CONFIG_PROC_KCORE
# scripts/config --enable CONFIG_PROC_SYSCTL
# scripts/config --enable CONFIG_PROC_PAGE_MONITOR
# scripts/config --enable CONFIG_PROC_CHILDREN
# scripts/config --enable CONFIG_PROC_PID_ARCH_STATUS
# scripts/config --enable CONFIG_PROC_CPU_RESCTRL
# scripts/config --enable CONFIG_KERNFS
# scripts/config --enable CONFIG_SYSFS
# scripts/config --enable CONFIG_TMPFS
# scripts/config --enable CONFIG_TMPFS_POSIX_ACL
# scripts/config --enable CONFIG_TMPFS_XATTR
# scripts/config --enable CONFIG_TMPFS_INODE64
# scripts/config --enable CONFIG_TMPFS_QUOTA
# scripts/config --enable CONFIG_HUGETLBFS
# scripts/config --disable CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP_DEFAULT_ON
# scripts/config --enable CONFIG_HUGETLB_PAGE
# scripts/config --enable CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP
# scripts/config --enable CONFIG_HUGETLB_PMD_PAGE_TABLE_SHARING
# scripts/config --enable CONFIG_ARCH_HAS_GIGANTIC_PAGE
# scripts/config --enable CONFIG_CONFIGFS_FS
# scripts/config --enable CONFIG_EFIVAR_FS
# scripts/config --enable CONFIG_MISC_FILESYSTEMS
# scripts/config --set-val CONFIG_ORANGEFS_FS m
# scripts/config --set-val CONFIG_ADFS_FS m
# scripts/config --disable CONFIG_ADFS_FS_RW
# scripts/config --set-val CONFIG_AFFS_FS m
# scripts/config --enable CONFIG_ECRYPT_FS
# scripts/config --enable CONFIG_ECRYPT_FS_MESSAGING
# scripts/config --set-val CONFIG_HFS_FS m
# scripts/config --set-val CONFIG_HFSPLUS_FS m
# scripts/config --set-val CONFIG_BEFS_FS m
# scripts/config --disable CONFIG_BEFS_DEBUG
# scripts/config --set-val CONFIG_BFS_FS m
# scripts/config --set-val CONFIG_EFS_FS m
# scripts/config --set-val CONFIG_JFFS2_FS m
# scripts/config --set-val CONFIG_JFFS2_FS_DEBUG 0
# scripts/config --enable CONFIG_JFFS2_FS_WRITEBUFFER
# scripts/config --disable CONFIG_JFFS2_FS_WBUF_VERIFY
# scripts/config --disable CONFIG_JFFS2_SUMMARY
# scripts/config --enable CONFIG_JFFS2_FS_XATTR
# scripts/config --enable CONFIG_JFFS2_FS_POSIX_ACL
# scripts/config --enable CONFIG_JFFS2_FS_SECURITY
# scripts/config --enable CONFIG_JFFS2_COMPRESSION_OPTIONS
# scripts/config --enable CONFIG_JFFS2_ZLIB
# scripts/config --enable CONFIG_JFFS2_LZO
# scripts/config --enable CONFIG_JFFS2_RTIME
# scripts/config --disable CONFIG_JFFS2_RUBIN
# scripts/config --disable CONFIG_JFFS2_CMODE_NONE
# scripts/config --disable CONFIG_JFFS2_CMODE_PRIORITY
# scripts/config --disable CONFIG_JFFS2_CMODE_SIZE
# scripts/config --enable CONFIG_JFFS2_CMODE_FAVOURLZO
# scripts/config --set-val CONFIG_UBIFS_FS m
# scripts/config --disable CONFIG_UBIFS_FS_ADVANCED_COMPR
# scripts/config --enable CONFIG_UBIFS_FS_LZO
# scripts/config --enable CONFIG_UBIFS_FS_ZLIB
# scripts/config --enable CONFIG_UBIFS_FS_ZSTD
# scripts/config --disable CONFIG_UBIFS_ATIME_SUPPORT
# scripts/config --enable CONFIG_UBIFS_FS_XATTR
# scripts/config --enable CONFIG_UBIFS_FS_SECURITY
# scripts/config --enable CONFIG_UBIFS_FS_AUTHENTICATION
# scripts/config --set-val CONFIG_CRAMFS m
# scripts/config --enable CONFIG_CRAMFS_BLOCKDEV
# scripts/config --enable CONFIG_CRAMFS_MTD
# scripts/config --enable CONFIG_SQUASHFS
# scripts/config --disable CONFIG_SQUASHFS_FILE_CACHE
# scripts/config --enable CONFIG_SQUASHFS_FILE_DIRECT
# scripts/config --enable CONFIG_SQUASHFS_DECOMP_SINGLE
# scripts/config --enable CONFIG_SQUASHFS_DECOMP_MULTI
# scripts/config --enable CONFIG_SQUASHFS_DECOMP_MULTI_PERCPU
# scripts/config --enable CONFIG_SQUASHFS_CHOICE_DECOMP_BY_MOUNT
# scripts/config --enable CONFIG_SQUASHFS_MOUNT_DECOMP_THREADS
# scripts/config --enable CONFIG_SQUASHFS_XATTR
# scripts/config --enable CONFIG_SQUASHFS_ZLIB
# scripts/config --enable CONFIG_SQUASHFS_LZ4
# scripts/config --enable CONFIG_SQUASHFS_LZO
# scripts/config --enable CONFIG_SQUASHFS_XZ
# scripts/config --enable CONFIG_SQUASHFS_ZSTD
# scripts/config --disable CONFIG_SQUASHFS_4K_DEVBLK_SIZE
# scripts/config --disable CONFIG_SQUASHFS_EMBEDDED
# scripts/config --set-val CONFIG_SQUASHFS_FRAGMENT_CACHE_SIZE 3
# scripts/config --set-val CONFIG_VXFS_FS m
# scripts/config --set-val CONFIG_MINIX_FS m
# scripts/config --set-val CONFIG_OMFS_FS m
# scripts/config --set-val CONFIG_HPFS_FS m
# scripts/config --set-val CONFIG_QNX4FS_FS m
# scripts/config --set-val CONFIG_QNX6FS_FS m
# scripts/config --disable CONFIG_QNX6FS_DEBUG
# scripts/config --set-val CONFIG_ROMFS_FS m
# scripts/config --enable CONFIG_ROMFS_BACKED_BY_BLOCK
# scripts/config --disable CONFIG_ROMFS_BACKED_BY_MTD
# scripts/config --disable CONFIG_ROMFS_BACKED_BY_BOTH
# scripts/config --enable CONFIG_ROMFS_ON_BLOCK
# scripts/config --enable CONFIG_PSTORE
# scripts/config --set-val CONFIG_PSTORE_DEFAULT_KMSG_BYTES 10240
# scripts/config --enable CONFIG_PSTORE_COMPRESS
# scripts/config --disable CONFIG_PSTORE_CONSOLE
# scripts/config --disable CONFIG_PSTORE_PMSG
# scripts/config --disable CONFIG_PSTORE_FTRACE
# scripts/config --set-val CONFIG_PSTORE_RAM m
# scripts/config --set-val CONFIG_PSTORE_ZONE m
# scripts/config --set-val CONFIG_PSTORE_BLK m
# scripts/config --set-val CONFIG_PSTORE_BLK_BLKDEV ""
# scripts/config --set-val CONFIG_PSTORE_BLK_KMSG_SIZE 64
# scripts/config --set-val CONFIG_PSTORE_BLK_MAX_REASON 2
# scripts/config --set-val CONFIG_SYSV_FS m
# scripts/config --set-val CONFIG_UFS_FS m
# scripts/config --disable CONFIG_UFS_FS_WRITE
# scripts/config --disable CONFIG_UFS_DEBUG
# scripts/config --set-val CONFIG_EROFS_FS m
# scripts/config --disable CONFIG_EROFS_FS_DEBUG
# scripts/config --enable CONFIG_EROFS_FS_XATTR
# scripts/config --enable CONFIG_EROFS_FS_POSIX_ACL
# scripts/config --enable CONFIG_EROFS_FS_SECURITY
# scripts/config --enable CONFIG_EROFS_FS_BACKED_BY_FILE
# scripts/config --enable CONFIG_EROFS_FS_ZIP
# scripts/config --enable CONFIG_EROFS_FS_ZIP_LZMA
# scripts/config --enable CONFIG_EROFS_FS_ZIP_DEFLATE
# scripts/config --enable CONFIG_EROFS_FS_ZIP_ZSTD
# scripts/config --disable CONFIG_EROFS_FS_ONDEMAND
# scripts/config --enable CONFIG_EROFS_FS_PCPU_KTHREAD
# scripts/config --disable CONFIG_EROFS_FS_PCPU_KTHREAD_HIPRI
# scripts/config --set-val CONFIG_VBOXSF_FS m
# scripts/config --enable CONFIG_NETWORK_FILESYSTEMS
# scripts/config --set-val CONFIG_NFS_FS m
# scripts/config --set-val CONFIG_NFS_V2 m
# scripts/config --set-val CONFIG_NFS_V3 m
# scripts/config --enable CONFIG_NFS_V3_ACL
# scripts/config --set-val CONFIG_NFS_V4 m
# scripts/config --enable CONFIG_NFS_SWAP
# scripts/config --enable CONFIG_NFS_V4_1
# scripts/config --enable CONFIG_NFS_V4_2
# scripts/config --set-val CONFIG_PNFS_FILE_LAYOUT m
# scripts/config --set-val CONFIG_PNFS_BLOCK m
# scripts/config --set-val CONFIG_PNFS_FLEXFILE_LAYOUT m
# scripts/config --set-val CONFIG_NFS_V4_1_IMPLEMENTATION_ID_DOMAIN "kernel.org"
# scripts/config --enable CONFIG_NFS_V4_1_MIGRATION
# scripts/config --enable CONFIG_NFS_V4_SECURITY_LABEL
# scripts/config --enable CONFIG_NFS_FSCACHE
# scripts/config --disable CONFIG_NFS_USE_LEGACY_DNS
# scripts/config --enable CONFIG_NFS_USE_KERNEL_DNS
# scripts/config --enable CONFIG_NFS_DEBUG
# scripts/config --enable CONFIG_NFS_DISABLE_UDP_SUPPORT
# scripts/config --disable CONFIG_NFS_V4_2_READ_PLUS
# scripts/config --set-val CONFIG_NFSD m
# scripts/config --disable CONFIG_NFSD_V2
# scripts/config --enable CONFIG_NFSD_V3_ACL
# scripts/config --enable CONFIG_NFSD_V4
# scripts/config --enable CONFIG_NFSD_PNFS
# scripts/config --enable CONFIG_NFSD_BLOCKLAYOUT
# scripts/config --enable CONFIG_NFSD_SCSILAYOUT
# scripts/config --enable CONFIG_NFSD_FLEXFILELAYOUT
# scripts/config --enable CONFIG_NFSD_V4_2_INTER_SSC
# scripts/config --enable CONFIG_NFSD_V4_SECURITY_LABEL
# scripts/config --disable CONFIG_NFSD_LEGACY_CLIENT_TRACKING
# scripts/config --set-val CONFIG_GRACE_PERIOD m
# scripts/config --set-val CONFIG_LOCKD m
# scripts/config --enable CONFIG_LOCKD_V4
# scripts/config --set-val CONFIG_NFS_ACL_SUPPORT m
# scripts/config --enable CONFIG_NFS_COMMON
# scripts/config --disable CONFIG_NFS_LOCALIO
# scripts/config --enable CONFIG_NFS_V4_2_SSC_HELPER
# scripts/config --set-val CONFIG_SUNRPC m
# scripts/config --set-val CONFIG_SUNRPC_GSS m
# scripts/config --enable CONFIG_SUNRPC_BACKCHANNEL
# scripts/config --enable CONFIG_SUNRPC_SWAP
# scripts/config --set-val CONFIG_RPCSEC_GSS_KRB5 m
# scripts/config --enable CONFIG_RPCSEC_GSS_KRB5_ENCTYPES_AES_SHA1
# scripts/config --enable CONFIG_RPCSEC_GSS_KRB5_ENCTYPES_CAMELLIA
# scripts/config --enable CONFIG_RPCSEC_GSS_KRB5_ENCTYPES_AES_SHA2
# scripts/config --enable CONFIG_SUNRPC_DEBUG
# scripts/config --set-val CONFIG_SUNRPC_XPRT_RDMA m
# scripts/config --set-val CONFIG_CEPH_FS m
# scripts/config --enable CONFIG_CEPH_FSCACHE
# scripts/config --enable CONFIG_CEPH_FS_POSIX_ACL
# scripts/config --enable CONFIG_CEPH_FS_SECURITY_LABEL
# scripts/config --set-val CONFIG_CIFS m
# scripts/config --disable CONFIG_CIFS_STATS2
# scripts/config --enable CONFIG_CIFS_ALLOW_INSECURE_LEGACY
# scripts/config --enable CONFIG_CIFS_UPCALL
# scripts/config --enable CONFIG_CIFS_XATTR
# scripts/config --enable CONFIG_CIFS_POSIX
# scripts/config --enable CONFIG_CIFS_DEBUG
# scripts/config --disable CONFIG_CIFS_DEBUG2
# scripts/config --disable CONFIG_CIFS_DEBUG_DUMP_KEYS
# scripts/config --enable CONFIG_CIFS_DFS_UPCALL
# scripts/config --enable CONFIG_CIFS_SWN_UPCALL
# scripts/config --disable CONFIG_CIFS_SMB_DIRECT
# scripts/config --enable CONFIG_CIFS_FSCACHE
# scripts/config --enable CONFIG_CIFS_COMPRESSION
# scripts/config --set-val CONFIG_SMB_SERVER m
# scripts/config --enable CONFIG_SMB_SERVER_SMBDIRECT
# scripts/config --enable CONFIG_SMB_SERVER_CHECK_CAP_NET_ADMIN
# scripts/config --enable CONFIG_SMB_SERVER_KERBEROS5
# scripts/config --set-val CONFIG_SMBFS m
# scripts/config --set-val CONFIG_CODA_FS m
# scripts/config --set-val CONFIG_AFS_FS m
# scripts/config --disable CONFIG_AFS_DEBUG
# scripts/config --enable CONFIG_AFS_FSCACHE
# scripts/config --disable CONFIG_AFS_DEBUG_CURSOR
# scripts/config --set-val CONFIG_9P_FS m
# scripts/config --enable CONFIG_9P_FSCACHE
# scripts/config --enable CONFIG_9P_FS_POSIX_ACL
# scripts/config --enable CONFIG_9P_FS_SECURITY
# scripts/config --enable CONFIG_NLS
# scripts/config --set-val CONFIG_NLS_DEFAULT "utf8"
# scripts/config --enable CONFIG_NLS_CODEPAGE_437
# scripts/config --set-val CONFIG_NLS_CODEPAGE_737 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_775 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_850 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_852 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_855 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_857 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_860 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_861 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_862 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_863 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_864 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_865 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_866 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_869 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_936 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_950 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_932 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_949 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_874 m
# scripts/config --set-val CONFIG_NLS_ISO8859_8 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_1250 m
# scripts/config --set-val CONFIG_NLS_CODEPAGE_1251 m
# scripts/config --set-val CONFIG_NLS_ASCII m
# scripts/config --set-val CONFIG_NLS_ISO8859_1 m
# scripts/config --set-val CONFIG_NLS_ISO8859_2 m
# scripts/config --set-val CONFIG_NLS_ISO8859_3 m
# scripts/config --set-val CONFIG_NLS_ISO8859_4 m
# scripts/config --set-val CONFIG_NLS_ISO8859_5 m
# scripts/config --set-val CONFIG_NLS_ISO8859_6 m
# scripts/config --set-val CONFIG_NLS_ISO8859_7 m
# scripts/config --set-val CONFIG_NLS_ISO8859_9 m
# scripts/config --set-val CONFIG_NLS_ISO8859_13 m
# scripts/config --set-val CONFIG_NLS_ISO8859_14 m
# scripts/config --set-val CONFIG_NLS_ISO8859_15 m
# scripts/config --set-val CONFIG_NLS_KOI8_R m
# scripts/config --set-val CONFIG_NLS_KOI8_U m
# scripts/config --set-val CONFIG_NLS_MAC_ROMAN m
# scripts/config --set-val CONFIG_NLS_MAC_CELTIC m
# scripts/config --set-val CONFIG_NLS_MAC_CENTEURO m
# scripts/config --set-val CONFIG_NLS_MAC_CROATIAN m
# scripts/config --set-val CONFIG_NLS_MAC_CYRILLIC m
# scripts/config --set-val CONFIG_NLS_MAC_GAELIC m
# scripts/config --set-val CONFIG_NLS_MAC_GREEK m
# scripts/config --set-val CONFIG_NLS_MAC_ICELAND m
# scripts/config --set-val CONFIG_NLS_MAC_INUIT m
# scripts/config --set-val CONFIG_NLS_MAC_ROMANIAN m
# scripts/config --set-val CONFIG_NLS_MAC_TURKISH m
# scripts/config --set-val CONFIG_NLS_UTF8 m
# scripts/config --set-val CONFIG_NLS_UCS2_UTILS m
# scripts/config --set-val CONFIG_DLM m
# scripts/config --disable CONFIG_DLM_DEBUG
# scripts/config --enable CONFIG_UNICODE
# scripts/config --disable CONFIG_UNICODE_NORMALIZATION_SELFTEST
# scripts/config --enable CONFIG_IO_WQ
# scripts/config --enable CONFIG_KEYS
# scripts/config --enable CONFIG_KEYS_REQUEST_CACHE
# scripts/config --enable CONFIG_PERSISTENT_KEYRINGS
# scripts/config --enable CONFIG_TRUSTED_KEYS
# scripts/config --enable CONFIG_HAVE_TRUSTED_KEYS
# scripts/config --enable CONFIG_TRUSTED_KEYS_TPM
# scripts/config --enable CONFIG_ENCRYPTED_KEYS
# scripts/config --enable CONFIG_USER_DECRYPTED_DATA
# scripts/config --enable CONFIG_KEY_DH_OPERATIONS
# scripts/config --enable CONFIG_KEY_NOTIFICATIONS
# scripts/config --enable CONFIG_SECURITY_DMESG_RESTRICT
# scripts/config --enable CONFIG_PROC_MEM_ALWAYS_FORCE
# scripts/config --disable CONFIG_PROC_MEM_FORCE_PTRACE
# scripts/config --disable CONFIG_PROC_MEM_NO_FORCE
# scripts/config --enable CONFIG_SECURITY
# scripts/config --enable CONFIG_SECURITYFS
# scripts/config --enable CONFIG_SECURITY_NETWORK
# scripts/config --enable CONFIG_SECURITY_INFINIBAND
# scripts/config --enable CONFIG_SECURITY_NETWORK_XFRM
# scripts/config --enable CONFIG_SECURITY_PATH
# scripts/config --enable CONFIG_INTEL_TXT
# scripts/config --set-val CONFIG_LSM_MMAP_MIN_ADDR 0
# scripts/config --enable CONFIG_HARDENED_USERCOPY
# scripts/config --enable CONFIG_FORTIFY_SOURCE
# scripts/config --disable CONFIG_STATIC_USERMODEHELPER
# scripts/config --enable CONFIG_SECURITY_SELINUX
# scripts/config --enable CONFIG_SECURITY_SELINUX_BOOTPARAM
# scripts/config --enable CONFIG_SECURITY_SELINUX_DEVELOP
# scripts/config --enable CONFIG_SECURITY_SELINUX_AVC_STATS
# scripts/config --set-val CONFIG_SECURITY_SELINUX_SIDTAB_HASH_BITS 9
# scripts/config --set-val CONFIG_SECURITY_SELINUX_SID2STR_CACHE_SIZE 256
# scripts/config --disable CONFIG_SECURITY_SELINUX_DEBUG
# scripts/config --enable CONFIG_SECURITY_SMACK
# scripts/config --disable CONFIG_SECURITY_SMACK_BRINGUP
# scripts/config --enable CONFIG_SECURITY_SMACK_NETFILTER
# scripts/config --enable CONFIG_SECURITY_SMACK_APPEND_SIGNALS
# scripts/config --enable CONFIG_SECURITY_TOMOYO
# scripts/config --set-val CONFIG_SECURITY_TOMOYO_MAX_ACCEPT_ENTRY 2048
# scripts/config --set-val CONFIG_SECURITY_TOMOYO_MAX_AUDIT_LOG 1024
# scripts/config --disable CONFIG_SECURITY_TOMOYO_OMIT_USERSPACE_LOADER
# scripts/config --set-val CONFIG_SECURITY_TOMOYO_POLICY_LOADER "/sbin/tomoyo-init"
# scripts/config --set-val CONFIG_SECURITY_TOMOYO_ACTIVATION_TRIGGER "/sbin/init"
# scripts/config --disable CONFIG_SECURITY_TOMOYO_INSECURE_BUILTIN_SETTING
# scripts/config --enable CONFIG_SECURITY_APPARMOR
# scripts/config --disable CONFIG_SECURITY_APPARMOR_DEBUG
# scripts/config --enable CONFIG_SECURITY_APPARMOR_INTROSPECT_POLICY
# scripts/config --enable CONFIG_SECURITY_APPARMOR_HASH
# scripts/config --enable CONFIG_SECURITY_APPARMOR_HASH_DEFAULT
# scripts/config --enable CONFIG_SECURITY_APPARMOR_EXPORT_BINARY
# scripts/config --enable CONFIG_SECURITY_APPARMOR_PARANOID_LOAD
# scripts/config --disable CONFIG_SECURITY_LOADPIN
# scripts/config --enable CONFIG_SECURITY_YAMA
# scripts/config --enable CONFIG_SECURITY_SAFESETID
# scripts/config --enable CONFIG_SECURITY_LOCKDOWN_LSM
# scripts/config --enable CONFIG_SECURITY_LOCKDOWN_LSM_EARLY
# scripts/config --enable CONFIG_LOCK_DOWN_KERNEL_FORCE_NONE
# scripts/config --disable CONFIG_LOCK_DOWN_KERNEL_FORCE_INTEGRITY
# scripts/config --disable CONFIG_LOCK_DOWN_KERNEL_FORCE_CONFIDENTIALITY
# scripts/config --enable CONFIG_SECURITY_LANDLOCK
# scripts/config --disable CONFIG_SECURITY_IPE
# scripts/config --enable CONFIG_INTEGRITY
# scripts/config --enable CONFIG_INTEGRITY_SIGNATURE
# scripts/config --enable CONFIG_INTEGRITY_ASYMMETRIC_KEYS
# scripts/config --enable CONFIG_INTEGRITY_TRUSTED_KEYRING
# scripts/config --enable CONFIG_INTEGRITY_PLATFORM_KEYRING
# scripts/config --enable CONFIG_INTEGRITY_MACHINE_KEYRING
# scripts/config --disable CONFIG_INTEGRITY_CA_MACHINE_KEYRING
# scripts/config --enable CONFIG_LOAD_UEFI_KEYS
# scripts/config --enable CONFIG_INTEGRITY_AUDIT
# scripts/config --enable CONFIG_IMA
# scripts/config --set-val CONFIG_IMA_MEASURE_PCR_IDX 10
# scripts/config --enable CONFIG_IMA_LSM_RULES
# scripts/config --enable CONFIG_IMA_NG_TEMPLATE
# scripts/config --disable CONFIG_IMA_SIG_TEMPLATE
# scripts/config --set-val CONFIG_IMA_DEFAULT_TEMPLATE "ima-ng"
# scripts/config --disable CONFIG_IMA_DEFAULT_HASH_SHA1
# scripts/config --enable CONFIG_IMA_DEFAULT_HASH_SHA256
# scripts/config --disable CONFIG_IMA_DEFAULT_HASH_SHA512
# scripts/config --set-val CONFIG_IMA_DEFAULT_HASH "sha256"
# scripts/config --disable CONFIG_IMA_WRITE_POLICY
# scripts/config --disable CONFIG_IMA_READ_POLICY
# scripts/config --enable CONFIG_IMA_APPRAISE
# scripts/config --enable CONFIG_IMA_ARCH_POLICY
# scripts/config --disable CONFIG_IMA_APPRAISE_BUILD_POLICY
# scripts/config --enable CONFIG_IMA_APPRAISE_BOOTPARAM
# scripts/config --enable CONFIG_IMA_APPRAISE_MODSIG
# scripts/config --disable CONFIG_IMA_KEYRINGS_PERMIT_SIGNED_BY_BUILTIN_OR_SECONDARY
# scripts/config --disable CONFIG_IMA_BLACKLIST_KEYRING
# scripts/config --disable CONFIG_IMA_LOAD_X509
# scripts/config --enable CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS
# scripts/config --enable CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS
# scripts/config --enable CONFIG_IMA_SECURE_AND_OR_TRUSTED_BOOT
# scripts/config --disable CONFIG_IMA_DISABLE_HTABLE
# scripts/config --enable CONFIG_EVM
# scripts/config --enable CONFIG_EVM_ATTR_FSUUID
# scripts/config --enable CONFIG_EVM_EXTRA_SMACK_XATTRS
# scripts/config --enable CONFIG_EVM_ADD_XATTRS
# scripts/config --disable CONFIG_EVM_LOAD_X509
# scripts/config --disable CONFIG_DEFAULT_SECURITY_SELINUX
# scripts/config --disable CONFIG_DEFAULT_SECURITY_SMACK
# scripts/config --disable CONFIG_DEFAULT_SECURITY_TOMOYO
# scripts/config --enable CONFIG_DEFAULT_SECURITY_APPARMOR
# scripts/config --disable CONFIG_DEFAULT_SECURITY_DAC
# scripts/config --set-val CONFIG_LSM "landlock,lockdown,yama,integrity,apparmor"
# scripts/config --enable CONFIG_CC_HAS_AUTO_VAR_INIT_PATTERN
# scripts/config --enable CONFIG_CC_HAS_AUTO_VAR_INIT_ZERO_BARE
# scripts/config --enable CONFIG_CC_HAS_AUTO_VAR_INIT_ZERO
# scripts/config --enable CONFIG_INIT_STACK_NONE
# scripts/config --disable CONFIG_INIT_STACK_ALL_PATTERN
# scripts/config --disable CONFIG_INIT_STACK_ALL_ZERO
# scripts/config --enable CONFIG_INIT_ON_ALLOC_DEFAULT_ON
# scripts/config --disable CONFIG_INIT_ON_FREE_DEFAULT_ON
# scripts/config --enable CONFIG_CC_HAS_ZERO_CALL_USED_REGS
# scripts/config --disable CONFIG_ZERO_CALL_USED_REGS
# scripts/config --disable CONFIG_LIST_HARDENED
# scripts/config --disable CONFIG_BUG_ON_DATA_CORRUPTION
# scripts/config --enable CONFIG_CC_HAS_RANDSTRUCT
# scripts/config --enable CONFIG_RANDSTRUCT_NONE
# scripts/config --disable CONFIG_RANDSTRUCT_FULL
# scripts/config --set-val CONFIG_XOR_BLOCKS m
# scripts/config --set-val CONFIG_ASYNC_CORE m
# scripts/config --set-val CONFIG_ASYNC_MEMCPY m
# scripts/config --set-val CONFIG_ASYNC_XOR m
# scripts/config --set-val CONFIG_ASYNC_PQ m
# scripts/config --set-val CONFIG_ASYNC_RAID6_RECOV m
#
# Crypto Core（核心框架）
#
# scripts/config --enable CONFIG_CRYPTO
# scripts/config --enable CONFIG_CRYPTO_ALGAPI
# scripts/config --enable CONFIG_CRYPTO_ALGAPI2
# scripts/config --enable CONFIG_CRYPTO_AEAD
# scripts/config --enable CONFIG_CRYPTO_AEAD2
# scripts/config --enable CONFIG_CRYPTO_SIG
# scripts/config --enable CONFIG_CRYPTO_SIG2
# scripts/config --enable CONFIG_CRYPTO_SKCIPHER
# scripts/config --enable CONFIG_CRYPTO_SKCIPHER2
# scripts/config --enable CONFIG_CRYPTO_HASH
# scripts/config --enable CONFIG_CRYPTO_HASH2
# scripts/config --enable CONFIG_CRYPTO_RNG
# scripts/config --enable CONFIG_CRYPTO_RNG2
# scripts/config --enable CONFIG_CRYPTO_RNG_DEFAULT
# scripts/config --enable CONFIG_CRYPTO_AKCIPHER2
# scripts/config --enable CONFIG_CRYPTO_AKCIPHER
# scripts/config --enable CONFIG_CRYPTO_KPP2
# scripts/config --enable CONFIG_CRYPTO_KPP
# scripts/config --enable CONFIG_CRYPTO_ACOMP2
# scripts/config --enable CONFIG_CRYPTO_MANAGER
# scripts/config --enable CONFIG_CRYPTO_MANAGER2
# scripts/config --set-val CONFIG_CRYPTO_USER m
# scripts/config --enable CONFIG_CRYPTO_MANAGER_DISABLE_TESTS
# scripts/config --enable CONFIG_CRYPTO_NULL
# scripts/config --enable CONFIG_CRYPTO_NULL2
scripts/config --enable CONFIG_CRYPTO_PCRYPT
# scripts/config --set-val CONFIG_CRYPTO_CRYPTD m
# scripts/config --set-val CONFIG_CRYPTO_AUTHENC m
# scripts/config --set-val CONFIG_CRYPTO_TEST m
scripts/config --enable CONFIG_CRYPTO_SIMD
scripts/config --enable CONFIG_CRYPTO_ENGINE
# scripts/config --enable CONFIG_CRYPTO_RSA
# scripts/config --enable CONFIG_CRYPTO_DH
# scripts/config --enable CONFIG_CRYPTO_DH_RFC7919_GROUPS
# scripts/config --enable CONFIG_CRYPTO_ECC
# scripts/config --enable CONFIG_CRYPTO_ECDH
scripts/config --enable CONFIG_CRYPTO_ECDSA
# scripts/config --set-val CONFIG_CRYPTO_ECRDSA m
scripts/config --enable CONFIG_CRYPTO_CURVE25519
# scripts/config --enable CONFIG_CRYPTO_AES
# scripts/config --set-val CONFIG_CRYPTO_AES_TI m
# scripts/config --set-val CONFIG_CRYPTO_ARIA m
# scripts/config --set-val CONFIG_CRYPTO_BLOWFISH m
# scripts/config --set-val CONFIG_CRYPTO_BLOWFISH_COMMON m
# scripts/config --set-val CONFIG_CRYPTO_CAMELLIA m
# scripts/config --set-val CONFIG_CRYPTO_CAST_COMMON m
# scripts/config --set-val CONFIG_CRYPTO_CAST5 m
# scripts/config --set-val CONFIG_CRYPTO_CAST6 m
# scripts/config --set-val CONFIG_CRYPTO_DES m
# scripts/config --set-val CONFIG_CRYPTO_FCRYPT m
# scripts/config --set-val CONFIG_CRYPTO_SERPENT m
scripts/config --enable CONFIG_CRYPTO_SM4
# scripts/config --set-val CONFIG_CRYPTO_SM4_GENERIC m
# scripts/config --set-val CONFIG_CRYPTO_TWOFISH m
# scripts/config --set-val CONFIG_CRYPTO_TWOFISH_COMMON m
# scripts/config --set-val CONFIG_CRYPTO_ADIANTUM m
scripts/config --enable CONFIG_CRYPTO_CHACHA20
# scripts/config --enable CONFIG_CRYPTO_CBC
# scripts/config --enable CONFIG_CRYPTO_CTR
# scripts/config --enable CONFIG_CRYPTO_CTS
# scripts/config --enable CONFIG_CRYPTO_ECB
# scripts/config --set-val CONFIG_CRYPTO_HCTR2 m
# scripts/config --set-val CONFIG_CRYPTO_KEYWRAP m
# scripts/config --set-val CONFIG_CRYPTO_LRW m
# scripts/config --set-val CONFIG_CRYPTO_PCBC m
# scripts/config --set-val CONFIG_CRYPTO_XCTR m
# scripts/config --enable CONFIG_CRYPTO_XTS
# scripts/config --set-val CONFIG_CRYPTO_NHPOLY1305 m
scripts/config --enable CONFIG_CRYPTO_AEGIS128
scripts/config --enable CONFIG_CRYPTO_CHACHA20POLY1305
# scripts/config --set-val CONFIG_CRYPTO_CCM m
# scripts/config --enable CONFIG_CRYPTO_GCM
# scripts/config --enable CONFIG_CRYPTO_GENIV
# scripts/config --enable CONFIG_CRYPTO_SEQIV
# scripts/config --set-val CONFIG_CRYPTO_ECHAINIV m
# scripts/config --set-val CONFIG_CRYPTO_ESSIV m
# scripts/config --set-val CONFIG_CRYPTO_BLAKE2B m
# scripts/config --set-val CONFIG_CRYPTO_CMAC m
# scripts/config --enable CONFIG_CRYPTO_GHASH
# scripts/config --enable CONFIG_CRYPTO_HMAC
# scripts/config --set-val CONFIG_CRYPTO_MD4 m
# scripts/config --enable CONFIG_CRYPTO_MD5
# scripts/config --set-val CONFIG_CRYPTO_MICHAEL_MIC m
scripts/config --enable CONFIG_CRYPTO_POLYVAL
scripts/config --enable CONFIG_CRYPTO_POLY1305
# scripts/config --set-val CONFIG_CRYPTO_RMD160 m
# scripts/config --enable CONFIG_CRYPTO_SHA1
# scripts/config --enable CONFIG_CRYPTO_SHA256
# scripts/config --enable CONFIG_CRYPTO_SHA512
# scripts/config --enable CONFIG_CRYPTO_SHA3
# scripts/config --set-val CONFIG_CRYPTO_SM3 m
# scripts/config --set-val CONFIG_CRYPTO_SM3_GENERIC m
# scripts/config --set-val CONFIG_CRYPTO_STREEBOG m
# scripts/config --set-val CONFIG_CRYPTO_VMAC m
# scripts/config --set-val CONFIG_CRYPTO_WP512 m
# scripts/config --set-val CONFIG_CRYPTO_XCBC m
# scripts/config --set-val CONFIG_CRYPTO_XXHASH m
# scripts/config --enable CONFIG_CRYPTO_CRC32C
# scripts/config --set-val CONFIG_CRYPTO_CRC32 m
# scripts/config --enable CONFIG_CRYPTO_CRCT10DIF
# scripts/config --enable CONFIG_CRYPTO_CRC64_ROCKSOFT
# scripts/config --enable CONFIG_CRYPTO_DEFLATE
# scripts/config --enable CONFIG_CRYPTO_LZO
# scripts/config --set-val CONFIG_CRYPTO_842 m
# scripts/config --enable CONFIG_CRYPTO_LZ4
# scripts/config --set-val CONFIG_CRYPTO_LZ4HC m
# scripts/config --enable CONFIG_CRYPTO_ZSTD
# scripts/config --set-val CONFIG_CRYPTO_ANSI_CPRNG m
# scripts/config --enable CONFIG_CRYPTO_DRBG_MENU
# scripts/config --enable CONFIG_CRYPTO_DRBG_HMAC
# scripts/config --enable CONFIG_CRYPTO_DRBG_HASH
# scripts/config --enable CONFIG_CRYPTO_DRBG_CTR
# scripts/config --enable CONFIG_CRYPTO_DRBG
# scripts/config --enable CONFIG_CRYPTO_JITTERENTROPY
# scripts/config --set-val CONFIG_CRYPTO_JITTERENTROPY_MEMORY_BLOCKS 64
# scripts/config --set-val CONFIG_CRYPTO_JITTERENTROPY_MEMORY_BLOCKSIZE 32
# scripts/config --set-val CONFIG_CRYPTO_JITTERENTROPY_OSR 1
# scripts/config --enable CONFIG_CRYPTO_KDF800108_CTR
# scripts/config --set-val CONFIG_CRYPTO_USER_API m
# scripts/config --set-val CONFIG_CRYPTO_USER_API_HASH m
# scripts/config --set-val CONFIG_CRYPTO_USER_API_SKCIPHER m
# scripts/config --set-val CONFIG_CRYPTO_USER_API_RNG m
# scripts/config --disable CONFIG_CRYPTO_USER_API_RNG_CAVP
# scripts/config --set-val CONFIG_CRYPTO_USER_API_AEAD m
# scripts/config --disable CONFIG_CRYPTO_USER_API_ENABLE_OBSOLETE
# scripts/config --enable CONFIG_CRYPTO_HASH_INFO
# scripts/config --set-val CONFIG_CRYPTO_CURVE25519_X86 m
# scripts/config --set-val CONFIG_CRYPTO_AES_NI_INTEL m
# scripts/config --set-val CONFIG_CRYPTO_BLOWFISH_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_CAMELLIA_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_CAMELLIA_AESNI_AVX_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_CAMELLIA_AESNI_AVX2_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_CAST5_AVX_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_CAST6_AVX_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_DES3_EDE_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_SERPENT_SSE2_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_SERPENT_AVX_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_SERPENT_AVX2_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_SM4_AESNI_AVX_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_SM4_AESNI_AVX2_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_TWOFISH_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_TWOFISH_X86_64_3WAY m
# scripts/config --set-val CONFIG_CRYPTO_TWOFISH_AVX_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_ARIA_AESNI_AVX_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_ARIA_AESNI_AVX2_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_ARIA_GFNI_AVX512_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_CHACHA20_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_AEGIS128_AESNI_SSE2 m
# scripts/config --set-val CONFIG_CRYPTO_NHPOLY1305_SSE2 m
# scripts/config --set-val CONFIG_CRYPTO_NHPOLY1305_AVX2 m
# scripts/config --enable CONFIG_CRYPTO_BLAKE2S_X86
# scripts/config --set-val CONFIG_CRYPTO_POLYVAL_CLMUL_NI m
# scripts/config --set-val CONFIG_CRYPTO_POLY1305_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_SHA1_SSSE3 m
# scripts/config --set-val CONFIG_CRYPTO_SHA256_SSSE3 m
# scripts/config --enable CONFIG_CRYPTO_SHA512_SSSE3
# scripts/config --set-val CONFIG_CRYPTO_SM3_AVX_X86_64 m
# scripts/config --set-val CONFIG_CRYPTO_GHASH_CLMUL_NI_INTEL m
# scripts/config --enable CONFIG_CRYPTO_CRC32C_INTEL
# scripts/config --set-val CONFIG_CRYPTO_CRC32_PCLMUL m
# scripts/config --set-val CONFIG_CRYPTO_CRCT10DIF_PCLMUL m
# scripts/config --enable CONFIG_CRYPTO_HW
# scripts/config --enable CONFIG_CRYPTO_DEV_PADLOCK
# scripts/config --set-val CONFIG_CRYPTO_DEV_PADLOCK_AES m
# scripts/config --set-val CONFIG_CRYPTO_DEV_PADLOCK_SHA m
# scripts/config --set-val CONFIG_CRYPTO_DEV_ATMEL_I2C m
# scripts/config --set-val CONFIG_CRYPTO_DEV_ATMEL_ECC m
# scripts/config --set-val CONFIG_CRYPTO_DEV_ATMEL_SHA204A m
# scripts/config --enable CONFIG_CRYPTO_DEV_CCP
# scripts/config --set-val CONFIG_CRYPTO_DEV_CCP_DD m
# scripts/config --enable CONFIG_CRYPTO_DEV_SP_CCP
# scripts/config --set-val CONFIG_CRYPTO_DEV_CCP_CRYPTO m
# scripts/config --enable CONFIG_CRYPTO_DEV_SP_PSP
# scripts/config --disable CONFIG_CRYPTO_DEV_CCP_DEBUGFS
# scripts/config --set-val CONFIG_CRYPTO_DEV_NITROX m
# scripts/config --set-val CONFIG_CRYPTO_DEV_NITROX_CNN55XX m
# scripts/config --set-val CONFIG_CRYPTO_DEV_QAT m
# scripts/config --set-val CONFIG_CRYPTO_DEV_QAT_DH895xCC m
# scripts/config --set-val CONFIG_CRYPTO_DEV_QAT_C3XXX m
# scripts/config --set-val CONFIG_CRYPTO_DEV_QAT_C62X m
# scripts/config --set-val CONFIG_CRYPTO_DEV_QAT_4XXX m
# scripts/config --set-val CONFIG_CRYPTO_DEV_QAT_420XX m
# scripts/config --set-val CONFIG_CRYPTO_DEV_QAT_DH895xCCVF m
# scripts/config --set-val CONFIG_CRYPTO_DEV_QAT_C3XXXVF m
# scripts/config --set-val CONFIG_CRYPTO_DEV_QAT_C62XVF m
# scripts/config --disable CONFIG_CRYPTO_DEV_QAT_ERROR_INJECTION
# scripts/config --set-val CONFIG_CRYPTO_DEV_IAA_CRYPTO m
# scripts/config --disable CONFIG_CRYPTO_DEV_IAA_CRYPTO_STATS
# scripts/config --set-val CONFIG_CRYPTO_DEV_CHELSIO m
# scripts/config --set-val CONFIG_CRYPTO_DEV_VIRTIO m
# scripts/config --set-val CONFIG_CRYPTO_DEV_SAFEXCEL m
# scripts/config --set-val CONFIG_CRYPTO_DEV_AMLOGIC_GXL m
# scripts/config --disable CONFIG_CRYPTO_DEV_AMLOGIC_GXL_DEBUG
# scripts/config --enable CONFIG_ASYMMETRIC_KEY_TYPE
# scripts/config --enable CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE
# scripts/config --enable CONFIG_X509_CERTIFICATE_PARSER
# scripts/config --set-val CONFIG_PKCS8_PRIVATE_KEY_PARSER m
# scripts/config --enable CONFIG_PKCS7_MESSAGE_PARSER
# scripts/config --set-val CONFIG_PKCS7_TEST_KEY m
# scripts/config --enable CONFIG_SIGNED_PE_FILE_VERIFICATION
# scripts/config --disable CONFIG_FIPS_SIGNATURE_SELFTEST

#
# Certificates for signature checking
#
# scripts/config --set-val CONFIG_MODULE_SIG_KEY "certs/signing_key.pem"
# scripts/config --enable CONFIG_MODULE_SIG_KEY_TYPE_RSA
# scripts/config --disable CONFIG_MODULE_SIG_KEY_TYPE_ECDSA
# scripts/config --enable CONFIG_SYSTEM_TRUSTED_KEYRING
# scripts/config --set-val CONFIG_SYSTEM_TRUSTED_KEYS ""
# scripts/config --enable CONFIG_SYSTEM_EXTRA_CERTIFICATE
# scripts/config --set-val CONFIG_SYSTEM_EXTRA_CERTIFICATE_SIZE 4096
# scripts/config --enable CONFIG_SECONDARY_TRUSTED_KEYRING
# scripts/config --disable CONFIG_SECONDARY_TRUSTED_KEYRING_SIGNED_BY_BUILTIN
# scripts/config --enable CONFIG_SYSTEM_BLACKLIST_KEYRING
# scripts/config --set-val CONFIG_SYSTEM_BLACKLIST_HASH_LIST ""
# scripts/config --enable CONFIG_SYSTEM_REVOCATION_LIST
# scripts/config --set-val CONFIG_SYSTEM_REVOCATION_KEYS ""
# scripts/config --disable CONFIG_SYSTEM_BLACKLIST_AUTH_UPDATE
# scripts/config --enable CONFIG_BINARY_PRINTF
# scripts/config --set-val CONFIG_RAID6_PQ m
# scripts/config --enable CONFIG_RAID6_PQ_BENCHMARK
# scripts/config --enable CONFIG_LINEAR_RANGES
# scripts/config --enable CONFIG_PACKING
# scripts/config --enable CONFIG_BITREVERSE
# scripts/config --enable CONFIG_GENERIC_STRNCPY_FROM_USER
# scripts/config --enable CONFIG_GENERIC_STRNLEN_USER
# scripts/config --enable CONFIG_GENERIC_NET_UTILS
# scripts/config --set-val CONFIG_CORDIC m
# scripts/config --disable CONFIG_PRIME_NUMBERS
# scripts/config --enable CONFIG_RATIONAL
# scripts/config --enable CONFIG_GENERIC_IOMAP
# scripts/config --enable CONFIG_ARCH_USE_CMPXCHG_LOCKREF
# scripts/config --enable CONFIG_ARCH_HAS_FAST_MULTIPLIER
# scripts/config --enable CONFIG_ARCH_USE_SYM_ANNOTATIONS
# scripts/config --enable CONFIG_CRYPTO_LIB_UTILS
# scripts/config --enable CONFIG_CRYPTO_LIB_AES
# scripts/config --set-val CONFIG_CRYPTO_LIB_ARC4 m
# scripts/config --enable CONFIG_CRYPTO_LIB_GF128MUL
# scripts/config --enable CONFIG_CRYPTO_ARCH_HAVE_LIB_BLAKE2S
# scripts/config --enable CONFIG_CRYPTO_LIB_BLAKE2S_GENERIC
# scripts/config --enable CONFIG_CRYPTO_ARCH_HAVE_LIB_CHACHA
# scripts/config --set-val CONFIG_CRYPTO_LIB_CHACHA_GENERIC m
# scripts/config --set-val CONFIG_CRYPTO_LIB_CHACHA_INTERNAL m
# scripts/config --set-val CONFIG_CRYPTO_LIB_CHACHA m
# scripts/config --enable CONFIG_CRYPTO_ARCH_HAVE_LIB_CURVE25519
# scripts/config --set-val CONFIG_CRYPTO_LIB_CURVE25519_GENERIC m
# scripts/config --set-val CONFIG_CRYPTO_LIB_CURVE25519_INTERNAL m
# scripts/config --set-val CONFIG_CRYPTO_LIB_CURVE25519 m
# scripts/config --set-val CONFIG_CRYPTO_LIB_DES m
# scripts/config --set-val CONFIG_CRYPTO_LIB_POLY1305_RSIZE 11
# scripts/config --enable CONFIG_CRYPTO_ARCH_HAVE_LIB_POLY1305
# scripts/config --set-val CONFIG_CRYPTO_LIB_POLY1305_GENERIC m
# scripts/config --set-val CONFIG_CRYPTO_LIB_POLY1305_INTERNAL m
# scripts/config --set-val CONFIG_CRYPTO_LIB_POLY1305 m
# scripts/config --set-val CONFIG_CRYPTO_LIB_CHACHA20POLY1305 m
# scripts/config --enable CONFIG_CRYPTO_LIB_SHA1
# scripts/config --enable CONFIG_CRYPTO_LIB_SHA256
# scripts/config --enable CONFIG_CRC_CCITT
# scripts/config --enable CONFIG_CRC16
# scripts/config --enable CONFIG_CRC_T10DIF
# scripts/config --enable CONFIG_CRC64_ROCKSOFT
# scripts/config --set-val CONFIG_CRC_ITU_T m
# scripts/config --enable CONFIG_CRC32
# scripts/config --disable CONFIG_CRC32_SELFTEST
# scripts/config --enable CONFIG_CRC32_SLICEBY8
# scripts/config --disable CONFIG_CRC32_SLICEBY4
# scripts/config --disable CONFIG_CRC32_SARWATE
# scripts/config --disable CONFIG_CRC32_BIT
# scripts/config --enable CONFIG_CRC64
# scripts/config --set-val CONFIG_CRC4 m
# scripts/config --set-val CONFIG_CRC7 m
# scripts/config --set-val CONFIG_LIBCRC32C m
# scripts/config --set-val CONFIG_CRC8 m
# scripts/config --enable CONFIG_XXHASH
# scripts/config --disable CONFIG_RANDOM32_SELFTEST
# scripts/config --set-val CONFIG_842_COMPRESS m
# scripts/config --set-val CONFIG_842_DECOMPRESS m
# scripts/config --enable CONFIG_ZLIB_INFLATE
# scripts/config --enable CONFIG_ZLIB_DEFLATE
# scripts/config --enable CONFIG_LZO_COMPRESS
# scripts/config --enable CONFIG_LZO_DECOMPRESS
# scripts/config --enable CONFIG_LZ4_COMPRESS
# scripts/config --set-val CONFIG_LZ4HC_COMPRESS m
# scripts/config --enable CONFIG_LZ4_DECOMPRESS
# scripts/config --enable CONFIG_ZSTD_COMMON
# scripts/config --enable CONFIG_ZSTD_COMPRESS
# scripts/config --enable CONFIG_ZSTD_DECOMPRESS
# scripts/config --enable CONFIG_XZ_DEC
# scripts/config --enable CONFIG_XZ_DEC_X86
# scripts/config --enable CONFIG_XZ_DEC_POWERPC
# scripts/config --enable CONFIG_XZ_DEC_ARM
# scripts/config --enable CONFIG_XZ_DEC_ARMTHUMB
# scripts/config --enable CONFIG_XZ_DEC_ARM64
# scripts/config --enable CONFIG_XZ_DEC_SPARC
# scripts/config --enable CONFIG_XZ_DEC_RISCV
# scripts/config --enable CONFIG_XZ_DEC_MICROLZMA
# scripts/config --enable CONFIG_XZ_DEC_BCJ
# scripts/config --set-val CONFIG_XZ_DEC_TEST m
# scripts/config --enable CONFIG_DECOMPRESS_LZ4
# scripts/config --enable CONFIG_DECOMPRESS_ZSTD
# scripts/config --enable CONFIG_GENERIC_ALLOCATOR
# scripts/config --set-val CONFIG_REED_SOLOMON m
# scripts/config --enable CONFIG_REED_SOLOMON_ENC8
# scripts/config --enable CONFIG_REED_SOLOMON_DEC8
# scripts/config --enable CONFIG_REED_SOLOMON_DEC16
# scripts/config --set-val CONFIG_BCH m
# scripts/config --enable CONFIG_TEXTSEARCH
# scripts/config --set-val CONFIG_TEXTSEARCH_KMP m
# scripts/config --set-val CONFIG_TEXTSEARCH_BM m
# scripts/config --set-val CONFIG_TEXTSEARCH_FSM m
# scripts/config --enable CONFIG_BTREE
# scripts/config --enable CONFIG_INTERVAL_TREE
# scripts/config --enable CONFIG_INTERVAL_TREE_SPAN_ITER
# scripts/config --enable CONFIG_XARRAY_MULTI
# scripts/config --enable CONFIG_ASSOCIATIVE_ARRAY
# scripts/config --enable CONFIG_CLOSURES
# scripts/config --enable CONFIG_HAS_IOMEM
# scripts/config --enable CONFIG_HAS_IOPORT
# scripts/config --enable CONFIG_HAS_IOPORT_MAP
# scripts/config --enable CONFIG_HAS_DMA
# scripts/config --enable CONFIG_DMA_OPS_HELPERS
# scripts/config --enable CONFIG_NEED_SG_DMA_FLAGS
# scripts/config --enable CONFIG_NEED_SG_DMA_LENGTH
# scripts/config --enable CONFIG_NEED_DMA_MAP_STATE
# scripts/config --enable CONFIG_ARCH_DMA_ADDR_T_64BIT
# scripts/config --enable CONFIG_SWIOTLB
# scripts/config --enable CONFIG_SWIOTLB_DYNAMIC
# scripts/config --enable CONFIG_DMA_NEED_SYNC
# scripts/config --disable CONFIG_DMA_API_DEBUG
# scripts/config --disable CONFIG_DMA_MAP_BENCHMARK
# scripts/config --enable CONFIG_SGL_ALLOC
# scripts/config --enable CONFIG_IOMMU_HELPER
# scripts/config --enable CONFIG_CHECK_SIGNATURE
# scripts/config --enable CONFIG_CPU_RMAP
# scripts/config --enable CONFIG_DQL
# scripts/config --enable CONFIG_GLOB
# scripts/config --disable CONFIG_GLOB_SELFTEST
# scripts/config --enable CONFIG_NLATTR
# scripts/config --set-val CONFIG_LRU_CACHE m
# scripts/config --enable CONFIG_CLZ_TAB
# scripts/config --enable CONFIG_IRQ_POLL
# scripts/config --enable CONFIG_MPILIB
# scripts/config --enable CONFIG_SIGNATURE
# scripts/config --enable CONFIG_DIMLIB
# scripts/config --enable CONFIG_OID_REGISTRY
# scripts/config --enable CONFIG_UCS2_STRING
# scripts/config --enable CONFIG_HAVE_GENERIC_VDSO
# scripts/config --enable CONFIG_GENERIC_GETTIMEOFDAY
# scripts/config --enable CONFIG_GENERIC_VDSO_TIME_NS
# scripts/config --enable CONFIG_GENERIC_VDSO_OVERFLOW_PROTECT
# scripts/config --enable CONFIG_VDSO_GETRANDOM
# scripts/config --enable CONFIG_FONT_SUPPORT
# scripts/config --enable CONFIG_FONT_8x16
# scripts/config --enable CONFIG_FONT_AUTOSELECT
# scripts/config --enable CONFIG_SG_POOL
# scripts/config --enable CONFIG_ARCH_HAS_PMEM_API
# scripts/config --enable CONFIG_MEMREGION
# scripts/config --enable CONFIG_ARCH_HAS_CPU_CACHE_INVALIDATE_MEMREGION
# scripts/config --enable CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE
# scripts/config --enable CONFIG_ARCH_HAS_COPY_MC
# scripts/config --enable CONFIG_ARCH_STACKWALK
# scripts/config --enable CONFIG_STACKDEPOT
# scripts/config --set-val CONFIG_STACKDEPOT_MAX_FRAMES 64
# scripts/config --enable CONFIG_SBITMAP
# scripts/config --set-val CONFIG_PARMAN m
# scripts/config --set-val CONFIG_OBJAGG m
# scripts/config --disable CONFIG_LWQ_TEST
# scripts/config --enable CONFIG_PLDMFW
# scripts/config --enable CONFIG_ASN1_ENCODER
# scripts/config --enable CONFIG_FIRMWARE_TABLE
# scripts/config --enable CONFIG_PRINTK_TIME
# scripts/config --disable CONFIG_PRINTK_CALLER
# scripts/config --disable CONFIG_STACKTRACE_BUILD_ID
# scripts/config --set-val CONFIG_CONSOLE_LOGLEVEL_DEFAULT 7
# scripts/config --set-val CONFIG_CONSOLE_LOGLEVEL_QUIET 3
# scripts/config --set-val CONFIG_MESSAGE_LOGLEVEL_DEFAULT 4
# scripts/config --enable CONFIG_BOOT_PRINTK_DELAY
# scripts/config --enable CONFIG_DYNAMIC_DEBUG
# scripts/config --enable CONFIG_DYNAMIC_DEBUG_CORE
# scripts/config --disable CONFIG_SYMBOLIC_ERRNAME
# scripts/config --enable CONFIG_DEBUG_KERNEL
# scripts/config --enable CONFIG_DEBUG_MISC
# scripts/config --enable CONFIG_DEBUG_INFO
# scripts/config --enable CONFIG_AS_HAS_NON_CONST_ULEB128
# scripts/config --disable CONFIG_DEBUG_INFO_NONE
# scripts/config --disable CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT
# scripts/config --disable CONFIG_DEBUG_INFO_DWARF4
# scripts/config --enable CONFIG_DEBUG_INFO_DWARF5
# scripts/config --disable CONFIG_DEBUG_INFO_REDUCED
# scripts/config --enable CONFIG_DEBUG_INFO_COMPRESSED_NONE
# scripts/config --disable CONFIG_DEBUG_INFO_COMPRESSED_ZLIB
# scripts/config --disable CONFIG_DEBUG_INFO_COMPRESSED_ZSTD
# scripts/config --disable CONFIG_DEBUG_INFO_SPLIT
# scripts/config --enable CONFIG_DEBUG_INFO_BTF
# scripts/config --enable CONFIG_PAHOLE_HAS_SPLIT_BTF
# scripts/config --enable CONFIG_PAHOLE_HAS_BTF_TAG
# scripts/config --enable CONFIG_PAHOLE_HAS_LANG_EXCLUDE
# scripts/config --enable CONFIG_DEBUG_INFO_BTF_MODULES
# scripts/config --disable CONFIG_MODULE_ALLOW_BTF_MISMATCH
# scripts/config --enable CONFIG_GDB_SCRIPTS
# scripts/config --set-val CONFIG_FRAME_WARN 1024
# scripts/config --disable CONFIG_STRIP_ASM_SYMS
# scripts/config --disable CONFIG_HEADERS_INSTALL
# scripts/config --enable CONFIG_SECTION_MISMATCH_WARN_ONLY
# scripts/config --enable CONFIG_OBJTOOL
# scripts/config --disable CONFIG_DEBUG_FORCE_WEAK_PER_CPU
# scripts/config --enable CONFIG_MAGIC_SYSRQ
# scripts/config --set-val CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE 0x01b6
# scripts/config --enable CONFIG_MAGIC_SYSRQ_SERIAL
# scripts/config --set-val CONFIG_MAGIC_SYSRQ_SERIAL_SEQUENCE ""
# scripts/config --enable CONFIG_DEBUG_FS
# scripts/config --enable CONFIG_DEBUG_FS_ALLOW_ALL
# scripts/config --disable CONFIG_DEBUG_FS_DISALLOW_MOUNT
# scripts/config --disable CONFIG_DEBUG_FS_ALLOW_NONE
# scripts/config --enable CONFIG_HAVE_ARCH_KGDB
# scripts/config --disable CONFIG_KGDB
# scripts/config --enable CONFIG_ARCH_HAS_UBSAN
# scripts/config --disable CONFIG_UBSAN
# scripts/config --enable CONFIG_HAVE_ARCH_KCSAN
# scripts/config --enable CONFIG_HAVE_KCSAN_COMPILER
# scripts/config --disable CONFIG_KCSAN
# scripts/config --disable CONFIG_NET_DEV_REFCNT_TRACKER
# scripts/config --disable CONFIG_NET_NS_REFCNT_TRACKER
# scripts/config --disable CONFIG_DEBUG_NET
# scripts/config --disable CONFIG_PAGE_EXTENSION
# scripts/config --disable CONFIG_DEBUG_PAGEALLOC
# scripts/config --enable CONFIG_SLUB_DEBUG
# scripts/config --disable CONFIG_SLUB_DEBUG_ON
# scripts/config --disable CONFIG_PAGE_OWNER
# scripts/config --disable CONFIG_PAGE_TABLE_CHECK
# scripts/config --enable CONFIG_PAGE_POISONING
# scripts/config --disable CONFIG_DEBUG_PAGE_REF
# scripts/config --disable CONFIG_DEBUG_RODATA_TEST
# scripts/config --enable CONFIG_ARCH_HAS_DEBUG_WX
# scripts/config --enable CONFIG_DEBUG_WX
# scripts/config --enable CONFIG_GENERIC_PTDUMP
# scripts/config --enable CONFIG_PTDUMP_CORE
# scripts/config --disable CONFIG_PTDUMP_DEBUGFS
# scripts/config --enable CONFIG_HAVE_DEBUG_KMEMLEAK
# scripts/config --disable CONFIG_DEBUG_KMEMLEAK
# scripts/config --disable CONFIG_PER_VMA_LOCK_STATS
# scripts/config --disable CONFIG_DEBUG_OBJECTS
# scripts/config --disable CONFIG_SHRINKER_DEBUG
# scripts/config --disable CONFIG_DEBUG_STACK_USAGE
# scripts/config --enable CONFIG_SCHED_STACK_END_CHECK
# scripts/config --enable CONFIG_ARCH_HAS_DEBUG_VM_PGTABLE
# scripts/config --disable CONFIG_DEBUG_VM
# scripts/config --disable CONFIG_DEBUG_VM_PGTABLE
# scripts/config --enable CONFIG_ARCH_HAS_DEBUG_VIRTUAL
# scripts/config --disable CONFIG_DEBUG_VIRTUAL
# scripts/config --enable CONFIG_DEBUG_MEMORY_INIT
# scripts/config --set-val CONFIG_MEMORY_NOTIFIER_ERROR_INJECT m
# scripts/config --disable CONFIG_DEBUG_PER_CPU_MAPS
# scripts/config --enable CONFIG_ARCH_SUPPORTS_KMAP_LOCAL_FORCE_MAP
# scripts/config --disable CONFIG_DEBUG_KMAP_LOCAL_FORCE_MAP
# scripts/config --disable CONFIG_MEM_ALLOC_PROFILING
# scripts/config --enable CONFIG_HAVE_ARCH_KASAN
# scripts/config --enable CONFIG_HAVE_ARCH_KASAN_VMALLOC
# scripts/config --enable CONFIG_CC_HAS_KASAN_GENERIC
# scripts/config --enable CONFIG_CC_HAS_KASAN_SW_TAGS
# scripts/config --enable CONFIG_CC_HAS_WORKING_NOSANITIZE_ADDRESS
# scripts/config --disable CONFIG_KASAN
# scripts/config --enable CONFIG_HAVE_ARCH_KFENCE
# scripts/config --enable CONFIG_KFENCE
# scripts/config --set-val CONFIG_KFENCE_SAMPLE_INTERVAL 0
# scripts/config --set-val CONFIG_KFENCE_NUM_OBJECTS 255
# scripts/config --disable CONFIG_KFENCE_DEFERRABLE
# scripts/config --set-val CONFIG_KFENCE_STRESS_TEST_FAULTS 0
# scripts/config --enable CONFIG_HAVE_ARCH_KMSAN
# scripts/config --enable CONFIG_HAVE_KMSAN_COMPILER
# scripts/config --disable CONFIG_KMSAN
# scripts/config --disable CONFIG_DEBUG_SHIRQ
# scripts/config --disable CONFIG_PANIC_ON_OOPS
# scripts/config --set-val CONFIG_PANIC_ON_OOPS_VALUE 0
# scripts/config --set-val CONFIG_PANIC_TIMEOUT 0
# scripts/config --enable CONFIG_LOCKUP_DETECTOR
# scripts/config --enable CONFIG_SOFTLOCKUP_DETECTOR
# scripts/config --disable CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC
# scripts/config --enable CONFIG_HAVE_HARDLOCKUP_DETECTOR_BUDDY
# scripts/config --enable CONFIG_HARDLOCKUP_DETECTOR
# scripts/config --disable CONFIG_HARDLOCKUP_DETECTOR_PREFER_BUDDY
# scripts/config --enable CONFIG_HARDLOCKUP_DETECTOR_PERF
# scripts/config --disable CONFIG_HARDLOCKUP_DETECTOR_BUDDY
# scripts/config --disable CONFIG_HARDLOCKUP_DETECTOR_ARCH
# scripts/config --enable CONFIG_HARDLOCKUP_DETECTOR_COUNTS_HRTIMER
# scripts/config --enable CONFIG_HARDLOCKUP_CHECK_TIMESTAMP
# scripts/config --disable CONFIG_BOOTPARAM_HARDLOCKUP_PANIC
# scripts/config --enable CONFIG_DETECT_HUNG_TASK
# scripts/config --set-val CONFIG_DEFAULT_HUNG_TASK_TIMEOUT 120
# scripts/config --disable CONFIG_BOOTPARAM_HUNG_TASK_PANIC
# scripts/config --disable CONFIG_WQ_WATCHDOG
# scripts/config --disable CONFIG_WQ_CPU_INTENSIVE_REPORT
# scripts/config --disable CONFIG_TEST_LOCKUP
# scripts/config --enable CONFIG_SCHED_DEBUG
# scripts/config --enable CONFIG_SCHED_INFO
# scripts/config --enable CONFIG_SCHEDSTATS
# scripts/config --disable CONFIG_DEBUG_PREEMPT
# scripts/config --enable CONFIG_LOCK_DEBUGGING_SUPPORT
# scripts/config --disable CONFIG_PROVE_LOCKING
# scripts/config --disable CONFIG_LOCK_STAT
# scripts/config --disable CONFIG_DEBUG_RT_MUTEXES
# scripts/config --disable CONFIG_DEBUG_SPINLOCK
# scripts/config --disable CONFIG_DEBUG_MUTEXES
# scripts/config --disable CONFIG_DEBUG_WW_MUTEX_SLOWPATH
# scripts/config --disable CONFIG_DEBUG_RWSEMS
# scripts/config --disable CONFIG_DEBUG_LOCK_ALLOC
# scripts/config --disable CONFIG_DEBUG_ATOMIC_SLEEP
# scripts/config --disable CONFIG_DEBUG_LOCKING_API_SELFTESTS
# scripts/config --disable CONFIG_LOCK_TORTURE_TEST
# scripts/config --disable CONFIG_WW_MUTEX_SELFTEST
# scripts/config --disable CONFIG_SCF_TORTURE_TEST
# scripts/config --disable CONFIG_CSD_LOCK_WAIT_DEBUG
# scripts/config --disable CONFIG_NMI_CHECK_CPU
# scripts/config --disable CONFIG_DEBUG_IRQFLAGS
# scripts/config --enable CONFIG_STACKTRACE
# scripts/config --disable CONFIG_WARN_ALL_UNSEEDED_RANDOM
# scripts/config --disable CONFIG_DEBUG_KOBJECT
# scripts/config --disable CONFIG_DEBUG_LIST
# scripts/config --disable CONFIG_DEBUG_PLIST
# scripts/config --disable CONFIG_DEBUG_SG
# scripts/config --disable CONFIG_DEBUG_NOTIFIERS
# scripts/config --disable CONFIG_DEBUG_CLOSURES
# scripts/config --disable CONFIG_DEBUG_MAPLE_TREE
# scripts/config --disable CONFIG_RCU_SCALE_TEST
# scripts/config --disable CONFIG_RCU_TORTURE_TEST
# scripts/config --disable CONFIG_RCU_REF_SCALE_TEST
# scripts/config --set-val CONFIG_RCU_CPU_STALL_TIMEOUT 21
# scripts/config --set-val CONFIG_RCU_EXP_CPU_STALL_TIMEOUT 0
# scripts/config --disable CONFIG_RCU_CPU_STALL_CPUTIME
# scripts/config --disable CONFIG_RCU_CPU_STALL_NOTIFIER
# scripts/config --disable CONFIG_RCU_TRACE
# scripts/config --disable CONFIG_RCU_EQS_DEBUG
# scripts/config --disable CONFIG_DEBUG_WQ_FORCE_RR_CPU
# scripts/config --disable CONFIG_CPU_HOTPLUG_STATE_CONTROL
# scripts/config --disable CONFIG_LATENCYTOP
# scripts/config --enable CONFIG_USER_STACKTRACE_SUPPORT
# scripts/config --enable CONFIG_NOP_TRACER
# scripts/config --enable CONFIG_HAVE_RETHOOK
# scripts/config --enable CONFIG_RETHOOK
# scripts/config --enable CONFIG_HAVE_FUNCTION_TRACER
# scripts/config --enable CONFIG_HAVE_FUNCTION_GRAPH_TRACER
# scripts/config --enable CONFIG_HAVE_FUNCTION_GRAPH_RETVAL
# scripts/config --enable CONFIG_HAVE_DYNAMIC_FTRACE
# scripts/config --enable CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS
# scripts/config --enable CONFIG_HAVE_DYNAMIC_FTRACE_WITH_DIRECT_CALLS
# scripts/config --enable CONFIG_HAVE_DYNAMIC_FTRACE_WITH_ARGS
# scripts/config --enable CONFIG_HAVE_DYNAMIC_FTRACE_NO_PATCHABLE
# scripts/config --enable CONFIG_HAVE_FTRACE_MCOUNT_RECORD
# scripts/config --enable CONFIG_HAVE_SYSCALL_TRACEPOINTS
# scripts/config --enable CONFIG_HAVE_FENTRY
# scripts/config --enable CONFIG_HAVE_OBJTOOL_MCOUNT
# scripts/config --enable CONFIG_HAVE_OBJTOOL_NOP_MCOUNT
# scripts/config --enable CONFIG_HAVE_C_RECORDMCOUNT
# scripts/config --enable CONFIG_HAVE_BUILDTIME_MCOUNT_SORT
# scripts/config --enable CONFIG_BUILDTIME_MCOUNT_SORT
# scripts/config --enable CONFIG_TRACER_MAX_TRACE
# scripts/config --enable CONFIG_TRACE_CLOCK
# scripts/config --enable CONFIG_RING_BUFFER
# scripts/config --enable CONFIG_EVENT_TRACING
# scripts/config --enable CONFIG_CONTEXT_SWITCH_TRACER
# scripts/config --enable CONFIG_TRACING
# scripts/config --enable CONFIG_GENERIC_TRACER
# scripts/config --enable CONFIG_TRACING_SUPPORT
# scripts/config --enable CONFIG_FTRACE
# scripts/config --disable CONFIG_BOOTTIME_TRACING
# scripts/config --enable CONFIG_FUNCTION_TRACER
# scripts/config --enable CONFIG_FUNCTION_GRAPH_TRACER
# scripts/config --disable CONFIG_FUNCTION_GRAPH_RETVAL
# scripts/config --enable CONFIG_DYNAMIC_FTRACE
# scripts/config --enable CONFIG_DYNAMIC_FTRACE_WITH_REGS
# scripts/config --enable CONFIG_DYNAMIC_FTRACE_WITH_DIRECT_CALLS
# scripts/config --enable CONFIG_DYNAMIC_FTRACE_WITH_ARGS
# scripts/config --enable CONFIG_FPROBE
# scripts/config --disable CONFIG_FUNCTION_PROFILER
# scripts/config --enable CONFIG_STACK_TRACER
# scripts/config --disable CONFIG_IRQSOFF_TRACER
# scripts/config --disable CONFIG_PREEMPT_TRACER
# scripts/config --disable CONFIG_SCHED_TRACER
# scripts/config --disable CONFIG_HWLAT_TRACER
# scripts/config --disable CONFIG_OSNOISE_TRACER
# scripts/config --disable CONFIG_TIMERLAT_TRACER
# scripts/config --enable CONFIG_MMIOTRACE
# scripts/config --enable CONFIG_FTRACE_SYSCALLS
# scripts/config --enable CONFIG_TRACER_SNAPSHOT
# scripts/config --disable CONFIG_TRACER_SNAPSHOT_PER_CPU_SWAP
# scripts/config --enable CONFIG_BRANCH_PROFILE_NONE
# scripts/config --disable CONFIG_PROFILE_ANNOTATED_BRANCHES
# scripts/config --enable CONFIG_BLK_DEV_IO_TRACE
# scripts/config --enable CONFIG_FPROBE_EVENTS
# scripts/config --enable CONFIG_PROBE_EVENTS_BTF_ARGS
# scripts/config --enable CONFIG_UPROBE_EVENTS
# scripts/config --enable CONFIG_BPF_EVENTS
# scripts/config --enable CONFIG_DYNAMIC_EVENTS
# scripts/config --enable CONFIG_PROBE_EVENTS
# scripts/config --enable CONFIG_FTRACE_MCOUNT_RECORD
# scripts/config --enable CONFIG_FTRACE_MCOUNT_USE_OBJTOOL
# scripts/config --enable CONFIG_TRACING_MAP
# scripts/config --enable CONFIG_SYNTH_EVENTS
# scripts/config --disable CONFIG_USER_EVENTS
# scripts/config --enable CONFIG_HIST_TRIGGERS
# scripts/config --disable CONFIG_TRACE_EVENT_INJECT
# scripts/config --disable CONFIG_TRACEPOINT_BENCHMARK
# scripts/config --disable CONFIG_RING_BUFFER_BENCHMARK
# scripts/config --disable CONFIG_TRACE_EVAL_MAP_FILE
# scripts/config --disable CONFIG_FTRACE_RECORD_RECURSION
# scripts/config --disable CONFIG_FTRACE_VALIDATE_RCU_IS_WATCHING
# scripts/config --disable CONFIG_FTRACE_STARTUP_TEST
# scripts/config --disable CONFIG_FTRACE_SORT_STARTUP_TEST
# scripts/config --disable CONFIG_RING_BUFFER_STARTUP_TEST
# scripts/config --disable CONFIG_RING_BUFFER_VALIDATE_TIME_DELTAS
# scripts/config --disable CONFIG_MMIOTRACE_TEST
# scripts/config --disable CONFIG_PREEMPTIRQ_DELAY_TEST
# scripts/config --disable CONFIG_SYNTH_EVENT_GEN_TEST
# scripts/config --disable CONFIG_HIST_TRIGGERS_DEBUG
# scripts/config --disable CONFIG_RV
# scripts/config --disable CONFIG_PROVIDE_OHCI1394_DMA_INIT
# scripts/config --disable CONFIG_SAMPLES
# scripts/config --enable CONFIG_HAVE_SAMPLE_FTRACE_DIRECT
# scripts/config --enable CONFIG_HAVE_SAMPLE_FTRACE_DIRECT_MULTI
# scripts/config --enable CONFIG_ARCH_HAS_DEVMEM_IS_ALLOWED
# scripts/config --enable CONFIG_STRICT_DEVMEM
# scripts/config --disable CONFIG_IO_STRICT_DEVMEM
# scripts/config --disable CONFIG_X86_VERBOSE_BOOTUP
# scripts/config --enable CONFIG_EARLY_PRINTK
# scripts/config --disable CONFIG_EARLY_PRINTK_DBGP
# scripts/config --disable CONFIG_EARLY_PRINTK_USB_XDBC
# scripts/config --disable CONFIG_EFI_PGT_DUMP
# scripts/config --disable CONFIG_DEBUG_TLBFLUSH
# scripts/config --disable CONFIG_IOMMU_DEBUG
# scripts/config --enable CONFIG_HAVE_MMIOTRACE_SUPPORT
# scripts/config --disable CONFIG_X86_DECODER_SELFTEST
# scripts/config --enable CONFIG_IO_DELAY_0X80
# scripts/config --disable CONFIG_IO_DELAY_0XED
# scripts/config --disable CONFIG_IO_DELAY_UDELAY
# scripts/config --disable CONFIG_IO_DELAY_NONE
# scripts/config --disable CONFIG_DEBUG_BOOT_PARAMS
# scripts/config --disable CONFIG_CPA_DEBUG
# scripts/config --disable CONFIG_DEBUG_ENTRY
# scripts/config --disable CONFIG_DEBUG_NMI_SELFTEST
# scripts/config --enable CONFIG_X86_DEBUG_FPU
# scripts/config --disable CONFIG_PUNIT_ATOM_DEBUG
# scripts/config --enable CONFIG_UNWINDER_ORC
# scripts/config --disable CONFIG_UNWINDER_FRAME_POINTER
# scripts/config --disable CONFIG_KUNIT
# scripts/config --set-val CONFIG_NOTIFIER_ERROR_INJECTION m
# scripts/config --set-val CONFIG_PM_NOTIFIER_ERROR_INJECT m
# scripts/config --disable CONFIG_NETDEV_NOTIFIER_ERROR_INJECT
# scripts/config --disable CONFIG_FAULT_INJECTION
# scripts/config --enable CONFIG_ARCH_HAS_KCOV
# scripts/config --enable CONFIG_CC_HAS_SANCOV_TRACE_PC
# scripts/config --disable CONFIG_KCOV
# scripts/config --enable CONFIG_RUNTIME_TESTING_MENU
# scripts/config --disable CONFIG_TEST_DHRY
# scripts/config --disable CONFIG_LKDTM
# scripts/config --disable CONFIG_TEST_MIN_HEAP
# scripts/config --disable CONFIG_TEST_DIV64
# scripts/config --set-val CONFIG_TEST_MULDIV64 m
# scripts/config --disable CONFIG_BACKTRACE_SELF_TEST
# scripts/config --disable CONFIG_TEST_REF_TRACKER
# scripts/config --disable CONFIG_RBTREE_TEST
# scripts/config --disable CONFIG_REED_SOLOMON_TEST
# scripts/config --disable CONFIG_INTERVAL_TREE_TEST
# scripts/config --disable CONFIG_PERCPU_TEST
# scripts/config --disable CONFIG_ATOMIC64_SELFTEST
# scripts/config --disable CONFIG_ASYNC_RAID6_TEST
# scripts/config --disable CONFIG_TEST_HEXDUMP
# scripts/config --disable CONFIG_TEST_KSTRTOX
# scripts/config --disable CONFIG_TEST_PRINTF
# scripts/config --disable CONFIG_TEST_SCANF
# scripts/config --disable CONFIG_TEST_BITMAP
# scripts/config --disable CONFIG_TEST_UUID
# scripts/config --disable CONFIG_TEST_XARRAY
# scripts/config --disable CONFIG_TEST_MAPLE_TREE
# scripts/config --disable CONFIG_TEST_RHASHTABLE
# scripts/config --disable CONFIG_TEST_IDA
# scripts/config --disable CONFIG_TEST_PARMAN
# scripts/config --disable CONFIG_TEST_LKM
# scripts/config --disable CONFIG_TEST_BITOPS
# scripts/config --disable CONFIG_TEST_VMALLOC
# scripts/config --set-val CONFIG_TEST_BPF m
# scripts/config --set-val CONFIG_TEST_BLACKHOLE_DEV m
# scripts/config --disable CONFIG_FIND_BIT_BENCHMARK
# scripts/config --set-val CONFIG_TEST_FIRMWARE m
# scripts/config --disable CONFIG_TEST_SYSCTL
# scripts/config --disable CONFIG_TEST_UDELAY
# scripts/config --set-val CONFIG_TEST_STATIC_KEYS m
# scripts/config --disable CONFIG_TEST_DYNAMIC_DEBUG
# scripts/config --disable CONFIG_TEST_KMOD
# scripts/config --disable CONFIG_TEST_MEMCAT_P
# scripts/config --disable CONFIG_TEST_OBJAGG
# scripts/config --disable CONFIG_TEST_MEMINIT
# scripts/config --disable CONFIG_TEST_HMM
# scripts/config --disable CONFIG_TEST_FREE_PAGES
# scripts/config --disable CONFIG_TEST_FPU
# scripts/config --disable CONFIG_TEST_CLOCKSOURCE_WATCHDOG
# scripts/config --disable CONFIG_TEST_OBJPOOL
# scripts/config --enable CONFIG_ARCH_USE_MEMTEST
# scripts/config --enable CONFIG_MEMTEST
# scripts/config --disable CONFIG_HYPERV_TESTING

