#!/usr/bin/env bash
set -e
scripts/config --set-val CONFIG_LOCALVERSION "-x64v2"
scripts/config --enable CONFIG_HAVE_KERNEL_GZIP
scripts/config --enable CONFIG_HAVE_KERNEL_BZIP2
scripts/config --enable CONFIG_HAVE_KERNEL_LZMA
scripts/config --enable CONFIG_HAVE_KERNEL_XZ
scripts/config --enable CONFIG_HAVE_KERNEL_LZO
scripts/config --enable CONFIG_HAVE_KERNEL_LZ4
scripts/config --enable CONFIG_HAVE_KERNEL_ZSTD
scripts/config --enable CONFIG_KERNEL_GZIP
scripts/config --disable CONFIG_KERNEL_BZIP2
scripts/config --disable CONFIG_KERNEL_LZMA
scripts/config --disable CONFIG_KERNEL_XZ
scripts/config --disable CONFIG_KERNEL_LZO
scripts/config --disable CONFIG_KERNEL_LZ4
scripts/config --disable CONFIG_KERNEL_ZSTD
scripts/config --set-val CONFIG_DEFAULT_INIT ""
scripts/config --set-val CONFIG_DEFAULT_HOSTNAME "(none)"
scripts/config --enable CONFIG_SYSVIPC
scripts/config --enable CONFIG_SYSVIPC_SYSCTL
scripts/config --enable CONFIG_SYSVIPC_COMPAT
scripts/config --enable CONFIG_POSIX_MQUEUE
scripts/config --enable CONFIG_POSIX_MQUEUE_SYSCTL
scripts/config --enable CONFIG_WATCH_QUEUE
scripts/config --enable CONFIG_CROSS_MEMORY_ATTACH
scripts/config --disable CONFIG_USELIB

#内核审计（auditd）记录系统调用、权限变化，有相关问题优先恢复

scripts/config --disable CONFIG_AUDIT
scripts/config --disable CONFIG_HAVE_ARCH_AUDITSYSCALL
scripts/config --disable CONFIG_AUDITSYSCALL

#
# IRQ subsystem
#
scripts/config --enable CONFIG_GENERIC_IRQ_PROBE
scripts/config --enable CONFIG_GENERIC_IRQ_SHOW
scripts/config --enable CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK
scripts/config --enable CONFIG_GENERIC_PENDING_IRQ
scripts/config --enable CONFIG_GENERIC_IRQ_MIGRATION
scripts/config --enable CONFIG_HARDIRQS_SW_RESEND
scripts/config --enable CONFIG_IRQ_DOMAIN
scripts/config --enable CONFIG_IRQ_DOMAIN_HIERARCHY
scripts/config --enable CONFIG_GENERIC_MSI_IRQ
scripts/config --disable CONFIG_IRQ_MSI_IOMMU
scripts/config --enable CONFIG_GENERIC_IRQ_MATRIX_ALLOCATOR
scripts/config --enable CONFIG_GENERIC_IRQ_RESERVATION_MODE
scripts/config --disable CONFIG_IRQ_FORCED_THREADING
scripts/config --enable CONFIG_SPARSE_IRQ
scripts/config --disable CONFIG_GENERIC_IRQ_DEBUGFS
# end of IRQ subsystem

#
#（已优化）
#
scripts/config --enable CONFIG_CLOCKSOURCE_WATCHDOG
scripts/config --enable CONFIG_ARCH_CLOCKSOURCE_INIT
scripts/config --enable CONFIG_GENERIC_TIME_VSYSCALL
scripts/config --enable CONFIG_GENERIC_CLOCKEVENTS
scripts/config --enable CONFIG_GENERIC_CLOCKEVENTS_BROADCAST
scripts/config --enable CONFIG_GENERIC_CLOCKEVENTS_BROADCAST_IDLE
scripts/config --enable CONFIG_GENERIC_CLOCKEVENTS_MIN_ADJUST
scripts/config --enable CONFIG_GENERIC_CMOS_UPDATE
scripts/config --enable CONFIG_HAVE_POSIX_CPU_TIMERS_TASK_WORK
scripts/config --enable CONFIG_POSIX_CPU_TIMERS_TASK_WORK
scripts/config --disable CONFIG_CONTEXT_TRACKING
scripts/config --disable CONFIG_CONTEXT_TRACKING_IDLE

#
# Timers subsystem （已优化）
#
scripts/config --disable CONFIG_TICK_ONESHOT
scripts/config --disable CONFIG_NO_HZ_COMMON
scripts/config --enable CONFIG_HZ_PERIODIC
scripts/config --disable CONFIG_NO_HZ_IDLE
scripts/config --disable CONFIG_NO_HZ_FULL
scripts/config --disable CONFIG_NO_HZ
scripts/config --enable CONFIG_HIGH_RES_TIMERS
scripts/config --set-val CONFIG_CLOCKSOURCE_WATCHDOG_MAX_SKEW_US 500
# end of Timers subsystem


#
# BPF subsystem
#
scripts/config --enable CONFIG_BPF
scripts/config --enable CONFIG_HAVE_EBPF_JIT
scripts/config --enable CONFIG_ARCH_WANT_DEFAULT_BPF_JIT
scripts/config --enable CONFIG_BPF_SYSCALL
scripts/config --enable CONFIG_BPF_JIT
scripts/config --enable CONFIG_BPF_JIT_ALWAYS_ON
scripts/config --enable CONFIG_BPF_JIT_DEFAULT_ON
scripts/config --enable CONFIG_BPF_UNPRIV_DEFAULT_OFF
scripts/config --disable CONFIG_BPF_PRELOAD
scripts/config --disable CONFIG_BPF_LSM
# Enable full eBPF observability: BTF + perf/tracing hooks are configured below;
# kprobes are required for bpftrace/bcc/libbpf kprobe programs.
scripts/config --enable CONFIG_KPROBES
# end of BPF subsystem

scripts/config --enable CONFIG_PREEMPT_BUILD
scripts/config --disable CONFIG_PREEMPT_NONE
scripts/config --disable CONFIG_PREEMPT_VOLUNTARY
scripts/config --enable CONFIG_PREEMPT
scripts/config --enable CONFIG_PREEMPT_COUNT
scripts/config --enable CONFIG_PREEMPTION
scripts/config --disable CONFIG_PREEMPT_DYNAMIC
scripts/config --disable CONFIG_SCHED_CORE
scripts/config --enable CONFIG_SCHED_CLASS_EXT

#
# CPU/Task time and stats accounting （待定）
#
scripts/config --enable CONFIG_TICK_CPU_ACCOUNTING
scripts/config --disable CONFIG_VIRT_CPU_ACCOUNTING_GEN
scripts/config --disable CONFIG_IRQ_TIME_ACCOUNTING
scripts/config --disable CONFIG_BSD_PROCESS_ACCT
scripts/config --disable CONFIG_TASKSTATS
scripts/config --disable CONFIG_PSI
# end of CPU/Task time and stats accounting

scripts/config --disable CONFIG_CPU_ISOLATION

#
# RCU Subsystem
#
scripts/config --enable CONFIG_TREE_RCU
scripts/config --enable CONFIG_PREEMPT_RCU
scripts/config --enable CONFIG_RCU_EXPERT
scripts/config --enable CONFIG_TREE_SRCU
scripts/config --enable CONFIG_TASKS_RCU_GENERIC
scripts/config --disable CONFIG_FORCE_TASKS_RCU
scripts/config --enable CONFIG_NEED_TASKS_RCU
scripts/config --enable CONFIG_TASKS_RCU
scripts/config --disable CONFIG_FORCE_TASKS_RUDE_RCU
scripts/config --enable CONFIG_TASKS_RUDE_RCU
scripts/config --disable CONFIG_FORCE_TASKS_TRACE_RCU
scripts/config --enable CONFIG_TASKS_TRACE_RCU
scripts/config --enable CONFIG_RCU_STALL_COMMON
scripts/config --enable CONFIG_RCU_NEED_SEGCBLIST
scripts/config --set-val CONFIG_RCU_FANOUT 64
scripts/config --set-val CONFIG_RCU_FANOUT_LEAF 16
scripts/config --enable CONFIG_RCU_BOOST
scripts/config --set-val CONFIG_RCU_BOOST_DELAY 0
scripts/config --enable CONFIG_RCU_EXP_KTHREAD
scripts/config --enable CONFIG_RCU_NOCB_CPU
scripts/config --disable CONFIG_TASKS_TRACE_RCU_READ_MB
scripts/config --disable CONFIG_RCU_DOUBLE_CHECK_CB_TIME
# end of RCU Subsystem

scripts/config --disable CONFIG_IKCONFIG
scripts/config --disable CONFIG_IKHEADERS
scripts/config --set-val CONFIG_LOG_BUF_SHIFT 17
scripts/config --set-val CONFIG_LOG_CPU_MAX_BUF_SHIFT 12
scripts/config --disable CONFIG_PRINTK_INDEX
scripts/config --enable CONFIG_HAVE_UNSTABLE_SCHED_CLOCK

#
# Scheduler features
#
# end of Scheduler features

scripts/config --enable CONFIG_ARCH_SUPPORTS_NUMA_BALANCING
scripts/config --enable CONFIG_ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH
scripts/config --enable CONFIG_CC_HAS_INT128
scripts/config --set-val CONFIG_CC_IMPLICIT_FALLTHROUGH "-Wimplicit-fallthrough"
scripts/config --enable CONFIG_GCC10_NO_ARRAY_BOUNDS
scripts/config --enable CONFIG_GCC_NO_STRINGOP_OVERFLOW
scripts/config --enable CONFIG_ARCH_SUPPORTS_INT128
scripts/config --disable CONFIG_NUMA_BALANCING
scripts/config --enable CONFIG_SLAB_OBJ_EXT
scripts/config --enable CONFIG_CGROUPS
scripts/config --enable CONFIG_PAGE_COUNTER
scripts/config --disable CONFIG_CGROUP_FAVOR_DYNMODS
scripts/config --enable CONFIG_MEMCG
scripts/config --disable CONFIG_MEMCG_V1
scripts/config --enable CONFIG_BLK_CGROUP
scripts/config --enable CONFIG_CGROUP_WRITEBACK
scripts/config --enable CONFIG_CGROUP_SCHED
scripts/config --enable CONFIG_GROUP_SCHED_WEIGHT
scripts/config --enable CONFIG_FAIR_GROUP_SCHED
scripts/config --enable CONFIG_CFS_BANDWIDTH
scripts/config --disable CONFIG_RT_GROUP_SCHED
scripts/config --enable CONFIG_EXT_GROUP_SCHED
scripts/config --enable CONFIG_SCHED_MM_CID
scripts/config --enable CONFIG_CGROUP_PIDS
scripts/config --enable CONFIG_CGROUP_RDMA
scripts/config --enable CONFIG_CGROUP_FREEZER
scripts/config --enable CONFIG_CGROUP_HUGETLB
scripts/config --enable CONFIG_CPUSETS
scripts/config --disable CONFIG_CPUSETS_V1
scripts/config --enable CONFIG_PROC_PID_CPUSET
scripts/config --enable CONFIG_CGROUP_DEVICE
scripts/config --enable CONFIG_CGROUP_CPUACCT
scripts/config --enable CONFIG_CGROUP_PERF
scripts/config --enable CONFIG_CGROUP_BPF
scripts/config --enable CONFIG_CGROUP_MISC
scripts/config --disable CONFIG_CGROUP_DEBUG
scripts/config --enable CONFIG_SOCK_CGROUP_DATA
scripts/config --enable CONFIG_NAMESPACES
scripts/config --enable CONFIG_UTS_NS
scripts/config --enable CONFIG_TIME_NS
scripts/config --enable CONFIG_IPC_NS
scripts/config --enable CONFIG_USER_NS
scripts/config --enable CONFIG_PID_NS
scripts/config --enable CONFIG_NET_NS
scripts/config --disable CONFIG_CHECKPOINT_RESTORE
scripts/config --enable CONFIG_SCHED_AUTOGROUP
scripts/config --enable CONFIG_SCHED_AUTOGROUP_DEFAULT_ENABLED
scripts/config --enable CONFIG_RELAY
scripts/config --enable CONFIG_BLK_DEV_INITRD
scripts/config --set-val CONFIG_INITRAMFS_SOURCE ""
scripts/config --enable CONFIG_RD_GZIP
scripts/config --disable CONFIG_RD_BZIP2
scripts/config --disable CONFIG_RD_LZMA
scripts/config --disable CONFIG_RD_XZ
scripts/config --disable CONFIG_RD_LZO
scripts/config --enable CONFIG_RD_LZ4
scripts/config --enable CONFIG_RD_ZSTD
scripts/config --enable CONFIG_BOOT_CONFIG
scripts/config --disable CONFIG_BOOT_CONFIG_FORCE
scripts/config --disable CONFIG_BOOT_CONFIG_EMBED
scripts/config --enable CONFIG_INITRAMFS_PRESERVE_MTIME
scripts/config --enable CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE
scripts/config --disable CONFIG_CC_OPTIMIZE_FOR_SIZE
scripts/config --enable CONFIG_LD_ORPHAN_WARN
scripts/config --set-val CONFIG_LD_ORPHAN_WARN_LEVEL "warn"
scripts/config --enable CONFIG_SYSCTL
scripts/config --enable CONFIG_HAVE_UID16
scripts/config --enable CONFIG_SYSCTL_EXCEPTION_TRACE
scripts/config --disable CONFIG_HAVE_PCSPKR_PLATFORM
scripts/config --disable CONFIG_EXPERT
scripts/config --enable CONFIG_UID16
scripts/config --enable CONFIG_MULTIUSER
scripts/config --enable CONFIG_SGETMASK_SYSCALL
scripts/config --enable CONFIG_SYSFS_SYSCALL
scripts/config --enable CONFIG_FHANDLE
scripts/config --enable CONFIG_POSIX_TIMERS
scripts/config --enable CONFIG_PRINTK
scripts/config --enable CONFIG_BUG
scripts/config --enable CONFIG_ELF_CORE
scripts/config --enable CONFIG_PCSPKR_PLATFORM
scripts/config --enable CONFIG_FUTEX
scripts/config --enable CONFIG_FUTEX_PI
scripts/config --enable CONFIG_EPOLL
scripts/config --enable CONFIG_SIGNALFD
scripts/config --enable CONFIG_TIMERFD
scripts/config --enable CONFIG_EVENTFD
scripts/config --enable CONFIG_SHMEM
scripts/config --enable CONFIG_AIO
scripts/config --enable CONFIG_IO_URING
scripts/config --enable CONFIG_ADVISE_SYSCALLS
scripts/config --enable CONFIG_MEMBARRIER
scripts/config --enable CONFIG_RSEQ
scripts/config --enable CONFIG_CACHESTAT_SYSCALL
scripts/config --enable CONFIG_KALLSYMS
scripts/config --disable CONFIG_KALLSYMS_SELFTEST
scripts/config --disable CONFIG_KALLSYMS_ALL
scripts/config --enable CONFIG_KALLSYMS_ABSOLUTE_PERCPU
scripts/config --enable CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE
scripts/config --enable CONFIG_HAVE_PERF_EVENTS
scripts/config --enable CONFIG_GUEST_PERF_EVENTS

#
# Kernel Performance Events And Counters
#
scripts/config --enable CONFIG_PERF_EVENTS
scripts/config --disable CONFIG_DEBUG_PERF_USE_VMALLOC
# end of Kernel Performance Events And Counters

scripts/config --enable CONFIG_SYSTEM_DATA_VERIFICATION
scripts/config --disable CONFIG_PROFILING
scripts/config --enable CONFIG_TRACEPOINTS

#
# Kexec and crash features
#
scripts/config --enable CONFIG_VMCORE_INFO
scripts/config --disable CONFIG_KEXEC
scripts/config --disable CONFIG_KEXEC_FILE
# end of Kexec and crash features
# end of General setup

scripts/config --enable CONFIG_64BIT
scripts/config --enable CONFIG_X86_64
scripts/config --enable CONFIG_X86
scripts/config --enable CONFIG_INSTRUCTION_DECODER
scripts/config --set-val CONFIG_OUTPUT_FORMAT "elf64-x86-64"
scripts/config --enable CONFIG_LOCKDEP_SUPPORT
scripts/config --enable CONFIG_STACKTRACE_SUPPORT
scripts/config --enable CONFIG_MMU
scripts/config --set-val CONFIG_ARCH_MMAP_RND_BITS_MIN 28
scripts/config --set-val CONFIG_ARCH_MMAP_RND_BITS_MAX 32
scripts/config --set-val CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN 8
scripts/config --set-val CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX 16
scripts/config --enable CONFIG_GENERIC_ISA_DMA
scripts/config --enable CONFIG_GENERIC_BUG
scripts/config --enable CONFIG_GENERIC_BUG_RELATIVE_POINTERS
scripts/config --disable CONFIG_ARCH_MAY_HAVE_PC_FDC
scripts/config --enable CONFIG_GENERIC_CALIBRATE_DELAY
scripts/config --enable CONFIG_ARCH_HAS_CPU_RELAX
scripts/config --enable CONFIG_ARCH_HIBERNATION_POSSIBLE
scripts/config --enable CONFIG_ARCH_SUSPEND_POSSIBLE
scripts/config --disable CONFIG_AUDIT_ARCH
scripts/config --enable CONFIG_HAVE_INTEL_TXT
scripts/config --enable CONFIG_X86_64_SMP
scripts/config --enable CONFIG_ARCH_SUPPORTS_UPROBES
scripts/config --enable CONFIG_FIX_EARLYCON_MEM
scripts/config --set-val CONFIG_PGTABLE_LEVELS 4
scripts/config --enable CONFIG_CC_HAS_SANE_STACKPROTECTOR

#
# Processor type and features
#
scripts/config --enable CONFIG_SMP
scripts/config --enable CONFIG_X86_X2APIC
scripts/config --disable CONFIG_X86_POSTED_MSI
scripts/config --enable CONFIG_X86_MPPARSE
scripts/config --enable CONFIG_X86_CPU_RESCTRL
scripts/config --enable CONFIG_X86_FRED
scripts/config --enable CONFIG_X86_EXTENDED_PLATFORM
scripts/config --disable CONFIG_X86_VSMP
scripts/config --disable CONFIG_X86_GOLDFISH
scripts/config --disable CONFIG_X86_INTEL_MID
scripts/config --enable CONFIG_X86_INTEL_LPSS
scripts/config --enable CONFIG_X86_AMD_PLATFORM_DEVICE
scripts/config --enable CONFIG_IOSF_MBI
scripts/config --disable CONFIG_IOSF_MBI_DEBUG
scripts/config --enable CONFIG_SCHED_OMIT_FRAME_POINTER
scripts/config --enable CONFIG_HYPERVISOR_GUEST
scripts/config --disable CONFIG_PARAVIRT
scripts/config --disable CONFIG_PARAVIRT_XXL
scripts/config --disable CONFIG_PARAVIRT_DEBUG
scripts/config --enable CONFIG_PARAVIRT_SPINLOCKS
scripts/config --enable CONFIG_X86_HV_CALLBACK_VECTOR
scripts/config --disable CONFIG_XEN
scripts/config --disable CONFIG_XEN_PV
scripts/config --disable CONFIG_XEN_512GB
scripts/config --disable CONFIG_XEN_PV_SMP
scripts/config --disable CONFIG_XEN_PV_DOM0
scripts/config --disable CONFIG_XEN_PVHVM
scripts/config --disable CONFIG_XEN_PVHVM_SMP
scripts/config --disable CONFIG_XEN_PVHVM_GUEST
scripts/config --disable CONFIG_XEN_SAVE_RESTORE
scripts/config --disable CONFIG_XEN_DEBUG_FS
scripts/config --disable CONFIG_XEN_PVH
scripts/config --disable CONFIG_XEN_DOM0
scripts/config --disable CONFIG_XEN_PV_MSR_SAFE
scripts/config --enable CONFIG_KVM_GUEST
scripts/config --disable CONFIG_ARCH_CPUIDLE_HALTPOLL
scripts/config --enable CONFIG_PVH
scripts/config --disable CONFIG_PARAVIRT_TIME_ACCOUNTING
scripts/config --enable CONFIG_PARAVIRT_CLOCK
scripts/config --disable CONFIG_JAILHOUSE_GUEST
scripts/config --disable CONFIG_ACRN_GUEST
scripts/config --disable CONFIG_INTEL_TDX_GUEST
scripts/config --disable CONFIG_MK8
scripts/config --disable CONFIG_MK8SSE3
scripts/config --disable CONFIG_MK10
scripts/config --disable CONFIG_MBARCELONA
scripts/config --disable CONFIG_MBOBCAT
scripts/config --disable CONFIG_MJAGUAR
scripts/config --disable CONFIG_MBULLDOZER
scripts/config --disable CONFIG_MPILEDRIVER
scripts/config --disable CONFIG_MSTEAMROLLER
scripts/config --disable CONFIG_MEXCAVATOR
scripts/config --disable CONFIG_MZEN
scripts/config --disable CONFIG_MZEN2
scripts/config --disable CONFIG_MZEN3
scripts/config --disable CONFIG_MZEN4
scripts/config --disable CONFIG_MZEN5
scripts/config --disable CONFIG_MPSC
scripts/config --disable CONFIG_MATOM
scripts/config --disable CONFIG_MCORE2
scripts/config --disable CONFIG_MNEHALEM
scripts/config --disable CONFIG_MWESTMERE
scripts/config --disable CONFIG_MSILVERMONT
scripts/config --disable CONFIG_MGOLDMONT
scripts/config --disable CONFIG_MGOLDMONTPLUS
scripts/config --disable CONFIG_MSANDYBRIDGE
scripts/config --disable CONFIG_MIVYBRIDGE
scripts/config --disable CONFIG_MHASWELL
scripts/config --disable CONFIG_MBROADWELL
scripts/config --disable CONFIG_MSKYLAKE
scripts/config --disable CONFIG_MSKYLAKEX
scripts/config --disable CONFIG_MCANNONLAKE
scripts/config --disable CONFIG_MICELAKE
scripts/config --disable CONFIG_MCASCADELAKE
scripts/config --disable CONFIG_MCOOPERLAKE
scripts/config --disable CONFIG_MTIGERLAKE
scripts/config --disable CONFIG_MSAPPHIRERAPIDS
scripts/config --disable CONFIG_MROCKETLAKE
scripts/config --disable CONFIG_MALDERLAKE
scripts/config --disable CONFIG_MRAPTORLAKE
scripts/config --disable CONFIG_MMETEORLAKE
scripts/config --disable CONFIG_MEMERALDRAPIDS
scripts/config --enable CONFIG_GENERIC_CPU
scripts/config --disable CONFIG_MNATIVE_INTEL
scripts/config --disable CONFIG_MNATIVE_AMD
scripts/config --set-val CONFIG_X86_64_VERSION 3
scripts/config --set-val CONFIG_X86_INTERNODE_CACHE_SHIFT 6
scripts/config --set-val CONFIG_X86_L1_CACHE_SHIFT 6
scripts/config --enable CONFIG_X86_TSC
scripts/config --enable CONFIG_X86_HAVE_PAE
scripts/config --enable CONFIG_X86_CMPXCHG64
scripts/config --enable CONFIG_X86_CMOV
scripts/config --set-val CONFIG_X86_MINIMUM_CPU_FAMILY 64
scripts/config --enable CONFIG_X86_DEBUGCTLMSR
scripts/config --enable CONFIG_IA32_FEAT_CTL
scripts/config --enable CONFIG_X86_VMX_FEATURE_NAMES
scripts/config --enable CONFIG_CPU_SUP_INTEL
scripts/config --enable CONFIG_CPU_SUP_AMD
scripts/config --enable CONFIG_CPU_SUP_HYGON
scripts/config --enable CONFIG_CPU_SUP_CENTAUR
scripts/config --enable CONFIG_CPU_SUP_ZHAOXIN
scripts/config --enable CONFIG_HPET_TIMER
scripts/config --enable CONFIG_HPET_EMULATE_RTC
scripts/config --enable CONFIG_DMI
scripts/config --enable CONFIG_GART_IOMMU
scripts/config --enable CONFIG_BOOT_VESA_SUPPORT
scripts/config --disable CONFIG_MAXSMP
scripts/config --set-val CONFIG_NR_CPUS_RANGE_BEGIN 2
scripts/config --set-val CONFIG_NR_CPUS_RANGE_END 512
scripts/config --set-val CONFIG_NR_CPUS_DEFAULT 64
scripts/config --set-val CONFIG_NR_CPUS 16
scripts/config --disable CONFIG_SCHED_CLUSTER
scripts/config --enable CONFIG_SCHED_SMT
scripts/config --enable CONFIG_SCHED_MC
scripts/config --enable CONFIG_X86_LOCAL_APIC
scripts/config --enable CONFIG_ACPI_MADT_WAKEUP
scripts/config --enable CONFIG_X86_IO_APIC
scripts/config --enable CONFIG_X86_REROUTE_FOR_BROKEN_BOOT_IRQS
scripts/config --disable CONFIG_X86_MCE

#
# Performance monitoring
#
scripts/config --disable CONFIG_PERF_EVENTS_INTEL_UNCORE
scripts/config --disable CONFIG_PERF_EVENTS_INTEL_RAPL
scripts/config --disable CONFIG_PERF_EVENTS_INTEL_CSTATE
scripts/config --disable CONFIG_PERF_EVENTS_AMD_POWER
scripts/config --disable CONFIG_PERF_EVENTS_AMD_UNCORE
scripts/config --disable CONFIG_PERF_EVENTS_AMD_BRS
# end of Performance monitoring

scripts/config --disable CONFIG_X86_16BIT
scripts/config --enable CONFIG_X86_ESPFIX64
scripts/config --enable CONFIG_X86_VSYSCALL_EMULATION
scripts/config --disable CONFIG_X86_IOPL_IOPERM
scripts/config --enable CONFIG_MICROCODE
scripts/config --disable CONFIG_MICROCODE_LATE_LOADING
scripts/config --module CONFIG_X86_MSR
scripts/config --module CONFIG_X86_CPUID
scripts/config --enable CONFIG_X86_5LEVEL
scripts/config --enable CONFIG_X86_DIRECT_GBPAGES
scripts/config --disable CONFIG_X86_CPA_STATISTICS
scripts/config --disable CONFIG_AMD_MEM_ENCRYPT
scripts/config --enable CONFIG_NUMA
scripts/config --enable CONFIG_AMD_NUMA
scripts/config --enable CONFIG_X86_64_ACPI_NUMA
scripts/config --set-val CONFIG_NODES_SHIFT 10
scripts/config --enable CONFIG_ARCH_SPARSEMEM_ENABLE
scripts/config --enable CONFIG_ARCH_SPARSEMEM_DEFAULT
scripts/config --enable CONFIG_ARCH_MEMORY_PROBE
scripts/config --enable CONFIG_ARCH_PROC_KCORE_TEXT
scripts/config --set-val CONFIG_ILLEGAL_POINTER_VALUE 0xdead000000000000
scripts/config --enable CONFIG_X86_PMEM_LEGACY_DEVICE
scripts/config --enable CONFIG_X86_PMEM_LEGACY
scripts/config --enable CONFIG_X86_CHECK_BIOS_CORRUPTION
scripts/config --enable CONFIG_X86_BOOTPARAM_MEMORY_CORRUPTION_CHECK
scripts/config --enable CONFIG_MTRR
scripts/config --disable CONFIG_MTRR_SANITIZER
scripts/config --enable CONFIG_X86_PAT
scripts/config --enable CONFIG_X86_UMIP
scripts/config --disable CONFIG_CC_HAS_IBT
scripts/config --disable CONFIG_X86_KERNEL_IBT
scripts/config --disable CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS
scripts/config --set-val CONFIG_ARCH_PKEY_BITS 4
scripts/config --enable CONFIG_X86_INTEL_TSX_MODE_OFF
scripts/config --disable CONFIG_X86_INTEL_TSX_MODE_ON
scripts/config --disable CONFIG_X86_INTEL_TSX_MODE_AUTO
scripts/config --disable CONFIG_X86_SGX
scripts/config --disable CONFIG_X86_USER_SHADOW_STACK
scripts/config --enable CONFIG_EFI
scripts/config --enable CONFIG_EFI_STUB
scripts/config --enable CONFIG_EFI_HANDOVER_PROTOCOL
scripts/config --enable CONFIG_EFI_MIXED
scripts/config --disable CONFIG_HZ_100
scripts/config --enable CONFIG_HZ_250
scripts/config --disable CONFIG_HZ_300
scripts/config --disable CONFIG_HZ_500
scripts/config --disable CONFIG_HZ_1000
scripts/config --set-val CONFIG_HZ 250
scripts/config --enable CONFIG_SCHED_HRTICK
scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC
scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC_FILE
scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC_PURGATORY
scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC_SIG
scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC_SIG_FORCE
scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC_BZIMAGE_VERIFY_SIG
scripts/config --enable CONFIG_ARCH_SUPPORTS_KEXEC_JUMP
scripts/config --enable CONFIG_ARCH_SUPPORTS_CRASH_DUMP
scripts/config --enable CONFIG_ARCH_DEFAULT_CRASH_DUMP
scripts/config --enable CONFIG_ARCH_SUPPORTS_CRASH_HOTPLUG
scripts/config --set-val CONFIG_PHYSICAL_START 0x1000000
scripts/config --enable CONFIG_RELOCATABLE
scripts/config --enable CONFIG_RANDOMIZE_BASE
scripts/config --enable CONFIG_X86_NEED_RELOCS
scripts/config --set-val CONFIG_PHYSICAL_ALIGN 0x200000
scripts/config --enable CONFIG_DYNAMIC_MEMORY_LAYOUT
scripts/config --enable CONFIG_RANDOMIZE_MEMORY
scripts/config --set-val CONFIG_RANDOMIZE_MEMORY_PHYSICAL_PADDING 0xa
scripts/config --disable CONFIG_ADDRESS_MASKING
scripts/config --enable CONFIG_HOTPLUG_CPU
scripts/config --disable CONFIG_COMPAT_VDSO
scripts/config --enable CONFIG_LEGACY_VSYSCALL_XONLY
scripts/config --disable CONFIG_LEGACY_VSYSCALL_NONE
scripts/config --disable CONFIG_CMDLINE_BOOL
scripts/config --disable CONFIG_MODIFY_LDT_SYSCALL
scripts/config --disable CONFIG_STRICT_SIGALTSTACK_SIZE
scripts/config --enable CONFIG_HAVE_LIVEPATCH
# end of Processor type and features
#（已优化）
scripts/config --enable CONFIG_CC_HAS_NAMED_AS_FIXED_SANITIZERS
scripts/config --disable CONFIG_CC_HAS_SLS
scripts/config --disable CONFIG_CC_HAS_RETURN_THUNK
scripts/config --disable CONFIG_CC_HAS_ENTRY_PADDING
scripts/config --set-val CONFIG_FUNCTION_PADDING_CFI 0
scripts/config --set-val CONFIG_FUNCTION_PADDING_BYTES 0
scripts/config --disable CONFIG_CPU_MITIGATIONS
scripts/config --enable CONFIG_ARCH_HAS_ADD_PAGES

#
# Power management and ACPI options
#
scripts/config --enable CONFIG_ARCH_HIBERNATION_HEADER
scripts/config --disable CONFIG_SUSPEND
scripts/config --enable CONFIG_HIBERNATE_CALLBACKS
scripts/config --enable CONFIG_HIBERNATION
scripts/config --disable CONFIG_HIBERNATION_SNAPSHOT_DEV
scripts/config --enable CONFIG_HIBERNATION_COMP_LZO
scripts/config --disable CONFIG_HIBERNATION_COMP_LZ4
scripts/config --set-val CONFIG_HIBERNATION_DEF_COMP "lzo"
scripts/config --set-val CONFIG_PM_STD_PARTITION ""
scripts/config --enable CONFIG_PM_SLEEP
scripts/config --enable CONFIG_PM_SLEEP_SMP
scripts/config --disable CONFIG_PM_AUTOSLEEP
scripts/config --disable CONFIG_PM_USERSPACE_AUTOSLEEP
scripts/config --enable CONFIG_PM_WAKELOCKS
scripts/config --set-val CONFIG_PM_WAKELOCKS_LIMIT 100
scripts/config --enable CONFIG_PM_WAKELOCKS_GC
scripts/config --enable CONFIG_PM
scripts/config --disable CONFIG_PM_DEBUG
scripts/config --disable CONFIG_PM_CLK
scripts/config --disable CONFIG_WQ_POWER_EFFICIENT_DEFAULT
scripts/config --enable CONFIG_ARCH_SUPPORTS_ACPI
scripts/config --enable CONFIG_ACPI
scripts/config --enable CONFIG_ACPI_LEGACY_TABLES_LOOKUP
scripts/config --enable CONFIG_ARCH_MIGHT_HAVE_ACPI_PDC
scripts/config --enable CONFIG_ACPI_SYSTEM_POWER_STATES_SUPPORT
scripts/config --enable CONFIG_ACPI_TABLE_LIB
scripts/config --disable CONFIG_ACPI_DEBUGGER
scripts/config --enable CONFIG_ACPI_SPCR_TABLE
scripts/config --enable CONFIG_ACPI_FPDT
scripts/config --enable CONFIG_ACPI_LPIT
scripts/config --enable CONFIG_ACPI_SLEEP
scripts/config --enable CONFIG_ACPI_REV_OVERRIDE_POSSIBLE
scripts/config --module CONFIG_ACPI_EC_DEBUGFS
scripts/config --enable CONFIG_ACPI_AC
scripts/config --disable CONFIG_ACPI_BATTERY
scripts/config --disable CONFIG_ACPI_BUTTON
scripts/config --disable CONFIG_ACPI_TINY_POWER_BUTTON
scripts/config --module CONFIG_ACPI_VIDEO
scripts/config --disable CONFIG_ACPI_FAN
scripts/config --module CONFIG_ACPI_TAD
scripts/config --enable CONFIG_ACPI_DOCK
scripts/config --enable CONFIG_ACPI_CPU_FREQ_PSS
scripts/config --enable CONFIG_ACPI_PROCESSOR_CSTATE
scripts/config --disable CONFIG_ACPI_PROCESSOR_IDLE
scripts/config --enable CONFIG_ACPI_PROCESSOR
scripts/config --enable CONFIG_ACPI_HOTPLUG_CPU
scripts/config --module CONFIG_ACPI_PROCESSOR_AGGREGATOR
scripts/config --disable CONFIG_ACPI_THERMAL
scripts/config --module CONFIG_ACPI_PLATFORM_PROFILE
scripts/config --set-val CONFIG_ACPI_CUSTOM_DSDT_FILE ""
scripts/config --enable CONFIG_ARCH_HAS_ACPI_TABLE_UPGRADE
scripts/config --enable CONFIG_ACPI_TABLE_UPGRADE
scripts/config --enable CONFIG_ACPI_DEBUG
scripts/config --enable CONFIG_ACPI_PCI_SLOT
scripts/config --enable CONFIG_ACPI_CONTAINER
scripts/config --disable CONFIG_ACPI_HOTPLUG_MEMORY
scripts/config --enable CONFIG_ACPI_HOTPLUG_IOAPIC
scripts/config --module CONFIG_ACPI_SBS
scripts/config --enable CONFIG_ACPI_HED
scripts/config --enable CONFIG_ACPI_BGRT
scripts/config --module CONFIG_ACPI_NFIT
scripts/config --disable CONFIG_NFIT_SECURITY_DEBUG
scripts/config --enable CONFIG_ACPI_NUMA
scripts/config --enable CONFIG_ACPI_HMAT
scripts/config --enable CONFIG_HAVE_ACPI_APEI
scripts/config --enable CONFIG_HAVE_ACPI_APEI_NMI
scripts/config --enable CONFIG_ACPI_APEI
scripts/config --enable CONFIG_ACPI_APEI_GHES
scripts/config --enable CONFIG_ACPI_APEI_PCIEAER
scripts/config --module CONFIG_ACPI_APEI_EINJ
scripts/config --enable CONFIG_ACPI_APEI_EINJ_CXL
scripts/config --disable CONFIG_ACPI_APEI_ERST_DEBUG
scripts/config --enable CONFIG_ACPI_DPTF
scripts/config --disable CONFIG_DPTF_POWER
scripts/config --disable CONFIG_DPTF_PCH_FIVR
scripts/config --module CONFIG_ACPI_CONFIGFS
scripts/config --module CONFIG_ACPI_PFRUT
scripts/config --enable CONFIG_ACPI_PCC
scripts/config --enable CONFIG_ACPI_FFH
scripts/config --disable CONFIG_PMIC_OPREGION
scripts/config --disable CONFIG_TPS68470_PMIC_OPREGION
scripts/config --enable CONFIG_ACPI_VIOT
scripts/config --enable CONFIG_ACPI_PRMT
scripts/config --enable CONFIG_X86_PM_TIMER

#
# CPU Frequency scaling
#
scripts/config --disable CONFIG_CPU_FREQ
# end of CPU Frequency scaling

#
# CPU Idle
#
scripts/config --disable CONFIG_CPU_IDLE
scripts/config --disable CONFIG_CPU_IDLE_GOV_LADDER
scripts/config --disable CONFIG_CPU_IDLE_GOV_MENU
scripts/config --disable CONFIG_CPU_IDLE_GOV_TEO
scripts/config --disable CONFIG_CPU_IDLE_GOV_HALTPOLL
scripts/config --disable CONFIG_HALTPOLL_CPUIDLE
# end of CPU Idle

scripts/config --disable CONFIG_INTEL_IDLE
# end of Power management and ACPI options

#
# Bus options (PCI etc.)
#
scripts/config --enable CONFIG_PCI_DIRECT
scripts/config --disable CONFIG_PCI_MMCONFIG
scripts/config --disable CONFIG_PCI_XEN
scripts/config --enable CONFIG_ISA_DMA_API
scripts/config --enable CONFIG_AMD_NB
# end of Bus options (PCI etc.)

#
# Binary Emulations
#
scripts/config --enable CONFIG_IA32_EMULATION
scripts/config --disable CONFIG_IA32_EMULATION_DEFAULT_DISABLED
scripts/config --enable CONFIG_COMPAT_32
scripts/config --enable CONFIG_COMPAT
scripts/config --enable CONFIG_COMPAT_FOR_U64_ALIGNMENT
# end of Binary Emulations

scripts/config --enable CONFIG_KVM_COMMON
scripts/config --enable CONFIG_HAVE_KVM_PFNCACHE
scripts/config --enable CONFIG_HAVE_KVM_IRQCHIP
scripts/config --enable CONFIG_HAVE_KVM_IRQ_ROUTING
scripts/config --enable CONFIG_HAVE_KVM_DIRTY_RING
scripts/config --enable CONFIG_HAVE_KVM_DIRTY_RING_TSO
scripts/config --enable CONFIG_HAVE_KVM_DIRTY_RING_ACQ_REL
scripts/config --enable CONFIG_KVM_MMIO
scripts/config --enable CONFIG_KVM_ASYNC_PF
scripts/config --enable CONFIG_HAVE_KVM_MSI
scripts/config --enable CONFIG_HAVE_KVM_READONLY_MEM
scripts/config --enable CONFIG_HAVE_KVM_CPU_RELAX_INTERCEPT
scripts/config --enable CONFIG_KVM_VFIO
scripts/config --enable CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT
scripts/config --enable CONFIG_KVM_GENERIC_PRE_FAULT_MEMORY
scripts/config --enable CONFIG_KVM_COMPAT
scripts/config --module CONFIG_HAVE_KVM_IRQ_BYPASS
scripts/config --enable CONFIG_HAVE_KVM_NO_POLL
scripts/config --enable CONFIG_KVM_XFER_TO_GUEST_WORK
scripts/config --enable CONFIG_HAVE_KVM_PM_NOTIFIER
scripts/config --enable CONFIG_KVM_GENERIC_HARDWARE_ENABLING
scripts/config --enable CONFIG_KVM_GENERIC_MMU_NOTIFIER
scripts/config --enable CONFIG_KVM_GENERIC_MEMORY_ATTRIBUTES
scripts/config --enable CONFIG_KVM_PRIVATE_MEM
scripts/config --enable CONFIG_KVM_GENERIC_PRIVATE_MEM
scripts/config --enable CONFIG_HAVE_KVM_ARCH_GMEM_PREPARE
scripts/config --enable CONFIG_HAVE_KVM_ARCH_GMEM_INVALIDATE
scripts/config --enable CONFIG_VIRTUALIZATION
scripts/config --module CONFIG_KVM_X86
scripts/config --module CONFIG_KVM
scripts/config --module CONFIG_KVM_INTEL
scripts/config --module CONFIG_KVM_AMD
scripts/config --enable CONFIG_KVM_AMD_SEV
scripts/config --enable CONFIG_KVM_SMM
scripts/config --enable CONFIG_KVM_HYPERV
scripts/config --enable CONFIG_KVM_XEN
scripts/config --set-val CONFIG_KVM_MAX_NR_VCPUS 4096
scripts/config --enable CONFIG_AS_AVX512
scripts/config --enable CONFIG_AS_SHA1_NI
scripts/config --enable CONFIG_AS_SHA256_NI
scripts/config --enable CONFIG_AS_TPAUSE
scripts/config --enable CONFIG_AS_GFNI
scripts/config --enable CONFIG_AS_VAES
scripts/config --enable CONFIG_AS_VPCLMULQDQ
scripts/config --enable CONFIG_AS_WRUSS
scripts/config --enable CONFIG_ARCH_CONFIGURES_CPU_MITIGATIONS
scripts/config --enable CONFIG_ARCH_HAS_DMA_OPS

#
# General architecture-dependent options (已关闭栈保护)
#
scripts/config --enable CONFIG_HOTPLUG_SMT
scripts/config --enable CONFIG_HOTPLUG_CORE_SYNC
scripts/config --enable CONFIG_HOTPLUG_CORE_SYNC_DEAD
scripts/config --enable CONFIG_HOTPLUG_CORE_SYNC_FULL
scripts/config --enable CONFIG_HOTPLUG_SPLIT_STARTUP
scripts/config --enable CONFIG_HOTPLUG_PARALLEL
scripts/config --enable CONFIG_GENERIC_ENTRY
scripts/config --enable CONFIG_KPROBES
scripts/config --enable CONFIG_JUMP_LABEL
scripts/config --disable CONFIG_STATIC_KEYS_SELFTEST
scripts/config --disable CONFIG_STATIC_CALL_SELFTEST
scripts/config --enable CONFIG_UPROBES
scripts/config --enable CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
scripts/config --enable CONFIG_ARCH_USE_BUILTIN_BSWAP
scripts/config --enable CONFIG_USER_RETURN_NOTIFIER
scripts/config --enable CONFIG_HAVE_IOREMAP_PROT
scripts/config --enable CONFIG_HAVE_KPROBES
scripts/config --enable CONFIG_HAVE_KRETPROBES
scripts/config --enable CONFIG_HAVE_OPTPROBES
scripts/config --enable CONFIG_HAVE_KPROBES_ON_FTRACE
scripts/config --enable CONFIG_ARCH_CORRECT_STACKTRACE_ON_KRETPROBE
scripts/config --enable CONFIG_HAVE_FUNCTION_ERROR_INJECTION
scripts/config --enable CONFIG_HAVE_NMI
scripts/config --enable CONFIG_TRACE_IRQFLAGS_SUPPORT
scripts/config --enable CONFIG_TRACE_IRQFLAGS_NMI_SUPPORT
scripts/config --enable CONFIG_HAVE_ARCH_TRACEHOOK
scripts/config --enable CONFIG_HAVE_DMA_CONTIGUOUS
scripts/config --enable CONFIG_GENERIC_SMP_IDLE_THREAD
scripts/config --enable CONFIG_ARCH_HAS_FORTIFY_SOURCE
scripts/config --enable CONFIG_ARCH_HAS_SET_MEMORY
scripts/config --enable CONFIG_ARCH_HAS_SET_DIRECT_MAP
scripts/config --enable CONFIG_ARCH_HAS_CPU_FINALIZE_INIT
scripts/config --enable CONFIG_ARCH_HAS_CPU_PASID
scripts/config --enable CONFIG_HAVE_ARCH_THREAD_STRUCT_WHITELIST
scripts/config --enable CONFIG_ARCH_WANTS_DYNAMIC_TASK_STRUCT
scripts/config --enable CONFIG_ARCH_WANTS_NO_INSTR
scripts/config --enable CONFIG_HAVE_ASM_MODVERSIONS
scripts/config --enable CONFIG_HAVE_REGS_AND_STACK_ACCESS_API
scripts/config --enable CONFIG_HAVE_RSEQ
scripts/config --enable CONFIG_HAVE_RUST
scripts/config --enable CONFIG_HAVE_FUNCTION_ARG_ACCESS_API
scripts/config --enable CONFIG_HAVE_HW_BREAKPOINT
scripts/config --enable CONFIG_HAVE_MIXED_BREAKPOINTS_REGS
scripts/config --enable CONFIG_HAVE_USER_RETURN_NOTIFIER
scripts/config --enable CONFIG_HAVE_PERF_EVENTS_NMI
scripts/config --enable CONFIG_HAVE_HARDLOCKUP_DETECTOR_PERF
scripts/config --enable CONFIG_HAVE_PERF_REGS
scripts/config --enable CONFIG_HAVE_PERF_USER_STACK_DUMP
scripts/config --enable CONFIG_HAVE_ARCH_JUMP_LABEL
scripts/config --enable CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE
scripts/config --enable CONFIG_MMU_GATHER_TABLE_FREE
scripts/config --enable CONFIG_MMU_GATHER_RCU_TABLE_FREE
scripts/config --enable CONFIG_MMU_GATHER_MERGE_VMAS
scripts/config --enable CONFIG_MMU_LAZY_TLB_REFCOUNT
scripts/config --enable CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG
scripts/config --enable CONFIG_ARCH_HAVE_EXTRA_ELF_NOTES
scripts/config --enable CONFIG_ARCH_HAS_NMI_SAFE_THIS_CPU_OPS
scripts/config --enable CONFIG_HAVE_ALIGNED_STRUCT_PAGE
scripts/config --enable CONFIG_HAVE_CMPXCHG_LOCAL
scripts/config --enable CONFIG_HAVE_CMPXCHG_DOUBLE
scripts/config --enable CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION
scripts/config --enable CONFIG_ARCH_WANT_OLD_COMPAT_IPC
scripts/config --enable CONFIG_HAVE_ARCH_SECCOMP
scripts/config --enable CONFIG_HAVE_ARCH_SECCOMP_FILTER
scripts/config --enable CONFIG_SECCOMP
scripts/config --enable CONFIG_SECCOMP_FILTER
scripts/config --disable CONFIG_SECCOMP_CACHE_DEBUG
scripts/config --enable CONFIG_HAVE_ARCH_STACKLEAK
scripts/config --enable CONFIG_HAVE_STACKPROTECTOR
scripts/config --enable CONFIG_STACKPROTECTOR
scripts/config --disable CONFIG_STACKPROTECTOR_STRONG
scripts/config --enable CONFIG_LTO
scripts/config --enable CONFIG_LTO_CLANG
scripts/config --enable CONFIG_ARCH_SUPPORTS_LTO_CLANG
scripts/config --enable CONFIG_ARCH_SUPPORTS_LTO_CLANG_THIN
scripts/config --enable CONFIG_HAS_LTO_CLANG
scripts/config --disable CONFIG_LTO_NONE
scripts/config --enable CONFIG_LTO_CLANG_FULL
scripts/config --disable CONFIG_LTO_CLANG_THIN
scripts/config --enable CONFIG_ARCH_SUPPORTS_CFI_CLANG
scripts/config --disable CONFIG_CFI_CLANG
scripts/config --enable CONFIG_HAVE_CFI_ICALL_NORMALIZE_INTEGERS_CLANG
scripts/config --enable CONFIG_HAVE_CFI_ICALL_NORMALIZE_INTEGERS_RUSTC
scripts/config --enable CONFIG_HAVE_ARCH_WITHIN_STACK_FRAMES
scripts/config --enable CONFIG_HAVE_CONTEXT_TRACKING_USER
scripts/config --enable CONFIG_HAVE_CONTEXT_TRACKING_USER_OFFSTACK
scripts/config --enable CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN
scripts/config --enable CONFIG_HAVE_IRQ_TIME_ACCOUNTING
scripts/config --enable CONFIG_HAVE_MOVE_PUD
scripts/config --enable CONFIG_HAVE_MOVE_PMD
scripts/config --enable CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE
scripts/config --enable CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
scripts/config --enable CONFIG_HAVE_ARCH_HUGE_VMAP
scripts/config --enable CONFIG_HAVE_ARCH_HUGE_VMALLOC
scripts/config --enable CONFIG_ARCH_WANT_HUGE_PMD_SHARE
scripts/config --enable CONFIG_ARCH_WANT_PMD_MKWRITE
scripts/config --enable CONFIG_HAVE_ARCH_SOFT_DIRTY
scripts/config --enable CONFIG_HAVE_MOD_ARCH_SPECIFIC
scripts/config --enable CONFIG_MODULES_USE_ELF_RELA
scripts/config --enable CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK
scripts/config --enable CONFIG_HAVE_SOFTIRQ_ON_OWN_STACK
scripts/config --enable CONFIG_SOFTIRQ_ON_OWN_STACK
scripts/config --enable CONFIG_ARCH_HAS_ELF_RANDOMIZE
scripts/config --enable CONFIG_HAVE_ARCH_MMAP_RND_BITS
scripts/config --enable CONFIG_HAVE_EXIT_THREAD
scripts/config --set-val CONFIG_ARCH_MMAP_RND_BITS 28
scripts/config --enable CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS
scripts/config --set-val CONFIG_ARCH_MMAP_RND_COMPAT_BITS 8
scripts/config --enable CONFIG_HAVE_ARCH_COMPAT_MMAP_BASES
scripts/config --enable CONFIG_HAVE_PAGE_SIZE_4KB
scripts/config --enable CONFIG_PAGE_SIZE_4KB
scripts/config --enable CONFIG_PAGE_SIZE_LESS_THAN_64KB
scripts/config --enable CONFIG_PAGE_SIZE_LESS_THAN_256KB
scripts/config --set-val CONFIG_PAGE_SHIFT 12
scripts/config --enable CONFIG_HAVE_OBJTOOL
scripts/config --enable CONFIG_HAVE_JUMP_LABEL_HACK
scripts/config --enable CONFIG_HAVE_NOINSTR_HACK
scripts/config --enable CONFIG_HAVE_NOINSTR_VALIDATION
scripts/config --enable CONFIG_HAVE_UACCESS_VALIDATION
scripts/config --enable CONFIG_HAVE_STACK_VALIDATION
scripts/config --enable CONFIG_HAVE_RELIABLE_STACKTRACE
scripts/config --enable CONFIG_OLD_SIGSUSPEND3
scripts/config --enable CONFIG_COMPAT_OLD_SIGACTION
scripts/config --enable CONFIG_COMPAT_32BIT_TIME
scripts/config --enable CONFIG_ARCH_SUPPORTS_RT
scripts/config --enable CONFIG_HAVE_ARCH_VMAP_STACK
scripts/config --enable CONFIG_VMAP_STACK
scripts/config --enable CONFIG_HAVE_ARCH_RANDOMIZE_KSTACK_OFFSET
scripts/config --disable CONFIG_RANDOMIZE_KSTACK_OFFSET
scripts/config --enable CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT
scripts/config --enable CONFIG_ARCH_HAS_STRICT_KERNEL_RWX
scripts/config --disable CONFIG_STRICT_KERNEL_RWX
scripts/config --enable CONFIG_ARCH_HAS_STRICT_MODULE_RWX
scripts/config --enable CONFIG_STRICT_MODULE_RWX
scripts/config --enable CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
scripts/config --enable CONFIG_ARCH_USE_MEMREMAP_PROT
scripts/config --disable CONFIG_LOCK_EVENT_COUNTS
scripts/config --enable CONFIG_ARCH_HAS_MEM_ENCRYPT
scripts/config --enable CONFIG_ARCH_HAS_CC_PLATFORM
scripts/config --enable CONFIG_HAVE_STATIC_CALL
scripts/config --enable CONFIG_HAVE_STATIC_CALL_INLINE
scripts/config --enable CONFIG_HAVE_PREEMPT_DYNAMIC
scripts/config --enable CONFIG_HAVE_PREEMPT_DYNAMIC_CALL
scripts/config --enable CONFIG_ARCH_WANT_LD_ORPHAN_WARN
scripts/config --enable CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC
scripts/config --enable CONFIG_ARCH_SUPPORTS_PAGE_TABLE_CHECK
scripts/config --enable CONFIG_ARCH_HAS_ELFCORE_COMPAT
scripts/config --enable CONFIG_ARCH_HAS_PARANOID_L1D_FLUSH
scripts/config --enable CONFIG_DYNAMIC_SIGFRAME
scripts/config --enable CONFIG_ARCH_HAS_HW_PTE_YOUNG
scripts/config --enable CONFIG_ARCH_HAS_NONLEAF_PMD_YOUNG
scripts/config --enable CONFIG_ARCH_HAS_KERNEL_FPU_SUPPORT

#
# GCOV-based kernel profiling
#
scripts/config --disable CONFIG_GCOV_KERNEL
scripts/config --enable CONFIG_ARCH_HAS_GCOV_PROFILE_ALL
# end of GCOV-based kernel profiling

scripts/config --enable CONFIG_HAVE_GCC_PLUGINS
scripts/config --enable CONFIG_FUNCTION_ALIGNMENT_4B
scripts/config --enable CONFIG_FUNCTION_ALIGNMENT_16B
scripts/config --set-val CONFIG_FUNCTION_ALIGNMENT 16
# end of General architecture-dependent options

scripts/config --enable CONFIG_RT_MUTEXES
scripts/config --enable CONFIG_MODULE_SIG_FORMAT
scripts/config --enable CONFIG_MODULES
scripts/config --disable CONFIG_MODULE_DEBUG
scripts/config --disable CONFIG_MODULE_FORCE_LOAD
scripts/config --enable CONFIG_MODULE_UNLOAD
scripts/config --disable CONFIG_MODULE_FORCE_UNLOAD
scripts/config --disable CONFIG_MODULE_UNLOAD_TAINT_TRACKING
scripts/config --enable CONFIG_MODVERSIONS
scripts/config --enable CONFIG_ASM_MODVERSIONS
scripts/config --enable CONFIG_MODULE_SRCVERSION_ALL
scripts/config --enable CONFIG_MODULE_SIG
scripts/config --disable CONFIG_MODULE_SIG_FORCE
scripts/config --enable CONFIG_MODULE_SIG_ALL
scripts/config --disable CONFIG_MODULE_SIG_SHA1
scripts/config --disable CONFIG_MODULE_SIG_SHA256
scripts/config --disable CONFIG_MODULE_SIG_SHA384
scripts/config --enable CONFIG_MODULE_SIG_SHA512
scripts/config --disable CONFIG_MODULE_SIG_SHA3_256
scripts/config --disable CONFIG_MODULE_SIG_SHA3_384
scripts/config --disable CONFIG_MODULE_SIG_SHA3_512
scripts/config --set-val CONFIG_MODULE_SIG_HASH "sha512"
scripts/config --disable CONFIG_MODULE_COMPRESS
scripts/config --disable CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
scripts/config --set-val CONFIG_MODPROBE_PATH "/sbin/modprobe"
scripts/config --disable CONFIG_TRIM_UNUSED_KSYMS
scripts/config --enable CONFIG_MODULES_TREE_LOOKUP
scripts/config --enable CONFIG_BLOCK
scripts/config --enable CONFIG_BLOCK_LEGACY_AUTOLOAD
scripts/config --enable CONFIG_BLK_RQ_ALLOC_TIME
scripts/config --enable CONFIG_BLK_CGROUP_RWSTAT
scripts/config --enable CONFIG_BLK_CGROUP_PUNT_BIO
scripts/config --enable CONFIG_BLK_DEV_BSG_COMMON
scripts/config --enable CONFIG_BLK_ICQ
scripts/config --enable CONFIG_BLK_DEV_BSGLIB
scripts/config --enable CONFIG_BLK_DEV_INTEGRITY
scripts/config --enable CONFIG_BLK_DEV_WRITE_MOUNTED
scripts/config --enable CONFIG_BLK_DEV_ZONED
scripts/config --enable CONFIG_BLK_DEV_THROTTLING
scripts/config --enable CONFIG_BLK_WBT
scripts/config --enable CONFIG_BLK_WBT_MQ
scripts/config --disable CONFIG_BLK_CGROUP_IOLATENCY
scripts/config --enable CONFIG_BLK_CGROUP_FC_APPID
scripts/config --enable CONFIG_BLK_CGROUP_IOCOST
scripts/config --enable CONFIG_BLK_CGROUP_IOPRIO
scripts/config --enable CONFIG_BLK_DEBUG_FS
scripts/config --enable CONFIG_BLK_SED_OPAL
scripts/config --enable CONFIG_BLK_INLINE_ENCRYPTION
scripts/config --enable CONFIG_BLK_INLINE_ENCRYPTION_FALLBACK

#
# Partition Types
#
scripts/config --enable CONFIG_PARTITION_ADVANCED
scripts/config --disable CONFIG_ACORN_PARTITION
scripts/config --enable CONFIG_AIX_PARTITION
scripts/config --enable CONFIG_OSF_PARTITION
scripts/config --enable CONFIG_AMIGA_PARTITION
scripts/config --enable CONFIG_ATARI_PARTITION
scripts/config --enable CONFIG_MAC_PARTITION
scripts/config --enable CONFIG_MSDOS_PARTITION
scripts/config --enable CONFIG_BSD_DISKLABEL
scripts/config --enable CONFIG_MINIX_SUBPARTITION
scripts/config --enable CONFIG_SOLARIS_X86_PARTITION
scripts/config --enable CONFIG_UNIXWARE_DISKLABEL
scripts/config --enable CONFIG_LDM_PARTITION
scripts/config --disable CONFIG_LDM_DEBUG
scripts/config --enable CONFIG_SGI_PARTITION
scripts/config --enable CONFIG_ULTRIX_PARTITION
scripts/config --enable CONFIG_SUN_PARTITION
scripts/config --enable CONFIG_KARMA_PARTITION
scripts/config --enable CONFIG_EFI_PARTITION
scripts/config --enable CONFIG_SYSV68_PARTITION
scripts/config --enable CONFIG_CMDLINE_PARTITION
# end of Partition Types

scripts/config --enable CONFIG_BLK_MQ_PCI
scripts/config --enable CONFIG_BLK_MQ_VIRTIO
scripts/config --enable CONFIG_BLK_PM
scripts/config --enable CONFIG_BLOCK_HOLDER_DEPRECATED
scripts/config --enable CONFIG_BLK_MQ_STACKING

#
# IO Schedulers
#
scripts/config --enable CONFIG_MQ_IOSCHED_DEADLINE
scripts/config --module CONFIG_MQ_IOSCHED_KYBER
scripts/config --module CONFIG_IOSCHED_BFQ
scripts/config --enable CONFIG_BFQ_GROUP_IOSCHED
scripts/config --disable CONFIG_BFQ_CGROUP_DEBUG
# end of IO Schedulers

scripts/config --enable CONFIG_PREEMPT_NOTIFIERS
scripts/config --enable CONFIG_PADATA
scripts/config --enable CONFIG_ASN1
scripts/config --enable CONFIG_UNINLINE_SPIN_UNLOCK
scripts/config --enable CONFIG_ARCH_SUPPORTS_ATOMIC_RMW
scripts/config --enable CONFIG_MUTEX_SPIN_ON_OWNER
scripts/config --enable CONFIG_RWSEM_SPIN_ON_OWNER
scripts/config --enable CONFIG_LOCK_SPIN_ON_OWNER
scripts/config --enable CONFIG_ARCH_USE_QUEUED_SPINLOCKS
scripts/config --enable CONFIG_QUEUED_SPINLOCKS
scripts/config --enable CONFIG_ARCH_USE_QUEUED_RWLOCKS
scripts/config --enable CONFIG_QUEUED_RWLOCKS
scripts/config --enable CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
scripts/config --enable CONFIG_ARCH_HAS_SYNC_CORE_BEFORE_USERMODE
scripts/config --enable CONFIG_ARCH_HAS_SYSCALL_WRAPPER
scripts/config --enable CONFIG_FREEZER

#
# Executable file formats
#
scripts/config --enable CONFIG_BINFMT_ELF
scripts/config --enable CONFIG_COMPAT_BINFMT_ELF
scripts/config --enable CONFIG_ELFCORE
scripts/config --enable CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS
scripts/config --enable CONFIG_BINFMT_SCRIPT
scripts/config --module CONFIG_BINFMT_MISC
scripts/config --enable CONFIG_COREDUMP
# end of Executable file formats

#
# Memory Management options
#
scripts/config --enable CONFIG_ZPOOL
scripts/config --enable CONFIG_SWAP
scripts/config --enable CONFIG_ZSWAP
scripts/config --disable CONFIG_ZSWAP_DEFAULT_ON
scripts/config --enable CONFIG_ZSWAP_SHRINKER_DEFAULT_ON
scripts/config --disable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_DEFLATE
scripts/config --disable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZO
scripts/config --disable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_842
scripts/config --enable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4
scripts/config --disable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4HC
scripts/config --disable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_ZSTD
scripts/config --set-val CONFIG_ZSWAP_COMPRESSOR_DEFAULT "lz4"
scripts/config --enable CONFIG_ZSWAP_ZPOOL_DEFAULT_ZBUD
scripts/config --disable CONFIG_ZSWAP_ZPOOL_DEFAULT_Z3FOLD_DEPRECATED
scripts/config --disable CONFIG_ZSWAP_ZPOOL_DEFAULT_ZSMALLOC
scripts/config --set-val CONFIG_ZSWAP_ZPOOL_DEFAULT "zbud"
scripts/config --enable CONFIG_ZBUD
scripts/config --disable CONFIG_Z3FOLD_DEPRECATED
scripts/config --module CONFIG_ZSMALLOC
scripts/config --disable CONFIG_ZSMALLOC_STAT
scripts/config --set-val CONFIG_ZSMALLOC_CHAIN_SIZE 8

#
# Slab allocator options
#
scripts/config --enable CONFIG_SLUB
scripts/config --enable CONFIG_SLAB_MERGE_DEFAULT
scripts/config --disable CONFIG_SLAB_FREELIST_RANDOM
scripts/config --disable CONFIG_SLAB_FREELIST_HARDENED
scripts/config --enable CONFIG_SLAB_BUCKETS
scripts/config --disable CONFIG_SLUB_STATS
scripts/config --enable CONFIG_SLUB_CPU_PARTIAL
scripts/config --disable CONFIG_RANDOM_KMALLOC_CACHES
# end of Slab allocator options

scripts/config --enable CONFIG_SHUFFLE_PAGE_ALLOCATOR
scripts/config --disable CONFIG_COMPAT_BRK
scripts/config --enable CONFIG_SPARSEMEM
scripts/config --enable CONFIG_SPARSEMEM_EXTREME
scripts/config --enable CONFIG_SPARSEMEM_VMEMMAP_ENABLE
scripts/config --enable CONFIG_SPARSEMEM_VMEMMAP
scripts/config --enable CONFIG_ARCH_WANT_OPTIMIZE_DAX_VMEMMAP
scripts/config --enable CONFIG_ARCH_WANT_OPTIMIZE_HUGETLB_VMEMMAP
scripts/config --enable CONFIG_HAVE_GUP_FAST
scripts/config --enable CONFIG_NUMA_KEEP_MEMINFO
scripts/config --enable CONFIG_MEMORY_ISOLATION
scripts/config --enable CONFIG_EXCLUSIVE_SYSTEM_RAM
scripts/config --enable CONFIG_HAVE_BOOTMEM_INFO_NODE
scripts/config --enable CONFIG_ARCH_ENABLE_MEMORY_HOTPLUG
scripts/config --enable CONFIG_ARCH_ENABLE_MEMORY_HOTREMOVE
scripts/config --enable CONFIG_MEMORY_HOTPLUG
scripts/config --enable CONFIG_MEMORY_HOTPLUG_DEFAULT_ONLINE
scripts/config --enable CONFIG_MEMORY_HOTREMOVE
scripts/config --enable CONFIG_MHP_MEMMAP_ON_MEMORY
scripts/config --enable CONFIG_ARCH_MHP_MEMMAP_ON_MEMORY_ENABLE
scripts/config --enable CONFIG_SPLIT_PTE_PTLOCKS
scripts/config --enable CONFIG_ARCH_ENABLE_SPLIT_PMD_PTLOCK
scripts/config --enable CONFIG_SPLIT_PMD_PTLOCKS
scripts/config --enable CONFIG_MEMORY_BALLOON
scripts/config --enable CONFIG_BALLOON_COMPACTION
scripts/config --enable CONFIG_COMPACTION
scripts/config --set-val CONFIG_COMPACT_UNEVICTABLE_DEFAULT 1
scripts/config --enable CONFIG_PAGE_REPORTING
scripts/config --enable CONFIG_MIGRATION
scripts/config --enable CONFIG_DEVICE_MIGRATION
scripts/config --enable CONFIG_ARCH_ENABLE_HUGEPAGE_MIGRATION
scripts/config --enable CONFIG_ARCH_ENABLE_THP_MIGRATION
scripts/config --enable CONFIG_CONTIG_ALLOC
scripts/config --set-val CONFIG_PCP_BATCH_SCALE_MAX 5
scripts/config --enable CONFIG_PHYS_ADDR_T_64BIT
scripts/config --enable CONFIG_MMU_NOTIFIER
scripts/config --enable CONFIG_KSM
scripts/config --set-val CONFIG_DEFAULT_MMAP_MIN_ADDR 65536
scripts/config --enable CONFIG_ARCH_WANT_GENERAL_HUGETLB
scripts/config --enable CONFIG_ARCH_WANTS_THP_SWAP
scripts/config --enable CONFIG_TRANSPARENT_HUGEPAGE
scripts/config --disable CONFIG_TRANSPARENT_HUGEPAGE_ALWAYS
scripts/config --enable CONFIG_TRANSPARENT_HUGEPAGE_MADVISE
scripts/config --disable CONFIG_TRANSPARENT_HUGEPAGE_NEVER
scripts/config --enable CONFIG_THP_SWAP
scripts/config --disable CONFIG_READ_ONLY_THP_FOR_FS
scripts/config --enable CONFIG_PGTABLE_HAS_HUGE_LEAVES
scripts/config --enable CONFIG_ARCH_SUPPORTS_HUGE_PFNMAP
scripts/config --enable CONFIG_ARCH_SUPPORTS_PMD_PFNMAP
scripts/config --enable CONFIG_ARCH_SUPPORTS_PUD_PFNMAP
scripts/config --enable CONFIG_NEED_PER_CPU_EMBED_FIRST_CHUNK
scripts/config --enable CONFIG_NEED_PER_CPU_PAGE_FIRST_CHUNK
scripts/config --enable CONFIG_USE_PERCPU_NUMA_NODE_ID
scripts/config --enable CONFIG_HAVE_SETUP_PER_CPU_AREA
scripts/config --disable CONFIG_CMA
scripts/config --enable CONFIG_GENERIC_EARLY_IOREMAP
scripts/config --disable CONFIG_DEFERRED_STRUCT_PAGE_INIT
scripts/config --enable CONFIG_PAGE_IDLE_FLAG
scripts/config --enable CONFIG_IDLE_PAGE_TRACKING
scripts/config --enable CONFIG_ARCH_HAS_CACHE_LINE_SIZE
scripts/config --enable CONFIG_ARCH_HAS_CURRENT_STACK_POINTER
scripts/config --enable CONFIG_ARCH_HAS_PTE_DEVMAP
scripts/config --enable CONFIG_ZONE_DMA
scripts/config --enable CONFIG_ZONE_DMA32
scripts/config --enable CONFIG_ZONE_DEVICE
scripts/config --enable CONFIG_HMM_MIRROR
scripts/config --enable CONFIG_GET_FREE_REGION
scripts/config --enable CONFIG_DEVICE_PRIVATE
scripts/config --enable CONFIG_ARCH_USES_PG_ARCH_2
scripts/config --enable CONFIG_VM_EVENT_COUNTERS
scripts/config --disable CONFIG_PERCPU_STATS
scripts/config --disable CONFIG_GUP_TEST
scripts/config --disable CONFIG_DMAPOOL_TEST
scripts/config --enable CONFIG_ARCH_HAS_PTE_SPECIAL
scripts/config --enable CONFIG_MEMFD_CREATE
scripts/config --enable CONFIG_SECRETMEM
scripts/config --enable CONFIG_ANON_VMA_NAME
scripts/config --enable CONFIG_HAVE_ARCH_USERFAULTFD_WP
scripts/config --enable CONFIG_HAVE_ARCH_USERFAULTFD_MINOR
scripts/config --enable CONFIG_USERFAULTFD
scripts/config --enable CONFIG_PTE_MARKER_UFFD_WP
scripts/config --enable CONFIG_LRU_GEN
scripts/config --enable CONFIG_LRU_GEN_ENABLED
scripts/config --disable CONFIG_LRU_GEN_STATS
scripts/config --enable CONFIG_LRU_GEN_WALKS_MMU
scripts/config --enable CONFIG_ARCH_SUPPORTS_PER_VMA_LOCK
scripts/config --enable CONFIG_PER_VMA_LOCK
scripts/config --enable CONFIG_LOCK_MM_AND_FIND_VMA
scripts/config --enable CONFIG_IOMMU_MM_DATA
scripts/config --enable CONFIG_EXECMEM
scripts/config --enable CONFIG_NUMA_MEMBLKS
scripts/config --disable CONFIG_NUMA_EMU

#
# Data Access Monitoring
#
scripts/config --disable CONFIG_DAMON
# end of Data Access Monitoring
# end of Memory Management options

scripts/config --enable CONFIG_NET
scripts/config --enable CONFIG_WANT_COMPAT_NETLINK_MESSAGES
scripts/config --enable CONFIG_COMPAT_NETLINK_MESSAGES
scripts/config --enable CONFIG_NET_INGRESS
scripts/config --enable CONFIG_NET_EGRESS
scripts/config --enable CONFIG_NET_XGRESS
scripts/config --enable CONFIG_NET_REDIRECT
scripts/config --enable CONFIG_SKB_DECRYPTED
scripts/config --enable CONFIG_SKB_EXTENSIONS
scripts/config --enable CONFIG_NET_DEVMEM

#
# Networking options
#
scripts/config --enable CONFIG_PACKET
scripts/config --module CONFIG_PACKET_DIAG
scripts/config --enable CONFIG_UNIX
scripts/config --enable CONFIG_AF_UNIX_OOB
scripts/config --module CONFIG_UNIX_DIAG
scripts/config --module CONFIG_TLS
scripts/config --enable CONFIG_TLS_DEVICE
scripts/config --disable CONFIG_TLS_TOE
scripts/config --enable CONFIG_XFRM
scripts/config --enable CONFIG_XFRM_OFFLOAD
scripts/config --module CONFIG_XFRM_ALGO
scripts/config --module CONFIG_XFRM_USER
scripts/config --module CONFIG_XFRM_USER_COMPAT
scripts/config --module CONFIG_XFRM_INTERFACE
scripts/config --disable CONFIG_XFRM_SUB_POLICY
scripts/config --disable CONFIG_XFRM_MIGRATE
scripts/config --enable CONFIG_XFRM_STATISTICS
scripts/config --module CONFIG_XFRM_AH
scripts/config --module CONFIG_XFRM_ESP
scripts/config --module CONFIG_XFRM_IPCOMP
scripts/config --module CONFIG_NET_KEY
scripts/config --disable CONFIG_NET_KEY_MIGRATE
scripts/config --enable CONFIG_XFRM_ESPINTCP
scripts/config --module CONFIG_SMC
scripts/config --module CONFIG_SMC_DIAG
scripts/config --disable CONFIG_SMC_LO
scripts/config --enable CONFIG_XDP_SOCKETS
scripts/config --module CONFIG_XDP_SOCKETS_DIAG
scripts/config --enable CONFIG_NET_HANDSHAKE
scripts/config --enable CONFIG_INET
scripts/config --enable CONFIG_IP_MULTICAST
scripts/config --enable CONFIG_IP_ADVANCED_ROUTER
scripts/config --enable CONFIG_IP_FIB_TRIE_STATS
scripts/config --enable CONFIG_IP_MULTIPLE_TABLES
scripts/config --enable CONFIG_IP_ROUTE_MULTIPATH
scripts/config --enable CONFIG_IP_ROUTE_VERBOSE
scripts/config --enable CONFIG_IP_ROUTE_CLASSID
scripts/config --disable CONFIG_IP_PNP
scripts/config --module CONFIG_NET_IPIP
scripts/config --module CONFIG_NET_IPGRE_DEMUX
scripts/config --module CONFIG_NET_IP_TUNNEL
scripts/config --module CONFIG_NET_IPGRE
scripts/config --enable CONFIG_NET_IPGRE_BROADCAST
scripts/config --enable CONFIG_IP_MROUTE_COMMON
scripts/config --enable CONFIG_IP_MROUTE
scripts/config --enable CONFIG_IP_MROUTE_MULTIPLE_TABLES
scripts/config --enable CONFIG_IP_PIMSM_V1
scripts/config --enable CONFIG_IP_PIMSM_V2
scripts/config --enable CONFIG_SYN_COOKIES
scripts/config --module CONFIG_NET_IPVTI
scripts/config --module CONFIG_NET_UDP_TUNNEL
scripts/config --module CONFIG_NET_FOU
scripts/config --enable CONFIG_NET_FOU_IP_TUNNELS
scripts/config --module CONFIG_INET_AH
scripts/config --module CONFIG_INET_ESP
scripts/config --module CONFIG_INET_ESP_OFFLOAD
scripts/config --enable CONFIG_INET_ESPINTCP
scripts/config --module CONFIG_INET_IPCOMP
scripts/config --set-val CONFIG_INET_TABLE_PERTURB_ORDER 16
scripts/config --module CONFIG_INET_XFRM_TUNNEL
scripts/config --module CONFIG_INET_TUNNEL
scripts/config --module CONFIG_INET_DIAG
scripts/config --module CONFIG_INET_TCP_DIAG
scripts/config --module CONFIG_INET_UDP_DIAG
scripts/config --module CONFIG_INET_RAW_DIAG
scripts/config --enable CONFIG_INET_DIAG_DESTROY
scripts/config --enable CONFIG_TCP_CONG_ADVANCED
scripts/config --module CONFIG_TCP_CONG_BIC
scripts/config --module CONFIG_TCP_CONG_CUBIC
scripts/config --module CONFIG_TCP_CONG_WESTWOOD
scripts/config --module CONFIG_TCP_CONG_HTCP
scripts/config --module CONFIG_TCP_CONG_HSTCP
scripts/config --module CONFIG_TCP_CONG_HYBLA
scripts/config --module CONFIG_TCP_CONG_VEGAS
scripts/config --module CONFIG_TCP_CONG_NV
scripts/config --module CONFIG_TCP_CONG_SCALABLE
scripts/config --module CONFIG_TCP_CONG_LP
scripts/config --module CONFIG_TCP_CONG_VENO
scripts/config --module CONFIG_TCP_CONG_YEAH
scripts/config --module CONFIG_TCP_CONG_ILLINOIS
scripts/config --module CONFIG_TCP_CONG_DCTCP
scripts/config --module CONFIG_TCP_CONG_CDG
scripts/config --enable CONFIG_TCP_CONG_BBR
scripts/config --enable CONFIG_DEFAULT_BBR
scripts/config --disable CONFIG_DEFAULT_RENO
scripts/config --set-val CONFIG_DEFAULT_TCP_CONG "bbr"
scripts/config --enable CONFIG_TCP_SIGPOOL
scripts/config --enable CONFIG_TCP_AO
scripts/config --enable CONFIG_TCP_MD5SIG
scripts/config --enable CONFIG_IPV6
scripts/config --enable CONFIG_IPV6_ROUTER_PREF
scripts/config --enable CONFIG_IPV6_ROUTE_INFO
scripts/config --disable CONFIG_IPV6_OPTIMISTIC_DAD
scripts/config --module CONFIG_INET6_AH
scripts/config --module CONFIG_INET6_ESP
scripts/config --module CONFIG_INET6_ESP_OFFLOAD
scripts/config --enable CONFIG_INET6_ESPINTCP
scripts/config --module CONFIG_INET6_IPCOMP
scripts/config --module CONFIG_IPV6_MIP6
scripts/config --module CONFIG_IPV6_ILA
scripts/config --module CONFIG_INET6_XFRM_TUNNEL
scripts/config --module CONFIG_INET6_TUNNEL
scripts/config --module CONFIG_IPV6_VTI
scripts/config --module CONFIG_IPV6_SIT
scripts/config --enable CONFIG_IPV6_SIT_6RD
scripts/config --enable CONFIG_IPV6_NDISC_NODETYPE
scripts/config --module CONFIG_IPV6_TUNNEL
scripts/config --module CONFIG_IPV6_GRE
scripts/config --module CONFIG_IPV6_FOU
scripts/config --module CONFIG_IPV6_FOU_TUNNEL
scripts/config --enable CONFIG_IPV6_MULTIPLE_TABLES
scripts/config --enable CONFIG_IPV6_SUBTREES
scripts/config --enable CONFIG_IPV6_MROUTE
scripts/config --enable CONFIG_IPV6_MROUTE_MULTIPLE_TABLES
scripts/config --enable CONFIG_IPV6_PIMSM_V2
scripts/config --enable CONFIG_IPV6_SEG6_LWTUNNEL
scripts/config --enable CONFIG_IPV6_SEG6_HMAC
scripts/config --enable CONFIG_IPV6_SEG6_BPF
scripts/config --disable CONFIG_IPV6_RPL_LWTUNNEL
scripts/config --enable CONFIG_IPV6_IOAM6_LWTUNNEL
scripts/config --enable CONFIG_NETLABEL
scripts/config --enable CONFIG_MPTCP
scripts/config --module CONFIG_INET_MPTCP_DIAG
scripts/config --enable CONFIG_MPTCP_IPV6
scripts/config --enable CONFIG_NETWORK_SECMARK
scripts/config --enable CONFIG_NET_PTP_CLASSIFY
scripts/config --enable CONFIG_NETWORK_PHY_TIMESTAMPING
scripts/config --enable CONFIG_NETFILTER
scripts/config --enable CONFIG_NETFILTER_ADVANCED
scripts/config --module CONFIG_BRIDGE_NETFILTER

#
# Core Netfilter Configuration
#
scripts/config --enable CONFIG_NETFILTER_INGRESS
scripts/config --enable CONFIG_NETFILTER_EGRESS
scripts/config --enable CONFIG_NETFILTER_SKIP_EGRESS
scripts/config --module CONFIG_NETFILTER_NETLINK
scripts/config --enable CONFIG_NETFILTER_FAMILY_BRIDGE
scripts/config --enable CONFIG_NETFILTER_FAMILY_ARP
scripts/config --enable CONFIG_NETFILTER_BPF_LINK
scripts/config --module CONFIG_NETFILTER_NETLINK_HOOK
scripts/config --module CONFIG_NETFILTER_NETLINK_ACCT
scripts/config --module CONFIG_NETFILTER_NETLINK_QUEUE
scripts/config --module CONFIG_NETFILTER_NETLINK_LOG
scripts/config --module CONFIG_NETFILTER_NETLINK_OSF
scripts/config --module CONFIG_NF_CONNTRACK
scripts/config --module CONFIG_NF_LOG_SYSLOG
scripts/config --module CONFIG_NETFILTER_CONNCOUNT
scripts/config --enable CONFIG_NF_CONNTRACK_MARK
scripts/config --enable CONFIG_NF_CONNTRACK_SECMARK
scripts/config --enable CONFIG_NF_CONNTRACK_ZONES
scripts/config --disable CONFIG_NF_CONNTRACK_PROCFS
scripts/config --enable CONFIG_NF_CONNTRACK_EVENTS
scripts/config --enable CONFIG_NF_CONNTRACK_TIMEOUT
scripts/config --enable CONFIG_NF_CONNTRACK_TIMESTAMP
scripts/config --enable CONFIG_NF_CONNTRACK_LABELS
scripts/config --enable CONFIG_NF_CONNTRACK_OVS
scripts/config --enable CONFIG_NF_CT_PROTO_DCCP
scripts/config --enable CONFIG_NF_CT_PROTO_GRE
scripts/config --enable CONFIG_NF_CT_PROTO_SCTP
scripts/config --enable CONFIG_NF_CT_PROTO_UDPLITE
scripts/config --module CONFIG_NF_CONNTRACK_AMANDA
scripts/config --module CONFIG_NF_CONNTRACK_FTP
scripts/config --module CONFIG_NF_CONNTRACK_H323
scripts/config --module CONFIG_NF_CONNTRACK_IRC
scripts/config --module CONFIG_NF_CONNTRACK_BROADCAST
scripts/config --module CONFIG_NF_CONNTRACK_NETBIOS_NS
scripts/config --module CONFIG_NF_CONNTRACK_SNMP
scripts/config --module CONFIG_NF_CONNTRACK_PPTP
scripts/config --module CONFIG_NF_CONNTRACK_SANE
scripts/config --module CONFIG_NF_CONNTRACK_SIP
scripts/config --module CONFIG_NF_CONNTRACK_TFTP
scripts/config --module CONFIG_NF_CT_NETLINK
scripts/config --module CONFIG_NF_CT_NETLINK_TIMEOUT
scripts/config --module CONFIG_NF_CT_NETLINK_HELPER
scripts/config --enable CONFIG_NETFILTER_NETLINK_GLUE_CT
scripts/config --module CONFIG_NF_NAT
scripts/config --module CONFIG_NF_NAT_AMANDA
scripts/config --module CONFIG_NF_NAT_FTP
scripts/config --module CONFIG_NF_NAT_IRC
scripts/config --module CONFIG_NF_NAT_SIP
scripts/config --module CONFIG_NF_NAT_TFTP
scripts/config --enable CONFIG_NF_NAT_REDIRECT
scripts/config --enable CONFIG_NF_NAT_MASQUERADE
scripts/config --enable CONFIG_NF_NAT_OVS
scripts/config --module CONFIG_NETFILTER_SYNPROXY
scripts/config --module CONFIG_NF_TABLES
scripts/config --enable CONFIG_NF_TABLES_INET
scripts/config --enable CONFIG_NF_TABLES_NETDEV
scripts/config --module CONFIG_NFT_NUMGEN
scripts/config --module CONFIG_NFT_CT
scripts/config --module CONFIG_NFT_FLOW_OFFLOAD
scripts/config --module CONFIG_NFT_CONNLIMIT
scripts/config --module CONFIG_NFT_LOG
scripts/config --module CONFIG_NFT_LIMIT
scripts/config --module CONFIG_NFT_MASQ
scripts/config --module CONFIG_NFT_REDIR
scripts/config --module CONFIG_NFT_NAT
scripts/config --module CONFIG_NFT_FULLCONE
scripts/config --module CONFIG_NFT_TUNNEL
scripts/config --module CONFIG_NFT_QUEUE
scripts/config --module CONFIG_NFT_QUOTA
scripts/config --module CONFIG_NFT_REJECT
scripts/config --module CONFIG_NFT_REJECT_INET
scripts/config --module CONFIG_NFT_COMPAT
scripts/config --module CONFIG_NFT_HASH
scripts/config --module CONFIG_NFT_FIB
scripts/config --module CONFIG_NFT_FIB_INET
scripts/config --module CONFIG_NFT_XFRM
scripts/config --module CONFIG_NFT_SOCKET
scripts/config --module CONFIG_NFT_OSF
scripts/config --module CONFIG_NFT_TPROXY
scripts/config --module CONFIG_NFT_SYNPROXY
scripts/config --module CONFIG_NF_DUP_NETDEV
scripts/config --module CONFIG_NFT_DUP_NETDEV
scripts/config --module CONFIG_NFT_FWD_NETDEV
scripts/config --module CONFIG_NFT_FIB_NETDEV
scripts/config --module CONFIG_NFT_REJECT_NETDEV
scripts/config --module CONFIG_NF_FLOW_TABLE_INET
scripts/config --module CONFIG_NF_FLOW_TABLE
scripts/config --disable CONFIG_NF_FLOW_TABLE_PROCFS
scripts/config --module CONFIG_NETFILTER_XTABLES
scripts/config --enable CONFIG_NETFILTER_XTABLES_COMPAT

#
# Xtables combined modules
#
scripts/config --module CONFIG_NETFILTER_XT_MARK
scripts/config --module CONFIG_NETFILTER_XT_CONNMARK
scripts/config --module CONFIG_NETFILTER_XT_SET

#
# Xtables targets
#
scripts/config --module CONFIG_NETFILTER_XT_TARGET_AUDIT
scripts/config --module CONFIG_NETFILTER_XT_TARGET_CHECKSUM
scripts/config --module CONFIG_NETFILTER_XT_TARGET_CLASSIFY
scripts/config --module CONFIG_NETFILTER_XT_TARGET_CONNMARK
scripts/config --module CONFIG_NETFILTER_XT_TARGET_CONNSECMARK
scripts/config --module CONFIG_NETFILTER_XT_TARGET_CT
scripts/config --module CONFIG_NETFILTER_XT_TARGET_DSCP
scripts/config --module CONFIG_NETFILTER_XT_TARGET_HL
scripts/config --module CONFIG_NETFILTER_XT_TARGET_HMARK
scripts/config --module CONFIG_NETFILTER_XT_TARGET_IDLETIMER
scripts/config --module CONFIG_NETFILTER_XT_TARGET_LED
scripts/config --module CONFIG_NETFILTER_XT_TARGET_LOG
scripts/config --module CONFIG_NETFILTER_XT_TARGET_MARK
scripts/config --module CONFIG_NETFILTER_XT_NAT
scripts/config --module CONFIG_NETFILTER_XT_TARGET_NETMAP
scripts/config --module CONFIG_NETFILTER_XT_TARGET_NFLOG
scripts/config --module CONFIG_NETFILTER_XT_TARGET_NFQUEUE
scripts/config --disable CONFIG_NETFILTER_XT_TARGET_NOTRACK
scripts/config --module CONFIG_NETFILTER_XT_TARGET_FLOWOFFLOAD
scripts/config --module CONFIG_NETFILTER_XT_TARGET_RATEEST
scripts/config --module CONFIG_NETFILTER_XT_TARGET_REDIRECT
scripts/config --module CONFIG_NETFILTER_XT_TARGET_MASQUERADE
scripts/config --module CONFIG_NETFILTER_XT_TARGET_TEE
scripts/config --module CONFIG_NETFILTER_XT_TARGET_TPROXY
scripts/config --module CONFIG_NETFILTER_XT_TARGET_TRACE
scripts/config --module CONFIG_NETFILTER_XT_TARGET_SECMARK
scripts/config --module CONFIG_NETFILTER_XT_TARGET_TCPMSS
scripts/config --module CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP

#
# Xtables matches
#
scripts/config --module CONFIG_NETFILTER_XT_MATCH_ADDRTYPE
scripts/config --module CONFIG_NETFILTER_XT_MATCH_BPF
scripts/config --module CONFIG_NETFILTER_XT_MATCH_CGROUP
scripts/config --module CONFIG_NETFILTER_XT_MATCH_CLUSTER
scripts/config --module CONFIG_NETFILTER_XT_MATCH_COMMENT
scripts/config --module CONFIG_NETFILTER_XT_MATCH_CONNBYTES
scripts/config --module CONFIG_NETFILTER_XT_MATCH_CONNLABEL
scripts/config --module CONFIG_NETFILTER_XT_MATCH_CONNLIMIT
scripts/config --module CONFIG_NETFILTER_XT_MATCH_CONNMARK
scripts/config --module CONFIG_NETFILTER_XT_MATCH_CONNTRACK
scripts/config --module CONFIG_NETFILTER_XT_MATCH_CPU
scripts/config --module CONFIG_NETFILTER_XT_MATCH_DCCP
scripts/config --module CONFIG_NETFILTER_XT_MATCH_DEVGROUP
scripts/config --module CONFIG_NETFILTER_XT_MATCH_DSCP
scripts/config --module CONFIG_NETFILTER_XT_MATCH_ECN
scripts/config --module CONFIG_NETFILTER_XT_MATCH_ESP
scripts/config --module CONFIG_NETFILTER_XT_MATCH_HASHLIMIT
scripts/config --module CONFIG_NETFILTER_XT_MATCH_HELPER
scripts/config --module CONFIG_NETFILTER_XT_MATCH_HL
scripts/config --module CONFIG_NETFILTER_XT_MATCH_IPCOMP
scripts/config --module CONFIG_NETFILTER_XT_MATCH_IPRANGE
scripts/config --module CONFIG_NETFILTER_XT_MATCH_IPVS
scripts/config --module CONFIG_NETFILTER_XT_MATCH_L2TP
scripts/config --module CONFIG_NETFILTER_XT_MATCH_LENGTH
scripts/config --module CONFIG_NETFILTER_XT_MATCH_LIMIT
scripts/config --module CONFIG_NETFILTER_XT_MATCH_MAC
scripts/config --module CONFIG_NETFILTER_XT_MATCH_MARK
scripts/config --module CONFIG_NETFILTER_XT_MATCH_MULTIPORT
scripts/config --module CONFIG_NETFILTER_XT_MATCH_NFACCT
scripts/config --module CONFIG_NETFILTER_XT_MATCH_OSF
scripts/config --module CONFIG_NETFILTER_XT_MATCH_OWNER
scripts/config --module CONFIG_NETFILTER_XT_MATCH_POLICY
scripts/config --module CONFIG_NETFILTER_XT_MATCH_PHYSDEV
scripts/config --module CONFIG_NETFILTER_XT_MATCH_PKTTYPE
scripts/config --module CONFIG_NETFILTER_XT_MATCH_QUOTA
scripts/config --module CONFIG_NETFILTER_XT_MATCH_RATEEST
scripts/config --module CONFIG_NETFILTER_XT_MATCH_REALM
scripts/config --module CONFIG_NETFILTER_XT_MATCH_RECENT
scripts/config --module CONFIG_NETFILTER_XT_MATCH_SCTP
scripts/config --module CONFIG_NETFILTER_XT_MATCH_SOCKET
scripts/config --module CONFIG_NETFILTER_XT_MATCH_STATE
scripts/config --module CONFIG_NETFILTER_XT_MATCH_STATISTIC
scripts/config --module CONFIG_NETFILTER_XT_MATCH_STRING
scripts/config --module CONFIG_NETFILTER_XT_MATCH_TCPMSS
scripts/config --module CONFIG_NETFILTER_XT_MATCH_TIME
scripts/config --module CONFIG_NETFILTER_XT_MATCH_U32
# end of Core Netfilter Configuration

scripts/config --module CONFIG_IP_SET
scripts/config --set-val CONFIG_IP_SET_MAX 256
scripts/config --module CONFIG_IP_SET_BITMAP_IP
scripts/config --module CONFIG_IP_SET_BITMAP_IPMAC
scripts/config --module CONFIG_IP_SET_BITMAP_PORT
scripts/config --module CONFIG_IP_SET_HASH_IP
scripts/config --module CONFIG_IP_SET_HASH_IPMARK
scripts/config --module CONFIG_IP_SET_HASH_IPPORT
scripts/config --module CONFIG_IP_SET_HASH_IPPORTIP
scripts/config --module CONFIG_IP_SET_HASH_IPPORTNET
scripts/config --module CONFIG_IP_SET_HASH_IPMAC
scripts/config --module CONFIG_IP_SET_HASH_MAC
scripts/config --module CONFIG_IP_SET_HASH_NETPORTNET
scripts/config --module CONFIG_IP_SET_HASH_NET
scripts/config --module CONFIG_IP_SET_HASH_NETNET
scripts/config --module CONFIG_IP_SET_HASH_NETPORT
scripts/config --module CONFIG_IP_SET_HASH_NETIFACE
scripts/config --module CONFIG_IP_SET_LIST_SET
scripts/config --module CONFIG_IP_VS
scripts/config --enable CONFIG_IP_VS_IPV6
scripts/config --disable CONFIG_IP_VS_DEBUG
scripts/config --set-val CONFIG_IP_VS_TAB_BITS 12

#
# IPVS transport protocol load balancing support
#
scripts/config --enable CONFIG_IP_VS_PROTO_TCP
scripts/config --enable CONFIG_IP_VS_PROTO_UDP
scripts/config --enable CONFIG_IP_VS_PROTO_AH_ESP
scripts/config --enable CONFIG_IP_VS_PROTO_ESP
scripts/config --enable CONFIG_IP_VS_PROTO_AH
scripts/config --enable CONFIG_IP_VS_PROTO_SCTP

#
# IPVS scheduler
#
scripts/config --module CONFIG_IP_VS_RR
scripts/config --module CONFIG_IP_VS_WRR
scripts/config --module CONFIG_IP_VS_LC
scripts/config --module CONFIG_IP_VS_WLC
scripts/config --module CONFIG_IP_VS_FO
scripts/config --module CONFIG_IP_VS_OVF
scripts/config --module CONFIG_IP_VS_LBLC
scripts/config --module CONFIG_IP_VS_LBLCR
scripts/config --module CONFIG_IP_VS_DH
scripts/config --module CONFIG_IP_VS_SH
scripts/config --module CONFIG_IP_VS_MH
scripts/config --module CONFIG_IP_VS_SED
scripts/config --module CONFIG_IP_VS_NQ
scripts/config --module CONFIG_IP_VS_TWOS

#
# IPVS SH scheduler
#
scripts/config --set-val CONFIG_IP_VS_SH_TAB_BITS 8

#
# IPVS MH scheduler
#
scripts/config --set-val CONFIG_IP_VS_MH_TAB_INDEX 12

#
# IPVS application helper
#
scripts/config --module CONFIG_IP_VS_FTP
scripts/config --enable CONFIG_IP_VS_NFCT
scripts/config --module CONFIG_IP_VS_PE_SIP

#
# IP: Netfilter Configuration
#
scripts/config --module CONFIG_NF_DEFRAG_IPV4
scripts/config --module CONFIG_IP_NF_IPTABLES_LEGACY
scripts/config --module CONFIG_NF_SOCKET_IPV4
scripts/config --module CONFIG_NF_TPROXY_IPV4
scripts/config --enable CONFIG_NF_TABLES_IPV4
scripts/config --module CONFIG_NFT_REJECT_IPV4
scripts/config --module CONFIG_NFT_DUP_IPV4
scripts/config --module CONFIG_NFT_FIB_IPV4
scripts/config --enable CONFIG_NF_TABLES_ARP
scripts/config --module CONFIG_NF_DUP_IPV4
scripts/config --module CONFIG_NF_LOG_ARP
scripts/config --module CONFIG_NF_LOG_IPV4
scripts/config --module CONFIG_NF_REJECT_IPV4
scripts/config --module CONFIG_NF_NAT_SNMP_BASIC
scripts/config --module CONFIG_NF_NAT_PPTP
scripts/config --module CONFIG_NF_NAT_H323
scripts/config --module CONFIG_IP_NF_IPTABLES
scripts/config --module CONFIG_IP_NF_MATCH_AH
scripts/config --module CONFIG_IP_NF_MATCH_ECN
scripts/config --module CONFIG_IP_NF_MATCH_RPFILTER
scripts/config --module CONFIG_IP_NF_MATCH_TTL
scripts/config --module CONFIG_IP_NF_FILTER
scripts/config --module CONFIG_IP_NF_TARGET_REJECT
scripts/config --module CONFIG_IP_NF_TARGET_SYNPROXY
scripts/config --module CONFIG_IP_NF_NAT
scripts/config --module CONFIG_IP_NF_TARGET_MASQUERADE
scripts/config --module CONFIG_IP_NF_TARGET_NETMAP
scripts/config --module CONFIG_IP_NF_TARGET_REDIRECT
scripts/config --module CONFIG_IP_NF_MANGLE
scripts/config --module CONFIG_IP_NF_TARGET_ECN
scripts/config --module CONFIG_IP_NF_TARGET_TTL
scripts/config --module CONFIG_IP_NF_RAW
scripts/config --module CONFIG_IP_NF_SECURITY
scripts/config --module CONFIG_IP_NF_ARPTABLES
scripts/config --module CONFIG_NFT_COMPAT_ARP
scripts/config --module CONFIG_IP_NF_ARPFILTER
scripts/config --module CONFIG_IP_NF_ARP_MANGLE
# end of IP: Netfilter Configuration

#
# IPv6: Netfilter Configuration
#
scripts/config --module CONFIG_IP6_NF_IPTABLES_LEGACY
scripts/config --module CONFIG_NF_SOCKET_IPV6
scripts/config --module CONFIG_NF_TPROXY_IPV6
scripts/config --enable CONFIG_NF_TABLES_IPV6
scripts/config --module CONFIG_NFT_REJECT_IPV6
scripts/config --module CONFIG_NFT_DUP_IPV6
scripts/config --module CONFIG_NFT_FIB_IPV6
scripts/config --module CONFIG_NF_DUP_IPV6
scripts/config --module CONFIG_NF_REJECT_IPV6
scripts/config --module CONFIG_NF_LOG_IPV6
scripts/config --module CONFIG_IP6_NF_IPTABLES
scripts/config --module CONFIG_IP6_NF_MATCH_AH
scripts/config --module CONFIG_IP6_NF_MATCH_EUI64
scripts/config --module CONFIG_IP6_NF_MATCH_FRAG
scripts/config --module CONFIG_IP6_NF_MATCH_OPTS
scripts/config --module CONFIG_IP6_NF_MATCH_HL
scripts/config --module CONFIG_IP6_NF_MATCH_IPV6HEADER
scripts/config --module CONFIG_IP6_NF_MATCH_MH
scripts/config --module CONFIG_IP6_NF_MATCH_RPFILTER
scripts/config --module CONFIG_IP6_NF_MATCH_RT
scripts/config --module CONFIG_IP6_NF_MATCH_SRH
scripts/config --module CONFIG_IP6_NF_TARGET_HL
scripts/config --module CONFIG_IP6_NF_FILTER
scripts/config --module CONFIG_IP6_NF_TARGET_REJECT
scripts/config --module CONFIG_IP6_NF_TARGET_SYNPROXY
scripts/config --module CONFIG_IP6_NF_MANGLE
scripts/config --module CONFIG_IP6_NF_RAW
scripts/config --module CONFIG_IP6_NF_SECURITY
scripts/config --module CONFIG_IP6_NF_NAT
scripts/config --module CONFIG_IP6_NF_TARGET_MASQUERADE
scripts/config --module CONFIG_IP6_NF_TARGET_NPT
# end of IPv6: Netfilter Configuration

scripts/config --module CONFIG_NF_DEFRAG_IPV6
scripts/config --module CONFIG_NF_TABLES_BRIDGE
scripts/config --module CONFIG_NFT_BRIDGE_META
scripts/config --module CONFIG_NFT_BRIDGE_REJECT
scripts/config --module CONFIG_NF_CONNTRACK_BRIDGE
scripts/config --module CONFIG_BRIDGE_NF_EBTABLES_LEGACY
scripts/config --module CONFIG_BRIDGE_NF_EBTABLES
scripts/config --module CONFIG_BRIDGE_EBT_BROUTE
scripts/config --module CONFIG_BRIDGE_EBT_T_FILTER
scripts/config --module CONFIG_BRIDGE_EBT_T_NAT
scripts/config --module CONFIG_BRIDGE_EBT_802_3
scripts/config --module CONFIG_BRIDGE_EBT_AMONG
scripts/config --module CONFIG_BRIDGE_EBT_ARP
scripts/config --module CONFIG_BRIDGE_EBT_IP
scripts/config --module CONFIG_BRIDGE_EBT_IP6
scripts/config --module CONFIG_BRIDGE_EBT_LIMIT
scripts/config --module CONFIG_BRIDGE_EBT_MARK
scripts/config --module CONFIG_BRIDGE_EBT_PKTTYPE
scripts/config --module CONFIG_BRIDGE_EBT_STP
scripts/config --module CONFIG_BRIDGE_EBT_VLAN
scripts/config --module CONFIG_BRIDGE_EBT_ARPREPLY
scripts/config --module CONFIG_BRIDGE_EBT_DNAT
scripts/config --module CONFIG_BRIDGE_EBT_MARK_T
scripts/config --module CONFIG_BRIDGE_EBT_REDIRECT
scripts/config --module CONFIG_BRIDGE_EBT_SNAT
scripts/config --module CONFIG_BRIDGE_EBT_LOG
scripts/config --module CONFIG_BRIDGE_EBT_NFLOG
scripts/config --module CONFIG_IP_DCCP
scripts/config --module CONFIG_INET_DCCP_DIAG

#
# DCCP CCIDs Configuration
#
scripts/config --disable CONFIG_IP_DCCP_CCID2_DEBUG
scripts/config --disable CONFIG_IP_DCCP_CCID3
# end of DCCP CCIDs Configuration

#
# DCCP Kernel Hacking
#
scripts/config --disable CONFIG_IP_DCCP_DEBUG
# end of DCCP Kernel Hacking

scripts/config --module CONFIG_IP_SCTP
scripts/config --disable CONFIG_SCTP_DBG_OBJCNT
scripts/config --disable CONFIG_SCTP_DEFAULT_COOKIE_HMAC_MD5
scripts/config --enable CONFIG_SCTP_DEFAULT_COOKIE_HMAC_SHA1
scripts/config --disable CONFIG_SCTP_DEFAULT_COOKIE_HMAC_NONE
scripts/config --enable CONFIG_SCTP_COOKIE_HMAC_MD5
scripts/config --enable CONFIG_SCTP_COOKIE_HMAC_SHA1
scripts/config --module CONFIG_INET_SCTP_DIAG
scripts/config --module CONFIG_RDS
scripts/config --module CONFIG_RDS_RDMA
scripts/config --module CONFIG_RDS_TCP
scripts/config --disable CONFIG_RDS_DEBUG
scripts/config --module CONFIG_TIPC
scripts/config --enable CONFIG_TIPC_MEDIA_IB
scripts/config --enable CONFIG_TIPC_MEDIA_UDP
scripts/config --enable CONFIG_TIPC_CRYPTO
scripts/config --module CONFIG_TIPC_DIAG
scripts/config --disable CONFIG_ATM
scripts/config --disable CONFIG_ATM_CLIP
scripts/config --disable CONFIG_ATM_CLIP_NO_ICMP
scripts/config --disable CONFIG_ATM_LANE
scripts/config --disable CONFIG_ATM_MPOA
scripts/config --disable CONFIG_ATM_BR2684
scripts/config --disable CONFIG_ATM_BR2684_IPFILTER
scripts/config --module CONFIG_L2TP
scripts/config --module CONFIG_L2TP_DEBUGFS
scripts/config --enable CONFIG_L2TP_V3
scripts/config --module CONFIG_L2TP_IP
scripts/config --module CONFIG_L2TP_ETH
scripts/config --module CONFIG_STP
scripts/config --module CONFIG_GARP
scripts/config --module CONFIG_MRP
scripts/config --module CONFIG_BRIDGE
scripts/config --enable CONFIG_BRIDGE_IGMP_SNOOPING
scripts/config --enable CONFIG_BRIDGE_VLAN_FILTERING
scripts/config --enable CONFIG_BRIDGE_MRP
scripts/config --enable CONFIG_BRIDGE_CFM
scripts/config --disable CONFIG_NET_DSA
scripts/config --disable CONFIG_NET_DSA_TAG_NONE
scripts/config --disable CONFIG_NET_DSA_TAG_AR9331
scripts/config --disable CONFIG_NET_DSA_TAG_BRCM_COMMON
scripts/config --disable CONFIG_NET_DSA_TAG_BRCM
scripts/config --disable CONFIG_NET_DSA_TAG_BRCM_LEGACY
scripts/config --disable CONFIG_NET_DSA_TAG_BRCM_PREPEND
scripts/config --disable CONFIG_NET_DSA_TAG_HELLCREEK
scripts/config --disable CONFIG_NET_DSA_TAG_GSWIP
scripts/config --disable CONFIG_NET_DSA_TAG_DSA_COMMON
scripts/config --disable CONFIG_NET_DSA_TAG_DSA
scripts/config --disable CONFIG_NET_DSA_TAG_EDSA
scripts/config --disable CONFIG_NET_DSA_TAG_MTK
scripts/config --disable CONFIG_NET_DSA_TAG_KSZ
scripts/config --disable CONFIG_NET_DSA_TAG_OCELOT
scripts/config --disable CONFIG_NET_DSA_TAG_OCELOT_8021Q
scripts/config --disable CONFIG_NET_DSA_TAG_QCA
scripts/config --disable CONFIG_NET_DSA_TAG_RTL4_A
scripts/config --disable CONFIG_NET_DSA_TAG_RTL8_4
scripts/config --disable CONFIG_NET_DSA_TAG_RZN1_A5PSW
scripts/config --disable CONFIG_NET_DSA_TAG_LAN9303
scripts/config --disable CONFIG_NET_DSA_TAG_SJA1105
scripts/config --disable CONFIG_NET_DSA_TAG_TRAILER
scripts/config --disable CONFIG_NET_DSA_TAG_VSC73XX_8021Q
scripts/config --disable CONFIG_NET_DSA_TAG_XRS700X
scripts/config --module CONFIG_VLAN_8021Q
scripts/config --enable CONFIG_VLAN_8021Q_GVRP
scripts/config --enable CONFIG_VLAN_8021Q_MVRP
scripts/config --module CONFIG_LLC
scripts/config --module CONFIG_LLC2
scripts/config --module CONFIG_ATALK
scripts/config --module CONFIG_X25
scripts/config --module CONFIG_LAPB
scripts/config --module CONFIG_PHONET
scripts/config --module CONFIG_6LOWPAN
scripts/config --disable CONFIG_6LOWPAN_DEBUGFS
scripts/config --module CONFIG_6LOWPAN_NHC
scripts/config --module CONFIG_6LOWPAN_NHC_DEST
scripts/config --module CONFIG_6LOWPAN_NHC_FRAGMENT
scripts/config --module CONFIG_6LOWPAN_NHC_HOP
scripts/config --module CONFIG_6LOWPAN_NHC_IPV6
scripts/config --module CONFIG_6LOWPAN_NHC_MOBILITY
scripts/config --module CONFIG_6LOWPAN_NHC_ROUTING
scripts/config --module CONFIG_6LOWPAN_NHC_UDP
scripts/config --disable CONFIG_6LOWPAN_GHC_EXT_HDR_HOP
scripts/config --disable CONFIG_6LOWPAN_GHC_UDP
scripts/config --disable CONFIG_6LOWPAN_GHC_ICMPV6
scripts/config --disable CONFIG_6LOWPAN_GHC_EXT_HDR_DEST
scripts/config --disable CONFIG_6LOWPAN_GHC_EXT_HDR_FRAG
scripts/config --disable CONFIG_6LOWPAN_GHC_EXT_HDR_ROUTE
scripts/config --disable CONFIG_IEEE802154
scripts/config --disable CONFIG_IEEE802154_NL802154_EXPERIMENTAL
scripts/config --disable CONFIG_IEEE802154_SOCKET
scripts/config --disable CONFIG_IEEE802154_6LOWPAN
scripts/config --module CONFIG_MAC802154
scripts/config --enable CONFIG_NET_SCHED

#
# Queueing/Scheduling
#
scripts/config --module CONFIG_NET_SCH_HTB
scripts/config --module CONFIG_NET_SCH_HFSC
scripts/config --module CONFIG_NET_SCH_PRIO
scripts/config --module CONFIG_NET_SCH_MULTIQ
scripts/config --module CONFIG_NET_SCH_RED
scripts/config --module CONFIG_NET_SCH_SFB
scripts/config --module CONFIG_NET_SCH_SFQ
scripts/config --module CONFIG_NET_SCH_TEQL
scripts/config --module CONFIG_NET_SCH_TBF
scripts/config --module CONFIG_NET_SCH_CBS
scripts/config --module CONFIG_NET_SCH_ETF
scripts/config --module CONFIG_NET_SCH_MQPRIO_LIB
scripts/config --module CONFIG_NET_SCH_TAPRIO
scripts/config --module CONFIG_NET_SCH_GRED
scripts/config --module CONFIG_NET_SCH_NETEM
scripts/config --module CONFIG_NET_SCH_DRR
scripts/config --module CONFIG_NET_SCH_MQPRIO
scripts/config --module CONFIG_NET_SCH_SKBPRIO
scripts/config --module CONFIG_NET_SCH_CHOKE
scripts/config --module CONFIG_NET_SCH_QFQ
scripts/config --module CONFIG_NET_SCH_CODEL
scripts/config --module CONFIG_NET_SCH_FQ_CODEL
scripts/config --module CONFIG_NET_SCH_CAKE
scripts/config --enable CONFIG_NET_SCH_FQ
scripts/config --module CONFIG_NET_SCH_HHF
scripts/config --module CONFIG_NET_SCH_PIE
scripts/config --module CONFIG_NET_SCH_FQ_PIE
scripts/config --module CONFIG_NET_SCH_INGRESS
scripts/config --module CONFIG_NET_SCH_PLUG
scripts/config --module CONFIG_NET_SCH_ETS
scripts/config --enable CONFIG_NET_SCH_DEFAULT
scripts/config --enable CONFIG_DEFAULT_FQ
scripts/config --disable CONFIG_DEFAULT_FQ_CODEL
scripts/config --disable CONFIG_DEFAULT_PFIFO_FAST
scripts/config --set-val CONFIG_DEFAULT_NET_SCH "fq"

#
# Classification
#
scripts/config --enable CONFIG_NET_CLS
scripts/config --module CONFIG_NET_CLS_BASIC
scripts/config --module CONFIG_NET_CLS_ROUTE4
scripts/config --module CONFIG_NET_CLS_FW
scripts/config --module CONFIG_NET_CLS_U32
scripts/config --disable CONFIG_CLS_U32_PERF
scripts/config --enable CONFIG_CLS_U32_MARK
scripts/config --module CONFIG_NET_CLS_FLOW
scripts/config --module CONFIG_NET_CLS_CGROUP
scripts/config --module CONFIG_NET_CLS_BPF
scripts/config --module CONFIG_NET_CLS_FLOWER
scripts/config --module CONFIG_NET_CLS_MATCHALL
scripts/config --enable CONFIG_NET_EMATCH
scripts/config --set-val CONFIG_NET_EMATCH_STACK 32
scripts/config --module CONFIG_NET_EMATCH_CMP
scripts/config --module CONFIG_NET_EMATCH_NBYTE
scripts/config --module CONFIG_NET_EMATCH_U32
scripts/config --module CONFIG_NET_EMATCH_META
scripts/config --module CONFIG_NET_EMATCH_TEXT
scripts/config --module CONFIG_NET_EMATCH_CANID
scripts/config --module CONFIG_NET_EMATCH_IPSET
scripts/config --module CONFIG_NET_EMATCH_IPT
scripts/config --enable CONFIG_NET_CLS_ACT
scripts/config --module CONFIG_NET_ACT_POLICE
scripts/config --module CONFIG_NET_ACT_GACT
scripts/config --enable CONFIG_GACT_PROB
scripts/config --module CONFIG_NET_ACT_MIRRED
scripts/config --module CONFIG_NET_ACT_SAMPLE
scripts/config --module CONFIG_NET_ACT_NAT
scripts/config --module CONFIG_NET_ACT_PEDIT
scripts/config --module CONFIG_NET_ACT_SIMP
scripts/config --module CONFIG_NET_ACT_SKBEDIT
scripts/config --module CONFIG_NET_ACT_CSUM
scripts/config --module CONFIG_NET_ACT_MPLS
scripts/config --module CONFIG_NET_ACT_VLAN
scripts/config --module CONFIG_NET_ACT_BPF
scripts/config --module CONFIG_NET_ACT_CONNMARK
scripts/config --module CONFIG_NET_ACT_CTINFO
scripts/config --module CONFIG_NET_ACT_SKBMOD
scripts/config --disable CONFIG_NET_ACT_IFE
scripts/config --module CONFIG_NET_ACT_TUNNEL_KEY
scripts/config --module CONFIG_NET_ACT_CT
scripts/config --module CONFIG_NET_ACT_GATE
scripts/config --enable CONFIG_NET_TC_SKB_EXT
scripts/config --enable CONFIG_NET_SCH_FIFO
scripts/config --enable CONFIG_DCB
scripts/config --enable CONFIG_DNS_RESOLVER
scripts/config --module CONFIG_BATMAN_ADV
scripts/config --disable CONFIG_BATMAN_ADV_BATMAN_V
scripts/config --enable CONFIG_BATMAN_ADV_BLA
scripts/config --enable CONFIG_BATMAN_ADV_DAT
scripts/config --enable CONFIG_BATMAN_ADV_NC
scripts/config --enable CONFIG_BATMAN_ADV_MCAST
scripts/config --disable CONFIG_BATMAN_ADV_DEBUG
scripts/config --disable CONFIG_BATMAN_ADV_TRACING
scripts/config --module CONFIG_OPENVSWITCH
scripts/config --module CONFIG_OPENVSWITCH_GRE
scripts/config --module CONFIG_OPENVSWITCH_VXLAN
scripts/config --module CONFIG_OPENVSWITCH_GENEVE
scripts/config --module CONFIG_VSOCKETS
scripts/config --module CONFIG_VSOCKETS_DIAG
scripts/config --module CONFIG_VSOCKETS_LOOPBACK
scripts/config --module CONFIG_VMWARE_VMCI_VSOCKETS
scripts/config --module CONFIG_VIRTIO_VSOCKETS
scripts/config --module CONFIG_VIRTIO_VSOCKETS_COMMON
scripts/config --module CONFIG_HYPERV_VSOCKETS
scripts/config --module CONFIG_NETLINK_DIAG
scripts/config --enable CONFIG_MPLS
scripts/config --module CONFIG_NET_MPLS_GSO
scripts/config --module CONFIG_MPLS_ROUTING
scripts/config --module CONFIG_MPLS_IPTUNNEL
scripts/config --module CONFIG_NET_NSH
scripts/config --module CONFIG_HSR
scripts/config --enable CONFIG_NET_SWITCHDEV
scripts/config --enable CONFIG_NET_L3_MASTER_DEV
scripts/config --module CONFIG_QRTR
scripts/config --module CONFIG_QRTR_SMD
scripts/config --module CONFIG_QRTR_TUN
scripts/config --disable CONFIG_QRTR_MHI
scripts/config --enable CONFIG_NET_NCSI
scripts/config --enable CONFIG_NCSI_OEM_CMD_GET_MAC
scripts/config --disable CONFIG_NCSI_OEM_CMD_KEEP_PHY
scripts/config --enable CONFIG_PCPU_DEV_REFCNT
scripts/config --set-val CONFIG_MAX_SKB_FRAGS 17
scripts/config --enable CONFIG_RPS
scripts/config --enable CONFIG_RFS_ACCEL
scripts/config --enable CONFIG_SOCK_RX_QUEUE_MAPPING
scripts/config --enable CONFIG_XPS
scripts/config --enable CONFIG_CGROUP_NET_PRIO
scripts/config --enable CONFIG_CGROUP_NET_CLASSID
scripts/config --enable CONFIG_NET_RX_BUSY_POLL
scripts/config --enable CONFIG_BQL
scripts/config --enable CONFIG_BPF_STREAM_PARSER
scripts/config --enable CONFIG_NET_FLOW_LIMIT

#
# Network testing
#
scripts/config --module CONFIG_NET_PKTGEN
scripts/config --enable CONFIG_NET_DROP_MONITOR
# end of Network testing
# end of Networking options

scripts/config --disable CONFIG_HAMRADIO

#
# Packet Radio protocols
#
scripts/config --disable CONFIG_AX25
scripts/config --disable CONFIG_AX25_DAMA_SLAVE
scripts/config --disable CONFIG_NETROM
scripts/config --disable CONFIG_ROSE

#
# AX.25 network device drivers
#
scripts/config --disable CONFIG_MKISS
scripts/config --disable CONFIG_6PACK
scripts/config --disable CONFIG_BPQETHER
scripts/config --disable CONFIG_BAYCOM_SER_FDX
scripts/config --disable CONFIG_BAYCOM_SER_HDX
scripts/config --disable CONFIG_BAYCOM_PAR
scripts/config --disable CONFIG_YAM
# end of AX.25 network device drivers

scripts/config --disable CONFIG_CAN
scripts/config --disable CONFIG_CAN_RAW
scripts/config --disable CONFIG_CAN_BCM
scripts/config --disable CONFIG_CAN_GW
scripts/config --disable CONFIG_CAN_J1939
scripts/config --disable CONFIG_CAN_ISOTP
scripts/config --disable CONFIG_BT
scripts/config --module CONFIG_AF_RXRPC
scripts/config --enable CONFIG_AF_RXRPC_IPV6
scripts/config --disable CONFIG_AF_RXRPC_INJECT_LOSS
scripts/config --disable CONFIG_AF_RXRPC_INJECT_RX_DELAY
scripts/config --disable CONFIG_AF_RXRPC_DEBUG
scripts/config --enable CONFIG_RXKAD
scripts/config --module CONFIG_RXPERF
scripts/config --module CONFIG_AF_KCM
scripts/config --enable CONFIG_STREAM_PARSER
scripts/config --enable CONFIG_MCTP
scripts/config --enable CONFIG_FIB_RULES
scripts/config --disable CONFIG_WIRELESS
scripts/config --disable CONFIG_WEXT_CORE
scripts/config --disable CONFIG_WEXT_PROC
scripts/config --disable CONFIG_CFG80211
scripts/config --disable CONFIG_NL80211_TESTMODE
scripts/config --disable CONFIG_CFG80211_DEVELOPER_WARNINGS
scripts/config --disable CONFIG_CFG80211_REQUIRE_SIGNED_REGDB
scripts/config --disable CONFIG_CFG80211_USE_KERNEL_REGDB_KEYS
scripts/config --disable CONFIG_CFG80211_DEFAULT_PS
scripts/config --disable CONFIG_CFG80211_DEBUGFS
scripts/config --disable CONFIG_CFG80211_CRDA_SUPPORT
scripts/config --disable CONFIG_CFG80211_WEXT
scripts/config --disable CONFIG_MAC80211
scripts/config --disable CONFIG_MAC80211_HAS_RC
scripts/config --disable CONFIG_MAC80211_RC_MINSTREL
scripts/config --disable CONFIG_MAC80211_RC_DEFAULT_MINSTREL
scripts/config --set-val CONFIG_MAC80211_RC_DEFAULT "minstrel_ht"
scripts/config --disable CONFIG_MAC80211_MESH
scripts/config --disable CONFIG_MAC80211_LEDS
scripts/config --disable CONFIG_MAC80211_DEBUGFS
scripts/config --disable CONFIG_MAC80211_MESSAGE_TRACING
scripts/config --disable CONFIG_MAC80211_DEBUG_MENU
scripts/config --set-val CONFIG_MAC80211_STA_HASH_MAX_SIZE 0
scripts/config --disable CONFIG_RFKILL
scripts/config --disable CONFIG_RFKILL_LEDS
scripts/config --disable CONFIG_RFKILL_INPUT
scripts/config --disable CONFIG_RFKILL_GPIO
scripts/config --module CONFIG_NET_9P
scripts/config --module CONFIG_NET_9P_FD
scripts/config --module CONFIG_NET_9P_VIRTIO
scripts/config --module CONFIG_NET_9P_XEN
scripts/config --enable CONFIG_NET_9P_USBG
scripts/config --module CONFIG_NET_9P_RDMA
scripts/config --disable CONFIG_NET_9P_DEBUG
scripts/config --disable CONFIG_CAIF
scripts/config --disable CONFIG_CAIF_DEBUG
scripts/config --disable CONFIG_CAIF_NETDEV
scripts/config --disable CONFIG_CAIF_USB
scripts/config --module CONFIG_CEPH_LIB
scripts/config --disable CONFIG_CEPH_LIB_PRETTYDEBUG
scripts/config --enable CONFIG_CEPH_LIB_USE_DNS_RESOLVER
scripts/config --disable CONFIG_NFC
scripts/config --disable CONFIG_NFC_DIGITAL
scripts/config --disable CONFIG_NFC_NCI
scripts/config --disable CONFIG_NFC_NCI_SPI
scripts/config --disable CONFIG_NFC_NCI_UART
scripts/config --disable CONFIG_NFC_HCI
scripts/config --disable CONFIG_NFC_SHDLC

#
# Near Field Communication (NFC) devices
#
scripts/config --disable CONFIG_NFC_TRF7970A
scripts/config --disable CONFIG_NFC_MEI_PHY
scripts/config --disable CONFIG_NFC_SIM
scripts/config --disable CONFIG_NFC_PORT100
scripts/config --disable CONFIG_NFC_VIRTUAL_NCI
scripts/config --disable CONFIG_NFC_FDP
scripts/config --disable CONFIG_NFC_FDP_I2C
scripts/config --disable CONFIG_NFC_PN544
scripts/config --disable CONFIG_NFC_PN544_I2C
scripts/config --disable CONFIG_NFC_PN544_MEI
scripts/config --disable CONFIG_NFC_PN533
scripts/config --disable CONFIG_NFC_PN533_USB
scripts/config --disable CONFIG_NFC_PN533_I2C
scripts/config --disable CONFIG_NFC_PN532_UART
scripts/config --disable CONFIG_NFC_MICROREAD
scripts/config --disable CONFIG_NFC_MICROREAD_I2C
scripts/config --disable CONFIG_NFC_MICROREAD_MEI
scripts/config --disable CONFIG_NFC_MRVL
scripts/config --disable CONFIG_NFC_MRVL_USB
scripts/config --disable CONFIG_NFC_MRVL_UART
scripts/config --disable CONFIG_NFC_MRVL_I2C
scripts/config --disable CONFIG_NFC_MRVL_SPI
scripts/config --disable CONFIG_NFC_ST21NFCA
scripts/config --disable CONFIG_NFC_ST21NFCA_I2C
scripts/config --disable CONFIG_NFC_ST_NCI
scripts/config --disable CONFIG_NFC_ST_NCI_I2C
scripts/config --disable CONFIG_NFC_ST_NCI_SPI
scripts/config --disable CONFIG_NFC_NXP_NCI
scripts/config --disable CONFIG_NFC_NXP_NCI_I2C
scripts/config --disable CONFIG_NFC_S3FWRN5
scripts/config --disable CONFIG_NFC_S3FWRN5_I2C
scripts/config --disable CONFIG_NFC_S3FWRN82_UART
scripts/config --disable CONFIG_NFC_ST95HF
# end of Near Field Communication (NFC) devices

scripts/config --module CONFIG_PSAMPLE
scripts/config --module CONFIG_NET_IFE
scripts/config --enable CONFIG_LWTUNNEL
scripts/config --enable CONFIG_LWTUNNEL_BPF
scripts/config --enable CONFIG_DST_CACHE
scripts/config --enable CONFIG_GRO_CELLS
scripts/config --enable CONFIG_SOCK_VALIDATE_XMIT
scripts/config --enable CONFIG_NET_IEEE8021Q_HELPERS
scripts/config --module CONFIG_NET_SELFTESTS
scripts/config --enable CONFIG_NET_SOCK_MSG
scripts/config --enable CONFIG_NET_DEVLINK
scripts/config --enable CONFIG_PAGE_POOL
scripts/config --enable CONFIG_PAGE_POOL_STATS
scripts/config --enable CONFIG_FAILOVER
scripts/config --enable CONFIG_ETHTOOL_NETLINK

#
# Device Drivers
#
# Trimmed for virtualized hosts: keep virtual/cloud devices (virtio, Hyper-V, VMware, Xen, KVM,
# common cloud NVMe/network adapters) and disable broad bare-metal buses/peripherals below.
#
scripts/config --enable CONFIG_HAVE_PCI
scripts/config --enable CONFIG_GENERIC_PCI_IOMAP
scripts/config --enable CONFIG_PCI
scripts/config --enable CONFIG_PCI_DOMAINS
scripts/config --enable CONFIG_PCIEPORTBUS
scripts/config --enable CONFIG_HOTPLUG_PCI_PCIE
scripts/config --enable CONFIG_PCIEAER
scripts/config --disable CONFIG_PCIEAER_INJECT
scripts/config --enable CONFIG_PCIEAER_CXL
scripts/config --disable CONFIG_PCIE_ECRC
scripts/config --enable CONFIG_PCIEASPM
scripts/config --disable CONFIG_PCIEASPM_DEFAULT
scripts/config --disable CONFIG_PCIEASPM_POWERSAVE
scripts/config --disable CONFIG_PCIEASPM_POWER_SUPERSAVE
scripts/config --enable CONFIG_PCIEASPM_PERFORMANCE
scripts/config --enable CONFIG_PCIE_PME
scripts/config --enable CONFIG_PCIE_DPC
scripts/config --enable CONFIG_PCIE_PTM
scripts/config --enable CONFIG_PCIE_EDR
scripts/config --enable CONFIG_PCI_MSI
scripts/config --enable CONFIG_PCI_QUIRKS
scripts/config --disable CONFIG_PCI_DEBUG
scripts/config --enable CONFIG_PCI_REALLOC_ENABLE_AUTO
scripts/config --module CONFIG_PCI_STUB
scripts/config --module CONFIG_PCI_PF_STUB
scripts/config --module CONFIG_XEN_PCIDEV_FRONTEND
scripts/config --enable CONFIG_PCI_ATS
scripts/config --enable CONFIG_PCI_DOE
scripts/config --enable CONFIG_PCI_LOCKLESS_CONFIG
scripts/config --enable CONFIG_PCI_IOV
scripts/config --enable CONFIG_PCI_NPEM
scripts/config --enable CONFIG_PCI_PRI
scripts/config --enable CONFIG_PCI_PASID
scripts/config --enable CONFIG_PCI_P2PDMA
scripts/config --enable CONFIG_PCI_LABEL
scripts/config --module CONFIG_PCI_HYPERV
scripts/config --enable CONFIG_VGA_ARB
scripts/config --set-val CONFIG_VGA_ARB_MAX_GPUS 16
scripts/config --enable CONFIG_HOTPLUG_PCI
scripts/config --enable CONFIG_HOTPLUG_PCI_ACPI
scripts/config --module CONFIG_HOTPLUG_PCI_ACPI_IBM
scripts/config --disable CONFIG_HOTPLUG_PCI_CPCI
scripts/config --disable CONFIG_HOTPLUG_PCI_CPCI_ZT5550
scripts/config --disable CONFIG_HOTPLUG_PCI_CPCI_GENERIC
scripts/config --enable CONFIG_HOTPLUG_PCI_SHPC

#
# PCI controller drivers
#
scripts/config --module CONFIG_VMD
scripts/config --module CONFIG_PCI_HYPERV_INTERFACE

#
# Cadence-based PCIe controllers
#
# end of Cadence-based PCIe controllers

#
# DesignWare-based PCIe controllers
#
scripts/config --enable CONFIG_PCIE_DW
scripts/config --enable CONFIG_PCIE_DW_HOST
scripts/config --enable CONFIG_PCIE_DW_EP
scripts/config --disable CONFIG_PCI_MESON
scripts/config --enable CONFIG_PCIE_DW_PLAT
scripts/config --enable CONFIG_PCIE_DW_PLAT_HOST
scripts/config --enable CONFIG_PCIE_DW_PLAT_EP
# end of DesignWare-based PCIe controllers

#
# Mobiveil-based PCIe controllers
#
# end of Mobiveil-based PCIe controllers

#
# PLDA-based PCIe controllers
#
# end of PLDA-based PCIe controllers
# end of PCI controller drivers

#
# PCI Endpoint
#
scripts/config --disable CONFIG_PCI_ENDPOINT
scripts/config --disable CONFIG_PCI_ENDPOINT_CONFIGFS
scripts/config --disable CONFIG_PCI_EPF_TEST
scripts/config --disable CONFIG_PCI_EPF_NTB
scripts/config --disable CONFIG_PCI_EPF_VNTB
scripts/config --disable CONFIG_PCI_EPF_MHI
# end of PCI Endpoint

#
# PCI switch controller drivers
#
scripts/config --disable CONFIG_PCI_SW_SWITCHTEC
# end of PCI switch controller drivers

scripts/config --disable CONFIG_CXL_BUS
scripts/config --disable CONFIG_CXL_PCI
scripts/config --disable CONFIG_CXL_MEM_RAW_COMMANDS
scripts/config --disable CONFIG_CXL_ACPI
scripts/config --disable CONFIG_CXL_PMEM
scripts/config --disable CONFIG_CXL_MEM
scripts/config --disable CONFIG_CXL_PORT
scripts/config --disable CONFIG_CXL_REGION
scripts/config --disable CONFIG_CXL_REGION_INVALIDATION_TEST
scripts/config --disable CONFIG_PCCARD
scripts/config --disable CONFIG_PCMCIA
scripts/config --disable CONFIG_PCMCIA_LOAD_CIS
scripts/config --disable CONFIG_CARDBUS

#
# PC-card bridges (已优化)
#
scripts/config --disable CONFIG_YENTA
scripts/config --disable CONFIG_YENTA_O2
scripts/config --disable CONFIG_YENTA_RICOH
scripts/config --disable CONFIG_YENTA_TI
scripts/config --disable CONFIG_YENTA_ENE_TUNE
scripts/config --disable CONFIG_YENTA_TOSHIBA
scripts/config --disable CONFIG_PD6729
scripts/config --disable CONFIG_I82092
scripts/config --disable CONFIG_PCCARD_NONSTATIC
scripts/config --disable CONFIG_RAPIDIO
scripts/config --disable CONFIG_RAPIDIO_TSI721
#scripts/config --set-val CONFIG_RAPIDIO_DISC_TIMEOUT 30
scripts/config --disable CONFIG_RAPIDIO_ENABLE_RX_TX_PORTS
scripts/config --disable CONFIG_RAPIDIO_DMA_ENGINE
scripts/config --disable CONFIG_RAPIDIO_DEBUG
scripts/config --disable CONFIG_RAPIDIO_ENUM_BASIC
scripts/config --disable CONFIG_RAPIDIO_CHMAN
scripts/config --disable CONFIG_RAPIDIO_MPORT_CDEV

#
# RapidIO Switch drivers （已优化）
#
scripts/config --disable CONFIG_RAPIDIO_CPS_XX
scripts/config --disable CONFIG_RAPIDIO_CPS_GEN2
scripts/config --disable CONFIG_RAPIDIO_RXS_GEN3
# end of RapidIO Switch drivers

#
# Generic Driver Options 
#
scripts/config --enable CONFIG_AUXILIARY_BUS
scripts/config --enable CONFIG_UEVENT_HELPER
scripts/config --set-val CONFIG_UEVENT_HELPER_PATH ""
scripts/config --enable CONFIG_DEVTMPFS
scripts/config --enable CONFIG_DEVTMPFS_MOUNT
scripts/config --enable CONFIG_DEVTMPFS_SAFE
scripts/config --disable CONFIG_STANDALONE
scripts/config --enable CONFIG_PREVENT_FIRMWARE_BUILD

#
# Firmware loader
#
scripts/config --enable CONFIG_FW_LOADER
scripts/config --enable CONFIG_FW_LOADER_DEBUG
scripts/config --enable CONFIG_FW_LOADER_PAGED_BUF
scripts/config --enable CONFIG_FW_LOADER_SYSFS
scripts/config --set-val CONFIG_EXTRA_FIRMWARE ""
scripts/config --enable CONFIG_FW_LOADER_USER_HELPER
scripts/config --disable CONFIG_FW_LOADER_USER_HELPER_FALLBACK
scripts/config --enable CONFIG_FW_LOADER_COMPRESS
scripts/config --enable CONFIG_FW_LOADER_COMPRESS_XZ
scripts/config --enable CONFIG_FW_LOADER_COMPRESS_ZSTD
scripts/config --enable CONFIG_FW_CACHE
scripts/config --enable CONFIG_FW_UPLOAD
# end of Firmware loader

scripts/config --disable CONFIG_WANT_DEV_COREDUMP
scripts/config --enable CONFIG_ALLOW_DEV_COREDUMP
scripts/config --enable CONFIG_DEV_COREDUMP
scripts/config --disable CONFIG_DEBUG_DRIVER
scripts/config --disable CONFIG_DEBUG_DEVRES
scripts/config --disable CONFIG_DEBUG_TEST_DRIVER_REMOVE
scripts/config --enable CONFIG_HMEM_REPORTING
scripts/config --disable CONFIG_TEST_ASYNC_DRIVER_PROBE
scripts/config --enable CONFIG_SYS_HYPERVISOR
scripts/config --enable CONFIG_GENERIC_CPU_DEVICES
scripts/config --enable CONFIG_GENERIC_CPU_AUTOPROBE
scripts/config --enable CONFIG_GENERIC_CPU_VULNERABILITIES
scripts/config --enable CONFIG_SOC_BUS
scripts/config --enable CONFIG_REGMAP
scripts/config --enable CONFIG_REGMAP_I2C
scripts/config --enable CONFIG_REGMAP_SPI
scripts/config --enable CONFIG_REGMAP_MMIO
scripts/config --enable CONFIG_REGMAP_IRQ
scripts/config --enable CONFIG_DMA_SHARED_BUFFER
scripts/config --disable CONFIG_DMA_FENCE_TRACE
scripts/config --disable CONFIG_FW_DEVLINK_SYNC_STATE_TIMEOUT
# end of Generic Driver Options

#
# Bus devices
#
scripts/config --disable CONFIG_MHI_BUS
scripts/config --disable CONFIG_MHI_BUS_DEBUG
scripts/config --disable CONFIG_MHI_BUS_PCI_GENERIC
scripts/config --disable CONFIG_MHI_BUS_EP
# end of Bus devices

#
# Cache Drivers
#
# end of Cache Drivers

scripts/config --enable CONFIG_CONNECTOR
scripts/config --enable CONFIG_PROC_EVENTS

#
# Firmware Drivers
#

#
# ARM System Control and Management Interface Protocol
#
# end of ARM System Control and Management Interface Protocol

scripts/config --enable CONFIG_EDD
scripts/config --enable CONFIG_EDD_OFF
scripts/config --enable CONFIG_FIRMWARE_MEMMAP
scripts/config --enable CONFIG_DMIID
scripts/config --module CONFIG_DMI_SYSFS
scripts/config --enable CONFIG_DMI_SCAN_MACHINE_NON_EFI_FALLBACK
scripts/config --enable CONFIG_ISCSI_IBFT_FIND
scripts/config --module CONFIG_ISCSI_IBFT
scripts/config --module CONFIG_FW_CFG_SYSFS
scripts/config --disable CONFIG_FW_CFG_SYSFS_CMDLINE
scripts/config --enable CONFIG_SYSFB
scripts/config --enable CONFIG_SYSFB_SIMPLEFB
scripts/config --module CONFIG_FW_CS_DSP
scripts/config --disable CONFIG_GOOGLE_FIRMWARE

#
# EFI (Extensible Firmware Interface) Support
#
scripts/config --enable CONFIG_EFI_ESRT
scripts/config --module CONFIG_EFI_VARS_PSTORE
scripts/config --disable CONFIG_EFI_VARS_PSTORE_DEFAULT_DISABLE
scripts/config --enable CONFIG_EFI_SOFT_RESERVE
scripts/config --enable CONFIG_EFI_DXE_MEM_ATTRIBUTES
scripts/config --enable CONFIG_EFI_RUNTIME_WRAPPERS
scripts/config --module CONFIG_EFI_BOOTLOADER_CONTROL
scripts/config --module CONFIG_EFI_CAPSULE_LOADER
scripts/config --module CONFIG_EFI_TEST
scripts/config --enable CONFIG_EFI_DEV_PATH_PARSER
scripts/config --enable CONFIG_APPLE_PROPERTIES
scripts/config --enable CONFIG_RESET_ATTACK_MITIGATION
scripts/config --enable CONFIG_EFI_RCI2_TABLE
scripts/config --disable CONFIG_EFI_DISABLE_PCI_DMA
scripts/config --enable CONFIG_EFI_EARLYCON
scripts/config --enable CONFIG_EFI_CUSTOM_SSDT_OVERLAYS
scripts/config --disable CONFIG_EFI_DISABLE_RUNTIME
scripts/config --enable CONFIG_EFI_COCO_SECRET
# end of EFI (Extensible Firmware Interface) Support

scripts/config --enable CONFIG_UEFI_CPER
scripts/config --enable CONFIG_UEFI_CPER_X86

#
# Qualcomm firmware drivers
#
# end of Qualcomm firmware drivers

#
# Tegra firmware driver
#
# end of Tegra firmware driver
# end of Firmware Drivers（已优化）

scripts/config --disable CONFIG_GNSS
scripts/config --disable CONFIG_GNSS_SERIAL
scripts/config --disable CONFIG_GNSS_MTK_SERIAL
scripts/config --disable CONFIG_GNSS_SIRF_SERIAL
scripts/config --disable CONFIG_GNSS_UBX_SERIAL
scripts/config --disable CONFIG_GNSS_USB
scripts/config --disable CONFIG_MTD
scripts/config --disable CONFIG_MTD_TESTS

#
# Partition parsers
#
scripts/config --disable CONFIG_MTD_CMDLINE_PARTS
scripts/config --disable CONFIG_MTD_REDBOOT_PARTS
scripts/config --set-val CONFIG_MTD_REDBOOT_DIRECTORY_BLOCK -1
scripts/config --disable CONFIG_MTD_REDBOOT_PARTS_UNALLOCATED
scripts/config --disable CONFIG_MTD_REDBOOT_PARTS_READONLY
# end of Partition parsers

#
# User Modules And Translation Layers
#
scripts/config --disable CONFIG_MTD_BLKDEVS
scripts/config --disable CONFIG_MTD_BLOCK
scripts/config --disable CONFIG_MTD_BLOCK_RO

#
# Note that in some cases UBI block is preferred. See MTD_UBI_BLOCK.
#
scripts/config --module CONFIG_FTL
scripts/config --module CONFIG_NFTL
scripts/config --enable CONFIG_NFTL_RW
scripts/config --module CONFIG_INFTL
scripts/config --module CONFIG_RFD_FTL
scripts/config --module CONFIG_SSFDC
scripts/config --module CONFIG_SM_FTL
scripts/config --disable CONFIG_MTD_OOPS
scripts/config --disable CONFIG_MTD_PSTORE
scripts/config --disable CONFIG_MTD_SWAP
scripts/config --disable CONFIG_MTD_PARTITIONED_MASTER

#
# RAM/ROM/Flash chip drivers
#
scripts/config --disable CONFIG_MTD_CFI
scripts/config --disable CONFIG_MTD_JEDECPROBE
scripts/config --disable CONFIG_MTD_GEN_PROBE
scripts/config --disable CONFIG_MTD_CFI_ADV_OPTIONS
scripts/config --disable CONFIG_MTD_MAP_BANK_WIDTH_1
scripts/config --disable CONFIG_MTD_MAP_BANK_WIDTH_2
scripts/config --disable CONFIG_MTD_MAP_BANK_WIDTH_4
scripts/config --disable CONFIG_MTD_CFI_I1
scripts/config --disable CONFIG_MTD_CFI_I2
scripts/config --disable CONFIG_MTD_CFI_INTELEXT
scripts/config --disable CONFIG_MTD_CFI_AMDSTD
scripts/config --disable CONFIG_MTD_CFI_STAA
scripts/config --disable CONFIG_MTD_CFI_UTIL
scripts/config --disable CONFIG_MTD_RAM
scripts/config --disable CONFIG_MTD_ROM
scripts/config --disable CONFIG_MTD_ABSENT
# end of RAM/ROM/Flash chip drivers

#
# Mapping drivers for chip access
#
scripts/config --disable CONFIG_MTD_COMPLEX_MAPPINGS
scripts/config --disable CONFIG_MTD_PHYSMAP
scripts/config --disable CONFIG_MTD_PHYSMAP_COMPAT
scripts/config --disable CONFIG_MTD_PHYSMAP_GPIO_ADDR
scripts/config --disable CONFIG_MTD_SBC_GXX
scripts/config --disable CONFIG_MTD_AMD76XROM
scripts/config --disable CONFIG_MTD_ICHXROM
scripts/config --disable CONFIG_MTD_ESB2ROM
scripts/config --disable CONFIG_MTD_CK804XROM
scripts/config --disable CONFIG_MTD_SCB2_FLASH
scripts/config --disable CONFIG_MTD_NETtel
scripts/config --disable CONFIG_MTD_L440GX
scripts/config --disable CONFIG_MTD_PCI
scripts/config --disable CONFIG_MTD_PCMCIA
scripts/config --disable CONFIG_MTD_PCMCIA_ANONYMOUS
scripts/config --disable CONFIG_MTD_PLATRAM
# end of Mapping drivers for chip access

#
# Self-contained MTD device drivers
#
scripts/config --disable CONFIG_MTD_PMC551
scripts/config --disable CONFIG_MTD_PMC551_BUGFIX
scripts/config --disable CONFIG_MTD_PMC551_DEBUG
scripts/config --disable CONFIG_MTD_DATAFLASH
scripts/config --disable CONFIG_MTD_DATAFLASH_WRITE_VERIFY
scripts/config --disable CONFIG_MTD_DATAFLASH_OTP
scripts/config --disable CONFIG_MTD_MCHP23K256
scripts/config --disable CONFIG_MTD_MCHP48L640
scripts/config --disable CONFIG_MTD_SST25L
scripts/config --disable CONFIG_MTD_SLRAM
scripts/config --disable CONFIG_MTD_PHRAM
scripts/config --disable CONFIG_MTD_MTDRAM
scripts/config --set-val CONFIG_MTDRAM_TOTAL_SIZE 4096
scripts/config --set-val CONFIG_MTDRAM_ERASE_SIZE 128
scripts/config --disable CONFIG_MTD_BLOCK2MTD

#
# Disk-On-Chip Device Drivers
#
scripts/config --disable CONFIG_MTD_DOCG3
# end of Self-contained MTD device drivers

#
# NAND
#
scripts/config --disable CONFIG_MTD_NAND_CORE
scripts/config --disable CONFIG_MTD_ONENAND
scripts/config --disable CONFIG_MTD_ONENAND_VERIFY_WRITE
scripts/config --disable CONFIG_MTD_ONENAND_GENERIC
scripts/config --disable CONFIG_MTD_ONENAND_OTP
scripts/config --disable CONFIG_MTD_ONENAND_2X_PROGRAM
scripts/config --disable CONFIG_MTD_RAW_NAND

#
# Raw/parallel NAND flash controllers
#
scripts/config --disable CONFIG_MTD_NAND_DENALI
scripts/config --disable CONFIG_MTD_NAND_DENALI_PCI
scripts/config --disable CONFIG_MTD_NAND_CAFE
scripts/config --disable CONFIG_MTD_NAND_MXIC
scripts/config --disable CONFIG_MTD_NAND_GPIO
scripts/config --disable CONFIG_MTD_NAND_PLATFORM
scripts/config --disable CONFIG_MTD_NAND_ARASAN

#
# Misc
#
scripts/config --disable CONFIG_MTD_SM_COMMON
scripts/config --disable CONFIG_MTD_NAND_NANDSIM
scripts/config --disable CONFIG_MTD_NAND_RICOH
scripts/config --disable CONFIG_MTD_NAND_DISKONCHIP
scripts/config --disable CONFIG_MTD_NAND_DISKONCHIP_PROBE_ADVANCED
scripts/config --set-val CONFIG_MTD_NAND_DISKONCHIP_PROBE_ADDRESS 0
scripts/config --disable CONFIG_MTD_NAND_DISKONCHIP_BBTWRITE
scripts/config --disable CONFIG_MTD_SPI_NAND

#
# ECC engine support
#
scripts/config --disable CONFIG_MTD_NAND_ECC
scripts/config --disable CONFIG_MTD_NAND_ECC_SW_HAMMING
scripts/config --disable CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC
scripts/config --disable CONFIG_MTD_NAND_ECC_SW_BCH
scripts/config --disable CONFIG_MTD_NAND_ECC_MXIC
# end of ECC engine support
# end of NAND

#
# LPDDR & LPDDR2 PCM memory drivers
#
scripts/config --disable CONFIG_MTD_LPDDR
scripts/config --disable CONFIG_MTD_QINFO_PROBE
# end of LPDDR & LPDDR2 PCM memory drivers

scripts/config --disable CONFIG_MTD_SPI_NOR
scripts/config --disable CONFIG_MTD_SPI_NOR_USE_4K_SECTORS
scripts/config --disable CONFIG_MTD_SPI_NOR_SWP_DISABLE
scripts/config --disable CONFIG_MTD_SPI_NOR_SWP_DISABLE_ON_VOLATILE
scripts/config --disable CONFIG_MTD_SPI_NOR_SWP_KEEP
scripts/config --disable CONFIG_MTD_UBI
scripts/config --set-val CONFIG_MTD_UBI_WL_THRESHOLD 4096
scripts/config --set-val CONFIG_MTD_UBI_BEB_LIMIT 20
scripts/config --disable CONFIG_MTD_UBI_FASTMAP
scripts/config --disable CONFIG_MTD_UBI_GLUEBI
scripts/config --disable CONFIG_MTD_UBI_BLOCK
scripts/config --disable CONFIG_MTD_UBI_NVMEM
scripts/config --disable CONFIG_MTD_HYPERBUS
scripts/config --disable CONFIG_OF
scripts/config --enable CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT
scripts/config --disable CONFIG_PARPORT
scripts/config --disable CONFIG_PARPORT_PC
scripts/config --disable CONFIG_PARPORT_SERIAL
scripts/config --disable CONFIG_PARPORT_PC_FIFO
scripts/config --disable CONFIG_PARPORT_PC_SUPERIO
scripts/config --disable CONFIG_PARPORT_PC_PCMCIA
scripts/config --disable CONFIG_PARPORT_1284
scripts/config --disable CONFIG_PARPORT_NOT_PC
scripts/config --enable CONFIG_PNP
scripts/config --disable CONFIG_PNP_DEBUG_MESSAGES

#
# Protocols
#
scripts/config --enable CONFIG_PNPACPI
scripts/config --enable CONFIG_BLK_DEV
scripts/config --module CONFIG_BLK_DEV_NULL_BLK
scripts/config --disable CONFIG_BLK_DEV_FD
scripts/config --disable CONFIG_BLK_DEV_FD_RAWCMD
scripts/config --disable CONFIG_CDROM
scripts/config --module CONFIG_BLK_DEV_PCIESSD_MTIP32XX
scripts/config --module CONFIG_ZRAM
scripts/config --enable CONFIG_ZRAM_BACKEND_LZ4
scripts/config --enable CONFIG_ZRAM_BACKEND_LZ4HC
scripts/config --enable CONFIG_ZRAM_BACKEND_ZSTD
scripts/config --disable CONFIG_ZRAM_BACKEND_DEFLATE
scripts/config --disable CONFIG_ZRAM_BACKEND_842
scripts/config --enable CONFIG_ZRAM_BACKEND_LZO
scripts/config --enable CONFIG_ZRAM_DEF_COMP_LZORLE
scripts/config --disable CONFIG_ZRAM_DEF_COMP_LZO
scripts/config --disable CONFIG_ZRAM_DEF_COMP_LZ4
scripts/config --disable CONFIG_ZRAM_DEF_COMP_LZ4HC
scripts/config --disable CONFIG_ZRAM_DEF_COMP_ZSTD
scripts/config --set-val CONFIG_ZRAM_DEF_COMP "lzo-rle"
scripts/config --enable CONFIG_ZRAM_WRITEBACK
scripts/config --enable CONFIG_ZRAM_TRACK_ENTRY_ACTIME
scripts/config --enable CONFIG_ZRAM_MEMORY_TRACKING
scripts/config --enable CONFIG_ZRAM_MULTI_COMP
scripts/config --enable CONFIG_BLK_DEV_LOOP
scripts/config --set-val CONFIG_BLK_DEV_LOOP_MIN_COUNT 8
scripts/config --module CONFIG_BLK_DEV_DRBD
scripts/config --disable CONFIG_DRBD_FAULT_INJECTION
scripts/config --module CONFIG_BLK_DEV_NBD
scripts/config --module CONFIG_BLK_DEV_RAM
scripts/config --set-val CONFIG_BLK_DEV_RAM_COUNT 16
scripts/config --set-val CONFIG_BLK_DEV_RAM_SIZE 65536
scripts/config --disable CONFIG_CDROM_PKTCDVD
scripts/config --disable CONFIG_ATA_OVER_ETH
scripts/config --enable CONFIG_XEN_BLKDEV_FRONTEND
scripts/config --module CONFIG_XEN_BLKDEV_BACKEND
scripts/config --module CONFIG_VIRTIO_BLK
scripts/config --module CONFIG_BLK_DEV_RBD
scripts/config --module CONFIG_BLK_DEV_UBLK
scripts/config --disable CONFIG_BLKDEV_UBLK_LEGACY_OPCODES
scripts/config --enable CONFIG_BLK_DEV_RNBD
scripts/config --module CONFIG_BLK_DEV_RNBD_CLIENT
scripts/config --module CONFIG_BLK_DEV_RNBD_SERVER

#
# NVME Support
#
scripts/config --module CONFIG_NVME_KEYRING
scripts/config --module CONFIG_NVME_AUTH
scripts/config --module CONFIG_NVME_CORE
scripts/config --module CONFIG_BLK_DEV_NVME
scripts/config --enable CONFIG_NVME_MULTIPATH
scripts/config --disable CONFIG_NVME_VERBOSE_ERRORS
scripts/config --enable CONFIG_NVME_HWMON
scripts/config --module CONFIG_NVME_FABRICS
scripts/config --disable CONFIG_NVME_RDMA
scripts/config --disable CONFIG_NVME_FC
scripts/config --module CONFIG_NVME_TCP
scripts/config --enable CONFIG_NVME_TCP_TLS
scripts/config --enable CONFIG_NVME_HOST_AUTH
scripts/config --module CONFIG_NVME_TARGET
scripts/config --disable CONFIG_NVME_TARGET_DEBUGFS
scripts/config --enable CONFIG_NVME_TARGET_PASSTHRU
scripts/config --module CONFIG_NVME_TARGET_LOOP
scripts/config --disable CONFIG_NVME_TARGET_RDMA
scripts/config --disable CONFIG_NVME_TARGET_FC
scripts/config --disable CONFIG_NVME_TARGET_FCLOOP
scripts/config --module CONFIG_NVME_TARGET_TCP
scripts/config --enable CONFIG_NVME_TARGET_TCP_TLS
scripts/config --enable CONFIG_NVME_TARGET_AUTH
# end of NVME Support

#
# Misc devices
#
scripts/config --disable CONFIG_SENSORS_LIS3LV02D
scripts/config --disable CONFIG_AD525X_DPOT
scripts/config --disable CONFIG_AD525X_DPOT_I2C
scripts/config --disable CONFIG_AD525X_DPOT_SPI
scripts/config --module CONFIG_DUMMY_IRQ
scripts/config --module CONFIG_IBM_ASM
scripts/config --disable CONFIG_PHANTOM
scripts/config --module CONFIG_RPMB
scripts/config --disable CONFIG_TIFM_CORE
scripts/config --disable CONFIG_TIFM_7XX1
scripts/config --disable CONFIG_ICS932S401
scripts/config --module CONFIG_ENCLOSURE_SERVICES
scripts/config --module CONFIG_HP_ILO
scripts/config --disable CONFIG_APDS9802ALS
scripts/config --disable CONFIG_ISL29003
scripts/config --disable CONFIG_ISL29020
scripts/config --disable CONFIG_SENSORS_TSL2550
scripts/config --disable CONFIG_SENSORS_BH1770
scripts/config --disable CONFIG_SENSORS_APDS990X
scripts/config --disable CONFIG_HMC6352
scripts/config --disable CONFIG_DS1682
scripts/config --module CONFIG_VMWARE_BALLOON
scripts/config --disable CONFIG_LATTICE_ECP3_CONFIG
scripts/config --enable CONFIG_SRAM
scripts/config --disable CONFIG_DW_XDATA_PCIE
scripts/config --disable CONFIG_PCI_ENDPOINT_TEST
scripts/config --disable CONFIG_XILINX_SDFEC
scripts/config --disable CONFIG_MISC_RTSX
scripts/config --module CONFIG_NTSYNC
scripts/config --module CONFIG_NSM
scripts/config --disable CONFIG_C2PORT
scripts/config --disable CONFIG_C2PORT_DURAMAR_2150

#
# EEPROM support
#
scripts/config --disable CONFIG_EEPROM_AT24
scripts/config --disable CONFIG_EEPROM_AT25
scripts/config --disable CONFIG_EEPROM_MAX6875
scripts/config --disable CONFIG_EEPROM_93CX6
scripts/config --disable CONFIG_EEPROM_93XX46
scripts/config --disable CONFIG_EEPROM_IDT_89HPESX
scripts/config --disable CONFIG_EEPROM_EE1004
# end of EEPROM support

scripts/config --disable CONFIG_CB710_CORE
scripts/config --disable CONFIG_CB710_DEBUG
scripts/config --disable CONFIG_CB710_DEBUG_ASSUMPTIONS

#
# Texas Instruments shared transport line discipline
#
scripts/config --disable CONFIG_TI_ST
# end of Texas Instruments shared transport line discipline

scripts/config --disable CONFIG_SENSORS_LIS3_I2C
scripts/config --disable CONFIG_ALTERA_STAPL
scripts/config --disable CONFIG_INTEL_MEI
scripts/config --disable CONFIG_INTEL_MEI_ME
scripts/config --disable CONFIG_INTEL_MEI_TXE
scripts/config --disable CONFIG_INTEL_MEI_VSC_HW
scripts/config --disable CONFIG_INTEL_MEI_VSC
scripts/config --module CONFIG_VMWARE_VMCI
scripts/config --disable CONFIG_GENWQE
scripts/config --set-val CONFIG_GENWQE_PLATFORM_ERROR_RECOVERY 0
scripts/config --module CONFIG_ECHO
scripts/config --disable CONFIG_BCM_VK
scripts/config --disable CONFIG_BCM_VK_TTY
scripts/config --module CONFIG_MISC_ALCOR_PCI
scripts/config --disable CONFIG_MISC_RTSX_PCI
scripts/config --disable CONFIG_MISC_RTSX_USB
scripts/config --module CONFIG_UACCE
scripts/config --enable CONFIG_PVPANIC
scripts/config --module CONFIG_PVPANIC_MMIO
scripts/config --module CONFIG_PVPANIC_PCI
scripts/config --disable CONFIG_GP_PCI1XXXX
scripts/config --disable CONFIG_KEBA_CP500
# end of Misc devices

#
# SCSI device support
#
scripts/config --enable CONFIG_SCSI_MOD
scripts/config --module CONFIG_RAID_ATTRS
scripts/config --enable CONFIG_SCSI_COMMON
scripts/config --enable CONFIG_SCSI
scripts/config --enable CONFIG_SCSI_DMA
scripts/config --enable CONFIG_SCSI_NETLINK
scripts/config --enable CONFIG_SCSI_PROC_FS

#
# SCSI support type (disk, tape, CD-ROM)
#
scripts/config --enable CONFIG_BLK_DEV_SD
scripts/config --disable CONFIG_CHR_DEV_ST
scripts/config --enable CONFIG_BLK_DEV_SR
scripts/config --enable CONFIG_CHR_DEV_SG
scripts/config --enable CONFIG_BLK_DEV_BSG
scripts/config --disable CONFIG_CHR_DEV_SCH
scripts/config --module CONFIG_SCSI_ENCLOSURE
scripts/config --enable CONFIG_SCSI_CONSTANTS
scripts/config --enable CONFIG_SCSI_LOGGING
scripts/config --enable CONFIG_SCSI_SCAN_ASYNC

#
# SCSI Transports
#
scripts/config --module CONFIG_SCSI_SPI_ATTRS
scripts/config --module CONFIG_SCSI_FC_ATTRS
scripts/config --module CONFIG_SCSI_ISCSI_ATTRS
scripts/config --module CONFIG_SCSI_SAS_ATTRS
scripts/config --module CONFIG_SCSI_SAS_LIBSAS
scripts/config --enable CONFIG_SCSI_SAS_ATA
scripts/config --enable CONFIG_SCSI_SAS_HOST_SMP
scripts/config --module CONFIG_SCSI_SRP_ATTRS
# end of SCSI Transports

scripts/config --enable CONFIG_SCSI_LOWLEVEL
scripts/config --module CONFIG_ISCSI_TCP
scripts/config --module CONFIG_ISCSI_BOOT_SYSFS
scripts/config --disable CONFIG_SCSI_CXGB3_ISCSI
scripts/config --disable CONFIG_SCSI_CXGB4_ISCSI
scripts/config --disable CONFIG_SCSI_BNX2_ISCSI
scripts/config --disable CONFIG_SCSI_BNX2X_FCOE
scripts/config --disable CONFIG_BE2ISCSI
scripts/config --disable CONFIG_BLK_DEV_3W_XXXX_RAID
scripts/config --disable CONFIG_SCSI_HPSA
scripts/config --disable CONFIG_SCSI_3W_9XXX
scripts/config --disable CONFIG_SCSI_3W_SAS
scripts/config --disable CONFIG_SCSI_ACARD
scripts/config --disable CONFIG_SCSI_AACRAID
scripts/config --disable CONFIG_SCSI_AIC7XXX
scripts/config --set-val CONFIG_AIC7XXX_CMDS_PER_DEVICE 8
scripts/config --set-val CONFIG_AIC7XXX_RESET_DELAY_MS 5000
scripts/config --disable CONFIG_AIC7XXX_DEBUG_ENABLE
scripts/config --set-val CONFIG_AIC7XXX_DEBUG_MASK 0
scripts/config --enable CONFIG_AIC7XXX_REG_PRETTY_PRINT
scripts/config --disable CONFIG_SCSI_AIC79XX
scripts/config --set-val CONFIG_AIC79XX_CMDS_PER_DEVICE 32
scripts/config --set-val CONFIG_AIC79XX_RESET_DELAY_MS 5000
scripts/config --disable CONFIG_AIC79XX_DEBUG_ENABLE
scripts/config --set-val CONFIG_AIC79XX_DEBUG_MASK 0
scripts/config --enable CONFIG_AIC79XX_REG_PRETTY_PRINT
scripts/config --disable CONFIG_SCSI_AIC94XX
scripts/config --disable CONFIG_AIC94XX_DEBUG
scripts/config --disable CONFIG_SCSI_MVSAS
scripts/config --disable CONFIG_SCSI_MVSAS_DEBUG
scripts/config --disable CONFIG_SCSI_MVSAS_TASKLET
scripts/config --disable CONFIG_SCSI_MVUMI
scripts/config --disable CONFIG_SCSI_ADVANSYS
scripts/config --disable CONFIG_SCSI_ARCMSR
scripts/config --disable CONFIG_SCSI_ESAS2R
scripts/config --disable CONFIG_MEGARAID_NEWGEN
scripts/config --disable CONFIG_MEGARAID_MM
scripts/config --disable CONFIG_MEGARAID_MAILBOX
scripts/config --disable CONFIG_MEGARAID_LEGACY
scripts/config --disable CONFIG_MEGARAID_SAS
scripts/config --disable CONFIG_SCSI_MPT3SAS
scripts/config --set-val CONFIG_SCSI_MPT2SAS_MAX_SGE 128
scripts/config --set-val CONFIG_SCSI_MPT3SAS_MAX_SGE 128
scripts/config --disable CONFIG_SCSI_MPT2SAS
scripts/config --disable CONFIG_SCSI_MPI3MR
scripts/config --disable CONFIG_SCSI_SMARTPQI
scripts/config --disable CONFIG_SCSI_HPTIOP
scripts/config --disable CONFIG_SCSI_BUSLOGIC
scripts/config --enable CONFIG_SCSI_FLASHPOINT
scripts/config --disable CONFIG_SCSI_MYRB
scripts/config --disable CONFIG_SCSI_MYRS
scripts/config --module CONFIG_VMWARE_PVSCSI
scripts/config --module CONFIG_XEN_SCSI_FRONTEND
scripts/config --module CONFIG_HYPERV_STORAGE
scripts/config --disable CONFIG_LIBFC
scripts/config --disable CONFIG_LIBFCOE
scripts/config --disable CONFIG_FCOE
scripts/config --disable CONFIG_FCOE_FNIC
scripts/config --disable CONFIG_SCSI_SNIC
scripts/config --disable CONFIG_SCSI_SNIC_DEBUG_FS
scripts/config --disable CONFIG_SCSI_DMX3191D
scripts/config --disable CONFIG_SCSI_FDOMAIN
scripts/config --disable CONFIG_SCSI_FDOMAIN_PCI
scripts/config --disable CONFIG_SCSI_ISCI
scripts/config --disable CONFIG_SCSI_IPS
scripts/config --disable CONFIG_SCSI_INITIO
scripts/config --disable CONFIG_SCSI_INIA100
scripts/config --disable CONFIG_SCSI_PPA
scripts/config --disable CONFIG_SCSI_IMM
scripts/config --disable CONFIG_SCSI_IZIP_SLOW_CTR
scripts/config --disable CONFIG_SCSI_STEX
scripts/config --disable CONFIG_SCSI_SYM53C8XX_2
scripts/config --set-val CONFIG_SCSI_SYM53C8XX_DMA_ADDRESSING_MODE 1
scripts/config --set-val CONFIG_SCSI_SYM53C8XX_DEFAULT_TAGS 16
scripts/config --set-val CONFIG_SCSI_SYM53C8XX_MAX_TAGS 64
scripts/config --disable CONFIG_SCSI_SYM53C8XX_MMIO
scripts/config --disable CONFIG_SCSI_IPR
scripts/config --disable CONFIG_SCSI_IPR_TRACE
scripts/config --disable CONFIG_SCSI_IPR_DUMP
scripts/config --disable CONFIG_SCSI_QLOGIC_1280
scripts/config --disable CONFIG_SCSI_QLA_FC
scripts/config --disable CONFIG_TCM_QLA2XXX
scripts/config --disable CONFIG_TCM_QLA2XXX_DEBUG
scripts/config --disable CONFIG_SCSI_QLA_ISCSI
scripts/config --disable CONFIG_QEDI
scripts/config --disable CONFIG_QEDF
scripts/config --disable CONFIG_SCSI_EFCT
scripts/config --disable CONFIG_SCSI_DC395x
scripts/config --disable CONFIG_SCSI_AM53C974
scripts/config --disable CONFIG_SCSI_WD719X
scripts/config --module CONFIG_SCSI_DEBUG
scripts/config --disable CONFIG_SCSI_PMCRAID
scripts/config --disable CONFIG_SCSI_PM8001
scripts/config --disable CONFIG_SCSI_BFA_FC
scripts/config --module CONFIG_SCSI_VIRTIO
scripts/config --disable CONFIG_SCSI_CHELSIO_FCOE
scripts/config --enable CONFIG_SCSI_LOWLEVEL_PCMCIA
scripts/config --disable CONFIG_PCMCIA_AHA152X
scripts/config --disable CONFIG_PCMCIA_FDOMAIN
scripts/config --disable CONFIG_PCMCIA_QLOGIC
scripts/config --disable CONFIG_PCMCIA_SYM53C500
scripts/config --enable CONFIG_SCSI_DH
scripts/config --disable CONFIG_SCSI_DH_RDAC
scripts/config --disable CONFIG_SCSI_DH_HP_SW
scripts/config --disable CONFIG_SCSI_DH_EMC
scripts/config --module CONFIG_SCSI_DH_ALUA
# end of SCSI device support

scripts/config --enable CONFIG_ATA
scripts/config --disable CONFIG_SATA_HOST
scripts/config --disable CONFIG_PATA_TIMINGS
scripts/config --enable CONFIG_ATA_VERBOSE_ERROR
scripts/config --enable CONFIG_ATA_FORCE
scripts/config --enable CONFIG_ATA_ACPI
scripts/config --disable CONFIG_SATA_ZPODD
scripts/config --disable CONFIG_SATA_PMP

#
# Controllers with non-SFF native interface
#
scripts/config --disable CONFIG_SATA_AHCI
scripts/config --set-val CONFIG_SATA_MOBILE_LPM_POLICY 3
scripts/config --disable CONFIG_SATA_AHCI_PLATFORM
scripts/config --disable CONFIG_AHCI_DWC
scripts/config --disable CONFIG_SATA_INIC162X
scripts/config --disable CONFIG_SATA_ACARD_AHCI
scripts/config --disable CONFIG_SATA_SIL24
scripts/config --disable CONFIG_ATA_SFF

#
# SFF controllers with custom DMA interface
#
scripts/config --disable CONFIG_PDC_ADMA
scripts/config --disable CONFIG_SATA_QSTOR
scripts/config --disable CONFIG_SATA_SX4
scripts/config --disable CONFIG_ATA_BMDMA

#
# SATA SFF controllers with BMDMA
#
scripts/config --disable CONFIG_ATA_PIIX
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

#
# PATA SFF controllers with BMDMA
#
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
scripts/config --disable CONFIG_PATA_SIS
scripts/config --disable CONFIG_PATA_TOSHIBA
scripts/config --disable CONFIG_PATA_TRIFLEX
scripts/config --disable CONFIG_PATA_VIA
scripts/config --disable CONFIG_PATA_WINBOND

#
# PIO-only SFF controllers
#
scripts/config --disable CONFIG_PATA_CMD640_PCI
scripts/config --disable CONFIG_PATA_MPIIX
scripts/config --disable CONFIG_PATA_NS87410
scripts/config --disable CONFIG_PATA_OPTI
scripts/config --disable CONFIG_PATA_PCMCIA
scripts/config --disable CONFIG_PATA_RZ1000
scripts/config --disable CONFIG_PATA_PARPORT

#
# Parallel IDE protocol modules
#
scripts/config --disable CONFIG_PATA_PARPORT_ATEN
scripts/config --disable CONFIG_PATA_PARPORT_BPCK
scripts/config --disable CONFIG_PATA_PARPORT_BPCK6
scripts/config --disable CONFIG_PATA_PARPORT_COMM
scripts/config --disable CONFIG_PATA_PARPORT_DSTR
scripts/config --disable CONFIG_PATA_PARPORT_FIT2
scripts/config --disable CONFIG_PATA_PARPORT_FIT3
scripts/config --disable CONFIG_PATA_PARPORT_EPAT
scripts/config --disable CONFIG_PATA_PARPORT_EPATC8
scripts/config --disable CONFIG_PATA_PARPORT_EPIA
scripts/config --disable CONFIG_PATA_PARPORT_FRIQ
scripts/config --disable CONFIG_PATA_PARPORT_FRPW
scripts/config --disable CONFIG_PATA_PARPORT_KBIC
scripts/config --disable CONFIG_PATA_PARPORT_KTTI
scripts/config --disable CONFIG_PATA_PARPORT_ON20
scripts/config --disable CONFIG_PATA_PARPORT_ON26

#
# Generic fallback / legacy drivers
#
scripts/config --disable CONFIG_PATA_ACPI
scripts/config --disable CONFIG_ATA_GENERIC
scripts/config --disable CONFIG_PATA_LEGACY
scripts/config --enable CONFIG_MD
scripts/config --enable CONFIG_BLK_DEV_MD
scripts/config --enable CONFIG_MD_AUTODETECT
scripts/config --enable CONFIG_MD_BITMAP_FILE
scripts/config --module CONFIG_MD_LINEAR
scripts/config --module CONFIG_MD_RAID0
scripts/config --module CONFIG_MD_RAID1
scripts/config --module CONFIG_MD_RAID10
scripts/config --module CONFIG_MD_RAID456
scripts/config --module CONFIG_MD_CLUSTER
scripts/config --module CONFIG_BCACHE
scripts/config --disable CONFIG_BCACHE_DEBUG
scripts/config --enable CONFIG_BCACHE_ASYNC_REGISTRATION
scripts/config --enable CONFIG_BLK_DEV_DM_BUILTIN
scripts/config --enable CONFIG_BLK_DEV_DM
scripts/config --disable CONFIG_DM_DEBUG
scripts/config --module CONFIG_DM_BUFIO
scripts/config --disable CONFIG_DM_DEBUG_BLOCK_MANAGER_LOCKING
scripts/config --module CONFIG_DM_BIO_PRISON
scripts/config --module CONFIG_DM_PERSISTENT_DATA
scripts/config --module CONFIG_DM_UNSTRIPED
scripts/config --module CONFIG_DM_CRYPT
scripts/config --module CONFIG_DM_SNAPSHOT
scripts/config --module CONFIG_DM_THIN_PROVISIONING
scripts/config --module CONFIG_DM_CACHE
scripts/config --module CONFIG_DM_CACHE_SMQ
scripts/config --module CONFIG_DM_WRITECACHE
scripts/config --module CONFIG_DM_EBS
scripts/config --module CONFIG_DM_ERA
scripts/config --module CONFIG_DM_CLONE
scripts/config --module CONFIG_DM_MIRROR
scripts/config --module CONFIG_DM_LOG_USERSPACE
scripts/config --module CONFIG_DM_RAID
scripts/config --module CONFIG_DM_ZERO
scripts/config --module CONFIG_DM_MULTIPATH
scripts/config --module CONFIG_DM_MULTIPATH_QL
scripts/config --module CONFIG_DM_MULTIPATH_ST
scripts/config --module CONFIG_DM_MULTIPATH_HST
scripts/config --module CONFIG_DM_MULTIPATH_IOA
scripts/config --module CONFIG_DM_DELAY
scripts/config --disable CONFIG_DM_DUST
scripts/config --enable CONFIG_DM_INIT
scripts/config --enable CONFIG_DM_UEVENT
scripts/config --module CONFIG_DM_FLAKEY
scripts/config --module CONFIG_DM_VERITY
scripts/config --enable CONFIG_DM_VERITY_VERIFY_ROOTHASH_SIG
scripts/config --enable CONFIG_DM_VERITY_VERIFY_ROOTHASH_SIG_SECONDARY_KEYRING
scripts/config --enable CONFIG_DM_VERITY_VERIFY_ROOTHASH_SIG_PLATFORM_KEYRING
scripts/config --disable CONFIG_DM_VERITY_FEC
scripts/config --module CONFIG_DM_SWITCH
scripts/config --module CONFIG_DM_LOG_WRITES
scripts/config --module CONFIG_DM_INTEGRITY
scripts/config --module CONFIG_DM_ZONED
scripts/config --enable CONFIG_DM_AUDIT
scripts/config --module CONFIG_DM_VDO
scripts/config --module CONFIG_TARGET_CORE
scripts/config --module CONFIG_TCM_IBLOCK
scripts/config --module CONFIG_TCM_FILEIO
scripts/config --module CONFIG_TCM_PSCSI
scripts/config --module CONFIG_TCM_USER2
scripts/config --module CONFIG_LOOPBACK_TARGET
scripts/config --module CONFIG_TCM_FC
scripts/config --module CONFIG_ISCSI_TARGET
scripts/config --module CONFIG_ISCSI_TARGET_CXGB4
scripts/config --module CONFIG_SBP_TARGET
scripts/config --module CONFIG_REMOTE_TARGET
scripts/config --enable CONFIG_FUSION
scripts/config --module CONFIG_FUSION_SPI
scripts/config --module CONFIG_FUSION_FC
scripts/config --module CONFIG_FUSION_SAS
scripts/config --set-val CONFIG_FUSION_MAX_SGE 128
scripts/config --module CONFIG_FUSION_CTL
scripts/config --module CONFIG_FUSION_LAN
scripts/config --enable CONFIG_FUSION_LOGGING

#
# IEEE 1394 (FireWire) support
#
scripts/config --disable CONFIG_FIREWIRE
scripts/config --disable CONFIG_FIREWIRE_OHCI
scripts/config --disable CONFIG_FIREWIRE_SBP2
scripts/config --disable CONFIG_FIREWIRE_NET
scripts/config --disable CONFIG_FIREWIRE_NOSY
# end of IEEE 1394 (FireWire) support

scripts/config --disable CONFIG_MACINTOSH_DRIVERS
scripts/config --disable CONFIG_MAC_EMUMOUSEBTN
scripts/config --enable CONFIG_NETDEVICES
scripts/config --module CONFIG_MII
scripts/config --enable CONFIG_NET_CORE
scripts/config --module CONFIG_BONDING
scripts/config --module CONFIG_DUMMY
scripts/config --module CONFIG_WIREGUARD
scripts/config --disable CONFIG_WIREGUARD_DEBUG
scripts/config --module CONFIG_EQUALIZER
scripts/config --enable CONFIG_NET_FC
scripts/config --module CONFIG_IFB
scripts/config --module CONFIG_NET_TEAM
scripts/config --module CONFIG_NET_TEAM_MODE_BROADCAST
scripts/config --module CONFIG_NET_TEAM_MODE_ROUNDROBIN
scripts/config --module CONFIG_NET_TEAM_MODE_RANDOM
scripts/config --module CONFIG_NET_TEAM_MODE_ACTIVEBACKUP
scripts/config --module CONFIG_NET_TEAM_MODE_LOADBALANCE
scripts/config --module CONFIG_MACVLAN
scripts/config --module CONFIG_MACVTAP
scripts/config --enable CONFIG_IPVLAN_L3S
scripts/config --module CONFIG_IPVLAN
scripts/config --module CONFIG_IPVTAP
scripts/config --module CONFIG_VXLAN
scripts/config --module CONFIG_GENEVE
scripts/config --module CONFIG_BAREUDP
scripts/config --module CONFIG_GTP
scripts/config --module CONFIG_PFCP
scripts/config --module CONFIG_AMT
scripts/config --module CONFIG_MACSEC
scripts/config --module CONFIG_NETCONSOLE
scripts/config --enable CONFIG_NETCONSOLE_DYNAMIC
scripts/config --disable CONFIG_NETCONSOLE_EXTENDED_LOG
scripts/config --enable CONFIG_NETPOLL
scripts/config --enable CONFIG_NET_POLL_CONTROLLER
scripts/config --module CONFIG_NTB_NETDEV
scripts/config --module CONFIG_RIONET
scripts/config --set-val CONFIG_RIONET_TX_SIZE 128
scripts/config --set-val CONFIG_RIONET_RX_SIZE 128
scripts/config --enable CONFIG_TUN
scripts/config --module CONFIG_TAP
scripts/config --disable CONFIG_TUN_VNET_CROSS_LE
scripts/config --module CONFIG_VETH
scripts/config --module CONFIG_VIRTIO_NET
scripts/config --module CONFIG_NLMON
scripts/config --enable CONFIG_NETKIT
scripts/config --module CONFIG_NET_VRF
scripts/config --module CONFIG_VSOCKMON
scripts/config --disable CONFIG_MHI_NET
scripts/config --disable CONFIG_SUNGEM_PHY
scripts/config --module CONFIG_ARCNET
scripts/config --module CONFIG_ARCNET_1201
scripts/config --module CONFIG_ARCNET_1051
scripts/config --module CONFIG_ARCNET_RAW
scripts/config --module CONFIG_ARCNET_CAP
scripts/config --module CONFIG_ARCNET_COM90xx
scripts/config --module CONFIG_ARCNET_COM90xxIO
scripts/config --module CONFIG_ARCNET_RIM_I
scripts/config --module CONFIG_ARCNET_COM20020
scripts/config --module CONFIG_ARCNET_COM20020_PCI
scripts/config --module CONFIG_ARCNET_COM20020_CS
scripts/config --disable CONFIG_ATM_DRIVERS
scripts/config --disable CONFIG_ATM_DUMMY
scripts/config --disable CONFIG_ATM_TCP
scripts/config --disable CONFIG_ATM_LANAI
scripts/config --disable CONFIG_ATM_ENI
scripts/config --disable CONFIG_ATM_ENI_DEBUG
scripts/config --disable CONFIG_ATM_ENI_TUNE_BURST
scripts/config --disable CONFIG_ATM_NICSTAR
scripts/config --disable CONFIG_ATM_NICSTAR_USE_SUNI
scripts/config --disable CONFIG_ATM_NICSTAR_USE_IDT77105
scripts/config --disable CONFIG_ATM_IDT77252
scripts/config --disable CONFIG_ATM_IDT77252_DEBUG
scripts/config --disable CONFIG_ATM_IDT77252_RCV_ALL
scripts/config --disable CONFIG_ATM_IDT77252_USE_SUNI
scripts/config --disable CONFIG_ATM_IA
scripts/config --disable CONFIG_ATM_IA_DEBUG
scripts/config --disable CONFIG_ATM_FORE200E
scripts/config --disable CONFIG_ATM_FORE200E_USE_TASKLET
scripts/config --set-val CONFIG_ATM_FORE200E_TX_RETRY 16
scripts/config --set-val CONFIG_ATM_FORE200E_DEBUG 0
scripts/config --disable CONFIG_ATM_HE
scripts/config --disable CONFIG_ATM_HE_USE_SUNI
scripts/config --disable CONFIG_ATM_SOLOS
scripts/config --disable CONFIG_CAIF_DRIVERS
scripts/config --disable CONFIG_CAIF_TTY
scripts/config --disable CONFIG_CAIF_VIRTIO

#
# Distributed Switch Architecture drivers
#
scripts/config --disable CONFIG_B53
scripts/config --disable CONFIG_B53_SPI_DRIVER
scripts/config --disable CONFIG_B53_MDIO_DRIVER
scripts/config --disable CONFIG_B53_MMAP_DRIVER
scripts/config --disable CONFIG_B53_SRAB_DRIVER
scripts/config --disable CONFIG_B53_SERDES
scripts/config --disable CONFIG_NET_DSA_BCM_SF2
scripts/config --disable CONFIG_NET_DSA_LOOP
scripts/config --disable CONFIG_NET_DSA_HIRSCHMANN_HELLCREEK
scripts/config --disable CONFIG_NET_DSA_LANTIQ_GSWIP
scripts/config --disable CONFIG_NET_DSA_MT7530
scripts/config --disable CONFIG_NET_DSA_MT7530_MDIO
scripts/config --disable CONFIG_NET_DSA_MT7530_MMIO
scripts/config --disable CONFIG_NET_DSA_MV88E6060
scripts/config --disable CONFIG_NET_DSA_MICROCHIP_KSZ_COMMON
scripts/config --disable CONFIG_NET_DSA_MICROCHIP_KSZ9477_I2C
scripts/config --disable CONFIG_NET_DSA_MICROCHIP_KSZ_SPI
scripts/config --disable CONFIG_NET_DSA_MICROCHIP_KSZ_PTP
scripts/config --disable CONFIG_NET_DSA_MICROCHIP_KSZ8863_SMI
scripts/config --disable CONFIG_NET_DSA_MV88E6XXX
scripts/config --disable CONFIG_NET_DSA_MV88E6XXX_PTP
scripts/config --disable CONFIG_NET_DSA_MSCC_FELIX_DSA_LIB
scripts/config --disable CONFIG_NET_DSA_MSCC_OCELOT_EXT
scripts/config --disable CONFIG_NET_DSA_MSCC_SEVILLE
scripts/config --disable CONFIG_NET_DSA_AR9331
scripts/config --disable CONFIG_NET_DSA_QCA8K
scripts/config --disable CONFIG_NET_DSA_QCA8K_LEDS_SUPPORT
scripts/config --disable CONFIG_NET_DSA_SJA1105
scripts/config --disable CONFIG_NET_DSA_SJA1105_PTP
scripts/config --disable CONFIG_NET_DSA_SJA1105_TAS
scripts/config --disable CONFIG_NET_DSA_SJA1105_VL
scripts/config --disable CONFIG_NET_DSA_XRS700X
scripts/config --disable CONFIG_NET_DSA_XRS700X_I2C
scripts/config --disable CONFIG_NET_DSA_XRS700X_MDIO
scripts/config --disable CONFIG_NET_DSA_REALTEK
scripts/config --disable CONFIG_NET_DSA_SMSC_LAN9303
scripts/config --disable CONFIG_NET_DSA_SMSC_LAN9303_I2C
scripts/config --disable CONFIG_NET_DSA_SMSC_LAN9303_MDIO
scripts/config --disable CONFIG_NET_DSA_VITESSE_VSC73XX
scripts/config --disable CONFIG_NET_DSA_VITESSE_VSC73XX_SPI
scripts/config --disable CONFIG_NET_DSA_VITESSE_VSC73XX_PLATFORM
# end of Distributed Switch Architecture drivers

scripts/config --enable CONFIG_ETHERNET
scripts/config --disable CONFIG_MDIO
scripts/config --disable CONFIG_NET_VENDOR_3COM
scripts/config --disable CONFIG_PCMCIA_3C574
scripts/config --disable CONFIG_PCMCIA_3C589
scripts/config --disable CONFIG_VORTEX
scripts/config --disable CONFIG_TYPHOON
scripts/config --enable CONFIG_NET_VENDOR_ADAPTEC
scripts/config --disable CONFIG_ADAPTEC_STARFIRE
scripts/config --enable CONFIG_NET_VENDOR_AGERE
scripts/config --disable CONFIG_ET131X
scripts/config --enable CONFIG_NET_VENDOR_ALACRITECH
scripts/config --disable CONFIG_SLICOSS
scripts/config --enable CONFIG_NET_VENDOR_ALTEON
scripts/config --disable CONFIG_ACENIC
scripts/config --disable CONFIG_ACENIC_OMIT_TIGON_I
scripts/config --disable CONFIG_ALTERA_TSE
scripts/config --enable CONFIG_NET_VENDOR_AMAZON
scripts/config --module CONFIG_ENA_ETHERNET
scripts/config --enable CONFIG_NET_VENDOR_AMD
scripts/config --disable CONFIG_AMD8111_ETH
scripts/config --disable CONFIG_PCNET32
scripts/config --disable CONFIG_PCMCIA_NMCLAN
scripts/config --disable CONFIG_AMD_XGBE
scripts/config --disable CONFIG_AMD_XGBE_DCB
scripts/config --disable CONFIG_AMD_XGBE_HAVE_ECC
scripts/config --disable CONFIG_PDS_CORE
scripts/config --enable CONFIG_NET_VENDOR_AQUANTIA
scripts/config --disable CONFIG_AQTION
scripts/config --enable CONFIG_NET_VENDOR_ARC
scripts/config --enable CONFIG_NET_VENDOR_ASIX
scripts/config --disable CONFIG_SPI_AX88796C
scripts/config --disable CONFIG_SPI_AX88796C_COMPRESSION
scripts/config --enable CONFIG_NET_VENDOR_ATHEROS
scripts/config --disable CONFIG_ATL2
scripts/config --disable CONFIG_ATL1
scripts/config --disable CONFIG_ATL1E
scripts/config --disable CONFIG_ATL1C
scripts/config --disable CONFIG_ALX
scripts/config --disable CONFIG_CX_ECAT
scripts/config --enable CONFIG_NET_VENDOR_BROADCOM
scripts/config --disable CONFIG_B44
scripts/config --disable CONFIG_B44_PCI_AUTOSELECT
scripts/config --disable CONFIG_B44_PCICORE_AUTOSELECT
scripts/config --disable CONFIG_B44_PCI
scripts/config --disable CONFIG_BCMGENET
scripts/config --disable CONFIG_BNX2
scripts/config --disable CONFIG_CNIC
scripts/config --disable CONFIG_TIGON3
scripts/config --disable CONFIG_TIGON3_HWMON
scripts/config --disable CONFIG_BNX2X
scripts/config --disable CONFIG_BNX2X_SRIOV
scripts/config --disable CONFIG_SYSTEMPORT
scripts/config --disable CONFIG_BNXT
scripts/config --disable CONFIG_BNXT_SRIOV
scripts/config --disable CONFIG_BNXT_FLOWER_OFFLOAD
scripts/config --disable CONFIG_BNXT_DCB
scripts/config --disable CONFIG_BNXT_HWMON
scripts/config --enable CONFIG_NET_VENDOR_CADENCE
scripts/config --disable CONFIG_MACB
scripts/config --disable CONFIG_MACB_USE_HWSTAMP
scripts/config --disable CONFIG_MACB_PCI
scripts/config --enable CONFIG_NET_VENDOR_CAVIUM
scripts/config --disable CONFIG_THUNDER_NIC_PF
scripts/config --disable CONFIG_THUNDER_NIC_VF
scripts/config --disable CONFIG_THUNDER_NIC_BGX
scripts/config --disable CONFIG_THUNDER_NIC_RGX
scripts/config --disable CONFIG_CAVIUM_PTP
scripts/config --disable CONFIG_LIQUIDIO_CORE
scripts/config --disable CONFIG_LIQUIDIO
scripts/config --disable CONFIG_LIQUIDIO_VF
scripts/config --enable CONFIG_NET_VENDOR_CHELSIO
scripts/config --disable CONFIG_CHELSIO_T1
scripts/config --disable CONFIG_CHELSIO_T1_1G
scripts/config --disable CONFIG_CHELSIO_T3
scripts/config --disable CONFIG_CHELSIO_T4
scripts/config --disable CONFIG_CHELSIO_T4_DCB
scripts/config --disable CONFIG_CHELSIO_T4_FCOE
scripts/config --disable CONFIG_CHELSIO_T4VF
scripts/config --disable CONFIG_CHELSIO_LIB
scripts/config --disable CONFIG_CHELSIO_INLINE_CRYPTO
scripts/config --disable CONFIG_CHELSIO_IPSEC_INLINE
scripts/config --disable CONFIG_CHELSIO_TLS_DEVICE
scripts/config --enable CONFIG_NET_VENDOR_CISCO
scripts/config --disable CONFIG_ENIC
scripts/config --enable CONFIG_NET_VENDOR_CORTINA
scripts/config --enable CONFIG_NET_VENDOR_DAVICOM
scripts/config --disable CONFIG_DM9051
scripts/config --disable CONFIG_DNET
scripts/config --enable CONFIG_NET_VENDOR_DEC
scripts/config --enable CONFIG_NET_TULIP
scripts/config --disable CONFIG_DE2104X
scripts/config --set-val CONFIG_DE2104X_DSL 0
scripts/config --disable CONFIG_TULIP
scripts/config --disable CONFIG_TULIP_MWI
scripts/config --disable CONFIG_TULIP_MMIO
scripts/config --disable CONFIG_TULIP_NAPI
scripts/config --disable CONFIG_WINBOND_840
scripts/config --disable CONFIG_DM9102
scripts/config --disable CONFIG_ULI526X
scripts/config --disable CONFIG_PCMCIA_XIRCOM
scripts/config --enable CONFIG_NET_VENDOR_DLINK
scripts/config --disable CONFIG_DL2K
scripts/config --disable CONFIG_SUNDANCE
scripts/config --disable CONFIG_SUNDANCE_MMIO
scripts/config --enable CONFIG_NET_VENDOR_EMULEX
scripts/config --disable CONFIG_BE2NET
scripts/config --disable CONFIG_BE2NET_HWMON
scripts/config --disable CONFIG_BE2NET_BE2
scripts/config --disable CONFIG_BE2NET_BE3
scripts/config --disable CONFIG_BE2NET_LANCER
scripts/config --disable CONFIG_BE2NET_SKYHAWK
scripts/config --enable CONFIG_NET_VENDOR_ENGLEDER
scripts/config --disable CONFIG_TSNEP
scripts/config --disable CONFIG_TSNEP_SELFTESTS
scripts/config --enable CONFIG_NET_VENDOR_EZCHIP
scripts/config --enable CONFIG_NET_VENDOR_FUJITSU
scripts/config --disable CONFIG_PCMCIA_FMVJ18X
scripts/config --enable CONFIG_NET_VENDOR_FUNGIBLE
scripts/config --module CONFIG_FUN_CORE
scripts/config --module CONFIG_FUN_ETH
scripts/config --enable CONFIG_NET_VENDOR_GOOGLE
scripts/config --module CONFIG_GVE
scripts/config --enable CONFIG_NET_VENDOR_HUAWEI
scripts/config --disable CONFIG_HINIC
scripts/config --enable CONFIG_NET_VENDOR_I825XX
scripts/config --enable CONFIG_NET_VENDOR_INTEL
scripts/config --module CONFIG_LIBETH
scripts/config --module CONFIG_LIBIE
scripts/config --disable CONFIG_E100
scripts/config --disable CONFIG_E1000
scripts/config --disable CONFIG_E1000E
scripts/config --disable CONFIG_E1000E_HWTS
scripts/config --disable CONFIG_IGB
scripts/config --disable CONFIG_IGB_HWMON
scripts/config --disable CONFIG_IGB_DCA
scripts/config --disable CONFIG_IGBVF
scripts/config --disable CONFIG_IXGBE
scripts/config --disable CONFIG_IXGBE_HWMON
scripts/config --disable CONFIG_IXGBE_DCA
scripts/config --disable CONFIG_IXGBE_DCB
scripts/config --disable CONFIG_IXGBE_IPSEC
scripts/config --disable CONFIG_IXGBEVF
scripts/config --disable CONFIG_IXGBEVF_IPSEC
scripts/config --disable CONFIG_I40E
scripts/config --disable CONFIG_I40E_DCB
scripts/config --disable CONFIG_IAVF
scripts/config --disable CONFIG_I40EVF
scripts/config --disable CONFIG_ICE
scripts/config --disable CONFIG_ICE_HWMON
scripts/config --disable CONFIG_ICE_SWITCHDEV
scripts/config --disable CONFIG_ICE_HWTS
scripts/config --disable CONFIG_FM10K
scripts/config --disable CONFIG_IGC
scripts/config --disable CONFIG_IGC_LEDS
scripts/config --disable CONFIG_IDPF
scripts/config --disable CONFIG_IDPF_SINGLEQ
scripts/config --disable CONFIG_JME
scripts/config --enable CONFIG_NET_VENDOR_ADI
scripts/config --disable CONFIG_ADIN1110
scripts/config --enable CONFIG_NET_VENDOR_LITEX
scripts/config --enable CONFIG_NET_VENDOR_MARVELL
scripts/config --disable CONFIG_MVMDIO
scripts/config --disable CONFIG_SKGE
scripts/config --disable CONFIG_SKGE_DEBUG
scripts/config --disable CONFIG_SKGE_GENESIS
scripts/config --disable CONFIG_SKY2
scripts/config --disable CONFIG_SKY2_DEBUG
scripts/config --disable CONFIG_OCTEON_EP
scripts/config --disable CONFIG_OCTEON_EP_VF
scripts/config --disable CONFIG_PRESTERA
scripts/config --disable CONFIG_PRESTERA_PCI
scripts/config --enable CONFIG_NET_VENDOR_MELLANOX
scripts/config --disable CONFIG_MLX4_EN
scripts/config --disable CONFIG_MLX4_EN_DCB
scripts/config --disable CONFIG_MLX4_CORE
scripts/config --disable CONFIG_MLX4_DEBUG
scripts/config --disable CONFIG_MLX4_CORE_GEN2
scripts/config --disable CONFIG_MLX5_CORE
scripts/config --disable CONFIG_MLX5_FPGA
scripts/config --disable CONFIG_MLX5_CORE_EN
scripts/config --disable CONFIG_MLX5_EN_ARFS
scripts/config --disable CONFIG_MLX5_EN_RXNFC
scripts/config --disable CONFIG_MLX5_MPFS
scripts/config --disable CONFIG_MLX5_ESWITCH
scripts/config --disable CONFIG_MLX5_BRIDGE
scripts/config --disable CONFIG_MLX5_CLS_ACT
scripts/config --disable CONFIG_MLX5_TC_CT
scripts/config --disable CONFIG_MLX5_TC_SAMPLE
scripts/config --disable CONFIG_MLX5_CORE_EN_DCB
scripts/config --disable CONFIG_MLX5_CORE_IPOIB
scripts/config --disable CONFIG_MLX5_MACSEC
scripts/config --disable CONFIG_MLX5_EN_IPSEC
scripts/config --disable CONFIG_MLX5_EN_TLS
scripts/config --disable CONFIG_MLX5_SW_STEERING
scripts/config --disable CONFIG_MLX5_HW_STEERING
scripts/config --disable CONFIG_MLX5_SF
scripts/config --disable CONFIG_MLX5_SF_MANAGER
scripts/config --disable CONFIG_MLX5_DPLL
scripts/config --disable CONFIG_MLXSW_CORE
scripts/config --disable CONFIG_MLXSW_CORE_HWMON
scripts/config --disable CONFIG_MLXSW_CORE_THERMAL
scripts/config --disable CONFIG_MLXSW_PCI
scripts/config --disable CONFIG_MLXSW_I2C
scripts/config --disable CONFIG_MLXSW_SPECTRUM
scripts/config --disable CONFIG_MLXSW_SPECTRUM_DCB
scripts/config --disable CONFIG_MLXSW_MINIMAL
scripts/config --disable CONFIG_MLXFW
scripts/config --enable CONFIG_NET_VENDOR_META
scripts/config --disable CONFIG_FBNIC
scripts/config --enable CONFIG_NET_VENDOR_MICREL
scripts/config --disable CONFIG_KS8842
scripts/config --disable CONFIG_KS8851
scripts/config --disable CONFIG_KS8851_MLL
scripts/config --module CONFIG_KSZ884X_PCI
scripts/config --enable CONFIG_NET_VENDOR_MICROCHIP
scripts/config --disable CONFIG_ENC28J60
scripts/config --disable CONFIG_ENC28J60_WRITEVERIFY
scripts/config --disable CONFIG_ENCX24J600
scripts/config --disable CONFIG_LAN743X
scripts/config --disable CONFIG_LAN865X
scripts/config --enable CONFIG_VCAP
scripts/config --enable CONFIG_NET_VENDOR_MICROSEMI
scripts/config --disable CONFIG_MSCC_OCELOT_SWITCH_LIB
scripts/config --enable CONFIG_NET_VENDOR_MICROSOFT
scripts/config --module CONFIG_MICROSOFT_MANA
scripts/config --enable CONFIG_NET_VENDOR_MYRI
scripts/config --disable CONFIG_MYRI10GE
scripts/config --disable CONFIG_MYRI10GE_DCA
scripts/config --disable CONFIG_FEALNX
scripts/config --enable CONFIG_NET_VENDOR_NI
scripts/config --disable CONFIG_NI_XGE_MANAGEMENT_ENET
scripts/config --enable CONFIG_NET_VENDOR_NATSEMI
scripts/config --disable CONFIG_NATSEMI
scripts/config --disable CONFIG_NS83820
scripts/config --enable CONFIG_NET_VENDOR_NETERION
scripts/config --disable CONFIG_S2IO
scripts/config --enable CONFIG_NET_VENDOR_NETRONOME
scripts/config --disable CONFIG_NFP
scripts/config --disable CONFIG_NFP_APP_FLOWER
scripts/config --disable CONFIG_NFP_APP_ABM_NIC
scripts/config --disable CONFIG_NFP_NET_IPSEC
scripts/config --disable CONFIG_NFP_DEBUG
scripts/config --enable CONFIG_NET_VENDOR_8390
scripts/config --disable CONFIG_PCMCIA_AXNET
scripts/config --disable CONFIG_NE2K_PCI
scripts/config --disable CONFIG_PCMCIA_PCNET
scripts/config --enable CONFIG_NET_VENDOR_NVIDIA
scripts/config --disable CONFIG_FORCEDETH
scripts/config --enable CONFIG_NET_VENDOR_OKI
scripts/config --disable CONFIG_ETHOC
scripts/config --disable CONFIG_OA_TC6
scripts/config --enable CONFIG_NET_VENDOR_PACKET_ENGINES
scripts/config --disable CONFIG_HAMACHI
scripts/config --disable CONFIG_YELLOWFIN
scripts/config --enable CONFIG_NET_VENDOR_PENSANDO
scripts/config --disable CONFIG_IONIC
scripts/config --enable CONFIG_NET_VENDOR_QLOGIC
scripts/config --disable CONFIG_QLA3XXX
scripts/config --disable CONFIG_QLCNIC
scripts/config --disable CONFIG_QLCNIC_SRIOV
scripts/config --disable CONFIG_QLCNIC_DCB
scripts/config --disable CONFIG_QLCNIC_HWMON
scripts/config --disable CONFIG_NETXEN_NIC
scripts/config --disable CONFIG_QED
scripts/config --disable CONFIG_QED_LL2
scripts/config --disable CONFIG_QED_SRIOV
scripts/config --disable CONFIG_QEDE
scripts/config --disable CONFIG_QED_RDMA
scripts/config --disable CONFIG_QED_ISCSI
scripts/config --disable CONFIG_QED_FCOE
scripts/config --disable CONFIG_QED_OOO
scripts/config --enable CONFIG_NET_VENDOR_BROCADE
scripts/config --disable CONFIG_BNA
scripts/config --enable CONFIG_NET_VENDOR_QUALCOMM
scripts/config --disable CONFIG_QCOM_EMAC
scripts/config --disable CONFIG_RMNET
scripts/config --enable CONFIG_NET_VENDOR_RDC
scripts/config --disable CONFIG_R6040
scripts/config --enable CONFIG_NET_VENDOR_REALTEK
scripts/config --disable CONFIG_ATP
scripts/config --disable CONFIG_8139CP
scripts/config --disable CONFIG_8139TOO
scripts/config --disable CONFIG_8139TOO_PIO
scripts/config --disable CONFIG_8139TOO_TUNE_TWISTER
scripts/config --disable CONFIG_8139TOO_8129
scripts/config --disable CONFIG_8139_OLD_RX_RESET
scripts/config --disable CONFIG_R8169
scripts/config --disable CONFIG_R8169_LEDS
scripts/config --disable CONFIG_RTASE
scripts/config --enable CONFIG_NET_VENDOR_RENESAS
scripts/config --enable CONFIG_NET_VENDOR_ROCKER
scripts/config --disable CONFIG_ROCKER
scripts/config --enable CONFIG_NET_VENDOR_SAMSUNG
scripts/config --disable CONFIG_SXGBE_ETH
scripts/config --enable CONFIG_NET_VENDOR_SEEQ
scripts/config --enable CONFIG_NET_VENDOR_SILAN
scripts/config --disable CONFIG_SC92031
scripts/config --enable CONFIG_NET_VENDOR_SIS
scripts/config --disable CONFIG_SIS900
scripts/config --disable CONFIG_SIS190
scripts/config --enable CONFIG_NET_VENDOR_SOLARFLARE
scripts/config --disable CONFIG_SFC
scripts/config --disable CONFIG_SFC_MTD
scripts/config --disable CONFIG_SFC_MCDI_MON
scripts/config --disable CONFIG_SFC_SRIOV
scripts/config --disable CONFIG_SFC_MCDI_LOGGING
scripts/config --disable CONFIG_SFC_FALCON
scripts/config --disable CONFIG_SFC_FALCON_MTD
scripts/config --disable CONFIG_SFC_SIENA
scripts/config --disable CONFIG_SFC_SIENA_MTD
scripts/config --disable CONFIG_SFC_SIENA_MCDI_MON
scripts/config --disable CONFIG_SFC_SIENA_SRIOV
scripts/config --disable CONFIG_SFC_SIENA_MCDI_LOGGING
scripts/config --enable CONFIG_NET_VENDOR_SMSC
scripts/config --disable CONFIG_PCMCIA_SMC91C92
scripts/config --disable CONFIG_EPIC100
scripts/config --disable CONFIG_SMSC911X
scripts/config --disable CONFIG_SMSC9420
scripts/config --enable CONFIG_NET_VENDOR_SOCIONEXT
scripts/config --enable CONFIG_NET_VENDOR_STMICRO
scripts/config --disable CONFIG_STMMAC_ETH
scripts/config --disable CONFIG_STMMAC_SELFTESTS
scripts/config --disable CONFIG_STMMAC_PLATFORM
scripts/config --disable CONFIG_DWMAC_GENERIC
scripts/config --disable CONFIG_DWMAC_INTEL
scripts/config --disable CONFIG_STMMAC_PCI
scripts/config --enable CONFIG_NET_VENDOR_SUN
scripts/config --disable CONFIG_HAPPYMEAL
scripts/config --disable CONFIG_SUNGEM
scripts/config --disable CONFIG_CASSINI
scripts/config --disable CONFIG_NIU
scripts/config --enable CONFIG_NET_VENDOR_SYNOPSYS
scripts/config --disable CONFIG_DWC_XLGMAC
scripts/config --disable CONFIG_DWC_XLGMAC_PCI
scripts/config --enable CONFIG_NET_VENDOR_TEHUTI
scripts/config --disable CONFIG_TEHUTI
scripts/config --disable CONFIG_TEHUTI_TN40
scripts/config --enable CONFIG_NET_VENDOR_TI
scripts/config --disable CONFIG_TI_CPSW_PHY_SEL
scripts/config --disable CONFIG_TLAN
scripts/config --enable CONFIG_NET_VENDOR_VERTEXCOM
scripts/config --disable CONFIG_MSE102X
scripts/config --enable CONFIG_NET_VENDOR_VIA
scripts/config --disable CONFIG_VIA_RHINE
scripts/config --disable CONFIG_VIA_RHINE_MMIO
scripts/config --disable CONFIG_VIA_VELOCITY
scripts/config --enable CONFIG_NET_VENDOR_WANGXUN
scripts/config --disable CONFIG_LIBWX
scripts/config --disable CONFIG_NGBE
scripts/config --enable CONFIG_NET_VENDOR_WIZNET
scripts/config --disable CONFIG_WIZNET_W5100
scripts/config --disable CONFIG_WIZNET_W5300
scripts/config --disable CONFIG_WIZNET_BUS_DIRECT
scripts/config --disable CONFIG_WIZNET_BUS_INDIRECT
scripts/config --disable CONFIG_WIZNET_BUS_ANY
scripts/config --disable CONFIG_WIZNET_W5100_SPI
scripts/config --enable CONFIG_NET_VENDOR_XILINX
scripts/config --disable CONFIG_XILINX_EMACLITE
scripts/config --disable CONFIG_XILINX_AXI_EMAC
scripts/config --disable CONFIG_XILINX_LL_TEMAC
scripts/config --enable CONFIG_NET_VENDOR_XIRCOM
scripts/config --disable CONFIG_PCMCIA_XIRC2PS
scripts/config --disable CONFIG_FDDI
scripts/config --disable CONFIG_DEFXX
scripts/config --disable CONFIG_SKFP
scripts/config --disable CONFIG_HIPPI
scripts/config --disable CONFIG_PHYLINK
scripts/config --disable CONFIG_PHYLIB
scripts/config --enable CONFIG_SWPHY
scripts/config --enable CONFIG_LED_TRIGGER_PHY
scripts/config --disable CONFIG_FIXED_PHY
scripts/config --disable CONFIG_SFP

#
# MII PHY device drivers
#
scripts/config --disable CONFIG_AIR_EN8811H_PHY
scripts/config --disable CONFIG_AMD_PHY
scripts/config --disable CONFIG_ADIN_PHY
scripts/config --disable CONFIG_ADIN1100_PHY
scripts/config --disable CONFIG_AQUANTIA_PHY
scripts/config --disable CONFIG_AX88796B_PHY
scripts/config --disable CONFIG_BROADCOM_PHY
scripts/config --disable CONFIG_BCM54140_PHY
scripts/config --module CONFIG_BCM7XXX_PHY
scripts/config --module CONFIG_BCM84881_PHY
scripts/config --disable CONFIG_BCM87XX_PHY
scripts/config --module CONFIG_BCM_NET_PHYLIB
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
scripts/config --module CONFIG_MEDIATEK_GE_PHY
scripts/config --disable CONFIG_MEDIATEK_GE_SOC_PHY
scripts/config --module CONFIG_MICREL_PHY
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
scripts/config --module CONFIG_QCOM_NET_PHYLIB
scripts/config --disable CONFIG_AT803X_PHY
scripts/config --module CONFIG_QCA83XX_PHY
scripts/config --module CONFIG_QCA808X_PHY
scripts/config --disable CONFIG_QSEMI_PHY
scripts/config --module CONFIG_REALTEK_PHY
scripts/config --disable CONFIG_RENESAS_PHY
scripts/config --disable CONFIG_ROCKCHIP_PHY
scripts/config --module CONFIG_SMSC_PHY
scripts/config --disable CONFIG_STE10XP
scripts/config --disable CONFIG_TERANETICS_PHY
scripts/config --disable CONFIG_DP83822_PHY
scripts/config --disable CONFIG_DP83TC811_PHY
scripts/config --disable CONFIG_DP83848_PHY
scripts/config --disable CONFIG_DP83867_PHY
scripts/config --disable CONFIG_DP83869_PHY
scripts/config --disable CONFIG_DP83TD510_PHY
scripts/config --disable CONFIG_DP83TG720_PHY
scripts/config --module CONFIG_VITESSE_PHY
scripts/config --disable CONFIG_XILINX_GMII2RGMII
scripts/config --disable CONFIG_MICREL_KS8995MA
scripts/config --disable CONFIG_PSE_CONTROLLER
scripts/config --disable CONFIG_PSE_REGULATOR
scripts/config --disable CONFIG_PSE_PD692X0
scripts/config --disable CONFIG_PSE_TPS23881
scripts/config --disable CONFIG_CAN_DEV

#
# MCTP Device Drivers
#
scripts/config --module CONFIG_MCTP_SERIAL
# end of MCTP Device Drivers

scripts/config --disable CONFIG_MDIO_DEVICE
scripts/config --disable CONFIG_MDIO_BUS
scripts/config --module CONFIG_FWNODE_MDIO
scripts/config --module CONFIG_ACPI_MDIO
scripts/config --disable CONFIG_MDIO_DEVRES
scripts/config --disable CONFIG_MDIO_BITBANG
scripts/config --disable CONFIG_MDIO_BCM_UNIMAC
scripts/config --disable CONFIG_MDIO_CAVIUM
scripts/config --disable CONFIG_MDIO_GPIO
scripts/config --disable CONFIG_MDIO_I2C
scripts/config --disable CONFIG_MDIO_MVUSB
scripts/config --disable CONFIG_MDIO_MSCC_MIIM
scripts/config --disable CONFIG_MDIO_REGMAP
scripts/config --disable CONFIG_MDIO_THUNDER

#
# MDIO Multiplexers
#

#
# PCS device drivers
#
scripts/config --disable CONFIG_PCS_XPCS
scripts/config --disable CONFIG_PCS_LYNX
scripts/config --disable CONFIG_PCS_MTK_LYNXI
# end of PCS device drivers

scripts/config --disable CONFIG_PLIP
scripts/config --disable CONFIG_PPP
scripts/config --disable CONFIG_SLIP
scripts/config --disable CONFIG_USB_NET_DRIVERS
scripts/config --disable CONFIG_WLAN
scripts/config --disable CONFIG_WAN
scripts/config --disable CONFIG_HDLC
scripts/config --disable CONFIG_HDLC_RAW
scripts/config --disable CONFIG_HDLC_RAW_ETH
scripts/config --disable CONFIG_HDLC_CISCO
scripts/config --disable CONFIG_HDLC_FR
scripts/config --disable CONFIG_HDLC_PPP
scripts/config --disable CONFIG_HDLC_X25
scripts/config --disable CONFIG_FRAMER
scripts/config --disable CONFIG_PCI200SYN
scripts/config --disable CONFIG_WANXL
scripts/config --disable CONFIG_PC300TOO
scripts/config --disable CONFIG_FARSYNC
scripts/config --disable CONFIG_LAPBETHER
scripts/config --disable CONFIG_IEEE802154_DRIVERS
scripts/config --disable CONFIG_IEEE802154_FAKELB
scripts/config --disable CONFIG_IEEE802154_AT86RF230
scripts/config --disable CONFIG_IEEE802154_MRF24J40
scripts/config --disable CONFIG_IEEE802154_CC2520
scripts/config --disable CONFIG_IEEE802154_ATUSB
scripts/config --disable CONFIG_IEEE802154_ADF7242
scripts/config --disable CONFIG_IEEE802154_CA8210
scripts/config --disable CONFIG_IEEE802154_CA8210_DEBUGFS
scripts/config --disable CONFIG_IEEE802154_MCR20A
scripts/config --disable CONFIG_IEEE802154_HWSIM

#
# Wireless WAN
#
scripts/config --disable CONFIG_WWAN
# end of Wireless WAN

scripts/config --enable CONFIG_XEN_NETDEV_FRONTEND
scripts/config --module CONFIG_XEN_NETDEV_BACKEND
scripts/config --module CONFIG_VMXNET3
scripts/config --module CONFIG_FUJITSU_ES
scripts/config --disable CONFIG_USB4_NET
scripts/config --module CONFIG_HYPERV_NET
scripts/config --module CONFIG_NETDEVSIM
scripts/config --enable CONFIG_NET_FAILOVER
scripts/config --disable CONFIG_ISDN

#
# Input device support
#
scripts/config --enable CONFIG_INPUT
scripts/config --disable CONFIG_INPUT_LEDS
scripts/config --module CONFIG_INPUT_FF_MEMLESS
scripts/config --module CONFIG_INPUT_SPARSEKMAP
scripts/config --disable CONFIG_INPUT_MATRIXKMAP
scripts/config --enable CONFIG_INPUT_VIVALDIFMAP

#
# Userland interfaces
#
scripts/config --disable CONFIG_INPUT_MOUSEDEV
scripts/config --disable CONFIG_INPUT_JOYDEV
scripts/config --enable CONFIG_INPUT_EVDEV
scripts/config --disable CONFIG_INPUT_EVBUG

#
# Input Device Drivers
#
scripts/config --enable CONFIG_INPUT_KEYBOARD
scripts/config --disable CONFIG_KEYBOARD_ADC
scripts/config --disable CONFIG_KEYBOARD_ADP5520
scripts/config --disable CONFIG_KEYBOARD_ADP5588
scripts/config --disable CONFIG_KEYBOARD_ADP5589
scripts/config --disable CONFIG_KEYBOARD_APPLESPI
scripts/config --disable CONFIG_KEYBOARD_ATKBD
scripts/config --disable CONFIG_KEYBOARD_QT1050
scripts/config --disable CONFIG_KEYBOARD_QT1070
scripts/config --disable CONFIG_KEYBOARD_QT2160
scripts/config --disable CONFIG_KEYBOARD_DLINK_DIR685
scripts/config --disable CONFIG_KEYBOARD_LKKBD
scripts/config --disable CONFIG_KEYBOARD_GPIO
scripts/config --module CONFIG_KEYBOARD_GPIO_POLLED
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
scripts/config --enable CONFIG_INPUT_MOUSE
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
scripts/config --disable CONFIG_INPUT_JOYSTICK
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
scripts/config --disable CONFIG_INPUT_TABLET
scripts/config --disable CONFIG_TABLET_USB_ACECAD
scripts/config --disable CONFIG_TABLET_USB_AIPTEK
scripts/config --disable CONFIG_TABLET_USB_HANWANG
scripts/config --disable CONFIG_TABLET_USB_KBTAB
scripts/config --disable CONFIG_TABLET_USB_PEGASUS
scripts/config --disable CONFIG_TABLET_SERIAL_WACOM4
scripts/config --disable CONFIG_INPUT_TOUCHSCREEN
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
scripts/config --disable CONFIG_TOUCHSCREEN_GOODIX_BERLIN_CORE
scripts/config --disable CONFIG_TOUCHSCREEN_GOODIX_BERLIN_I2C
scripts/config --disable CONFIG_TOUCHSCREEN_GOODIX_BERLIN_SPI
scripts/config --disable CONFIG_TOUCHSCREEN_HIDEEP
scripts/config --disable CONFIG_TOUCHSCREEN_HYCON_HY46XX
scripts/config --disable CONFIG_TOUCHSCREEN_HYNITRON_CSTXXX
scripts/config --disable CONFIG_TOUCHSCREEN_ILI210X
scripts/config --disable CONFIG_TOUCHSCREEN_ILITEK
scripts/config --disable CONFIG_TOUCHSCREEN_S6SY761
scripts/config --disable CONFIG_TOUCHSCREEN_GUNZE
scripts/config --disable CONFIG_TOUCHSCREEN_EKTF2127
scripts/config --disable CONFIG_TOUCHSCREEN_ELAN
scripts/config --disable CONFIG_TOUCHSCREEN_ELO
scripts/config --disable CONFIG_TOUCHSCREEN_WACOM_W8001
scripts/config --disable CONFIG_TOUCHSCREEN_WACOM_I2C
scripts/config --disable CONFIG_TOUCHSCREEN_MAX11801
scripts/config --disable CONFIG_TOUCHSCREEN_MMS114
scripts/config --disable CONFIG_TOUCHSCREEN_MELFAS_MIP4
scripts/config --disable CONFIG_TOUCHSCREEN_MSG2638
scripts/config --disable CONFIG_TOUCHSCREEN_MTOUCH
scripts/config --disable CONFIG_TOUCHSCREEN_NOVATEK_NVT_TS
scripts/config --disable CONFIG_TOUCHSCREEN_IMAGIS
scripts/config --disable CONFIG_TOUCHSCREEN_INEXIO
scripts/config --disable CONFIG_TOUCHSCREEN_PENMOUNT
scripts/config --disable CONFIG_TOUCHSCREEN_EDT_FT5X06
scripts/config --disable CONFIG_TOUCHSCREEN_TOUCHRIGHT
scripts/config --disable CONFIG_TOUCHSCREEN_TOUCHWIN
scripts/config --disable CONFIG_TOUCHSCREEN_PIXCIR
scripts/config --disable CONFIG_TOUCHSCREEN_WDT87XX_I2C
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
scripts/config --disable CONFIG_RMI4_CORE
scripts/config --disable CONFIG_RMI4_I2C
scripts/config --disable CONFIG_RMI4_SPI
scripts/config --disable CONFIG_RMI4_SMB
scripts/config --disable CONFIG_RMI4_F03
scripts/config --disable CONFIG_RMI4_F03_SERIO
scripts/config --disable CONFIG_RMI4_2D_SENSOR
scripts/config --disable CONFIG_RMI4_F11
scripts/config --disable CONFIG_RMI4_F12
scripts/config --disable CONFIG_RMI4_F30
scripts/config --disable CONFIG_RMI4_F34
scripts/config --disable CONFIG_RMI4_F3A
scripts/config --disable CONFIG_RMI4_F55

#
# Hardware I/O ports
#
scripts/config --enable CONFIG_SERIO
scripts/config --enable CONFIG_ARCH_MIGHT_HAVE_PC_SERIO
scripts/config --disable CONFIG_SERIO_I8042
scripts/config --disable CONFIG_SERIO_SERPORT
scripts/config --disable CONFIG_SERIO_CT82C710
scripts/config --disable CONFIG_SERIO_PARKBD
scripts/config --disable CONFIG_SERIO_PCIPS2
scripts/config --enable CONFIG_SERIO_LIBPS2
scripts/config --module CONFIG_SERIO_RAW
scripts/config --disable CONFIG_SERIO_ALTERA_PS2
scripts/config --disable CONFIG_SERIO_PS2MULT
scripts/config --disable CONFIG_SERIO_ARC_PS2
scripts/config --disable CONFIG_HYPERV_KEYBOARD
scripts/config --disable CONFIG_SERIO_GPIO_PS2
scripts/config --disable CONFIG_USERIO
scripts/config --disable CONFIG_GAMEPORT
# end of Hardware I/O ports
# end of Input device support

#
# Character devices
#
scripts/config --enable CONFIG_TTY
scripts/config --enable CONFIG_VT
scripts/config --enable CONFIG_CONSOLE_TRANSLATIONS
scripts/config --enable CONFIG_VT_CONSOLE
scripts/config --enable CONFIG_VT_CONSOLE_SLEEP
scripts/config --enable CONFIG_VT_HW_CONSOLE_BINDING
scripts/config --enable CONFIG_UNIX98_PTYS
scripts/config --enable CONFIG_LEGACY_PTYS
scripts/config --set-val CONFIG_LEGACY_PTY_COUNT 0
scripts/config --disable CONFIG_LEGACY_TIOCSTI
scripts/config --enable CONFIG_LDISC_AUTOLOAD

#
# Serial drivers
#
scripts/config --enable CONFIG_SERIAL_EARLYCON
scripts/config --enable CONFIG_SERIAL_8250
scripts/config --disable CONFIG_SERIAL_8250_DEPRECATED_OPTIONS
scripts/config --enable CONFIG_SERIAL_8250_PNP
scripts/config --enable CONFIG_SERIAL_8250_16550A_VARIANTS
scripts/config --enable CONFIG_SERIAL_8250_FINTEK
scripts/config --enable CONFIG_SERIAL_8250_CONSOLE
scripts/config --enable CONFIG_SERIAL_8250_DMA
scripts/config --enable CONFIG_SERIAL_8250_PCILIB
scripts/config --enable CONFIG_SERIAL_8250_PCI
scripts/config --disable CONFIG_SERIAL_8250_EXAR
scripts/config --disable CONFIG_SERIAL_8250_CS
scripts/config --disable CONFIG_SERIAL_8250_MEN_MCB
scripts/config --set-val CONFIG_SERIAL_8250_NR_UARTS 48
scripts/config --set-val CONFIG_SERIAL_8250_RUNTIME_UARTS 32
scripts/config --enable CONFIG_SERIAL_8250_EXTENDED
scripts/config --enable CONFIG_SERIAL_8250_MANY_PORTS
scripts/config --disable CONFIG_SERIAL_8250_PCI1XXXX
scripts/config --enable CONFIG_SERIAL_8250_SHARE_IRQ
scripts/config --disable CONFIG_SERIAL_8250_DETECT_IRQ
scripts/config --enable CONFIG_SERIAL_8250_RSA
scripts/config --disable CONFIG_SERIAL_8250_DFL
scripts/config --disable CONFIG_SERIAL_8250_DW
scripts/config --enable CONFIG_SERIAL_8250_RT288X
scripts/config --disable CONFIG_SERIAL_8250_LPSS
scripts/config --disable CONFIG_SERIAL_8250_MID
scripts/config --disable CONFIG_SERIAL_8250_PERICOM

#
# Non-8250 serial port support
#
scripts/config --disable CONFIG_SERIAL_MAX3100
scripts/config --disable CONFIG_SERIAL_MAX310X
scripts/config --disable CONFIG_SERIAL_UARTLITE
scripts/config --enable CONFIG_SERIAL_CORE
scripts/config --enable CONFIG_SERIAL_CORE_CONSOLE
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
# end of Serial drivers

scripts/config --enable CONFIG_SERIAL_MCTRL_GPIO
scripts/config --enable CONFIG_SERIAL_NONSTANDARD
scripts/config --disable CONFIG_MOXA_INTELLIO
scripts/config --disable CONFIG_MOXA_SMARTIO
scripts/config --disable CONFIG_N_HDLC
scripts/config --disable CONFIG_IPWIRELESS
scripts/config --disable CONFIG_N_GSM
scripts/config --disable CONFIG_NOZOMI
scripts/config --disable CONFIG_NULL_TTY
scripts/config --enable CONFIG_HVC_DRIVER
scripts/config --enable CONFIG_HVC_IRQ
scripts/config --enable CONFIG_HVC_XEN
scripts/config --enable CONFIG_HVC_XEN_FRONTEND
scripts/config --module CONFIG_RPMSG_TTY
scripts/config --enable CONFIG_SERIAL_DEV_BUS
scripts/config --enable CONFIG_SERIAL_DEV_CTRL_TTYPORT
scripts/config --disable CONFIG_PRINTER
scripts/config --disable CONFIG_PPDEV
scripts/config --enable CONFIG_VIRTIO_CONSOLE
scripts/config --disable CONFIG_IPMI_HANDLER
scripts/config --enable CONFIG_HW_RANDOM
scripts/config --disable CONFIG_HW_RANDOM_TIMERIOMEM
scripts/config --disable CONFIG_HW_RANDOM_INTEL
scripts/config --disable CONFIG_HW_RANDOM_AMD
scripts/config --disable CONFIG_HW_RANDOM_BA431
scripts/config --disable CONFIG_HW_RANDOM_VIA
scripts/config --module CONFIG_HW_RANDOM_VIRTIO
scripts/config --disable CONFIG_HW_RANDOM_XIPHERA
scripts/config --disable CONFIG_APPLICOM
scripts/config --disable CONFIG_MWAVE
scripts/config --enable CONFIG_DEVMEM
scripts/config --module CONFIG_NVRAM
scripts/config --enable CONFIG_DEVPORT
scripts/config --enable CONFIG_HPET
scripts/config --enable CONFIG_HPET_MMAP
scripts/config --enable CONFIG_HPET_MMAP_DEFAULT
scripts/config --disable CONFIG_HANGCHECK_TIMER
scripts/config --enable CONFIG_TCG_TPM
scripts/config --disable CONFIG_TCG_TPM2_HMAC
scripts/config --enable CONFIG_HW_RANDOM_TPM
scripts/config --enable CONFIG_TCG_TIS_CORE
scripts/config --enable CONFIG_TCG_TIS
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
scripts/config --enable CONFIG_TCG_CRB
scripts/config --disable CONFIG_TCG_VTPM_PROXY
scripts/config --disable CONFIG_TCG_TIS_ST33ZP24_I2C
scripts/config --disable CONFIG_TCG_TIS_ST33ZP24_SPI
scripts/config --disable CONFIG_TELCLOCK
scripts/config --disable CONFIG_XILLYBUS
scripts/config --disable CONFIG_XILLYUSB
# end of Character devices

#
# I2C support
#
scripts/config --disable CONFIG_I2C
scripts/config --enable CONFIG_ACPI_I2C_OPREGION
scripts/config --disable CONFIG_I2C_BOARDINFO
scripts/config --disable CONFIG_I2C_CHARDEV
scripts/config --disable CONFIG_I2C_MUX

#
# Multiplexer I2C Chip support
#
scripts/config --disable CONFIG_I2C_MUX_GPIO
scripts/config --disable CONFIG_I2C_MUX_LTC4306
scripts/config --disable CONFIG_I2C_MUX_PCA9541
scripts/config --disable CONFIG_I2C_MUX_PCA954x
scripts/config --disable CONFIG_I2C_MUX_REG
scripts/config --disable CONFIG_I2C_MUX_MLXCPLD
# end of Multiplexer I2C Chip support

scripts/config --disable CONFIG_I2C_HELPER_AUTO
scripts/config --disable CONFIG_I2C_ALGOBIT

#
# I2C Hardware Bus support
#

#
# PC SMBus host controller drivers
#
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
scripts/config --disable CONFIG_I2C_ZHAOXIN

#
# ACPI drivers
#
scripts/config --disable CONFIG_I2C_SCMI

#
# I2C system bus drivers (mostly embedded / system-on-chip)
#
scripts/config --disable CONFIG_I2C_CBUS_GPIO
scripts/config --disable CONFIG_I2C_DESIGNWARE_CORE
scripts/config --disable CONFIG_I2C_DESIGNWARE_SLAVE
scripts/config --disable CONFIG_I2C_DESIGNWARE_PLATFORM
scripts/config --disable CONFIG_I2C_DESIGNWARE_PCI
scripts/config --disable CONFIG_I2C_EMEV2
scripts/config --disable CONFIG_I2C_GPIO
scripts/config --disable CONFIG_I2C_KEBA
scripts/config --disable CONFIG_I2C_KEMPLD
scripts/config --disable CONFIG_I2C_OCORES
scripts/config --disable CONFIG_I2C_PCA_PLATFORM
scripts/config --disable CONFIG_I2C_SIMTEC
scripts/config --disable CONFIG_I2C_XILINX

#
# External I2C/SMBus adapter drivers
#
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

#
# Other I2C/SMBus bus drivers
#
scripts/config --disable CONFIG_I2C_MLXCPLD
scripts/config --disable CONFIG_I2C_CROS_EC_TUNNEL
scripts/config --disable CONFIG_I2C_VIRTIO
# end of I2C Hardware Bus support

scripts/config --disable CONFIG_I2C_STUB
scripts/config --disable CONFIG_I2C_SLAVE
scripts/config --disable CONFIG_I2C_DEBUG_CORE
scripts/config --disable CONFIG_I2C_DEBUG_ALGO
scripts/config --disable CONFIG_I2C_DEBUG_BUS
# end of I2C support

scripts/config --disable CONFIG_I3C
scripts/config --disable CONFIG_SPI
scripts/config --disable CONFIG_SPI_DEBUG
scripts/config --disable CONFIG_SPI_MASTER
scripts/config --disable CONFIG_SPI_MEM

#
# SPI Master Controller Drivers
#
scripts/config --disable CONFIG_SPI_ALTERA
scripts/config --disable CONFIG_SPI_ALTERA_DFL
scripts/config --disable CONFIG_SPI_AXI_SPI_ENGINE
scripts/config --disable CONFIG_SPI_BITBANG
scripts/config --disable CONFIG_SPI_BUTTERFLY
scripts/config --disable CONFIG_SPI_CADENCE
scripts/config --disable CONFIG_SPI_CH341
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

#
# SPI Multiplexer support
#
scripts/config --disable CONFIG_SPI_MUX

#
# SPI Protocol Masters
#
scripts/config --disable CONFIG_SPI_SPIDEV
scripts/config --disable CONFIG_SPI_LOOPBACK_TEST
scripts/config --disable CONFIG_SPI_TLE62X0
scripts/config --disable CONFIG_SPI_SLAVE
scripts/config --disable CONFIG_SPI_DYNAMIC
scripts/config --disable CONFIG_SPMI
scripts/config --disable CONFIG_HSI
scripts/config --disable CONFIG_PPS
scripts/config --disable CONFIG_PPS_DEBUG

#
# PPS clients support
#
scripts/config --disable CONFIG_PPS_CLIENT_KTIMER
scripts/config --disable CONFIG_PPS_CLIENT_LDISC
scripts/config --disable CONFIG_PPS_CLIENT_PARPORT
scripts/config --disable CONFIG_PPS_CLIENT_GPIO

#
# PPS generators support
#

#
# PTP clock support
#
scripts/config --enable CONFIG_PTP_1588_CLOCK
scripts/config --enable CONFIG_PTP_1588_CLOCK_OPTIONAL
scripts/config --module CONFIG_DP83640_PHY
scripts/config --disable CONFIG_PTP_1588_CLOCK_INES
scripts/config --module CONFIG_PTP_1588_CLOCK_KVM
scripts/config --disable CONFIG_PTP_1588_CLOCK_IDT82P33
scripts/config --disable CONFIG_PTP_1588_CLOCK_IDTCM
scripts/config --disable CONFIG_PTP_1588_CLOCK_FC3W
scripts/config --module CONFIG_PTP_1588_CLOCK_MOCK
scripts/config --module CONFIG_PTP_1588_CLOCK_VMW
scripts/config --disable CONFIG_PTP_1588_CLOCK_OCP
scripts/config --disable CONFIG_PTP_DFL_TOD
# end of PTP clock support

scripts/config --disable CONFIG_PINCTRL
scripts/config --enable CONFIG_PINMUX
scripts/config --enable CONFIG_PINCONF
scripts/config --enable CONFIG_GENERIC_PINCONF
scripts/config --disable CONFIG_DEBUG_PINCTRL
scripts/config --disable CONFIG_PINCTRL_AMD
scripts/config --disable CONFIG_PINCTRL_CY8C95X0
scripts/config --disable CONFIG_PINCTRL_DA9062
scripts/config --disable CONFIG_PINCTRL_MCP23S08
scripts/config --disable CONFIG_PINCTRL_SX150X

#
# Intel pinctrl drivers
#
scripts/config --disable CONFIG_PINCTRL_BAYTRAIL
scripts/config --disable CONFIG_PINCTRL_CHERRYVIEW
scripts/config --disable CONFIG_PINCTRL_LYNXPOINT
scripts/config --disable CONFIG_PINCTRL_INTEL
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
# end of Intel pinctrl drivers

#
# Renesas pinctrl drivers
#
# end of Renesas pinctrl drivers

scripts/config --disable CONFIG_GPIOLIB
scripts/config --set-val CONFIG_GPIOLIB_FASTPATH_LIMIT 512
scripts/config --disable CONFIG_GPIO_ACPI
scripts/config --disable CONFIG_GPIOLIB_IRQCHIP
scripts/config --disable CONFIG_DEBUG_GPIO
scripts/config --disable CONFIG_GPIO_CDEV
scripts/config --disable CONFIG_GPIO_CDEV_V1
scripts/config --disable CONFIG_GPIO_GENERIC
scripts/config --disable CONFIG_GPIO_REGMAP

#
# Memory mapped GPIO drivers
#
scripts/config --disable CONFIG_GPIO_AMDPT
scripts/config --disable CONFIG_GPIO_DWAPB
scripts/config --disable CONFIG_GPIO_GENERIC_PLATFORM
scripts/config --disable CONFIG_GPIO_GRANITERAPIDS
scripts/config --disable CONFIG_GPIO_ICH
scripts/config --disable CONFIG_GPIO_MB86S7X
scripts/config --disable CONFIG_GPIO_MENZ127
scripts/config --disable CONFIG_GPIO_SIOX
scripts/config --disable CONFIG_GPIO_AMD_FCH
# end of Memory mapped GPIO drivers

#
# Port-mapped I/O GPIO drivers
#
scripts/config --disable CONFIG_GPIO_VX855
scripts/config --disable CONFIG_GPIO_F7188X
scripts/config --disable CONFIG_GPIO_IT87
scripts/config --disable CONFIG_GPIO_SCH
scripts/config --disable CONFIG_GPIO_SCH311X
scripts/config --disable CONFIG_GPIO_WINBOND
scripts/config --disable CONFIG_GPIO_WS16C48
# end of Port-mapped I/O GPIO drivers

#
# I2C GPIO expanders
#
scripts/config --disable CONFIG_GPIO_FXL6408
scripts/config --disable CONFIG_GPIO_DS4520
scripts/config --disable CONFIG_GPIO_MAX7300
scripts/config --disable CONFIG_GPIO_MAX732X
scripts/config --disable CONFIG_GPIO_PCA953X
scripts/config --disable CONFIG_GPIO_PCA9570
scripts/config --disable CONFIG_GPIO_PCF857X
scripts/config --disable CONFIG_GPIO_TPIC2810
# end of I2C GPIO expanders

#
# MFD GPIO expanders
#
scripts/config --disable CONFIG_GPIO_ADP5520
scripts/config --disable CONFIG_GPIO_CROS_EC
scripts/config --disable CONFIG_GPIO_DA9052
scripts/config --disable CONFIG_GPIO_DA9055
scripts/config --disable CONFIG_GPIO_DLN2
scripts/config --disable CONFIG_GPIO_ELKHARTLAKE
scripts/config --disable CONFIG_GPIO_JANZ_TTL
scripts/config --disable CONFIG_GPIO_KEMPLD
scripts/config --disable CONFIG_GPIO_LJCA
scripts/config --disable CONFIG_GPIO_PALMAS
scripts/config --disable CONFIG_GPIO_RC5T583
scripts/config --disable CONFIG_GPIO_TPS68470
scripts/config --disable CONFIG_GPIO_WHISKEY_COVE
# end of MFD GPIO expanders

#
# PCI GPIO expanders
#
scripts/config --disable CONFIG_GPIO_AMD8111
scripts/config --disable CONFIG_GPIO_BT8XX
scripts/config --disable CONFIG_GPIO_ML_IOH
scripts/config --disable CONFIG_GPIO_PCI_IDIO_16
scripts/config --disable CONFIG_GPIO_PCIE_IDIO_24
scripts/config --disable CONFIG_GPIO_RDC321X
# end of PCI GPIO expanders

#
# SPI GPIO expanders
#
scripts/config --disable CONFIG_GPIO_MAX3191X
scripts/config --disable CONFIG_GPIO_MAX7301
scripts/config --disable CONFIG_GPIO_MC33880
scripts/config --disable CONFIG_GPIO_PISOSR
scripts/config --disable CONFIG_GPIO_XRA1403
# end of SPI GPIO expanders

#
# USB GPIO expanders
#
scripts/config --disable CONFIG_GPIO_VIPERBOARD
# end of USB GPIO expanders

#
# Virtual GPIO drivers
#
scripts/config --disable CONFIG_GPIO_AGGREGATOR
scripts/config --disable CONFIG_GPIO_LATCH
scripts/config --disable CONFIG_GPIO_MOCKUP
scripts/config --disable CONFIG_GPIO_VIRTIO
scripts/config --disable CONFIG_GPIO_SIM
# end of Virtual GPIO drivers

#
# GPIO Debugging utilities
#
scripts/config --disable CONFIG_GPIO_VIRTUSER
# end of GPIO Debugging utilities

scripts/config --disable CONFIG_W1
scripts/config --enable CONFIG_POWER_RESET
scripts/config --disable CONFIG_POWER_RESET_MT6323
scripts/config --disable CONFIG_POWER_RESET_RESTART
scripts/config --module CONFIG_POWER_SEQUENCING
scripts/config --enable CONFIG_POWER_SUPPLY
scripts/config --disable CONFIG_POWER_SUPPLY_DEBUG
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
scripts/config --module CONFIG_BATTERY_MAX1720X
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
scripts/config --enable CONFIG_HWMON
scripts/config --disable CONFIG_HWMON_DEBUG_CHIP

#
# Native drivers
#
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
scripts/config --disable CONFIG_SENSORS_ASUS_ROG_RYUJIN
scripts/config --disable CONFIG_SENSORS_AXI_FAN_CONTROL
scripts/config --disable CONFIG_SENSORS_K8TEMP
scripts/config --disable CONFIG_SENSORS_K10TEMP
scripts/config --disable CONFIG_SENSORS_FAM15H_POWER
scripts/config --disable CONFIG_SENSORS_APPLESMC
scripts/config --disable CONFIG_SENSORS_ASB100
scripts/config --disable CONFIG_SENSORS_ATXP1
scripts/config --disable CONFIG_SENSORS_CHIPCAP2
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
scripts/config --disable CONFIG_SENSORS_LENOVO_EC
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
scripts/config --disable CONFIG_SENSORS_LTC4282
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
scripts/config --disable CONFIG_SENSORS_NZXT_KRAKEN3
scripts/config --disable CONFIG_SENSORS_NZXT_SMART2
scripts/config --disable CONFIG_SENSORS_OCC_P8_I2C
scripts/config --disable CONFIG_SENSORS_OXP
scripts/config --disable CONFIG_SENSORS_PCF8591
scripts/config --disable CONFIG_SENSORS_PECI_CPUTEMP
scripts/config --disable CONFIG_SENSORS_PECI_DIMMTEMP
scripts/config --module CONFIG_PMBUS
scripts/config --disable CONFIG_SENSORS_PMBUS
scripts/config --disable CONFIG_SENSORS_ACBEL_FSG032
scripts/config --disable CONFIG_SENSORS_ADM1266
scripts/config --disable CONFIG_SENSORS_ADM1275
scripts/config --disable CONFIG_SENSORS_ADP1050
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
scripts/config --disable CONFIG_SENSORS_MP2891
scripts/config --disable CONFIG_SENSORS_MP2975
scripts/config --disable CONFIG_SENSORS_MP2993
scripts/config --disable CONFIG_SENSORS_MP5023
scripts/config --disable CONFIG_SENSORS_MP5920
scripts/config --disable CONFIG_SENSORS_MP5990
scripts/config --disable CONFIG_SENSORS_MP9941
scripts/config --disable CONFIG_SENSORS_MPQ7932
scripts/config --disable CONFIG_SENSORS_MPQ8785
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
scripts/config --disable CONFIG_SENSORS_XDP710
scripts/config --disable CONFIG_SENSORS_XDPE152
scripts/config --disable CONFIG_SENSORS_XDPE122
scripts/config --disable CONFIG_SENSORS_ZL6100
scripts/config --disable CONFIG_SENSORS_PT5161L
scripts/config --disable CONFIG_SENSORS_PWM_FAN
scripts/config --disable CONFIG_SENSORS_SBTSI
scripts/config --disable CONFIG_SENSORS_SBRMI
scripts/config --disable CONFIG_SENSORS_SHT15
scripts/config --disable CONFIG_SENSORS_SHT21
scripts/config --disable CONFIG_SENSORS_SHT3x
scripts/config --disable CONFIG_SENSORS_SHT4x
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
scripts/config --disable CONFIG_SENSORS_STEAMDECK
scripts/config --disable CONFIG_SENSORS_STTS751
scripts/config --disable CONFIG_SENSORS_SURFACE_FAN
scripts/config --disable CONFIG_SENSORS_SURFACE_TEMP
scripts/config --disable CONFIG_SENSORS_ADC128D818
scripts/config --disable CONFIG_SENSORS_ADS7828
scripts/config --disable CONFIG_SENSORS_ADS7871
scripts/config --disable CONFIG_SENSORS_AMC6821
scripts/config --disable CONFIG_SENSORS_INA209
scripts/config --disable CONFIG_SENSORS_INA2XX
scripts/config --disable CONFIG_SENSORS_INA238
scripts/config --disable CONFIG_SENSORS_INA3221
scripts/config --disable CONFIG_SENSORS_SPD5118
scripts/config --disable CONFIG_SENSORS_SPD5118_DETECT
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

#
# ACPI drivers
#
scripts/config --disable CONFIG_SENSORS_ACPI_POWER
scripts/config --disable CONFIG_SENSORS_ATK0110
scripts/config --disable CONFIG_SENSORS_ASUS_WMI
scripts/config --disable CONFIG_SENSORS_ASUS_EC
scripts/config --disable CONFIG_SENSORS_HP_WMI
scripts/config --enable CONFIG_THERMAL
scripts/config --enable CONFIG_THERMAL_NETLINK
scripts/config --disable CONFIG_THERMAL_STATISTICS
scripts/config --disable CONFIG_THERMAL_DEBUGFS
scripts/config --module CONFIG_THERMAL_CORE_TESTING
scripts/config --set-val CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS 0
scripts/config --enable CONFIG_THERMAL_HWMON
scripts/config --enable CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE
scripts/config --disable CONFIG_THERMAL_DEFAULT_GOV_FAIR_SHARE
scripts/config --disable CONFIG_THERMAL_DEFAULT_GOV_USER_SPACE
scripts/config --disable CONFIG_THERMAL_DEFAULT_GOV_BANG_BANG
scripts/config --disable CONFIG_THERMAL_GOV_FAIR_SHARE
scripts/config --enable CONFIG_THERMAL_GOV_STEP_WISE
scripts/config --enable CONFIG_THERMAL_GOV_BANG_BANG
scripts/config --disable CONFIG_THERMAL_GOV_USER_SPACE
scripts/config --disable CONFIG_DEVFREQ_THERMAL
scripts/config --disable CONFIG_THERMAL_EMULATION

#
# Intel thermal drivers
#
scripts/config --disable CONFIG_INTEL_POWERCLAMP
scripts/config --enable CONFIG_X86_THERMAL_VECTOR
scripts/config --disable CONFIG_X86_PKG_TEMP_THERMAL
scripts/config --disable CONFIG_INTEL_SOC_DTS_THERMAL

#
# ACPI INT340X thermal drivers
#
scripts/config --disable CONFIG_INT340X_THERMAL
# end of ACPI INT340X thermal drivers

scripts/config --disable CONFIG_INTEL_BXT_PMIC_THERMAL
scripts/config --disable CONFIG_INTEL_PCH_THERMAL
scripts/config --disable CONFIG_INTEL_TCC_COOLING
scripts/config --enable CONFIG_INTEL_HFI_THERMAL
# end of Intel thermal drivers

scripts/config --module CONFIG_GENERIC_ADC_THERMAL
scripts/config --disable CONFIG_WATCHDOG
scripts/config --enable CONFIG_SSB_POSSIBLE
scripts/config --module CONFIG_SSB
scripts/config --enable CONFIG_SSB_SPROM
scripts/config --enable CONFIG_SSB_PCIHOST_POSSIBLE
scripts/config --enable CONFIG_SSB_PCIHOST
scripts/config --enable CONFIG_SSB_PCMCIAHOST_POSSIBLE
scripts/config --disable CONFIG_SSB_PCMCIAHOST
scripts/config --enable CONFIG_SSB_SDIOHOST_POSSIBLE
scripts/config --enable CONFIG_SSB_SDIOHOST
scripts/config --enable CONFIG_SSB_DRIVER_PCICORE_POSSIBLE
scripts/config --enable CONFIG_SSB_DRIVER_PCICORE
scripts/config --enable CONFIG_SSB_DRIVER_GPIO
scripts/config --enable CONFIG_BCMA_POSSIBLE
scripts/config --disable CONFIG_BCMA

#
# Multifunction device drivers
#
scripts/config --enable CONFIG_MFD_CORE
scripts/config --disable CONFIG_MFD_AS3711
scripts/config --disable CONFIG_MFD_SMPRO
scripts/config --enable CONFIG_PMIC_ADP5520
scripts/config --enable CONFIG_MFD_AAT2870_CORE
scripts/config --disable CONFIG_MFD_BCM590XX
scripts/config --disable CONFIG_MFD_BD9571MWV
scripts/config --disable CONFIG_MFD_AXP20X_I2C
scripts/config --disable CONFIG_MFD_CROS_EC_DEV
scripts/config --disable CONFIG_MFD_CS42L43_I2C
scripts/config --disable CONFIG_MFD_CS42L43_SDW
scripts/config --disable CONFIG_MFD_MADERA
scripts/config --enable CONFIG_PMIC_DA903X
scripts/config --enable CONFIG_PMIC_DA9052
scripts/config --enable CONFIG_MFD_DA9052_SPI
scripts/config --enable CONFIG_MFD_DA9052_I2C
scripts/config --enable CONFIG_MFD_DA9055
scripts/config --module CONFIG_MFD_DA9062
scripts/config --enable CONFIG_MFD_DA9063
scripts/config --module CONFIG_MFD_DA9150
scripts/config --module CONFIG_MFD_DLN2
scripts/config --disable CONFIG_MFD_MC13XXX_SPI
scripts/config --disable CONFIG_MFD_MC13XXX_I2C
scripts/config --disable CONFIG_MFD_MP2629
scripts/config --disable CONFIG_MFD_INTEL_QUARK_I2C_GPIO
scripts/config --module CONFIG_LPC_ICH
scripts/config --module CONFIG_LPC_SCH
scripts/config --module CONFIG_INTEL_SOC_PMIC_BXTWC
scripts/config --module CONFIG_INTEL_SOC_PMIC_MRFLD
scripts/config --module CONFIG_MFD_INTEL_LPSS
scripts/config --module CONFIG_MFD_INTEL_LPSS_ACPI
scripts/config --module CONFIG_MFD_INTEL_LPSS_PCI
scripts/config --module CONFIG_MFD_INTEL_PMC_BXT
scripts/config --module CONFIG_MFD_IQS62X
scripts/config --module CONFIG_MFD_JANZ_CMODIO
scripts/config --module CONFIG_MFD_KEMPLD
scripts/config --module CONFIG_MFD_88PM800
scripts/config --module CONFIG_MFD_88PM805
scripts/config --enable CONFIG_MFD_88PM860X
scripts/config --enable CONFIG_MFD_MAX14577
scripts/config --module CONFIG_MFD_MAX77541
scripts/config --enable CONFIG_MFD_MAX77693
scripts/config --enable CONFIG_MFD_MAX77843
scripts/config --module CONFIG_MFD_MAX8907
scripts/config --enable CONFIG_MFD_MAX8925
scripts/config --enable CONFIG_MFD_MAX8997
scripts/config --enable CONFIG_MFD_MAX8998
scripts/config --module CONFIG_MFD_MT6360
scripts/config --module CONFIG_MFD_MT6370
scripts/config --module CONFIG_MFD_MT6397
scripts/config --module CONFIG_MFD_MENF21BMC
scripts/config --module CONFIG_MFD_OCELOT
scripts/config --enable CONFIG_EZX_PCAP
scripts/config --module CONFIG_MFD_VIPERBOARD
scripts/config --module CONFIG_MFD_RETU
scripts/config --module CONFIG_MFD_PCF50633
scripts/config --module CONFIG_PCF50633_ADC
scripts/config --module CONFIG_PCF50633_GPIO
scripts/config --module CONFIG_MFD_SY7636A
scripts/config --module CONFIG_MFD_RDC321X
scripts/config --module CONFIG_MFD_RT4831
scripts/config --module CONFIG_MFD_RT5033
scripts/config --module CONFIG_MFD_RT5120
scripts/config --enable CONFIG_MFD_RC5T583
scripts/config --module CONFIG_MFD_SI476X_CORE
scripts/config --module CONFIG_MFD_SIMPLE_MFD_I2C
scripts/config --module CONFIG_MFD_SM501
scripts/config --enable CONFIG_MFD_SM501_GPIO
scripts/config --module CONFIG_MFD_SKY81452
scripts/config --enable CONFIG_MFD_SYSCON
scripts/config --disable CONFIG_MFD_LP3943
scripts/config --enable CONFIG_MFD_LP8788
scripts/config --disable CONFIG_MFD_TI_LMU
scripts/config --enable CONFIG_MFD_PALMAS
scripts/config --module CONFIG_TPS6105X
scripts/config --module CONFIG_TPS65010
scripts/config --module CONFIG_TPS6507X
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
scripts/config --module CONFIG_MFD_CS40L50_CORE
scripts/config --module CONFIG_MFD_CS40L50_I2C
scripts/config --module CONFIG_MFD_CS40L50_SPI
scripts/config --disable CONFIG_RAVE_SP_CORE
scripts/config --disable CONFIG_MFD_INTEL_M10_BMC_SPI
scripts/config --disable CONFIG_MFD_INTEL_M10_BMC_PMCI
scripts/config --module CONFIG_MFD_STEAMDECK
# end of Multifunction device drivers

scripts/config --enable CONFIG_REGULATOR
scripts/config --disable CONFIG_REGULATOR_DEBUG
scripts/config --module CONFIG_REGULATOR_FIXED_VOLTAGE
scripts/config --disable CONFIG_REGULATOR_VIRTUAL_CONSUMER
scripts/config --disable CONFIG_REGULATOR_USERSPACE_CONSUMER
scripts/config --enable CONFIG_REGULATOR_NETLINK_EVENTS
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

#
# CEC support
#
scripts/config --disable CONFIG_MEDIA_CEC_SUPPORT
# end of CEC support

scripts/config --disable CONFIG_MEDIA_SUPPORT

#
# Graphics support
#
scripts/config --enable CONFIG_APERTURE_HELPERS
scripts/config --enable CONFIG_SCREEN_INFO
scripts/config --enable CONFIG_AUXDISPLAY
scripts/config --module CONFIG_CHARLCD
scripts/config --module CONFIG_HD44780_COMMON
scripts/config --module CONFIG_HD44780
scripts/config --module CONFIG_LCD2S
scripts/config --disable CONFIG_PARPORT_PANEL
scripts/config --set-val CONFIG_PANEL_PARPORT 0
scripts/config --set-val CONFIG_PANEL_PROFILE 5
scripts/config --disable CONFIG_PANEL_CHANGE_MESSAGE
scripts/config --disable CONFIG_CHARLCD_BL_OFF
scripts/config --disable CONFIG_CHARLCD_BL_ON
scripts/config --enable CONFIG_CHARLCD_BL_FLASH
scripts/config --module CONFIG_KS0108
scripts/config --set-val CONFIG_KS0108_PORT 0x378
scripts/config --set-val CONFIG_KS0108_DELAY 2
scripts/config --module CONFIG_LINEDISP
scripts/config --module CONFIG_IMG_ASCII_LCD
scripts/config --module CONFIG_MAX6959
scripts/config --module CONFIG_SEG_LED_GPIO
scripts/config --module CONFIG_PANEL
scripts/config --disable CONFIG_AGP
scripts/config --disable CONFIG_VGA_SWITCHEROO
scripts/config --disable CONFIG_DRM

#
# Frame buffer Devices
#
scripts/config --disable CONFIG_FB
# end of Frame buffer Devices

#
# Backlight & LCD device support
#
scripts/config --disable CONFIG_LCD_CLASS_DEVICE
scripts/config --module CONFIG_BACKLIGHT_CLASS_DEVICE
scripts/config --disable CONFIG_BACKLIGHT_KTD253
scripts/config --module CONFIG_BACKLIGHT_KTD2801
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
# end of Backlight & LCD device support

#
# Console display driver support
#
scripts/config --enable CONFIG_VGA_CONSOLE
scripts/config --enable CONFIG_DUMMY_CONSOLE
scripts/config --set-val CONFIG_DUMMY_CONSOLE_COLUMNS 80
scripts/config --set-val CONFIG_DUMMY_CONSOLE_ROWS 25
# end of Console display driver support
# end of Graphics support

scripts/config --disable CONFIG_SOUND
scripts/config --enable CONFIG_HID_SUPPORT
scripts/config --module CONFIG_HID
scripts/config --enable CONFIG_HID_BATTERY_STRENGTH
scripts/config --enable CONFIG_HIDRAW
scripts/config --module CONFIG_UHID
scripts/config --module CONFIG_HID_GENERIC

#
# Special HID drivers
#
scripts/config --module CONFIG_HID_A4TECH
scripts/config --module CONFIG_HID_ACCUTOUCH
scripts/config --module CONFIG_HID_ACRUX
scripts/config --enable CONFIG_HID_ACRUX_FF
scripts/config --module CONFIG_HID_APPLE
scripts/config --module CONFIG_HID_APPLEIR
scripts/config --module CONFIG_HID_ASUS
scripts/config --module CONFIG_HID_AUREAL
scripts/config --module CONFIG_HID_BELKIN
scripts/config --module CONFIG_HID_BETOP_FF
scripts/config --module CONFIG_HID_BIGBEN_FF
scripts/config --module CONFIG_HID_CHERRY
scripts/config --module CONFIG_HID_CHICONY
scripts/config --module CONFIG_HID_CORSAIR
scripts/config --module CONFIG_HID_COUGAR
scripts/config --module CONFIG_HID_MACALLY
scripts/config --module CONFIG_HID_CMEDIA
scripts/config --module CONFIG_HID_CP2112
scripts/config --module CONFIG_HID_CREATIVE_SB0540
scripts/config --module CONFIG_HID_CYPRESS
scripts/config --module CONFIG_HID_DRAGONRISE
scripts/config --enable CONFIG_DRAGONRISE_FF
scripts/config --module CONFIG_HID_EMS_FF
scripts/config --module CONFIG_HID_ELAN
scripts/config --module CONFIG_HID_ELECOM
scripts/config --module CONFIG_HID_ELO
scripts/config --module CONFIG_HID_EVISION
scripts/config --module CONFIG_HID_EZKEY
scripts/config --module CONFIG_HID_FT260
scripts/config --module CONFIG_HID_GEMBIRD
scripts/config --module CONFIG_HID_GFRM
scripts/config --module CONFIG_HID_GLORIOUS
scripts/config --module CONFIG_HID_HOLTEK
scripts/config --enable CONFIG_HOLTEK_FF
scripts/config --module CONFIG_HID_VIVALDI_COMMON
scripts/config --module CONFIG_HID_GOODIX_SPI
scripts/config --module CONFIG_HID_GOOGLE_HAMMER
scripts/config --module CONFIG_HID_GOOGLE_STADIA_FF
scripts/config --module CONFIG_HID_VIVALDI
scripts/config --module CONFIG_HID_GT683R
scripts/config --module CONFIG_HID_KEYTOUCH
scripts/config --module CONFIG_HID_KYE
scripts/config --module CONFIG_HID_UCLOGIC
scripts/config --module CONFIG_HID_WALTOP
scripts/config --module CONFIG_HID_VIEWSONIC
scripts/config --module CONFIG_HID_VRC2
scripts/config --module CONFIG_HID_XIAOMI
scripts/config --module CONFIG_HID_GYRATION
scripts/config --module CONFIG_HID_ICADE
scripts/config --module CONFIG_HID_ITE
scripts/config --module CONFIG_HID_JABRA
scripts/config --module CONFIG_HID_TWINHAN
scripts/config --module CONFIG_HID_KENSINGTON
scripts/config --module CONFIG_HID_LCPOWER
scripts/config --module CONFIG_HID_LED
scripts/config --module CONFIG_HID_LENOVO
scripts/config --module CONFIG_HID_LETSKETCH
scripts/config --module CONFIG_HID_LOGITECH
scripts/config --module CONFIG_HID_LOGITECH_DJ
scripts/config --module CONFIG_HID_LOGITECH_HIDPP
scripts/config --enable CONFIG_LOGITECH_FF
scripts/config --enable CONFIG_LOGIRUMBLEPAD2_FF
scripts/config --enable CONFIG_LOGIG940_FF
scripts/config --enable CONFIG_LOGIWHEELS_FF
scripts/config --module CONFIG_HID_MAGICMOUSE
scripts/config --module CONFIG_HID_MALTRON
scripts/config --module CONFIG_HID_MAYFLASH
scripts/config --module CONFIG_HID_MEGAWORLD_FF
scripts/config --module CONFIG_HID_REDRAGON
scripts/config --module CONFIG_HID_MICROSOFT
scripts/config --module CONFIG_HID_MONTEREY
scripts/config --module CONFIG_HID_MULTITOUCH
scripts/config --module CONFIG_HID_NINTENDO
scripts/config --enable CONFIG_NINTENDO_FF
scripts/config --module CONFIG_HID_NTI
scripts/config --module CONFIG_HID_NTRIG
scripts/config --module CONFIG_HID_ORTEK
scripts/config --module CONFIG_HID_PANTHERLORD
scripts/config --enable CONFIG_PANTHERLORD_FF
scripts/config --module CONFIG_HID_PENMOUNT
scripts/config --module CONFIG_HID_PETALYNX
scripts/config --module CONFIG_HID_PICOLCD
scripts/config --enable CONFIG_HID_PICOLCD_BACKLIGHT
scripts/config --enable CONFIG_HID_PICOLCD_LEDS
scripts/config --module CONFIG_HID_PLANTRONICS
scripts/config --module CONFIG_HID_PLAYSTATION
scripts/config --enable CONFIG_PLAYSTATION_FF
scripts/config --module CONFIG_HID_PXRC
scripts/config --module CONFIG_HID_RAZER
scripts/config --module CONFIG_HID_PRIMAX
scripts/config --module CONFIG_HID_RETRODE
scripts/config --module CONFIG_HID_ROCCAT
scripts/config --module CONFIG_HID_SAITEK
scripts/config --module CONFIG_HID_SAMSUNG
scripts/config --module CONFIG_HID_SEMITEK
scripts/config --module CONFIG_HID_SIGMAMICRO
scripts/config --module CONFIG_HID_SONY
scripts/config --enable CONFIG_SONY_FF
scripts/config --module CONFIG_HID_SPEEDLINK
scripts/config --module CONFIG_HID_STEAM
scripts/config --enable CONFIG_STEAM_FF
scripts/config --module CONFIG_HID_STEELSERIES
scripts/config --module CONFIG_HID_SUNPLUS
scripts/config --module CONFIG_HID_RMI
scripts/config --module CONFIG_HID_GREENASIA
scripts/config --enable CONFIG_GREENASIA_FF
scripts/config --module CONFIG_HID_HYPERV_MOUSE
scripts/config --module CONFIG_HID_SMARTJOYPLUS
scripts/config --enable CONFIG_SMARTJOYPLUS_FF
scripts/config --module CONFIG_HID_TIVO
scripts/config --module CONFIG_HID_TOPSEED
scripts/config --module CONFIG_HID_TOPRE
scripts/config --module CONFIG_HID_THINGM
scripts/config --module CONFIG_HID_THRUSTMASTER
scripts/config --enable CONFIG_THRUSTMASTER_FF
scripts/config --module CONFIG_HID_UDRAW_PS3
scripts/config --module CONFIG_HID_U2FZERO
scripts/config --module CONFIG_HID_UNIVERSAL_PIDFF
scripts/config --module CONFIG_HID_WACOM
scripts/config --module CONFIG_HID_WIIMOTE
scripts/config --module CONFIG_HID_WINWING
scripts/config --module CONFIG_HID_XINMO
scripts/config --module CONFIG_HID_ZEROPLUS
scripts/config --enable CONFIG_ZEROPLUS_FF
scripts/config --module CONFIG_HID_ZYDACRON
scripts/config --module CONFIG_HID_SENSOR_HUB
scripts/config --module CONFIG_HID_SENSOR_CUSTOM_SENSOR
scripts/config --module CONFIG_HID_ALPS
scripts/config --module CONFIG_HID_MCP2200
scripts/config --module CONFIG_HID_MCP2221
# end of Special HID drivers

#
# HID-BPF support
#
scripts/config --enable CONFIG_HID_BPF
# end of HID-BPF support

#
# USB HID support
#
scripts/config --disable CONFIG_USB_HID
scripts/config --disable CONFIG_HID_PID
scripts/config --disable CONFIG_USB_HIDDEV
# end of USB HID support

scripts/config --disable CONFIG_I2C_HID
scripts/config --disable CONFIG_I2C_HID_ACPI
scripts/config --disable CONFIG_I2C_HID_OF
scripts/config --disable CONFIG_I2C_HID_CORE

#
# Intel ISH HID support
#
scripts/config --module CONFIG_INTEL_ISH_HID
scripts/config --module CONFIG_INTEL_ISH_FIRMWARE_DOWNLOADER
# end of Intel ISH HID support

#
# AMD SFH HID Support
#
scripts/config --module CONFIG_AMD_SFH_HID
# end of AMD SFH HID Support

#
# Surface System Aggregator Module HID support
#
scripts/config --module CONFIG_SURFACE_HID
scripts/config --module CONFIG_SURFACE_KBD
# end of Surface System Aggregator Module HID support

scripts/config --module CONFIG_SURFACE_HID_CORE
scripts/config --enable CONFIG_USB_OHCI_LITTLE_ENDIAN
scripts/config --enable CONFIG_USB_SUPPORT
scripts/config --enable CONFIG_USB_COMMON
scripts/config --enable CONFIG_USB_LED_TRIG
scripts/config --module CONFIG_USB_ULPI_BUS
scripts/config --module CONFIG_USB_CONN_GPIO
scripts/config --enable CONFIG_USB_ARCH_HAS_HCD
scripts/config --enable CONFIG_USB
scripts/config --enable CONFIG_USB_PCI
scripts/config --enable CONFIG_USB_PCI_AMD
scripts/config --enable CONFIG_USB_ANNOUNCE_NEW_DEVICES

#
# Miscellaneous USB options
#
scripts/config --enable CONFIG_USB_DEFAULT_PERSIST
scripts/config --disable CONFIG_USB_FEW_INIT_RETRIES
scripts/config --enable CONFIG_USB_DYNAMIC_MINORS
scripts/config --disable CONFIG_USB_OTG
scripts/config --disable CONFIG_USB_OTG_PRODUCTLIST
scripts/config --module CONFIG_USB_LEDS_TRIGGER_USBPORT
scripts/config --set-val CONFIG_USB_AUTOSUSPEND_DELAY 2
scripts/config --set-val CONFIG_USB_DEFAULT_AUTHORIZATION_MODE 1
scripts/config --module CONFIG_USB_MON

#
# USB Host Controller Drivers
#
scripts/config --module CONFIG_USB_C67X00_HCD
scripts/config --enable CONFIG_USB_XHCI_HCD
scripts/config --enable CONFIG_USB_XHCI_DBGCAP
scripts/config --enable CONFIG_USB_XHCI_PCI
scripts/config --module CONFIG_USB_XHCI_PCI_RENESAS
scripts/config --module CONFIG_USB_XHCI_PLATFORM
scripts/config --enable CONFIG_USB_EHCI_HCD
scripts/config --enable CONFIG_USB_EHCI_ROOT_HUB_TT
scripts/config --enable CONFIG_USB_EHCI_TT_NEWSCHED
scripts/config --enable CONFIG_USB_EHCI_PCI
scripts/config --module CONFIG_USB_EHCI_FSL
scripts/config --enable CONFIG_USB_EHCI_HCD_PLATFORM
scripts/config --module CONFIG_USB_OXU210HP_HCD
scripts/config --module CONFIG_USB_ISP116X_HCD
scripts/config --module CONFIG_USB_MAX3421_HCD
scripts/config --enable CONFIG_USB_OHCI_HCD
scripts/config --enable CONFIG_USB_OHCI_HCD_PCI
scripts/config --enable CONFIG_USB_OHCI_HCD_PLATFORM
scripts/config --enable CONFIG_USB_UHCI_HCD
scripts/config --module CONFIG_USB_SL811_HCD
scripts/config --enable CONFIG_USB_SL811_HCD_ISO
scripts/config --module CONFIG_USB_SL811_CS
scripts/config --module CONFIG_USB_R8A66597_HCD
scripts/config --module CONFIG_USB_HCD_SSB
scripts/config --disable CONFIG_USB_HCD_TEST_MODE
scripts/config --module CONFIG_USB_XEN_HCD

#
# USB Device Class drivers
#
scripts/config --module CONFIG_USB_ACM
scripts/config --module CONFIG_USB_PRINTER
scripts/config --module CONFIG_USB_WDM
scripts/config --module CONFIG_USB_TMC

#
# NOTE: USB_STORAGE depends on SCSI but BLK_DEV_SD may
#

#
# also be needed; see USB_STORAGE Help for more info
#
scripts/config --module CONFIG_USB_STORAGE
scripts/config --disable CONFIG_USB_STORAGE_DEBUG
scripts/config --module CONFIG_USB_STORAGE_REALTEK
scripts/config --enable CONFIG_REALTEK_AUTOPM
scripts/config --module CONFIG_USB_STORAGE_DATAFAB
scripts/config --module CONFIG_USB_STORAGE_FREECOM
scripts/config --module CONFIG_USB_STORAGE_ISD200
scripts/config --module CONFIG_USB_STORAGE_USBAT
scripts/config --module CONFIG_USB_STORAGE_SDDR09
scripts/config --module CONFIG_USB_STORAGE_SDDR55
scripts/config --module CONFIG_USB_STORAGE_JUMPSHOT
scripts/config --module CONFIG_USB_STORAGE_ALAUDA
scripts/config --module CONFIG_USB_STORAGE_ONETOUCH
scripts/config --module CONFIG_USB_STORAGE_KARMA
scripts/config --module CONFIG_USB_STORAGE_CYPRESS_ATACB
scripts/config --module CONFIG_USB_STORAGE_ENE_UB6250
scripts/config --module CONFIG_USB_UAS

#
# USB Imaging devices
#
scripts/config --module CONFIG_USB_MDC800
scripts/config --module CONFIG_USB_MICROTEK
scripts/config --module CONFIG_USBIP_CORE
scripts/config --module CONFIG_USBIP_VHCI_HCD
scripts/config --set-val CONFIG_USBIP_VHCI_HC_PORTS 8
scripts/config --set-val CONFIG_USBIP_VHCI_NR_HCS 1
scripts/config --module CONFIG_USBIP_HOST
scripts/config --module CONFIG_USBIP_VUDC
scripts/config --disable CONFIG_USBIP_DEBUG

#
# USB dual-mode controller drivers
#
scripts/config --module CONFIG_USB_CDNS_SUPPORT
scripts/config --enable CONFIG_USB_CDNS_HOST
scripts/config --module CONFIG_USB_CDNS3
scripts/config --enable CONFIG_USB_CDNS3_GADGET
scripts/config --enable CONFIG_USB_CDNS3_HOST
scripts/config --module CONFIG_USB_CDNS3_PCI_WRAP
scripts/config --module CONFIG_USB_CDNSP_PCI
scripts/config --enable CONFIG_USB_CDNSP_GADGET
scripts/config --enable CONFIG_USB_CDNSP_HOST
scripts/config --module CONFIG_USB_MUSB_HDRC
scripts/config --disable CONFIG_USB_MUSB_HOST
scripts/config --disable CONFIG_USB_MUSB_GADGET
scripts/config --enable CONFIG_USB_MUSB_DUAL_ROLE

#
# Platform Glue Layer
#

#
# MUSB DMA mode
#
scripts/config --enable CONFIG_MUSB_PIO_ONLY
scripts/config --module CONFIG_USB_DWC3
scripts/config --enable CONFIG_USB_DWC3_ULPI
scripts/config --disable CONFIG_USB_DWC3_HOST
scripts/config --disable CONFIG_USB_DWC3_GADGET
scripts/config --enable CONFIG_USB_DWC3_DUAL_ROLE

#
# Platform Glue Driver Support
#
scripts/config --module CONFIG_USB_DWC3_PCI
scripts/config --module CONFIG_USB_DWC3_HAPS
scripts/config --enable CONFIG_USB_DWC2
scripts/config --enable CONFIG_USB_DWC2_HOST

#
# Gadget/Dual-role mode requires USB Gadget support to be enabled
#
scripts/config --module CONFIG_USB_DWC2_PCI
scripts/config --disable CONFIG_USB_DWC2_DEBUG
scripts/config --disable CONFIG_USB_DWC2_TRACK_MISSED_SOFS
scripts/config --module CONFIG_USB_CHIPIDEA
scripts/config --enable CONFIG_USB_CHIPIDEA_UDC
scripts/config --enable CONFIG_USB_CHIPIDEA_HOST
scripts/config --module CONFIG_USB_CHIPIDEA_PCI
scripts/config --module CONFIG_USB_CHIPIDEA_MSM
scripts/config --module CONFIG_USB_CHIPIDEA_NPCM
scripts/config --module CONFIG_USB_CHIPIDEA_GENERIC
scripts/config --module CONFIG_USB_ISP1760
scripts/config --enable CONFIG_USB_ISP1760_HCD
scripts/config --enable CONFIG_USB_ISP1761_UDC
scripts/config --disable CONFIG_USB_ISP1760_HOST_ROLE
scripts/config --disable CONFIG_USB_ISP1760_GADGET_ROLE
scripts/config --enable CONFIG_USB_ISP1760_DUAL_ROLE

#
# USB port drivers
#
scripts/config --module CONFIG_USB_SERIAL
scripts/config --enable CONFIG_USB_SERIAL_GENERIC
scripts/config --module CONFIG_USB_SERIAL_SIMPLE
scripts/config --module CONFIG_USB_SERIAL_AIRCABLE
scripts/config --module CONFIG_USB_SERIAL_ARK3116
scripts/config --module CONFIG_USB_SERIAL_BELKIN
scripts/config --module CONFIG_USB_SERIAL_CH341
scripts/config --module CONFIG_USB_SERIAL_WHITEHEAT
scripts/config --module CONFIG_USB_SERIAL_DIGI_ACCELEPORT
scripts/config --module CONFIG_USB_SERIAL_CP210X
scripts/config --module CONFIG_USB_SERIAL_CYPRESS_M8
scripts/config --module CONFIG_USB_SERIAL_EMPEG
scripts/config --module CONFIG_USB_SERIAL_FTDI_SIO
scripts/config --module CONFIG_USB_SERIAL_VISOR
scripts/config --module CONFIG_USB_SERIAL_IPAQ
scripts/config --module CONFIG_USB_SERIAL_IR
scripts/config --module CONFIG_USB_SERIAL_EDGEPORT
scripts/config --module CONFIG_USB_SERIAL_EDGEPORT_TI
scripts/config --module CONFIG_USB_SERIAL_F81232
scripts/config --module CONFIG_USB_SERIAL_F8153X
scripts/config --module CONFIG_USB_SERIAL_GARMIN
scripts/config --module CONFIG_USB_SERIAL_IPW
scripts/config --module CONFIG_USB_SERIAL_IUU
scripts/config --module CONFIG_USB_SERIAL_KEYSPAN_PDA
scripts/config --module CONFIG_USB_SERIAL_KEYSPAN
scripts/config --module CONFIG_USB_SERIAL_KLSI
scripts/config --module CONFIG_USB_SERIAL_KOBIL_SCT
scripts/config --module CONFIG_USB_SERIAL_MCT_U232
scripts/config --module CONFIG_USB_SERIAL_METRO
scripts/config --module CONFIG_USB_SERIAL_MOS7720
scripts/config --enable CONFIG_USB_SERIAL_MOS7715_PARPORT
scripts/config --module CONFIG_USB_SERIAL_MOS7840
scripts/config --module CONFIG_USB_SERIAL_MXUPORT
scripts/config --module CONFIG_USB_SERIAL_NAVMAN
scripts/config --module CONFIG_USB_SERIAL_PL2303
scripts/config --module CONFIG_USB_SERIAL_OTI6858
scripts/config --module CONFIG_USB_SERIAL_QCAUX
scripts/config --module CONFIG_USB_SERIAL_QUALCOMM
scripts/config --module CONFIG_USB_SERIAL_SPCP8X5
scripts/config --module CONFIG_USB_SERIAL_SAFE
scripts/config --disable CONFIG_USB_SERIAL_SAFE_PADDED
scripts/config --module CONFIG_USB_SERIAL_SIERRAWIRELESS
scripts/config --module CONFIG_USB_SERIAL_SYMBOL
scripts/config --module CONFIG_USB_SERIAL_TI
scripts/config --module CONFIG_USB_SERIAL_CYBERJACK
scripts/config --module CONFIG_USB_SERIAL_WWAN
scripts/config --module CONFIG_USB_SERIAL_OPTION
scripts/config --module CONFIG_USB_SERIAL_OMNINET
scripts/config --module CONFIG_USB_SERIAL_OPTICON
scripts/config --module CONFIG_USB_SERIAL_XSENS_MT
scripts/config --module CONFIG_USB_SERIAL_WISHBONE
scripts/config --module CONFIG_USB_SERIAL_SSU100
scripts/config --module CONFIG_USB_SERIAL_QT2
scripts/config --module CONFIG_USB_SERIAL_UPD78F0730
scripts/config --module CONFIG_USB_SERIAL_XR
scripts/config --module CONFIG_USB_SERIAL_DEBUG

#
# USB Miscellaneous drivers
#
scripts/config --module CONFIG_USB_USS720
scripts/config --module CONFIG_USB_EMI62
scripts/config --module CONFIG_USB_EMI26
scripts/config --module CONFIG_USB_ADUTUX
scripts/config --module CONFIG_USB_SEVSEG
scripts/config --module CONFIG_USB_LEGOTOWER
scripts/config --module CONFIG_USB_LCD
scripts/config --module CONFIG_USB_CYPRESS_CY7C63
scripts/config --module CONFIG_USB_CYTHERM
scripts/config --module CONFIG_USB_IDMOUSE
scripts/config --module CONFIG_USB_APPLEDISPLAY
scripts/config --module CONFIG_APPLE_MFI_FASTCHARGE
scripts/config --module CONFIG_USB_LJCA
scripts/config --module CONFIG_USB_SISUSBVGA
scripts/config --module CONFIG_USB_LD
scripts/config --module CONFIG_USB_TRANCEVIBRATOR
scripts/config --module CONFIG_USB_IOWARRIOR
scripts/config --module CONFIG_USB_TEST
scripts/config --module CONFIG_USB_EHSET_TEST_FIXTURE
scripts/config --module CONFIG_USB_ISIGHTFW
scripts/config --module CONFIG_USB_YUREX
scripts/config --module CONFIG_USB_EZUSB_FX2
scripts/config --module CONFIG_USB_HUB_USB251XB
scripts/config --module CONFIG_USB_HSIC_USB3503
scripts/config --module CONFIG_USB_HSIC_USB4604
scripts/config --module CONFIG_USB_LINK_LAYER_TEST
scripts/config --module CONFIG_USB_CHAOSKEY
scripts/config --module CONFIG_USB_ATM
scripts/config --module CONFIG_USB_SPEEDTOUCH
scripts/config --module CONFIG_USB_CXACRU
scripts/config --module CONFIG_USB_UEAGLEATM
scripts/config --module CONFIG_USB_XUSBATM

#
# USB Physical Layer drivers
#
scripts/config --enable CONFIG_USB_PHY
scripts/config --module CONFIG_NOP_USB_XCEIV
scripts/config --module CONFIG_USB_GPIO_VBUS
scripts/config --module CONFIG_TAHVO_USB
scripts/config --enable CONFIG_TAHVO_USB_HOST_BY_DEFAULT
scripts/config --module CONFIG_USB_ISP1301
# end of USB Physical Layer drivers

scripts/config --module CONFIG_USB_GADGET
scripts/config --disable CONFIG_USB_GADGET_DEBUG
scripts/config --disable CONFIG_USB_GADGET_DEBUG_FILES
scripts/config --disable CONFIG_USB_GADGET_DEBUG_FS
scripts/config --set-val CONFIG_USB_GADGET_VBUS_DRAW 2
scripts/config --set-val CONFIG_USB_GADGET_STORAGE_NUM_BUFFERS 2
scripts/config --enable CONFIG_U_SERIAL_CONSOLE

#
# USB Peripheral Controller
#
scripts/config --module CONFIG_USB_GR_UDC
scripts/config --module CONFIG_USB_R8A66597
scripts/config --module CONFIG_USB_PXA27X
scripts/config --module CONFIG_USB_MV_UDC
scripts/config --module CONFIG_USB_MV_U3D
scripts/config --module CONFIG_USB_SNP_CORE
scripts/config --disable CONFIG_USB_M66592
scripts/config --module CONFIG_USB_BDC_UDC
scripts/config --module CONFIG_USB_AMD5536UDC
scripts/config --module CONFIG_USB_NET2272
scripts/config --enable CONFIG_USB_NET2272_DMA
scripts/config --module CONFIG_USB_NET2280
scripts/config --module CONFIG_USB_GOKU
scripts/config --module CONFIG_USB_EG20T
scripts/config --module CONFIG_USB_MAX3420_UDC
scripts/config --module CONFIG_USB_CDNS2_UDC
scripts/config --disable CONFIG_USB_DUMMY_HCD
# end of USB Peripheral Controller

scripts/config --module CONFIG_USB_LIBCOMPOSITE
scripts/config --module CONFIG_USB_F_ACM
scripts/config --module CONFIG_USB_F_SS_LB
scripts/config --module CONFIG_USB_U_SERIAL
scripts/config --module CONFIG_USB_U_ETHER
scripts/config --module CONFIG_USB_F_SERIAL
scripts/config --module CONFIG_USB_F_OBEX
scripts/config --module CONFIG_USB_F_NCM
scripts/config --module CONFIG_USB_F_ECM
scripts/config --module CONFIG_USB_F_PHONET
scripts/config --module CONFIG_USB_F_EEM
scripts/config --module CONFIG_USB_F_SUBSET
scripts/config --module CONFIG_USB_F_RNDIS
scripts/config --module CONFIG_USB_F_MASS_STORAGE
scripts/config --module CONFIG_USB_F_FS
scripts/config --module CONFIG_USB_F_HID
scripts/config --module CONFIG_USB_F_PRINTER
scripts/config --module CONFIG_USB_F_TCM
scripts/config --module CONFIG_USB_CONFIGFS
scripts/config --enable CONFIG_USB_CONFIGFS_SERIAL
scripts/config --enable CONFIG_USB_CONFIGFS_ACM
scripts/config --enable CONFIG_USB_CONFIGFS_OBEX
scripts/config --enable CONFIG_USB_CONFIGFS_NCM
scripts/config --enable CONFIG_USB_CONFIGFS_ECM
scripts/config --enable CONFIG_USB_CONFIGFS_ECM_SUBSET
scripts/config --enable CONFIG_USB_CONFIGFS_RNDIS
scripts/config --enable CONFIG_USB_CONFIGFS_EEM
scripts/config --enable CONFIG_USB_CONFIGFS_PHONET
scripts/config --enable CONFIG_USB_CONFIGFS_MASS_STORAGE
scripts/config --enable CONFIG_USB_CONFIGFS_F_LB_SS
scripts/config --enable CONFIG_USB_CONFIGFS_F_FS
scripts/config --enable CONFIG_USB_CONFIGFS_F_HID
scripts/config --enable CONFIG_USB_CONFIGFS_F_PRINTER
scripts/config --enable CONFIG_USB_CONFIGFS_F_TCM

#
# USB Gadget precomposed configurations
#
scripts/config --module CONFIG_USB_ZERO
scripts/config --module CONFIG_USB_ETH
scripts/config --enable CONFIG_USB_ETH_RNDIS
scripts/config --enable CONFIG_USB_ETH_EEM
scripts/config --module CONFIG_USB_G_NCM
scripts/config --module CONFIG_USB_GADGETFS
scripts/config --module CONFIG_USB_FUNCTIONFS
scripts/config --enable CONFIG_USB_FUNCTIONFS_ETH
scripts/config --enable CONFIG_USB_FUNCTIONFS_RNDIS
scripts/config --enable CONFIG_USB_FUNCTIONFS_GENERIC
scripts/config --module CONFIG_USB_MASS_STORAGE
scripts/config --module CONFIG_USB_GADGET_TARGET
scripts/config --module CONFIG_USB_G_SERIAL
scripts/config --module CONFIG_USB_G_PRINTER
scripts/config --module CONFIG_USB_CDC_COMPOSITE
scripts/config --module CONFIG_USB_G_NOKIA
scripts/config --module CONFIG_USB_G_ACM_MS
scripts/config --disable CONFIG_USB_G_MULTI
scripts/config --module CONFIG_USB_G_HID
scripts/config --module CONFIG_USB_G_DBGP
scripts/config --disable CONFIG_USB_G_DBGP_PRINTK
scripts/config --enable CONFIG_USB_G_DBGP_SERIAL
scripts/config --module CONFIG_USB_RAW_GADGET
# end of USB Gadget precomposed configurations

scripts/config --module CONFIG_TYPEC
scripts/config --module CONFIG_TYPEC_TCPM
scripts/config --module CONFIG_TYPEC_TCPCI
scripts/config --module CONFIG_TYPEC_RT1711H
scripts/config --module CONFIG_TYPEC_MT6360
scripts/config --module CONFIG_TYPEC_TCPCI_MT6370
scripts/config --module CONFIG_TYPEC_TCPCI_MAXIM
scripts/config --module CONFIG_TYPEC_FUSB302
scripts/config --module CONFIG_TYPEC_UCSI
scripts/config --module CONFIG_UCSI_CCG
scripts/config --module CONFIG_UCSI_ACPI
scripts/config --module CONFIG_UCSI_STM32G0
scripts/config --module CONFIG_TYPEC_TPS6598X
scripts/config --module CONFIG_TYPEC_ANX7411
scripts/config --module CONFIG_TYPEC_RT1719
scripts/config --module CONFIG_TYPEC_HD3SS3220
scripts/config --module CONFIG_TYPEC_STUSB160X
scripts/config --module CONFIG_TYPEC_WUSB3801

#
# USB Type-C Multiplexer/DeMultiplexer Switch support
#
scripts/config --module CONFIG_TYPEC_MUX_FSA4480
scripts/config --module CONFIG_TYPEC_MUX_GPIO_SBU
scripts/config --module CONFIG_TYPEC_MUX_PI3USB30532
scripts/config --module CONFIG_TYPEC_MUX_INTEL_PMC
scripts/config --module CONFIG_TYPEC_MUX_IT5205
scripts/config --module CONFIG_TYPEC_MUX_NB7VPQ904M
scripts/config --module CONFIG_TYPEC_MUX_PTN36502
scripts/config --module CONFIG_TYPEC_MUX_WCD939X_USBSS
# end of USB Type-C Multiplexer/DeMultiplexer Switch support

#
# USB Type-C Alternate Mode drivers
#
# end of USB Type-C Alternate Mode drivers

scripts/config --enable CONFIG_USB_ROLE_SWITCH
scripts/config --module CONFIG_USB_ROLES_INTEL_XHCI
scripts/config --enable CONFIG_MMC
scripts/config --module CONFIG_MMC_BLOCK
scripts/config --set-val CONFIG_MMC_BLOCK_MINORS 8
scripts/config --module CONFIG_SDIO_UART
scripts/config --disable CONFIG_MMC_TEST
scripts/config --enable CONFIG_MMC_CRYPTO

#
# MMC/SD/SDIO Host Controller Drivers
#
scripts/config --disable CONFIG_MMC_DEBUG
scripts/config --module CONFIG_MMC_SDHCI
scripts/config --enable CONFIG_MMC_SDHCI_IO_ACCESSORS
scripts/config --module CONFIG_MMC_SDHCI_PCI
scripts/config --enable CONFIG_MMC_RICOH_MMC
scripts/config --module CONFIG_MMC_SDHCI_ACPI
scripts/config --module CONFIG_MMC_SDHCI_PLTFM
scripts/config --module CONFIG_MMC_SDHCI_F_SDH30
scripts/config --module CONFIG_MMC_WBSD
scripts/config --module CONFIG_MMC_ALCOR
scripts/config --module CONFIG_MMC_TIFM_SD
scripts/config --module CONFIG_MMC_SPI
scripts/config --module CONFIG_MMC_SDRICOH_CS
scripts/config --module CONFIG_MMC_CB710
scripts/config --module CONFIG_MMC_VIA_SDMMC
scripts/config --module CONFIG_MMC_VUB300
scripts/config --module CONFIG_MMC_USHC
scripts/config --module CONFIG_MMC_USDHI6ROL0
scripts/config --module CONFIG_MMC_REALTEK_PCI
scripts/config --module CONFIG_MMC_REALTEK_USB
scripts/config --module CONFIG_MMC_CQHCI
scripts/config --disable CONFIG_MMC_HSQ
scripts/config --module CONFIG_MMC_TOSHIBA_PCI
scripts/config --module CONFIG_MMC_MTK
scripts/config --module CONFIG_MMC_SDHCI_XENON
scripts/config --module CONFIG_SCSI_UFSHCD
scripts/config --enable CONFIG_SCSI_UFS_BSG
scripts/config --enable CONFIG_SCSI_UFS_CRYPTO
scripts/config --disable CONFIG_SCSI_UFS_HWMON
scripts/config --module CONFIG_SCSI_UFSHCD_PCI
scripts/config --module CONFIG_SCSI_UFS_DWC_TC_PCI
scripts/config --module CONFIG_SCSI_UFSHCD_PLATFORM
scripts/config --module CONFIG_SCSI_UFS_CDNS_PLATFORM
scripts/config --module CONFIG_MEMSTICK
scripts/config --disable CONFIG_MEMSTICK_DEBUG

#
# MemoryStick drivers
#
scripts/config --disable CONFIG_MEMSTICK_UNSAFE_RESUME
scripts/config --disable CONFIG_MSPRO_BLOCK
scripts/config --disable CONFIG_MS_BLOCK

#
# MemoryStick Host Controller Drivers
#
scripts/config --module CONFIG_MEMSTICK_TIFM_MS
scripts/config --module CONFIG_MEMSTICK_JMICRON_38X
scripts/config --module CONFIG_MEMSTICK_R592
scripts/config --module CONFIG_MEMSTICK_REALTEK_USB
scripts/config --enable CONFIG_LEDS_EXPRESSWIRE
scripts/config --enable CONFIG_NEW_LEDS
scripts/config --enable CONFIG_LEDS_CLASS
scripts/config --module CONFIG_LEDS_CLASS_FLASH
scripts/config --module CONFIG_LEDS_CLASS_MULTICOLOR
scripts/config --enable CONFIG_LEDS_BRIGHTNESS_HW_CHANGED

#
# LED drivers
#
scripts/config --module CONFIG_LEDS_88PM860X
scripts/config --module CONFIG_LEDS_APU
scripts/config --module CONFIG_LEDS_AW200XX
scripts/config --module CONFIG_LEDS_LM3530
scripts/config --module CONFIG_LEDS_LM3532
scripts/config --module CONFIG_LEDS_LM3642
scripts/config --module CONFIG_LEDS_MT6323
scripts/config --module CONFIG_LEDS_PCA9532
scripts/config --enable CONFIG_LEDS_PCA9532_GPIO
scripts/config --module CONFIG_LEDS_GPIO
scripts/config --module CONFIG_LEDS_LP3944
scripts/config --module CONFIG_LEDS_LP3952
scripts/config --module CONFIG_LEDS_LP50XX
scripts/config --module CONFIG_LEDS_LP8788
scripts/config --module CONFIG_LEDS_PCA955X
scripts/config --enable CONFIG_LEDS_PCA955X_GPIO
scripts/config --module CONFIG_LEDS_PCA963X
scripts/config --module CONFIG_LEDS_PCA995X
scripts/config --module CONFIG_LEDS_DA903X
scripts/config --module CONFIG_LEDS_DA9052
scripts/config --module CONFIG_LEDS_DAC124S085
scripts/config --module CONFIG_LEDS_PWM
scripts/config --module CONFIG_LEDS_REGULATOR
scripts/config --module CONFIG_LEDS_BD2606MVV
scripts/config --module CONFIG_LEDS_BD2802
scripts/config --module CONFIG_LEDS_INTEL_SS4200
scripts/config --module CONFIG_LEDS_LT3593
scripts/config --module CONFIG_LEDS_ADP5520
scripts/config --module CONFIG_LEDS_TCA6507
scripts/config --module CONFIG_LEDS_TLC591XX
scripts/config --module CONFIG_LEDS_MAX8997
scripts/config --module CONFIG_LEDS_LM355x
scripts/config --module CONFIG_LEDS_MENF21BMC
scripts/config --module CONFIG_LEDS_IS31FL319X

#
# LED driver for blink(1) USB RGB LED is under Special HID drivers (HID_THINGM)
#
scripts/config --module CONFIG_LEDS_BLINKM
scripts/config --enable CONFIG_LEDS_BLINKM_MULTICOLOR
scripts/config --module CONFIG_LEDS_MLXCPLD
scripts/config --module CONFIG_LEDS_MLXREG
scripts/config --module CONFIG_LEDS_USER
scripts/config --module CONFIG_LEDS_NIC78BX
scripts/config --module CONFIG_LEDS_SPI_BYTE
scripts/config --module CONFIG_LEDS_TPS6105X
scripts/config --module CONFIG_LEDS_STEAMDECK

#
# Flash and Torch LED drivers
#
scripts/config --module CONFIG_LEDS_AS3645A
scripts/config --module CONFIG_LEDS_LM3601X
scripts/config --module CONFIG_LEDS_MT6370_FLASH
scripts/config --module CONFIG_LEDS_RT8515
scripts/config --module CONFIG_LEDS_SGM3140

#
# RGB LED drivers
#
scripts/config --module CONFIG_LEDS_KTD202X
scripts/config --module CONFIG_LEDS_PWM_MULTICOLOR
scripts/config --module CONFIG_LEDS_MT6370_RGB

#
# LED Triggers
#
scripts/config --enable CONFIG_LEDS_TRIGGERS
scripts/config --module CONFIG_LEDS_TRIGGER_TIMER
scripts/config --module CONFIG_LEDS_TRIGGER_ONESHOT
scripts/config --enable CONFIG_LEDS_TRIGGER_DISK
scripts/config --enable CONFIG_LEDS_TRIGGER_MTD
scripts/config --module CONFIG_LEDS_TRIGGER_HEARTBEAT
scripts/config --module CONFIG_LEDS_TRIGGER_BACKLIGHT
scripts/config --enable CONFIG_LEDS_TRIGGER_CPU
scripts/config --module CONFIG_LEDS_TRIGGER_ACTIVITY
scripts/config --module CONFIG_LEDS_TRIGGER_GPIO
scripts/config --module CONFIG_LEDS_TRIGGER_DEFAULT_ON

#
# iptables trigger is under Netfilter config (LED target)
#
scripts/config --module CONFIG_LEDS_TRIGGER_TRANSIENT
scripts/config --module CONFIG_LEDS_TRIGGER_CAMERA
scripts/config --enable CONFIG_LEDS_TRIGGER_PANIC
scripts/config --module CONFIG_LEDS_TRIGGER_NETDEV
scripts/config --module CONFIG_LEDS_TRIGGER_PATTERN
scripts/config --module CONFIG_LEDS_TRIGGER_TTY
scripts/config --module CONFIG_LEDS_TRIGGER_INPUT_EVENTS

#
# Simple LED drivers
#
scripts/config --module CONFIG_LEDS_SIEMENS_SIMATIC_IPC
scripts/config --disable CONFIG_ACCESSIBILITY
scripts/config --disable CONFIG_A11Y_BRAILLE_CONSOLE

#
# Speakup console speech
#
scripts/config --module CONFIG_SPEAKUP
scripts/config --module CONFIG_SPEAKUP_SYNTH_ACNTSA
scripts/config --module CONFIG_SPEAKUP_SYNTH_APOLLO
scripts/config --module CONFIG_SPEAKUP_SYNTH_AUDPTR
scripts/config --module CONFIG_SPEAKUP_SYNTH_BNS
scripts/config --module CONFIG_SPEAKUP_SYNTH_DECTLK
scripts/config --module CONFIG_SPEAKUP_SYNTH_DECEXT
scripts/config --module CONFIG_SPEAKUP_SYNTH_LTLK
scripts/config --module CONFIG_SPEAKUP_SYNTH_SOFT
scripts/config --module CONFIG_SPEAKUP_SYNTH_SPKOUT
scripts/config --module CONFIG_SPEAKUP_SYNTH_TXPRT
scripts/config --module CONFIG_SPEAKUP_SYNTH_DUMMY
# end of Speakup console speech

scripts/config --module CONFIG_INFINIBAND
scripts/config --module CONFIG_INFINIBAND_USER_MAD
scripts/config --module CONFIG_INFINIBAND_USER_ACCESS
scripts/config --enable CONFIG_INFINIBAND_USER_MEM
scripts/config --enable CONFIG_INFINIBAND_ON_DEMAND_PAGING
scripts/config --enable CONFIG_INFINIBAND_ADDR_TRANS
scripts/config --enable CONFIG_INFINIBAND_ADDR_TRANS_CONFIGFS
scripts/config --enable CONFIG_INFINIBAND_VIRT_DMA
scripts/config --module CONFIG_INFINIBAND_BNXT_RE
scripts/config --module CONFIG_INFINIBAND_CXGB4
scripts/config --module CONFIG_INFINIBAND_EFA
scripts/config --module CONFIG_INFINIBAND_ERDMA
scripts/config --module CONFIG_INFINIBAND_HFI1
scripts/config --disable CONFIG_HFI1_DEBUG_SDMA_ORDER
scripts/config --disable CONFIG_SDMA_VERBOSITY
scripts/config --module CONFIG_INFINIBAND_IRDMA
scripts/config --module CONFIG_MANA_INFINIBAND
scripts/config --disable CONFIG_MLX4_INFINIBAND
scripts/config --disable CONFIG_MLX5_INFINIBAND
scripts/config --module CONFIG_INFINIBAND_MTHCA
scripts/config --enable CONFIG_INFINIBAND_MTHCA_DEBUG
scripts/config --module CONFIG_INFINIBAND_OCRDMA
scripts/config --module CONFIG_INFINIBAND_QEDR
scripts/config --module CONFIG_INFINIBAND_QIB
scripts/config --enable CONFIG_INFINIBAND_QIB_DCA
scripts/config --module CONFIG_INFINIBAND_USNIC
scripts/config --module CONFIG_INFINIBAND_VMWARE_PVRDMA
scripts/config --module CONFIG_INFINIBAND_RDMAVT
scripts/config --module CONFIG_RDMA_RXE
scripts/config --module CONFIG_RDMA_SIW
scripts/config --module CONFIG_INFINIBAND_IPOIB
scripts/config --enable CONFIG_INFINIBAND_IPOIB_CM
scripts/config --enable CONFIG_INFINIBAND_IPOIB_DEBUG
scripts/config --disable CONFIG_INFINIBAND_IPOIB_DEBUG_DATA
scripts/config --module CONFIG_INFINIBAND_SRP
scripts/config --module CONFIG_INFINIBAND_SRPT
scripts/config --module CONFIG_INFINIBAND_ISER
scripts/config --module CONFIG_INFINIBAND_ISERT
scripts/config --module CONFIG_INFINIBAND_RTRS
scripts/config --module CONFIG_INFINIBAND_RTRS_CLIENT
scripts/config --module CONFIG_INFINIBAND_RTRS_SERVER
scripts/config --module CONFIG_INFINIBAND_OPA_VNIC
scripts/config --enable CONFIG_EDAC_ATOMIC_SCRUB
scripts/config --enable CONFIG_EDAC_SUPPORT
scripts/config --enable CONFIG_EDAC
scripts/config --disable CONFIG_EDAC_LEGACY_SYSFS
scripts/config --disable CONFIG_EDAC_DEBUG
scripts/config --enable CONFIG_EDAC_GHES
scripts/config --module CONFIG_EDAC_E752X
scripts/config --module CONFIG_EDAC_I82975X
scripts/config --module CONFIG_EDAC_I3000
scripts/config --module CONFIG_EDAC_I3200
scripts/config --module CONFIG_EDAC_IE31200
scripts/config --module CONFIG_EDAC_X38
scripts/config --module CONFIG_EDAC_I5400
scripts/config --module CONFIG_EDAC_I5100
scripts/config --module CONFIG_EDAC_I7300
scripts/config --enable CONFIG_RTC_LIB
scripts/config --enable CONFIG_RTC_MC146818_LIB
scripts/config --enable CONFIG_RTC_CLASS
scripts/config --enable CONFIG_RTC_HCTOSYS
scripts/config --set-val CONFIG_RTC_HCTOSYS_DEVICE "rtc0"
scripts/config --enable CONFIG_RTC_SYSTOHC
scripts/config --set-val CONFIG_RTC_SYSTOHC_DEVICE "rtc0"
scripts/config --disable CONFIG_RTC_DEBUG
scripts/config --enable CONFIG_RTC_NVMEM

#
# RTC interfaces
#
scripts/config --enable CONFIG_RTC_INTF_SYSFS
scripts/config --enable CONFIG_RTC_INTF_PROC
scripts/config --enable CONFIG_RTC_INTF_DEV
scripts/config --disable CONFIG_RTC_INTF_DEV_UIE_EMUL
scripts/config --disable CONFIG_RTC_DRV_TEST

#
# I2C RTC drivers
#
scripts/config --disable CONFIG_RTC_DRV_88PM860X
scripts/config --disable CONFIG_RTC_DRV_88PM80X
scripts/config --disable CONFIG_RTC_DRV_ABB5ZES3
scripts/config --disable CONFIG_RTC_DRV_ABEOZ9
scripts/config --disable CONFIG_RTC_DRV_ABX80X
scripts/config --disable CONFIG_RTC_DRV_DS1307
scripts/config --disable CONFIG_RTC_DRV_DS1307_CENTURY
scripts/config --disable CONFIG_RTC_DRV_DS1374
scripts/config --disable CONFIG_RTC_DRV_DS1672
scripts/config --disable CONFIG_RTC_DRV_LP8788
scripts/config --disable CONFIG_RTC_DRV_MAX6900
scripts/config --disable CONFIG_RTC_DRV_MAX8907
scripts/config --disable CONFIG_RTC_DRV_MAX8925
scripts/config --disable CONFIG_RTC_DRV_MAX8998
scripts/config --disable CONFIG_RTC_DRV_MAX8997
scripts/config --disable CONFIG_RTC_DRV_MAX31335
scripts/config --disable CONFIG_RTC_DRV_RS5C372
scripts/config --disable CONFIG_RTC_DRV_ISL1208
scripts/config --disable CONFIG_RTC_DRV_ISL12022
scripts/config --disable CONFIG_RTC_DRV_X1205
scripts/config --disable CONFIG_RTC_DRV_PCF8523
scripts/config --disable CONFIG_RTC_DRV_PCF85063
scripts/config --disable CONFIG_RTC_DRV_PCF85363
scripts/config --disable CONFIG_RTC_DRV_PCF8563
scripts/config --disable CONFIG_RTC_DRV_PCF8583
scripts/config --disable CONFIG_RTC_DRV_M41T80
scripts/config --disable CONFIG_RTC_DRV_M41T80_WDT
scripts/config --disable CONFIG_RTC_DRV_BQ32K
scripts/config --disable CONFIG_RTC_DRV_PALMAS
scripts/config --disable CONFIG_RTC_DRV_RC5T583
scripts/config --disable CONFIG_RTC_DRV_S35390A
scripts/config --disable CONFIG_RTC_DRV_FM3130
scripts/config --disable CONFIG_RTC_DRV_RX8010
scripts/config --disable CONFIG_RTC_DRV_RX8111
scripts/config --disable CONFIG_RTC_DRV_RX8581
scripts/config --disable CONFIG_RTC_DRV_RX8025
scripts/config --disable CONFIG_RTC_DRV_EM3027
scripts/config --disable CONFIG_RTC_DRV_RV3028
scripts/config --disable CONFIG_RTC_DRV_RV3032
scripts/config --disable CONFIG_RTC_DRV_RV8803
scripts/config --disable CONFIG_RTC_DRV_SD2405AL
scripts/config --disable CONFIG_RTC_DRV_SD3078

#
# SPI RTC drivers
#
scripts/config --disable CONFIG_RTC_DRV_M41T93
scripts/config --disable CONFIG_RTC_DRV_M41T94
scripts/config --disable CONFIG_RTC_DRV_DS1302
scripts/config --disable CONFIG_RTC_DRV_DS1305
scripts/config --disable CONFIG_RTC_DRV_DS1343
scripts/config --disable CONFIG_RTC_DRV_DS1347
scripts/config --disable CONFIG_RTC_DRV_DS1390
scripts/config --disable CONFIG_RTC_DRV_MAX6916
scripts/config --disable CONFIG_RTC_DRV_R9701
scripts/config --disable CONFIG_RTC_DRV_RX4581
scripts/config --disable CONFIG_RTC_DRV_RS5C348
scripts/config --disable CONFIG_RTC_DRV_MAX6902
scripts/config --disable CONFIG_RTC_DRV_PCF2123
scripts/config --disable CONFIG_RTC_DRV_MCP795
scripts/config --disable CONFIG_RTC_I2C_AND_SPI

#
# SPI and I2C RTC drivers
#
scripts/config --disable CONFIG_RTC_DRV_DS3232
scripts/config --disable CONFIG_RTC_DRV_DS3232_HWMON
scripts/config --disable CONFIG_RTC_DRV_PCF2127
scripts/config --disable CONFIG_RTC_DRV_RV3029C2
scripts/config --disable CONFIG_RTC_DRV_RV3029_HWMON
scripts/config --disable CONFIG_RTC_DRV_RX6110

#
# Platform RTC drivers
#
scripts/config --disable CONFIG_RTC_DRV_CMOS
scripts/config --disable CONFIG_RTC_DRV_DS1286
scripts/config --disable CONFIG_RTC_DRV_DS1511
scripts/config --disable CONFIG_RTC_DRV_DS1553
scripts/config --disable CONFIG_RTC_DRV_DS1685_FAMILY
scripts/config --disable CONFIG_RTC_DRV_DS1685
scripts/config --disable CONFIG_RTC_DRV_DS1689
scripts/config --disable CONFIG_RTC_DRV_DS17285
scripts/config --disable CONFIG_RTC_DRV_DS17485
scripts/config --disable CONFIG_RTC_DRV_DS17885
scripts/config --disable CONFIG_RTC_DRV_DS1742
scripts/config --disable CONFIG_RTC_DRV_DS2404
scripts/config --disable CONFIG_RTC_DRV_DA9052
scripts/config --disable CONFIG_RTC_DRV_DA9055
scripts/config --disable CONFIG_RTC_DRV_DA9063
scripts/config --disable CONFIG_RTC_DRV_STK17TA8
scripts/config --disable CONFIG_RTC_DRV_M48T86
scripts/config --disable CONFIG_RTC_DRV_M48T35
scripts/config --disable CONFIG_RTC_DRV_M48T59
scripts/config --disable CONFIG_RTC_DRV_MSM6242
scripts/config --disable CONFIG_RTC_DRV_RP5C01
scripts/config --disable CONFIG_RTC_DRV_PCF50633
scripts/config --disable CONFIG_RTC_DRV_CROS_EC

#
# on-CPU RTC drivers
#
scripts/config --disable CONFIG_RTC_DRV_FTRTC010
scripts/config --disable CONFIG_RTC_DRV_PCAP
scripts/config --disable CONFIG_RTC_DRV_MT6397

#
# HID Sensor RTC drivers
#
scripts/config --disable CONFIG_RTC_DRV_HID_SENSOR_TIME
scripts/config --disable CONFIG_RTC_DRV_GOLDFISH
scripts/config --disable CONFIG_RTC_DRV_WILCO_EC
scripts/config --enable CONFIG_DMADEVICES
scripts/config --disable CONFIG_DMADEVICES_DEBUG

#
# DMA Devices
#
scripts/config --enable CONFIG_DMA_ENGINE
scripts/config --enable CONFIG_DMA_VIRTUAL_CHANNELS
scripts/config --enable CONFIG_DMA_ACPI
scripts/config --disable CONFIG_ALTERA_MSGDMA
scripts/config --module CONFIG_INTEL_IDMA64
scripts/config --module CONFIG_INTEL_IDXD_BUS
scripts/config --module CONFIG_INTEL_IDXD
scripts/config --disable CONFIG_INTEL_IDXD_COMPAT
scripts/config --enable CONFIG_INTEL_IDXD_SVM
scripts/config --enable CONFIG_INTEL_IDXD_PERFMON
scripts/config --module CONFIG_INTEL_IOATDMA
scripts/config --module CONFIG_PLX_DMA
scripts/config --disable CONFIG_XILINX_DMA
scripts/config --disable CONFIG_XILINX_XDMA
scripts/config --module CONFIG_AMD_QDMA
scripts/config --module CONFIG_AMD_PTDMA
scripts/config --module CONFIG_QCOM_HIDMA_MGMT
scripts/config --module CONFIG_QCOM_HIDMA
scripts/config --module CONFIG_DW_DMAC_CORE
scripts/config --module CONFIG_DW_DMAC
scripts/config --module CONFIG_DW_DMAC_PCI
scripts/config --module CONFIG_DW_EDMA
scripts/config --module CONFIG_DW_EDMA_PCIE
scripts/config --module CONFIG_SF_PDMA
scripts/config --enable CONFIG_INTEL_LDMA

#
# DMA Clients
#
scripts/config --enable CONFIG_ASYNC_TX_DMA
scripts/config --disable CONFIG_DMATEST
scripts/config --enable CONFIG_DMA_ENGINE_RAID

#
# DMABUF options
#
scripts/config --enable CONFIG_SYNC_FILE
scripts/config --enable CONFIG_SW_SYNC
scripts/config --enable CONFIG_UDMABUF
scripts/config --enable CONFIG_DMABUF_MOVE_NOTIFY
scripts/config --disable CONFIG_DMABUF_DEBUG
scripts/config --disable CONFIG_DMABUF_SELFTESTS
scripts/config --enable CONFIG_DMABUF_HEAPS
scripts/config --disable CONFIG_DMABUF_SYSFS_STATS
scripts/config --enable CONFIG_DMABUF_HEAPS_SYSTEM
# end of DMABUF options

scripts/config --module CONFIG_DCA
scripts/config --module CONFIG_UIO
scripts/config --module CONFIG_UIO_CIF
scripts/config --module CONFIG_UIO_PDRV_GENIRQ
scripts/config --module CONFIG_UIO_DMEM_GENIRQ
scripts/config --module CONFIG_UIO_AEC
scripts/config --module CONFIG_UIO_SERCOS3
scripts/config --module CONFIG_UIO_PCI_GENERIC
scripts/config --module CONFIG_UIO_NETX
scripts/config --module CONFIG_UIO_MF624
scripts/config --module CONFIG_UIO_HV_GENERIC
scripts/config --module CONFIG_UIO_DFL
scripts/config --module CONFIG_VFIO
scripts/config --enable CONFIG_VFIO_DEVICE_CDEV
scripts/config --enable CONFIG_VFIO_GROUP
scripts/config --enable CONFIG_VFIO_CONTAINER
scripts/config --module CONFIG_VFIO_IOMMU_TYPE1
scripts/config --enable CONFIG_VFIO_NOIOMMU
scripts/config --enable CONFIG_VFIO_VIRQFD
scripts/config --disable CONFIG_VFIO_DEBUGFS

#
# VFIO support for PCI devices
#
scripts/config --module CONFIG_VFIO_PCI_CORE
scripts/config --enable CONFIG_VFIO_PCI_MMAP
scripts/config --enable CONFIG_VFIO_PCI_INTX
scripts/config --module CONFIG_VFIO_PCI
scripts/config --enable CONFIG_VFIO_PCI_VGA
scripts/config --enable CONFIG_VFIO_PCI_IGD
scripts/config --disable CONFIG_MLX5_VFIO_PCI
scripts/config --module CONFIG_PDS_VFIO_PCI
scripts/config --module CONFIG_VIRTIO_VFIO_PCI
scripts/config --module CONFIG_QAT_VFIO_PCI
# end of VFIO support for PCI devices

scripts/config --module CONFIG_IRQ_BYPASS_MANAGER
scripts/config --enable CONFIG_VIRT_DRIVERS
scripts/config --module CONFIG_VMGENID
scripts/config --module CONFIG_VBOXGUEST
scripts/config --module CONFIG_NITRO_ENCLAVES
scripts/config --module CONFIG_EFI_SECRET
scripts/config --enable CONFIG_VIRTIO_ANCHOR
scripts/config --enable CONFIG_VIRTIO
scripts/config --enable CONFIG_VIRTIO_PCI_LIB
scripts/config --enable CONFIG_VIRTIO_PCI_LIB_LEGACY
scripts/config --enable CONFIG_VIRTIO_MENU
scripts/config --enable CONFIG_VIRTIO_PCI
scripts/config --enable CONFIG_VIRTIO_PCI_ADMIN_LEGACY
scripts/config --enable CONFIG_VIRTIO_PCI_LEGACY
scripts/config --module CONFIG_VIRTIO_VDPA
scripts/config --module CONFIG_VIRTIO_PMEM
scripts/config --enable CONFIG_VIRTIO_BALLOON
scripts/config --module CONFIG_VIRTIO_MEM
scripts/config --module CONFIG_VIRTIO_INPUT
scripts/config --enable CONFIG_VIRTIO_MMIO
scripts/config --enable CONFIG_VIRTIO_MMIO_CMDLINE_DEVICES
scripts/config --disable CONFIG_VIRTIO_DEBUG
scripts/config --module CONFIG_VDPA
scripts/config --module CONFIG_VDPA_SIM
scripts/config --module CONFIG_VDPA_SIM_NET
scripts/config --module CONFIG_VDPA_SIM_BLOCK
scripts/config --module CONFIG_VDPA_USER
scripts/config --module CONFIG_IFCVF
scripts/config --disable CONFIG_MLX5_VDPA
scripts/config --disable CONFIG_MLX5_VDPA_NET
scripts/config --disable CONFIG_MLX5_VDPA_STEERING_DEBUG
scripts/config --module CONFIG_VP_VDPA
scripts/config --module CONFIG_ALIBABA_ENI_VDPA
scripts/config --module CONFIG_SNET_VDPA
scripts/config --module CONFIG_PDS_VDPA
scripts/config --disable CONFIG_OCTEONEP_VDPA
scripts/config --module CONFIG_VHOST_IOTLB
scripts/config --module CONFIG_VHOST_RING
scripts/config --enable CONFIG_VHOST_TASK
scripts/config --module CONFIG_VHOST
scripts/config --enable CONFIG_VHOST_MENU
scripts/config --module CONFIG_VHOST_NET
scripts/config --module CONFIG_VHOST_SCSI
scripts/config --module CONFIG_VHOST_VSOCK
scripts/config --module CONFIG_VHOST_VDPA
scripts/config --disable CONFIG_VHOST_CROSS_ENDIAN_LEGACY
scripts/config --enable CONFIG_VHOST_ENABLE_FORK_OWNER_CONTROL

#
# Microsoft Hyper-V guest support
#
scripts/config --module CONFIG_HYPERV
scripts/config --disable CONFIG_HYPERV_VTL_MODE
scripts/config --enable CONFIG_HYPERV_TIMER
scripts/config --module CONFIG_HYPERV_UTILS
scripts/config --module CONFIG_HYPERV_BALLOON
# end of Microsoft Hyper-V guest support

#
# Xen driver support
#
scripts/config --disable CONFIG_XEN_BALLOON
scripts/config --disable CONFIG_XEN_BALLOON_MEMORY_HOTPLUG
scripts/config --set-val CONFIG_XEN_MEMORY_HOTPLUG_LIMIT 512
scripts/config --disable CONFIG_XEN_SCRUB_PAGES_DEFAULT
scripts/config --disable CONFIG_XEN_DEV_EVTCHN
scripts/config --disable CONFIG_XEN_BACKEND
scripts/config --disable CONFIG_XENFS
scripts/config --disable CONFIG_XEN_COMPAT_XENFS
scripts/config --disable CONFIG_XEN_SYS_HYPERVISOR
scripts/config --disable CONFIG_XEN_XENBUS_FRONTEND
scripts/config --disable CONFIG_XEN_GNTDEV
scripts/config --disable CONFIG_XEN_GNTDEV_DMABUF
scripts/config --disable CONFIG_XEN_GRANT_DEV_ALLOC
scripts/config --disable CONFIG_XEN_GRANT_DMA_ALLOC
scripts/config --disable CONFIG_SWIOTLB_XEN
scripts/config --disable CONFIG_XEN_PCI_STUB
scripts/config --disable CONFIG_XEN_PCIDEV_BACKEND
scripts/config --disable CONFIG_XEN_PVCALLS_FRONTEND
scripts/config --disable CONFIG_XEN_PVCALLS_BACKEND
scripts/config --disable CONFIG_XEN_SCSI_BACKEND
scripts/config --disable CONFIG_XEN_PRIVCMD
scripts/config --disable CONFIG_XEN_PRIVCMD_EVENTFD
scripts/config --disable CONFIG_XEN_HAVE_PVMMU
scripts/config --disable CONFIG_XEN_EFI
scripts/config --disable CONFIG_XEN_AUTO_XLATE
scripts/config --disable CONFIG_XEN_ACPI
scripts/config --disable CONFIG_XEN_SYMS
scripts/config --disable CONFIG_XEN_HAVE_VPMU
scripts/config --disable CONFIG_XEN_UNPOPULATED_ALLOC
scripts/config --disable CONFIG_XEN_GRANT_DMA_OPS
scripts/config --disable CONFIG_XEN_VIRTIO
scripts/config --disable CONFIG_XEN_VIRTIO_FORCE_GRANT
# end of Xen driver support

scripts/config --module CONFIG_GREYBUS
scripts/config --module CONFIG_GREYBUS_BEAGLEPLAY
scripts/config --module CONFIG_GREYBUS_ES2
scripts/config --module CONFIG_COMEDI
scripts/config --disable CONFIG_COMEDI_DEBUG
scripts/config --set-val CONFIG_COMEDI_DEFAULT_BUF_SIZE_KB 2048
scripts/config --set-val CONFIG_COMEDI_DEFAULT_BUF_MAXSIZE_KB 20480
scripts/config --enable CONFIG_COMEDI_MISC_DRIVERS
scripts/config --module CONFIG_COMEDI_BOND
scripts/config --module CONFIG_COMEDI_TEST
scripts/config --module CONFIG_COMEDI_PARPORT
scripts/config --module CONFIG_COMEDI_PCI_DRIVERS
scripts/config --module CONFIG_COMEDI_8255_PCI
scripts/config --module CONFIG_COMEDI_ADDI_WATCHDOG
scripts/config --module CONFIG_COMEDI_ADDI_APCI_1032
scripts/config --module CONFIG_COMEDI_ADDI_APCI_1500
scripts/config --module CONFIG_COMEDI_ADDI_APCI_1516
scripts/config --module CONFIG_COMEDI_ADDI_APCI_1564
scripts/config --module CONFIG_COMEDI_ADDI_APCI_16XX
scripts/config --module CONFIG_COMEDI_ADDI_APCI_2032
scripts/config --module CONFIG_COMEDI_ADDI_APCI_2200
scripts/config --module CONFIG_COMEDI_ADDI_APCI_3120
scripts/config --module CONFIG_COMEDI_ADDI_APCI_3501
scripts/config --module CONFIG_COMEDI_ADDI_APCI_3XXX
scripts/config --module CONFIG_COMEDI_ADL_PCI6208
scripts/config --module CONFIG_COMEDI_ADL_PCI7X3X
scripts/config --module CONFIG_COMEDI_ADL_PCI8164
scripts/config --module CONFIG_COMEDI_ADL_PCI9111
scripts/config --module CONFIG_COMEDI_ADL_PCI9118
scripts/config --module CONFIG_COMEDI_ADV_PCI1710
scripts/config --module CONFIG_COMEDI_ADV_PCI1720
scripts/config --module CONFIG_COMEDI_ADV_PCI1723
scripts/config --module CONFIG_COMEDI_ADV_PCI1724
scripts/config --module CONFIG_COMEDI_ADV_PCI1760
scripts/config --module CONFIG_COMEDI_ADV_PCI_DIO
scripts/config --module CONFIG_COMEDI_AMPLC_DIO200_PCI
scripts/config --module CONFIG_COMEDI_AMPLC_PC236_PCI
scripts/config --module CONFIG_COMEDI_AMPLC_PC263_PCI
scripts/config --module CONFIG_COMEDI_AMPLC_PCI224
scripts/config --module CONFIG_COMEDI_AMPLC_PCI230
scripts/config --module CONFIG_COMEDI_CONTEC_PCI_DIO
scripts/config --module CONFIG_COMEDI_DAS08_PCI
scripts/config --module CONFIG_COMEDI_DT3000
scripts/config --module CONFIG_COMEDI_DYNA_PCI10XX
scripts/config --module CONFIG_COMEDI_GSC_HPDI
scripts/config --module CONFIG_COMEDI_MF6X4
scripts/config --module CONFIG_COMEDI_ICP_MULTI
scripts/config --module CONFIG_COMEDI_DAQBOARD2000
scripts/config --module CONFIG_COMEDI_JR3_PCI
scripts/config --module CONFIG_COMEDI_KE_COUNTER
scripts/config --module CONFIG_COMEDI_CB_PCIDAS64
scripts/config --module CONFIG_COMEDI_CB_PCIDAS
scripts/config --module CONFIG_COMEDI_CB_PCIDDA
scripts/config --module CONFIG_COMEDI_CB_PCIMDAS
scripts/config --module CONFIG_COMEDI_CB_PCIMDDA
scripts/config --module CONFIG_COMEDI_ME4000
scripts/config --module CONFIG_COMEDI_ME_DAQ
scripts/config --module CONFIG_COMEDI_NI_6527
scripts/config --module CONFIG_COMEDI_NI_65XX
scripts/config --module CONFIG_COMEDI_NI_660X
scripts/config --module CONFIG_COMEDI_NI_670X
scripts/config --module CONFIG_COMEDI_NI_LABPC_PCI
scripts/config --module CONFIG_COMEDI_NI_PCIDIO
scripts/config --module CONFIG_COMEDI_NI_PCIMIO
scripts/config --module CONFIG_COMEDI_RTD520
scripts/config --module CONFIG_COMEDI_S626
scripts/config --module CONFIG_COMEDI_MITE
scripts/config --module CONFIG_COMEDI_NI_TIOCMD
scripts/config --module CONFIG_COMEDI_PCMCIA_DRIVERS
scripts/config --module CONFIG_COMEDI_CB_DAS16_CS
scripts/config --module CONFIG_COMEDI_DAS08_CS
scripts/config --module CONFIG_COMEDI_NI_DAQ_700_CS
scripts/config --module CONFIG_COMEDI_NI_DAQ_DIO24_CS
scripts/config --module CONFIG_COMEDI_NI_LABPC_CS
scripts/config --module CONFIG_COMEDI_NI_MIO_CS
scripts/config --module CONFIG_COMEDI_QUATECH_DAQP_CS
scripts/config --module CONFIG_COMEDI_USB_DRIVERS
scripts/config --module CONFIG_COMEDI_DT9812
scripts/config --module CONFIG_COMEDI_NI_USB6501
scripts/config --module CONFIG_COMEDI_USBDUX
scripts/config --module CONFIG_COMEDI_USBDUXFAST
scripts/config --module CONFIG_COMEDI_USBDUXSIGMA
scripts/config --module CONFIG_COMEDI_VMK80XX
scripts/config --module CONFIG_COMEDI_8254
scripts/config --module CONFIG_COMEDI_8255
scripts/config --module CONFIG_COMEDI_8255_SA
scripts/config --module CONFIG_COMEDI_KCOMEDILIB
scripts/config --module CONFIG_COMEDI_AMPLC_DIO200
scripts/config --module CONFIG_COMEDI_AMPLC_PC236
scripts/config --module CONFIG_COMEDI_DAS08
scripts/config --module CONFIG_COMEDI_NI_LABPC
scripts/config --module CONFIG_COMEDI_NI_TIO
scripts/config --module CONFIG_COMEDI_NI_ROUTING
scripts/config --module CONFIG_COMEDI_TESTS
scripts/config --module CONFIG_COMEDI_TESTS_EXAMPLE
scripts/config --module CONFIG_COMEDI_TESTS_NI_ROUTES
scripts/config --enable CONFIG_STAGING
scripts/config --module CONFIG_RTS5208
scripts/config --module CONFIG_VT6655

#
# IIO staging drivers
#

#
# Accelerometers
#
scripts/config --module CONFIG_ADIS16203
scripts/config --module CONFIG_ADIS16240
# end of Accelerometers

#
# Analog to digital converters
#
scripts/config --module CONFIG_AD7816
# end of Analog to digital converters

#
# Analog digital bi-direction converters
#
scripts/config --module CONFIG_ADT7316
scripts/config --module CONFIG_ADT7316_SPI
scripts/config --module CONFIG_ADT7316_I2C
# end of Analog digital bi-direction converters

#
# Direct Digital Synthesis
#
scripts/config --module CONFIG_AD9832
scripts/config --module CONFIG_AD9834
# end of Direct Digital Synthesis

#
# Network Analyzer, Impedance Converters
#
scripts/config --module CONFIG_AD5933
# end of Network Analyzer, Impedance Converters
# end of IIO staging drivers

scripts/config --enable CONFIG_STAGING_MEDIA
scripts/config --module CONFIG_LTE_GDM724X
scripts/config --module CONFIG_MOST_COMPONENTS
scripts/config --module CONFIG_MOST_NET
scripts/config --module CONFIG_MOST_I2C
scripts/config --module CONFIG_GREYBUS_BOOTROM
scripts/config --module CONFIG_GREYBUS_FIRMWARE
scripts/config --module CONFIG_GREYBUS_HID
scripts/config --module CONFIG_GREYBUS_LIGHT
scripts/config --module CONFIG_GREYBUS_LOG
scripts/config --module CONFIG_GREYBUS_LOOPBACK
scripts/config --module CONFIG_GREYBUS_POWER
scripts/config --module CONFIG_GREYBUS_RAW
scripts/config --module CONFIG_GREYBUS_VIBRATOR
scripts/config --module CONFIG_GREYBUS_BRIDGED_PHY
scripts/config --module CONFIG_GREYBUS_GPIO
scripts/config --module CONFIG_GREYBUS_I2C
scripts/config --module CONFIG_GREYBUS_PWM
scripts/config --module CONFIG_GREYBUS_SDIO
scripts/config --module CONFIG_GREYBUS_SPI
scripts/config --module CONFIG_GREYBUS_UART
scripts/config --module CONFIG_GREYBUS_USB
scripts/config --module CONFIG_FIELDBUS_DEV
scripts/config --enable CONFIG_VME_BUS

#
# VME Bridge Drivers
#
scripts/config --module CONFIG_VME_TSI148
scripts/config --module CONFIG_VME_FAKE

#
# VME Device Drivers
#
scripts/config --module CONFIG_VME_USER
scripts/config --disable CONFIG_GOLDFISH
scripts/config --enable CONFIG_CHROME_PLATFORMS
scripts/config --module CONFIG_CHROMEOS_ACPI
scripts/config --module CONFIG_CHROMEOS_LAPTOP
scripts/config --module CONFIG_CHROMEOS_PSTORE
scripts/config --module CONFIG_CHROMEOS_TBMC
scripts/config --module CONFIG_CROS_EC
scripts/config --module CONFIG_CROS_EC_I2C
scripts/config --module CONFIG_CROS_EC_ISHTP
scripts/config --module CONFIG_CROS_EC_SPI
scripts/config --module CONFIG_CROS_EC_UART
scripts/config --module CONFIG_CROS_EC_LPC
scripts/config --enable CONFIG_CROS_EC_PROTO
scripts/config --module CONFIG_CROS_KBD_LED_BACKLIGHT
scripts/config --module CONFIG_CROS_HPS_I2C
scripts/config --module CONFIG_WILCO_EC
scripts/config --module CONFIG_WILCO_EC_DEBUGFS
scripts/config --module CONFIG_WILCO_EC_EVENTS
scripts/config --module CONFIG_WILCO_EC_TELEMETRY
scripts/config --enable CONFIG_MELLANOX_PLATFORM
scripts/config --disable CONFIG_MLXREG_HOTPLUG
scripts/config --disable CONFIG_MLXREG_IO
scripts/config --disable CONFIG_MLXREG_LC
scripts/config --module CONFIG_NVSW_SN2201
scripts/config --enable CONFIG_SURFACE_PLATFORMS
scripts/config --module CONFIG_SURFACE3_WMI
scripts/config --module CONFIG_SURFACE_3_POWER_OPREGION
scripts/config --module CONFIG_SURFACE_ACPI_NOTIFY
scripts/config --module CONFIG_SURFACE_AGGREGATOR_CDEV
scripts/config --module CONFIG_SURFACE_AGGREGATOR_HUB
scripts/config --module CONFIG_SURFACE_AGGREGATOR_REGISTRY
scripts/config --module CONFIG_SURFACE_AGGREGATOR_TABLET_SWITCH
scripts/config --module CONFIG_SURFACE_DTX
scripts/config --module CONFIG_SURFACE_GPE
scripts/config --module CONFIG_SURFACE_HOTPLUG
scripts/config --module CONFIG_SURFACE_PLATFORM_PROFILE
scripts/config --module CONFIG_SURFACE_PRO3_BUTTON
scripts/config --module CONFIG_SURFACE_AGGREGATOR
scripts/config --enable CONFIG_SURFACE_AGGREGATOR_BUS
scripts/config --enable CONFIG_X86_PLATFORM_DEVICES
scripts/config --module CONFIG_ACPI_WMI
scripts/config --module CONFIG_WMI_BMOF
scripts/config --module CONFIG_MXM_WMI
scripts/config --module CONFIG_NVIDIA_WMI_EC_BACKLIGHT
scripts/config --module CONFIG_XIAOMI_WMI
scripts/config --module CONFIG_GIGABYTE_WMI
scripts/config --module CONFIG_YOGABOOK
scripts/config --module CONFIG_YT2_1380
scripts/config --module CONFIG_ACERHDF
scripts/config --module CONFIG_ACER_WIRELESS
scripts/config --module CONFIG_ACER_WMI
scripts/config --module CONFIG_AMD_PMF
scripts/config --enable CONFIG_AMD_PMF_DEBUG
scripts/config --module CONFIG_AMD_HSMP
scripts/config --module CONFIG_AMD_3D_VCACHE
scripts/config --enable CONFIG_AMD_WBRF
scripts/config --module CONFIG_ADV_SWBUTTON
scripts/config --module CONFIG_APPLE_GMUX
scripts/config --module CONFIG_ASUS_LAPTOP
scripts/config --module CONFIG_ASUS_WIRELESS
scripts/config --module CONFIG_ASUS_TF103C_DOCK
scripts/config --module CONFIG_EEEPC_LAPTOP
scripts/config --enable CONFIG_X86_PLATFORM_DRIVERS_DELL
scripts/config --module CONFIG_ALIENWARE_WMI
scripts/config --module CONFIG_DCDBAS
scripts/config --module CONFIG_DELL_RBU
scripts/config --module CONFIG_DELL_RBTN
scripts/config --module CONFIG_DELL_PC
scripts/config --module CONFIG_DELL_SMBIOS
scripts/config --enable CONFIG_DELL_SMBIOS_WMI
scripts/config --enable CONFIG_DELL_SMBIOS_SMM
scripts/config --module CONFIG_DELL_SMO8800
scripts/config --module CONFIG_DELL_UART_BACKLIGHT
scripts/config --module CONFIG_DELL_WMI
scripts/config --enable CONFIG_DELL_WMI_PRIVACY
scripts/config --module CONFIG_DELL_WMI_AIO
scripts/config --module CONFIG_DELL_WMI_DESCRIPTOR
scripts/config --module CONFIG_DELL_WMI_DDV
scripts/config --module CONFIG_DELL_WMI_LED
scripts/config --module CONFIG_DELL_WMI_SYSMAN
scripts/config --module CONFIG_AMILO_RFKILL
scripts/config --module CONFIG_FUJITSU_TABLET
scripts/config --module CONFIG_GPD_POCKET_FAN
scripts/config --enable CONFIG_X86_PLATFORM_DRIVERS_HP
scripts/config --module CONFIG_HP_ACCEL
scripts/config --module CONFIG_HP_WMI
scripts/config --module CONFIG_HP_BIOSCFG
scripts/config --disable CONFIG_WIRELESS_HOTKEY
scripts/config --module CONFIG_IBM_RTL
scripts/config --module CONFIG_IDEAPAD_LAPTOP
scripts/config --module CONFIG_LENOVO_YMC
scripts/config --disable CONFIG_SENSORS_HDAPS
scripts/config --module CONFIG_THINKPAD_LMI
scripts/config --enable CONFIG_INTEL_ATOMISP2_PDX86
scripts/config --module CONFIG_INTEL_ATOMISP2_LED
scripts/config --module CONFIG_INTEL_ATOMISP2_PM
scripts/config --module CONFIG_INTEL_IFS
scripts/config --module CONFIG_INTEL_SAR_INT1092
scripts/config --module CONFIG_INTEL_SKL_INT3472
scripts/config --module CONFIG_INTEL_PMC_CORE
scripts/config --module CONFIG_INTEL_PMT_CLASS
scripts/config --module CONFIG_INTEL_PMT_TELEMETRY
scripts/config --module CONFIG_INTEL_PMT_CRASHLOG

#
# Intel Speed Select Technology interface support
#
scripts/config --module CONFIG_INTEL_SPEED_SELECT_TPMI
scripts/config --module CONFIG_INTEL_SPEED_SELECT_INTERFACE
# end of Intel Speed Select Technology interface support

scripts/config --module CONFIG_INTEL_TELEMETRY
scripts/config --enable CONFIG_INTEL_WMI
scripts/config --module CONFIG_INTEL_WMI_SBL_FW_UPDATE
scripts/config --module CONFIG_INTEL_WMI_THUNDERBOLT

#
# Intel Uncore Frequency Control
#
scripts/config --module CONFIG_INTEL_UNCORE_FREQ_CONTROL_TPMI
scripts/config --module CONFIG_INTEL_UNCORE_FREQ_CONTROL
# end of Intel Uncore Frequency Control

scripts/config --module CONFIG_INTEL_HID_EVENT
scripts/config --module CONFIG_INTEL_VBTN
scripts/config --module CONFIG_INTEL_INT0002_VGPIO
scripts/config --module CONFIG_INTEL_OAKTRAIL
scripts/config --module CONFIG_INTEL_BXTWC_PMIC_TMU
scripts/config --module CONFIG_INTEL_ISHTP_ECLITE
scripts/config --module CONFIG_INTEL_MRFLD_PWRBTN
scripts/config --module CONFIG_INTEL_PUNIT_IPC
scripts/config --module CONFIG_INTEL_RST
scripts/config --module CONFIG_INTEL_SDSI
scripts/config --module CONFIG_INTEL_SMARTCONNECT
scripts/config --module CONFIG_INTEL_TPMI_POWER_DOMAINS
scripts/config --module CONFIG_INTEL_TPMI
scripts/config --module CONFIG_INTEL_PLR_TPMI
scripts/config --module CONFIG_INTEL_VSEC
scripts/config --module CONFIG_ACPI_QUICKSTART
scripts/config --module CONFIG_MEEGOPAD_ANX7428
scripts/config --module CONFIG_MSI_LAPTOP
scripts/config --module CONFIG_MSI_WMI
scripts/config --module CONFIG_MSI_WMI_PLATFORM
scripts/config --module CONFIG_PCENGINES_APU2
scripts/config --module CONFIG_BARCO_P50_GPIO
scripts/config --module CONFIG_SAMSUNG_LAPTOP
scripts/config --module CONFIG_SAMSUNG_Q10
scripts/config --module CONFIG_TOSHIBA_BT_RFKILL
scripts/config --module CONFIG_TOSHIBA_HAPS
scripts/config --disable CONFIG_TOSHIBA_WMI
scripts/config --module CONFIG_ACPI_CMPC
scripts/config --module CONFIG_COMPAL_LAPTOP
scripts/config --module CONFIG_PANASONIC_LAPTOP
scripts/config --module CONFIG_SONY_LAPTOP
scripts/config --enable CONFIG_SONYPI_COMPAT
scripts/config --module CONFIG_TOPSTAR_LAPTOP
scripts/config --module CONFIG_SERIAL_MULTI_INSTANTIATE
scripts/config --disable CONFIG_MLX_PLATFORM
scripts/config --module CONFIG_INSPUR_PLATFORM_PROFILE
scripts/config --module CONFIG_LENOVO_WMI_CAMERA
scripts/config --module CONFIG_FW_ATTR_CLASS
scripts/config --module CONFIG_INTEL_IPS
scripts/config --enable CONFIG_INTEL_SCU_IPC
scripts/config --enable CONFIG_INTEL_SCU
scripts/config --enable CONFIG_INTEL_SCU_PCI
scripts/config --module CONFIG_INTEL_SCU_PLATFORM
scripts/config --module CONFIG_INTEL_SCU_IPC_UTIL
scripts/config --module CONFIG_SIEMENS_SIMATIC_IPC
scripts/config --module CONFIG_SIEMENS_SIMATIC_IPC_BATT
scripts/config --module CONFIG_SILICOM_PLATFORM
scripts/config --module CONFIG_WINMATE_FM07_KEYS
scripts/config --enable CONFIG_P2SB
scripts/config --enable CONFIG_HAVE_CLK
scripts/config --enable CONFIG_HAVE_CLK_PREPARE
scripts/config --enable CONFIG_COMMON_CLK
scripts/config --module CONFIG_LMK04832
scripts/config --module CONFIG_COMMON_CLK_MAX9485
scripts/config --module CONFIG_COMMON_CLK_SI5341
scripts/config --module CONFIG_COMMON_CLK_SI5351
scripts/config --module CONFIG_COMMON_CLK_SI544
scripts/config --module CONFIG_COMMON_CLK_CDCE706
scripts/config --module CONFIG_COMMON_CLK_TPS68470
scripts/config --module CONFIG_COMMON_CLK_CS2000_CP
scripts/config --module CONFIG_COMMON_CLK_PALMAS
scripts/config --module CONFIG_COMMON_CLK_PWM
scripts/config --disable CONFIG_XILINX_VCU
scripts/config --enable CONFIG_HWSPINLOCK

#
# Clock Source drivers
#
scripts/config --enable CONFIG_CLKEVT_I8253
scripts/config --enable CONFIG_I8253_LOCK
scripts/config --enable CONFIG_CLKBLD_I8253
# end of Clock Source drivers

scripts/config --enable CONFIG_MAILBOX
scripts/config --enable CONFIG_PCC
scripts/config --disable CONFIG_ALTERA_MBOX
scripts/config --enable CONFIG_IOMMU_IOVA
scripts/config --enable CONFIG_IOMMU_API
scripts/config --enable CONFIG_IOMMUFD_DRIVER
scripts/config --enable CONFIG_IOMMU_SUPPORT

#
# Generic IOMMU Pagetable Support
#
scripts/config --enable CONFIG_IOMMU_IO_PGTABLE
# end of Generic IOMMU Pagetable Support

scripts/config --disable CONFIG_IOMMU_DEBUGFS
scripts/config --disable CONFIG_IOMMU_DEFAULT_DMA_STRICT
scripts/config --enable CONFIG_IOMMU_DEFAULT_DMA_LAZY
scripts/config --disable CONFIG_IOMMU_DEFAULT_PASSTHROUGH
scripts/config --enable CONFIG_IOMMU_DMA
scripts/config --enable CONFIG_IOMMU_SVA
scripts/config --enable CONFIG_IOMMU_IOPF
scripts/config --enable CONFIG_AMD_IOMMU
scripts/config --enable CONFIG_DMAR_TABLE
scripts/config --enable CONFIG_INTEL_IOMMU
scripts/config --enable CONFIG_INTEL_IOMMU_SVM
scripts/config --enable CONFIG_INTEL_IOMMU_DEFAULT_ON
scripts/config --enable CONFIG_INTEL_IOMMU_FLOPPY_WA
scripts/config --enable CONFIG_INTEL_IOMMU_SCALABLE_MODE_DEFAULT_ON
scripts/config --enable CONFIG_INTEL_IOMMU_PERF_EVENTS
scripts/config --module CONFIG_IOMMUFD
scripts/config --enable CONFIG_IRQ_REMAP
scripts/config --enable CONFIG_HYPERV_IOMMU
scripts/config --enable CONFIG_VIRTIO_IOMMU

#
# Remoteproc drivers
#
scripts/config --enable CONFIG_REMOTEPROC
scripts/config --enable CONFIG_REMOTEPROC_CDEV
# end of Remoteproc drivers

#
# Rpmsg drivers
#
scripts/config --module CONFIG_RPMSG
scripts/config --module CONFIG_RPMSG_CHAR
scripts/config --module CONFIG_RPMSG_CTRL
scripts/config --module CONFIG_RPMSG_NS
scripts/config --module CONFIG_RPMSG_QCOM_GLINK
scripts/config --module CONFIG_RPMSG_QCOM_GLINK_RPM
scripts/config --module CONFIG_RPMSG_VIRTIO
# end of Rpmsg drivers

scripts/config --module CONFIG_SOUNDWIRE

#
# SoundWire Devices
#

#
# SOC (System On Chip) specific Drivers
#

#
# Amlogic SoC drivers
#
# end of Amlogic SoC drivers

#
# Broadcom SoC drivers
#
# end of Broadcom SoC drivers

#
# NXP/Freescale QorIQ SoC drivers
#
# end of NXP/Freescale QorIQ SoC drivers

#
# fujitsu SoC drivers
#
# end of fujitsu SoC drivers

#
# i.MX SoC drivers
#
# end of i.MX SoC drivers

#
# Enable LiteX SoC Builder specific drivers
#
# end of Enable LiteX SoC Builder specific drivers

scripts/config --module CONFIG_WPCM450_SOC

#
# Qualcomm SoC drivers
#
scripts/config --module CONFIG_QCOM_PMIC_PDCHARGER_ULOG
# end of Qualcomm SoC drivers

scripts/config --enable CONFIG_SOC_TI

#
# Xilinx SoC drivers
#
# end of Xilinx SoC drivers
# end of SOC (System On Chip) specific Drivers

#
# PM Domains
#

#
# Amlogic PM Domains
#
# end of Amlogic PM Domains

#
# Broadcom PM Domains
#
# end of Broadcom PM Domains

#
# i.MX PM Domains
#
# end of i.MX PM Domains

#
# Qualcomm PM Domains
#
# end of Qualcomm PM Domains
# end of PM Domains

scripts/config --enable CONFIG_PM_DEVFREQ

#
# DEVFREQ Governors
#
scripts/config --enable CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND
scripts/config --enable CONFIG_DEVFREQ_GOV_PERFORMANCE
scripts/config --enable CONFIG_DEVFREQ_GOV_POWERSAVE
scripts/config --enable CONFIG_DEVFREQ_GOV_USERSPACE
scripts/config --enable CONFIG_DEVFREQ_GOV_PASSIVE

#
# DEVFREQ Drivers
#
scripts/config --enable CONFIG_PM_DEVFREQ_EVENT
scripts/config --enable CONFIG_EXTCON

#
# Extcon Device Drivers
#
scripts/config --module CONFIG_EXTCON_ADC_JACK
scripts/config --module CONFIG_EXTCON_FSA9480
scripts/config --module CONFIG_EXTCON_GPIO
scripts/config --module CONFIG_EXTCON_INTEL_INT3496
scripts/config --module CONFIG_EXTCON_INTEL_MRFLD
scripts/config --module CONFIG_EXTCON_LC824206XA
scripts/config --module CONFIG_EXTCON_MAX14577
scripts/config --module CONFIG_EXTCON_MAX3355
scripts/config --module CONFIG_EXTCON_MAX77693
scripts/config --module CONFIG_EXTCON_MAX77843
scripts/config --module CONFIG_EXTCON_MAX8997
scripts/config --module CONFIG_EXTCON_PALMAS
scripts/config --module CONFIG_EXTCON_PTN5150
scripts/config --module CONFIG_EXTCON_RT8973A
scripts/config --module CONFIG_EXTCON_SM5502
scripts/config --module CONFIG_EXTCON_USB_GPIO
scripts/config --module CONFIG_EXTCON_USBC_CROS_EC
scripts/config --module CONFIG_EXTCON_USBC_TUSB320
scripts/config --module CONFIG_EXTCON_STEAMDECK
scripts/config --enable CONFIG_MEMORY
scripts/config --module CONFIG_FPGA_DFL_EMIF
scripts/config --module CONFIG_IIO
scripts/config --enable CONFIG_IIO_BUFFER
scripts/config --module CONFIG_IIO_BUFFER_CB
scripts/config --module CONFIG_IIO_BUFFER_DMA
scripts/config --module CONFIG_IIO_BUFFER_DMAENGINE
scripts/config --module CONFIG_IIO_BUFFER_HW_CONSUMER
scripts/config --module CONFIG_IIO_KFIFO_BUF
scripts/config --module CONFIG_IIO_TRIGGERED_BUFFER
scripts/config --module CONFIG_IIO_CONFIGFS
scripts/config --module CONFIG_IIO_GTS_HELPER
scripts/config --enable CONFIG_IIO_TRIGGER
scripts/config --set-val CONFIG_IIO_CONSUMERS_PER_TRIGGER 2
scripts/config --module CONFIG_IIO_SW_DEVICE
scripts/config --module CONFIG_IIO_SW_TRIGGER
scripts/config --module CONFIG_IIO_TRIGGERED_EVENT
scripts/config --module CONFIG_IIO_BACKEND

#
# Accelerometers
#
scripts/config --module CONFIG_ADIS16201
scripts/config --module CONFIG_ADIS16209
scripts/config --module CONFIG_ADXL313
scripts/config --module CONFIG_ADXL313_I2C
scripts/config --module CONFIG_ADXL313_SPI
scripts/config --disable CONFIG_ADXL345_I2C
scripts/config --disable CONFIG_ADXL345_SPI
scripts/config --module CONFIG_ADXL355
scripts/config --module CONFIG_ADXL355_I2C
scripts/config --module CONFIG_ADXL355_SPI
scripts/config --module CONFIG_ADXL367
scripts/config --module CONFIG_ADXL367_SPI
scripts/config --module CONFIG_ADXL367_I2C
scripts/config --module CONFIG_ADXL372
scripts/config --module CONFIG_ADXL372_SPI
scripts/config --module CONFIG_ADXL372_I2C
scripts/config --module CONFIG_ADXL380
scripts/config --module CONFIG_ADXL380_SPI
scripts/config --module CONFIG_ADXL380_I2C
scripts/config --disable CONFIG_BMA180
scripts/config --module CONFIG_BMA220
scripts/config --module CONFIG_BMA400
scripts/config --module CONFIG_BMA400_I2C
scripts/config --module CONFIG_BMA400_SPI
scripts/config --module CONFIG_BMC150_ACCEL
scripts/config --module CONFIG_BMC150_ACCEL_I2C
scripts/config --module CONFIG_BMC150_ACCEL_SPI
scripts/config --module CONFIG_BMI088_ACCEL
scripts/config --module CONFIG_BMI088_ACCEL_I2C
scripts/config --module CONFIG_BMI088_ACCEL_SPI
scripts/config --module CONFIG_DA280
scripts/config --module CONFIG_DA311
scripts/config --module CONFIG_DMARD06
scripts/config --module CONFIG_DMARD09
scripts/config --module CONFIG_DMARD10
scripts/config --module CONFIG_FXLS8962AF
scripts/config --module CONFIG_FXLS8962AF_I2C
scripts/config --module CONFIG_FXLS8962AF_SPI
scripts/config --module CONFIG_HID_SENSOR_ACCEL_3D
scripts/config --module CONFIG_IIO_ST_ACCEL_3AXIS
scripts/config --module CONFIG_IIO_ST_ACCEL_I2C_3AXIS
scripts/config --module CONFIG_IIO_ST_ACCEL_SPI_3AXIS
scripts/config --module CONFIG_IIO_KX022A
scripts/config --module CONFIG_IIO_KX022A_SPI
scripts/config --module CONFIG_IIO_KX022A_I2C
scripts/config --module CONFIG_KXSD9
scripts/config --module CONFIG_KXSD9_SPI
scripts/config --module CONFIG_KXSD9_I2C
scripts/config --module CONFIG_KXCJK1013
scripts/config --module CONFIG_MC3230
scripts/config --module CONFIG_MMA7455
scripts/config --module CONFIG_MMA7455_I2C
scripts/config --module CONFIG_MMA7455_SPI
scripts/config --module CONFIG_MMA7660
scripts/config --module CONFIG_MMA8452
scripts/config --module CONFIG_MMA9551_CORE
scripts/config --module CONFIG_MMA9551
scripts/config --module CONFIG_MMA9553
scripts/config --module CONFIG_MSA311
scripts/config --module CONFIG_MXC4005
scripts/config --module CONFIG_MXC6255
scripts/config --module CONFIG_SCA3000
scripts/config --module CONFIG_SCA3300
scripts/config --module CONFIG_STK8312
scripts/config --module CONFIG_STK8BA50
# end of Accelerometers

#
# Analog to digital converters
#
scripts/config --module CONFIG_AD_SIGMA_DELTA
scripts/config --module CONFIG_AD4000
scripts/config --module CONFIG_AD4130
scripts/config --module CONFIG_AD4695
scripts/config --module CONFIG_AD7091R
scripts/config --module CONFIG_AD7091R5
scripts/config --module CONFIG_AD7091R8
scripts/config --module CONFIG_AD7124
scripts/config --module CONFIG_AD7173
scripts/config --module CONFIG_AD7192
scripts/config --module CONFIG_AD7266
scripts/config --module CONFIG_AD7280
scripts/config --module CONFIG_AD7291
scripts/config --module CONFIG_AD7292
scripts/config --module CONFIG_AD7298
scripts/config --module CONFIG_AD7380
scripts/config --module CONFIG_AD7476
scripts/config --module CONFIG_AD7606
scripts/config --module CONFIG_AD7606_IFACE_PARALLEL
scripts/config --module CONFIG_AD7606_IFACE_SPI
scripts/config --module CONFIG_AD7766
scripts/config --module CONFIG_AD7768_1
scripts/config --module CONFIG_AD7780
scripts/config --module CONFIG_AD7791
scripts/config --module CONFIG_AD7793
scripts/config --module CONFIG_AD7887
scripts/config --module CONFIG_AD7923
scripts/config --module CONFIG_AD7944
scripts/config --module CONFIG_AD7949
scripts/config --module CONFIG_AD799X
scripts/config --module CONFIG_AD9467
scripts/config --module CONFIG_CC10001_ADC
scripts/config --module CONFIG_DA9150_GPADC
scripts/config --module CONFIG_DLN2_ADC
scripts/config --module CONFIG_ENVELOPE_DETECTOR
scripts/config --module CONFIG_HI8435
scripts/config --module CONFIG_HX711
scripts/config --module CONFIG_INA2XX_ADC
scripts/config --module CONFIG_INTEL_MRFLD_ADC
scripts/config --module CONFIG_LP8788_ADC
scripts/config --module CONFIG_LTC2309
scripts/config --module CONFIG_LTC2471
scripts/config --module CONFIG_LTC2485
scripts/config --module CONFIG_LTC2496
scripts/config --module CONFIG_LTC2497
scripts/config --module CONFIG_MAX1027
scripts/config --module CONFIG_MAX11100
scripts/config --module CONFIG_MAX1118
scripts/config --module CONFIG_MAX11205
scripts/config --module CONFIG_MAX11410
scripts/config --module CONFIG_MAX1241
scripts/config --module CONFIG_MAX1363
scripts/config --module CONFIG_MAX34408
scripts/config --module CONFIG_MAX77541_ADC
scripts/config --module CONFIG_MAX9611
scripts/config --module CONFIG_MCP320X
scripts/config --module CONFIG_MCP3422
scripts/config --module CONFIG_MCP3564
scripts/config --module CONFIG_MCP3911
scripts/config --module CONFIG_MEDIATEK_MT6359_AUXADC
scripts/config --module CONFIG_MEDIATEK_MT6360_ADC
scripts/config --module CONFIG_MEDIATEK_MT6370_ADC
scripts/config --module CONFIG_MEN_Z188_ADC
scripts/config --module CONFIG_NAU7802
scripts/config --module CONFIG_PAC1921
scripts/config --module CONFIG_PAC1934
scripts/config --module CONFIG_PALMAS_GPADC
scripts/config --module CONFIG_RICHTEK_RTQ6056
scripts/config --module CONFIG_SD_ADC_MODULATOR
scripts/config --module CONFIG_TI_ADC081C
scripts/config --module CONFIG_TI_ADC0832
scripts/config --module CONFIG_TI_ADC084S021
scripts/config --module CONFIG_TI_ADC12138
scripts/config --module CONFIG_TI_ADC108S102
scripts/config --module CONFIG_TI_ADC128S052
scripts/config --module CONFIG_TI_ADC161S626
scripts/config --module CONFIG_TI_ADS1015
scripts/config --module CONFIG_TI_ADS1119
scripts/config --module CONFIG_TI_ADS7924
scripts/config --module CONFIG_TI_ADS1100
scripts/config --module CONFIG_TI_ADS1298
scripts/config --module CONFIG_TI_ADS7950
scripts/config --module CONFIG_TI_ADS8344
scripts/config --module CONFIG_TI_ADS8688
scripts/config --module CONFIG_TI_ADS124S08
scripts/config --module CONFIG_TI_ADS131E08
scripts/config --module CONFIG_TI_LMP92064
scripts/config --module CONFIG_TI_TLC4541
scripts/config --module CONFIG_TI_TSC2046
scripts/config --module CONFIG_VF610_ADC
scripts/config --module CONFIG_VIPERBOARD_ADC
scripts/config --disable CONFIG_XILINX_XADC
# end of Analog to digital converters

#
# Analog to digital and digital to analog converters
scripts/config --disable CONFIG_AD74115
scripts/config --disable CONFIG_AD74413R
scripts/config --disable CONFIG_IIO_RESCALE

# Amplifiers
scripts/config --disable CONFIG_AD8366
scripts/config --disable CONFIG_ADA4250
scripts/config --disable CONFIG_HMC425

# Capacitance to digital converters
scripts/config --disable CONFIG_AD7150
scripts/config --disable CONFIG_AD7746

# Chemical Sensors
scripts/config --disable CONFIG_AOSONG_AGS02MA
scripts/config --disable CONFIG_ATLAS_PH_SENSOR
scripts/config --disable CONFIG_ATLAS_EZO_SENSOR
scripts/config --disable CONFIG_BME680
scripts/config --disable CONFIG_BME680_I2C
scripts/config --disable CONFIG_BME680_SPI
scripts/config --disable CONFIG_CCS811
scripts/config --disable CONFIG_ENS160
scripts/config --disable CONFIG_ENS160_I2C
scripts/config --disable CONFIG_ENS160_SPI
scripts/config --disable CONFIG_IAQCORE
scripts/config --disable CONFIG_PMS7003
scripts/config --disable CONFIG_SCD30_CORE
scripts/config --disable CONFIG_SCD30_I2C
scripts/config --disable CONFIG_SCD30_SERIAL
scripts/config --disable CONFIG_SCD4X
scripts/config --disable CONFIG_SENSIRION_SGP30
scripts/config --disable CONFIG_SENSIRION_SGP40
scripts/config --disable CONFIG_SPS30
scripts/config --disable CONFIG_SPS30_I2C
scripts/config --disable CONFIG_SPS30_SERIAL
scripts/config --disable CONFIG_SENSEAIR_SUNRISE_CO2
scripts/config --disable CONFIG_VZ89X

# Hid Sensor IIO Common
scripts/config --disable CONFIG_HID_SENSOR_IIO_COMMON
scripts/config --disable CONFIG_HID_SENSOR_IIO_TRIGGER
scripts/config --disable CONFIG_IIO_INV_SENSORS_TIMESTAMP
scripts/config --disable CONFIG_IIO_MS_SENSORS_I2C
scripts/config --disable CONFIG_IIO_SSP_SENSORS_COMMONS
scripts/config --disable CONFIG_IIO_SSP_SENSORHUB
scripts/config --disable CONFIG_IIO_ST_SENSORS_I2C
scripts/config --disable CONFIG_IIO_ST_SENSORS_SPI
scripts/config --disable CONFIG_IIO_ST_SENSORS_CORE

# Digital to analog converters
scripts/config --disable CONFIG_AD3552R
scripts/config --disable CONFIG_AD5064
scripts/config --disable CONFIG_AD5360
scripts/config --disable CONFIG_AD5380
scripts/config --disable CONFIG_AD5421
scripts/config --disable CONFIG_AD5446
scripts/config --disable CONFIG_AD5449
scripts/config --disable CONFIG_AD5592R_BASE
scripts/config --disable CONFIG_AD5592R
scripts/config --disable CONFIG_AD5593R
scripts/config --disable CONFIG_AD5504
scripts/config --disable CONFIG_AD5624R_SPI
scripts/config --disable CONFIG_AD9739A
scripts/config --disable CONFIG_LTC2688
scripts/config --disable CONFIG_AD5686
scripts/config --disable CONFIG_AD5686_SPI
scripts/config --disable CONFIG_AD5696_I2C
scripts/config --disable CONFIG_AD5755
scripts/config --disable CONFIG_AD5758
scripts/config --disable CONFIG_AD5761
scripts/config --disable CONFIG_AD5764
scripts/config --disable CONFIG_AD5766
scripts/config --disable CONFIG_AD5770R
scripts/config --disable CONFIG_AD5791
scripts/config --disable CONFIG_AD7293
scripts/config --disable CONFIG_AD7303
scripts/config --disable CONFIG_AD8801
scripts/config --disable CONFIG_DPOT_DAC
scripts/config --disable CONFIG_DS4424
scripts/config --disable CONFIG_LTC1660
scripts/config --disable CONFIG_LTC2632
scripts/config --disable CONFIG_LTC2664
scripts/config --disable CONFIG_M62332
scripts/config --disable CONFIG_MAX517
scripts/config --disable CONFIG_MAX5522
scripts/config --disable CONFIG_MAX5821
scripts/config --disable CONFIG_MCP4725
scripts/config --disable CONFIG_MCP4728
scripts/config --disable CONFIG_MCP4821
scripts/config --disable CONFIG_MCP4922
scripts/config --disable CONFIG_TI_DAC082S085
scripts/config --disable CONFIG_TI_DAC5571
scripts/config --disable CONFIG_TI_DAC7311
scripts/config --disable CONFIG_TI_DAC7612
scripts/config --disable CONFIG_VF610_DAC
# end of Digital to analog converters

#
# IIO dummy driver
#
scripts/config --module CONFIG_IIO_SIMPLE_DUMMY
scripts/config --disable CONFIG_IIO_SIMPLE_DUMMY_EVENTS
scripts/config --disable CONFIG_IIO_SIMPLE_DUMMY_BUFFER
# end of IIO dummy driver

#
# Filters
#
scripts/config --module CONFIG_ADMV8818
# end of Filters

#
# Frequency Synthesizers DDS/PLL
#

#
# Clock Generator/Distribution
#
scripts/config --disable CONFIG_AD9523
# end of Clock Generator/Distribution

#
# Phase-Locked Loop (PLL) frequency synthesizers
#
scripts/config --disable CONFIG_ADF4350
scripts/config --disable CONFIG_ADF4371
scripts/config --disable CONFIG_ADF4377
scripts/config --disable CONFIG_ADMFM2000
scripts/config --disable CONFIG_ADMV1013
scripts/config --disable CONFIG_ADMV1014
scripts/config --disable CONFIG_ADMV4420
scripts/config --disable CONFIG_ADRF6780
# end of Phase-Locked Loop (PLL) frequency synthesizers
# end of Frequency Synthesizers DDS/PLL

#
# Digital gyroscope sensors
#
scripts/config --disable CONFIG_ADIS16080
scripts/config --disable CONFIG_ADIS16130
scripts/config --disable CONFIG_ADIS16136
scripts/config --disable CONFIG_ADIS16260
scripts/config --disable CONFIG_ADXRS290
scripts/config --disable CONFIG_ADXRS450
scripts/config --disable CONFIG_BMG160
scripts/config --disable CONFIG_BMG160_I2C
scripts/config --disable CONFIG_BMG160_SPI
scripts/config --disable CONFIG_FXAS21002C
scripts/config --disable CONFIG_FXAS21002C_I2C
scripts/config --disable CONFIG_FXAS21002C_SPI
scripts/config --disable CONFIG_HID_SENSOR_GYRO_3D
scripts/config --disable CONFIG_MPU3050
scripts/config --disable CONFIG_MPU3050_I2C
scripts/config --disable CONFIG_IIO_ST_GYRO_3AXIS
scripts/config --disable CONFIG_IIO_ST_GYRO_I2C_3AXIS
scripts/config --disable CONFIG_IIO_ST_GYRO_SPI_3AXIS
scripts/config --disable CONFIG_ITG3200
# end of Digital gyroscope sensors

#
# Health Sensors
#

#
# Heart Rate Monitors
#
scripts/config --disable CONFIG_AFE4403
scripts/config --disable CONFIG_AFE4404
scripts/config --disable CONFIG_MAX30100
scripts/config --disable CONFIG_MAX30102
# end of Heart Rate Monitors
# end of Health Sensors

#
# Humidity sensors
#
scripts/config --disable CONFIG_AM2315
scripts/config --disable CONFIG_DHT11
scripts/config --disable CONFIG_ENS210
scripts/config --disable CONFIG_HDC100X
scripts/config --disable CONFIG_HDC2010
scripts/config --disable CONFIG_HDC3020
scripts/config --disable CONFIG_HID_SENSOR_HUMIDITY
scripts/config --disable CONFIG_HTS221
scripts/config --disable CONFIG_HTS221_I2C
scripts/config --disable CONFIG_HTS221_SPI
scripts/config --disable CONFIG_HTU21
scripts/config --disable CONFIG_SI7005
scripts/config --disable CONFIG_SI7020
# end of Humidity sensors

#
# Inertial measurement units
#
scripts/config --disable CONFIG_ADIS16400
scripts/config --disable CONFIG_ADIS16460
scripts/config --disable CONFIG_ADIS16475
scripts/config --disable CONFIG_ADIS16480
scripts/config --disable CONFIG_BMI160
scripts/config --disable CONFIG_BMI160_I2C
scripts/config --disable CONFIG_BMI160_SPI
scripts/config --disable CONFIG_BMI323
scripts/config --disable CONFIG_BMI323_I2C
scripts/config --disable CONFIG_BMI323_SPI
scripts/config --disable CONFIG_BOSCH_BNO055
scripts/config --disable CONFIG_BOSCH_BNO055_SERIAL
scripts/config --disable CONFIG_BOSCH_BNO055_I2C
scripts/config --disable CONFIG_FXOS8700
scripts/config --disable CONFIG_FXOS8700_I2C
scripts/config --disable CONFIG_FXOS8700_SPI
scripts/config --disable CONFIG_KMX61
scripts/config --disable CONFIG_INV_ICM42600
scripts/config --disable CONFIG_INV_ICM42600_I2C
scripts/config --disable CONFIG_INV_ICM42600_SPI
scripts/config --disable CONFIG_INV_MPU6050_IIO
scripts/config --disable CONFIG_INV_MPU6050_I2C
scripts/config --disable CONFIG_INV_MPU6050_SPI
scripts/config --disable CONFIG_IIO_ST_LSM6DSX
scripts/config --disable CONFIG_IIO_ST_LSM6DSX_I2C
scripts/config --disable CONFIG_IIO_ST_LSM6DSX_SPI
scripts/config --disable CONFIG_IIO_ST_LSM9DS0
scripts/config --disable CONFIG_IIO_ST_LSM9DS0_I2C
scripts/config --disable CONFIG_IIO_ST_LSM9DS0_SPI
scripts/config --disable CONFIG_IIO_ADIS_LIB
scripts/config --disable CONFIG_IIO_ADIS_LIB_BUFFER

#
# Light sensors
#
scripts/config --disable CONFIG_ACPI_ALS
scripts/config --disable CONFIG_ADJD_S311
scripts/config --disable CONFIG_ADUX1020
scripts/config --disable CONFIG_AL3010
scripts/config --disable CONFIG_AL3320A
scripts/config --disable CONFIG_APDS9300
scripts/config --disable CONFIG_APDS9306
scripts/config --disable CONFIG_APDS9960
scripts/config --disable CONFIG_AS73211
scripts/config --disable CONFIG_BH1745
scripts/config --disable CONFIG_BH1750
scripts/config --disable CONFIG_BH1780
scripts/config --disable CONFIG_CM32181
scripts/config --disable CONFIG_CM3232
scripts/config --disable CONFIG_CM3323
scripts/config --disable CONFIG_CM3605
scripts/config --disable CONFIG_CM36651
scripts/config --disable CONFIG_GP2AP002
scripts/config --disable CONFIG_GP2AP020A00F
scripts/config --disable CONFIG_IQS621_ALS
scripts/config --disable CONFIG_SENSORS_ISL29018
scripts/config --disable CONFIG_SENSORS_ISL29028
scripts/config --disable CONFIG_ISL29125
scripts/config --disable CONFIG_ISL76682
scripts/config --disable CONFIG_HID_SENSOR_ALS
scripts/config --disable CONFIG_HID_SENSOR_PROX
scripts/config --disable CONFIG_JSA1212
scripts/config --disable CONFIG_ROHM_BU27008
scripts/config --disable CONFIG_ROHM_BU27034
scripts/config --disable CONFIG_RPR0521
scripts/config --disable CONFIG_LTR390
scripts/config --disable CONFIG_LTR501
scripts/config --disable CONFIG_LTRF216A
scripts/config --disable CONFIG_LV0104CS
scripts/config --disable CONFIG_MAX44000
scripts/config --disable CONFIG_MAX44009
scripts/config --disable CONFIG_NOA1305
scripts/config --disable CONFIG_OPT3001
scripts/config --disable CONFIG_OPT4001
scripts/config --disable CONFIG_PA12203001
scripts/config --disable CONFIG_SI1133
scripts/config --disable CONFIG_SI1145
scripts/config --disable CONFIG_STK3310
scripts/config --disable CONFIG_ST_UVIS25
scripts/config --disable CONFIG_ST_UVIS25_I2C
scripts/config --disable CONFIG_ST_UVIS25_SPI
scripts/config --disable CONFIG_TCS3414
scripts/config --disable CONFIG_TCS3472
scripts/config --disable CONFIG_SENSORS_TSL2563
scripts/config --disable CONFIG_TSL2583
scripts/config --disable CONFIG_TSL2591
scripts/config --disable CONFIG_TSL2772
scripts/config --disable CONFIG_TSL4531
scripts/config --disable CONFIG_US5182D
scripts/config --disable CONFIG_VCNL4000
scripts/config --disable CONFIG_VCNL4035
scripts/config --disable CONFIG_VEML6030
scripts/config --disable CONFIG_VEML6040
scripts/config --disable CONFIG_VEML6070
scripts/config --disable CONFIG_VEML6075
scripts/config --disable CONFIG_VL6180
scripts/config --disable CONFIG_ZOPT2201
# end of Light sensors

#
# Magnetometer sensors
##(KVM无用，减少编译时间)
scripts/config --disable CONFIG_AK8974
scripts/config --disable CONFIG_AK8975
scripts/config --disable CONFIG_AK09911
scripts/config --disable CONFIG_BMC150_MAGN
scripts/config --disable CONFIG_BMC150_MAGN_I2C
scripts/config --disable CONFIG_BMC150_MAGN_SPI
scripts/config --disable CONFIG_MAG3110
scripts/config --disable CONFIG_HID_SENSOR_MAGNETOMETER_3D
scripts/config --disable CONFIG_MMC35240
scripts/config --disable CONFIG_IIO_ST_MAGN_3AXIS
scripts/config --disable CONFIG_IIO_ST_MAGN_I2C_3AXIS
scripts/config --disable CONFIG_IIO_ST_MAGN_SPI_3AXIS
scripts/config --disable CONFIG_SENSORS_HMC5843
scripts/config --disable CONFIG_SENSORS_HMC5843_I2C
scripts/config --disable CONFIG_SENSORS_HMC5843_SPI
scripts/config --disable CONFIG_SENSORS_RM3100
scripts/config --disable CONFIG_SENSORS_RM3100_I2C
scripts/config --disable CONFIG_SENSORS_RM3100_SPI
scripts/config --disable CONFIG_TI_TMAG5273
scripts/config --disable CONFIG_YAMAHA_YAS530
# end of Magnetometer sensors

#
# Multiplexers
#
scripts/config --disable CONFIG_IIO_MUX
# end of Multiplexers

#
# Inclinometer sensors
scripts/config --disable CONFIG_HID_SENSOR_INCLINOMETER_3D
scripts/config --disable CONFIG_HID_SENSOR_DEVICE_ROTATION

# Triggers - standalone
scripts/config --disable CONFIG_IIO_HRTIMER_TRIGGER
scripts/config --disable CONFIG_IIO_INTERRUPT_TRIGGER
scripts/config --disable CONFIG_IIO_TIGHTLOOP_TRIGGER
scripts/config --disable CONFIG_IIO_SYSFS_TRIGGER

# Linear and angular position sensors
scripts/config --disable CONFIG_IQS624_POS
scripts/config --disable CONFIG_HID_SENSOR_CUSTOM_INTEL_HINGE

# Digital potentiometers
scripts/config --disable CONFIG_AD5110
scripts/config --disable CONFIG_AD5272
scripts/config --disable CONFIG_DS1803
scripts/config --disable CONFIG_MAX5432
scripts/config --disable CONFIG_MAX5481
scripts/config --disable CONFIG_MAX5487
scripts/config --disable CONFIG_MCP4018
scripts/config --disable CONFIG_MCP4131
scripts/config --disable CONFIG_MCP4531
scripts/config --disable CONFIG_MCP41010
scripts/config --disable CONFIG_TPL0102
scripts/config --disable CONFIG_X9250
# end of Digital potentiometers

#
# Digital potentiostats
scripts/config --disable CONFIG_LMP91000
# end of Digital potentiostats

#
# Pressure sensors
#
scripts/config --disable CONFIG_ABP060MG
scripts/config --disable CONFIG_ROHM_BM1390
scripts/config --disable CONFIG_BMP280
scripts/config --disable CONFIG_BMP280_I2C
scripts/config --disable CONFIG_BMP280_SPI
scripts/config --disable CONFIG_DLHL60D
scripts/config --disable CONFIG_DPS310
scripts/config --disable CONFIG_HID_SENSOR_PRESS
scripts/config --disable CONFIG_HP03
scripts/config --disable CONFIG_HSC030PA
scripts/config --disable CONFIG_HSC030PA_I2C
scripts/config --disable CONFIG_HSC030PA_SPI
scripts/config --disable CONFIG_ICP10100
scripts/config --disable CONFIG_MPL115
scripts/config --disable CONFIG_MPL115_I2C
scripts/config --disable CONFIG_MPL115_SPI
scripts/config --disable CONFIG_MPL3115
scripts/config --disable CONFIG_MPRLS0025PA
scripts/config --disable CONFIG_MPRLS0025PA_I2C
scripts/config --disable CONFIG_MPRLS0025PA_SPI
scripts/config --disable CONFIG_MS5611
scripts/config --disable CONFIG_MS5611_I2C
scripts/config --disable CONFIG_MS5611_SPI
scripts/config --disable CONFIG_MS5637
scripts/config --disable CONFIG_SDP500
scripts/config --disable CONFIG_IIO_ST_PRESS
scripts/config --disable CONFIG_IIO_ST_PRESS_I2C
scripts/config --disable CONFIG_IIO_ST_PRESS_SPI
scripts/config --disable CONFIG_T5403
scripts/config --disable CONFIG_HP206C
scripts/config --disable CONFIG_ZPA2326
scripts/config --disable CONFIG_ZPA2326_I2C
scripts/config --disable CONFIG_ZPA2326_SPI
# end of Pressure sensors

#
# Lightning sensors
#
scripts/config --disable CONFIG_AS3935
# end of Lightning sensors

#
# Proximity and distance sensors
#
scripts/config --disable CONFIG_CROS_EC_MKBP_PROXIMITY
scripts/config --disable CONFIG_HX9023S
scripts/config --disable CONFIG_IRSD200
scripts/config --disable CONFIG_ISL29501
scripts/config --disable CONFIG_LIDAR_LITE_V2
scripts/config --disable CONFIG_MB1232
scripts/config --disable CONFIG_PING
scripts/config --disable CONFIG_RFD77402
scripts/config --disable CONFIG_SRF04
scripts/config --disable CONFIG_SX_COMMON
scripts/config --disable CONFIG_SX9310
scripts/config --disable CONFIG_SX9324
scripts/config --disable CONFIG_SX9360
scripts/config --disable CONFIG_SX9500
scripts/config --disable CONFIG_SRF08
scripts/config --disable CONFIG_VCNL3020
scripts/config --disable CONFIG_VL53L0X_I2C
scripts/config --disable CONFIG_AW96103
# end of Proximity and distance sensors

#
# Resolver to digital converters
#
scripts/config --disable CONFIG_AD2S90
scripts/config --disable CONFIG_AD2S1200
scripts/config --disable CONFIG_AD2S1210

# Temperature sensors
scripts/config --disable CONFIG_IQS620AT_TEMP
scripts/config --disable CONFIG_LTC2983
scripts/config --disable CONFIG_MAXIM_THERMOCOUPLE
scripts/config --disable CONFIG_HID_SENSOR_TEMP
scripts/config --disable CONFIG_MLX90614
scripts/config --disable CONFIG_MLX90632
scripts/config --disable CONFIG_MLX90635
scripts/config --disable CONFIG_TMP006
scripts/config --disable CONFIG_TMP007
scripts/config --disable CONFIG_TMP117
scripts/config --disable CONFIG_TSYS01
scripts/config --disable CONFIG_TSYS02D
scripts/config --disable CONFIG_MAX30208
scripts/config --disable CONFIG_MAX31856
scripts/config --disable CONFIG_MAX31865
scripts/config --disable CONFIG_MCP9600
# end of Temperature sensors

scripts/config --module CONFIG_NTB
scripts/config --enable CONFIG_NTB_MSI
scripts/config --disable CONFIG_NTB_AMD
scripts/config --module CONFIG_NTB_IDT
scripts/config --module CONFIG_NTB_INTEL
scripts/config --module CONFIG_NTB_EPF
scripts/config --module CONFIG_NTB_SWITCHTEC
scripts/config --module CONFIG_NTB_PINGPONG
scripts/config --module CONFIG_NTB_TOOL
scripts/config --module CONFIG_NTB_PERF
scripts/config --disable CONFIG_NTB_MSI_TEST
scripts/config --module CONFIG_NTB_TRANSPORT
scripts/config --enable CONFIG_PWM
scripts/config --disable CONFIG_PWM_DEBUG
scripts/config --module CONFIG_PWM_CLK
scripts/config --module CONFIG_PWM_CROS_EC
scripts/config --module CONFIG_PWM_DWC_CORE
scripts/config --module CONFIG_PWM_DWC
scripts/config --module CONFIG_PWM_GPIO
scripts/config --module CONFIG_PWM_IQS620A
scripts/config --enable CONFIG_PWM_LPSS
scripts/config --enable CONFIG_PWM_LPSS_PCI
scripts/config --enable CONFIG_PWM_LPSS_PLATFORM
scripts/config --module CONFIG_PWM_PCA9685

#
# IRQ chip support
#
# end of IRQ chip support
#(KVM无用，减少编译时间)
scripts/config --disable CONFIG_IPACK_BUS
scripts/config --disable CONFIG_BOARD_TPCI200
scripts/config --disable CONFIG_SERIAL_IPOCTAL
scripts/config --disable CONFIG_RESET_CONTROLLER
scripts/config --disable CONFIG_RESET_GPIO
scripts/config --disable CONFIG_RESET_TI_SYSCON
scripts/config --disable CONFIG_RESET_TI_TPS380X

#
# PHY Subsystem
##(KVM无用，减少编译时间)
scripts/config --disable CONFIG_GENERIC_PHY
scripts/config --disable CONFIG_USB_LGM_PHY
scripts/config --disable CONFIG_PHY_CAN_TRANSCEIVER

#
# PHY drivers for Broadcom platforms
#
scripts/config --disable CONFIG_BCM_KONA_USB2_PHY
# end of PHY drivers for Broadcom platforms

scripts/config --disable CONFIG_PHY_PXA_28NM_HSIC
scripts/config --disable CONFIG_PHY_PXA_28NM_USB2
scripts/config --disable CONFIG_PHY_CPCAP_USB
scripts/config --disable CONFIG_PHY_QCOM_USB_HS
scripts/config --disable CONFIG_PHY_QCOM_USB_HSIC
scripts/config --disable CONFIG_PHY_SAMSUNG_USB2
scripts/config --disable CONFIG_PHY_TUSB1210
scripts/config --disable CONFIG_PHY_INTEL_LGM_EMMC
# end of PHY Subsystem

scripts/config --disable CONFIG_POWERCAP
scripts/config --disable CONFIG_INTEL_RAPL_CORE
scripts/config --disable CONFIG_INTEL_RAPL
scripts/config --disable CONFIG_INTEL_RAPL_TPMI
scripts/config --disable CONFIG_IDLE_INJECT
scripts/config --disable CONFIG_MCB
scripts/config --disable CONFIG_MCB_PCI
scripts/config --disable CONFIG_MCB_LPC

#
# Performance monitor support
#
scripts/config --disable CONFIG_DWC_PCIE_PMU
scripts/config --disable CONFIG_CXL_PMU
# end of Performance monitor support

scripts/config --disable CONFIG_RAS
scripts/config --disable CONFIG_USB4
scripts/config --disable CONFIG_USB4_DEBUGFS_WRITE
scripts/config --disable CONFIG_USB4_DMA_TEST
#
# Android
#
scripts/config --disable CONFIG_ANDROID_BINDER_IPC
scripts/config --disable CONFIG_ANDROID_BINDERFS
scripts/config --set-val CONFIG_ANDROID_BINDER_DEVICES "binder,hwbinder,vndbinder"
scripts/config --disable CONFIG_ANDROID_BINDER_IPC_SELFTEST
# end of Android

scripts/config --disable CONFIG_LIBNVDIMM
scripts/config --disable CONFIG_BLK_DEV_PMEM
scripts/config --disable CONFIG_ND_CLAIM
scripts/config --disable CONFIG_ND_BTT
scripts/config --disable CONFIG_BTT
scripts/config --disable CONFIG_ND_PFN
scripts/config --disable CONFIG_NVDIMM_PFN
scripts/config --disable CONFIG_NVDIMM_DAX
scripts/config --disable CONFIG_NVDIMM_KEYS
scripts/config --disable CONFIG_NVDIMM_SECURITY_TEST
scripts/config --disable CONFIG_DAX
scripts/config --disable CONFIG_DEV_DAX
scripts/config --disable CONFIG_DEV_DAX_PMEM
scripts/config --disable CONFIG_DEV_DAX_HMEM
scripts/config --disable CONFIG_DEV_DAX_CXL
scripts/config --disable CONFIG_DEV_DAX_HMEM_DEVICES
scripts/config --disable CONFIG_DEV_DAX_KMEM
scripts/config --disable CONFIG_NVMEM
scripts/config --disable CONFIG_NVMEM_SYSFS
scripts/config --disable CONFIG_NVMEM_LAYOUTS
scripts/config --disable CONFIG_NVMEM_RMEM

#
# HW tracing support (KVM无用，减少编译时间)
#
scripts/config --disable CONFIG_STM
scripts/config --disable CONFIG_STM_PROTO_BASIC
scripts/config --disable CONFIG_STM_PROTO_SYS_T
scripts/config --disable CONFIG_STM_DUMMY
scripts/config --disable CONFIG_STM_SOURCE_CONSOLE
scripts/config --disable CONFIG_STM_SOURCE_HEARTBEAT
scripts/config --disable CONFIG_STM_SOURCE_FTRACE
scripts/config --disable CONFIG_INTEL_TH
scripts/config --disable CONFIG_INTEL_TH_PCI
scripts/config --disable CONFIG_INTEL_TH_ACPI
scripts/config --disable CONFIG_INTEL_TH_GTH
scripts/config --disable CONFIG_INTEL_TH_STH
scripts/config --disable CONFIG_INTEL_TH_MSU
scripts/config --disable CONFIG_INTEL_TH_PTI
scripts/config --disable CONFIG_INTEL_TH_DEBUG
# end of HW tracing support
#(KVM无用，减少编译时间)
scripts/config --disable CONFIG_FPGA
scripts/config --disable CONFIG_ALTERA_PR_IP_CORE
scripts/config --disable CONFIG_FPGA_MGR_ALTERA_PS_SPI
scripts/config --disable CONFIG_FPGA_MGR_ALTERA_CVP
scripts/config --disable CONFIG_FPGA_MGR_XILINX_CORE
scripts/config --disable CONFIG_FPGA_MGR_XILINX_SELECTMAP
scripts/config --disable CONFIG_FPGA_MGR_XILINX_SPI
scripts/config --disable CONFIG_FPGA_MGR_MACHXO2_SPI
scripts/config --disable CONFIG_FPGA_BRIDGE
scripts/config --disable CONFIG_ALTERA_FREEZE_BRIDGE
scripts/config --disable CONFIG_XILINX_PR_DECOUPLER
scripts/config --disable CONFIG_FPGA_REGION
scripts/config --disable CONFIG_FPGA_DFL
scripts/config --disable CONFIG_FPGA_DFL_FME
scripts/config --disable CONFIG_FPGA_DFL_FME_MGR
scripts/config --disable CONFIG_FPGA_DFL_FME_BRIDGE
scripts/config --disable CONFIG_FPGA_DFL_FME_REGION
scripts/config --disable CONFIG_FPGA_DFL_AFU
scripts/config --disable CONFIG_FPGA_DFL_NIOS_INTEL_PAC_N3000
scripts/config --disable CONFIG_FPGA_DFL_PCI
scripts/config --disable CONFIG_FPGA_MGR_MICROCHIP_SPI
scripts/config --disable CONFIG_FPGA_MGR_LATTICE_SYSCONFIG
scripts/config --disable CONFIG_FPGA_MGR_LATTICE_SYSCONFIG_SPI
scripts/config --module CONFIG_TEE
scripts/config --module CONFIG_AMDTEE
scripts/config --module CONFIG_MULTIPLEXER

#
# Multiplexer drivers
#
scripts/config --module CONFIG_MUX_ADG792A
scripts/config --module CONFIG_MUX_ADGS1408
scripts/config --module CONFIG_MUX_GPIO
# end of Multiplexer drivers

scripts/config --enable CONFIG_PM_OPP
scripts/config --module CONFIG_SIOX
scripts/config --module CONFIG_SIOX_BUS_GPIO
scripts/config --module CONFIG_SLIMBUS
scripts/config --module CONFIG_SLIM_QCOM_CTRL
scripts/config --enable CONFIG_INTERCONNECT
scripts/config --module CONFIG_COUNTER
scripts/config --module CONFIG_INTEL_QEP
scripts/config --module CONFIG_INTERRUPT_CNT
scripts/config --module CONFIG_MOST
scripts/config --module CONFIG_MOST_USB_HDM
scripts/config --module CONFIG_MOST_CDEV
scripts/config --module CONFIG_PECI
scripts/config --module CONFIG_PECI_CPU
scripts/config --enable CONFIG_HTE
scripts/config --enable CONFIG_DPLL
# end of Device Drivers

#
# File systems
#
scripts/config --enable CONFIG_DCACHE_WORD_ACCESS
scripts/config --enable CONFIG_VALIDATE_FS_PARSER
scripts/config --enable CONFIG_FS_IOMAP
scripts/config --enable CONFIG_FS_STACK
scripts/config --enable CONFIG_BUFFER_HEAD
scripts/config --enable CONFIG_LEGACY_DIRECT_IO
scripts/config --disable CONFIG_EXT2_FS
scripts/config --disable CONFIG_EXT3_FS
scripts/config --enable CONFIG_EXT4_FS
scripts/config --enable CONFIG_EXT4_USE_FOR_EXT2
scripts/config --enable CONFIG_EXT4_FS_POSIX_ACL
scripts/config --enable CONFIG_EXT4_FS_SECURITY
scripts/config --disable CONFIG_EXT4_DEBUG
scripts/config --enable CONFIG_JBD2
scripts/config --disable CONFIG_JBD2_DEBUG
scripts/config --enable CONFIG_FS_MBCACHE
scripts/config --module CONFIG_REISERFS_FS
scripts/config --disable CONFIG_REISERFS_CHECK
scripts/config --disable CONFIG_REISERFS_PROC_INFO
scripts/config --enable CONFIG_REISERFS_FS_XATTR
scripts/config --enable CONFIG_REISERFS_FS_POSIX_ACL
scripts/config --enable CONFIG_REISERFS_FS_SECURITY
scripts/config --module CONFIG_JFS_FS
scripts/config --enable CONFIG_JFS_POSIX_ACL
scripts/config --enable CONFIG_JFS_SECURITY
scripts/config --disable CONFIG_JFS_DEBUG
scripts/config --enable CONFIG_JFS_STATISTICS
scripts/config --module CONFIG_XFS_FS
scripts/config --enable CONFIG_XFS_SUPPORT_V4
scripts/config --enable CONFIG_XFS_SUPPORT_ASCII_CI
scripts/config --enable CONFIG_XFS_QUOTA
scripts/config --enable CONFIG_XFS_POSIX_ACL
scripts/config --enable CONFIG_XFS_RT
scripts/config --disable CONFIG_XFS_ONLINE_SCRUB
scripts/config --disable CONFIG_XFS_WARN
scripts/config --disable CONFIG_XFS_DEBUG
scripts/config --module CONFIG_GFS2_FS
scripts/config --enable CONFIG_GFS2_FS_LOCKING_DLM
scripts/config --module CONFIG_OCFS2_FS
scripts/config --module CONFIG_OCFS2_FS_O2CB
scripts/config --module CONFIG_OCFS2_FS_USERSPACE_CLUSTER
scripts/config --enable CONFIG_OCFS2_FS_STATS
scripts/config --enable CONFIG_OCFS2_DEBUG_MASKLOG
scripts/config --disable CONFIG_OCFS2_DEBUG_FS
scripts/config --module CONFIG_BTRFS_FS
scripts/config --enable CONFIG_BTRFS_FS_POSIX_ACL
scripts/config --disable CONFIG_BTRFS_FS_RUN_SANITY_TESTS
scripts/config --disable CONFIG_BTRFS_DEBUG
scripts/config --disable CONFIG_BTRFS_ASSERT
scripts/config --disable CONFIG_BTRFS_FS_REF_VERIFY
scripts/config --module CONFIG_NILFS2_FS
scripts/config --module CONFIG_F2FS_FS
scripts/config --enable CONFIG_F2FS_STAT_FS
scripts/config --enable CONFIG_F2FS_FS_XATTR
scripts/config --enable CONFIG_F2FS_FS_POSIX_ACL
scripts/config --enable CONFIG_F2FS_FS_SECURITY
scripts/config --disable CONFIG_F2FS_CHECK_FS
scripts/config --disable CONFIG_F2FS_FAULT_INJECTION
scripts/config --enable CONFIG_F2FS_FS_COMPRESSION
scripts/config --enable CONFIG_F2FS_FS_LZO
scripts/config --enable CONFIG_F2FS_FS_LZORLE
scripts/config --enable CONFIG_F2FS_FS_LZ4
scripts/config --enable CONFIG_F2FS_FS_LZ4HC
scripts/config --enable CONFIG_F2FS_FS_ZSTD
scripts/config --disable CONFIG_F2FS_IOSTAT
scripts/config --enable CONFIG_F2FS_UNFAIR_RWSEM
scripts/config --module CONFIG_BCACHEFS_FS
scripts/config --enable CONFIG_BCACHEFS_QUOTA
scripts/config --enable CONFIG_BCACHEFS_ERASURE_CODING
scripts/config --enable CONFIG_BCACHEFS_POSIX_ACL
scripts/config --disable CONFIG_BCACHEFS_DEBUG
scripts/config --disable CONFIG_BCACHEFS_TESTS
scripts/config --disable CONFIG_BCACHEFS_LOCK_TIME_STATS
scripts/config --disable CONFIG_BCACHEFS_NO_LATENCY_ACCT
scripts/config --enable CONFIG_BCACHEFS_SIX_OPTIMISTIC_SPIN
scripts/config --disable CONFIG_BCACHEFS_PATH_TRACEPOINTS
scripts/config --module CONFIG_ZONEFS_FS
scripts/config --enable CONFIG_FS_DAX
scripts/config --enable CONFIG_FS_DAX_PMD
scripts/config --enable CONFIG_FS_POSIX_ACL
scripts/config --enable CONFIG_EXPORTFS
scripts/config --enable CONFIG_EXPORTFS_BLOCK_OPS
scripts/config --enable CONFIG_FILE_LOCKING
scripts/config --enable CONFIG_FS_ENCRYPTION
scripts/config --enable CONFIG_FS_ENCRYPTION_ALGS
scripts/config --enable CONFIG_FS_ENCRYPTION_INLINE_CRYPT
scripts/config --enable CONFIG_FS_VERITY
scripts/config --enable CONFIG_FS_VERITY_BUILTIN_SIGNATURES
scripts/config --enable CONFIG_FSNOTIFY
scripts/config --enable CONFIG_DNOTIFY
scripts/config --enable CONFIG_INOTIFY_USER
scripts/config --enable CONFIG_FANOTIFY
scripts/config --enable CONFIG_FANOTIFY_ACCESS_PERMISSIONS
scripts/config --enable CONFIG_QUOTA
scripts/config --enable CONFIG_QUOTA_NETLINK_INTERFACE
scripts/config --disable CONFIG_QUOTA_DEBUG
scripts/config --module CONFIG_QUOTA_TREE
scripts/config --module CONFIG_QFMT_V1
scripts/config --module CONFIG_QFMT_V2
scripts/config --enable CONFIG_QUOTACTL
scripts/config --module CONFIG_AUTOFS_FS
scripts/config --enable CONFIG_FUSE_FS
scripts/config --module CONFIG_CUSE
scripts/config --module CONFIG_VIRTIO_FS
scripts/config --enable CONFIG_FUSE_DAX
scripts/config --enable CONFIG_FUSE_PASSTHROUGH
scripts/config --module CONFIG_OVERLAY_FS
scripts/config --disable CONFIG_OVERLAY_FS_REDIRECT_DIR
scripts/config --enable CONFIG_OVERLAY_FS_REDIRECT_ALWAYS_FOLLOW
scripts/config --disable CONFIG_OVERLAY_FS_INDEX
scripts/config --enable CONFIG_OVERLAY_FS_XINO_AUTO
scripts/config --disable CONFIG_OVERLAY_FS_METACOPY
scripts/config --disable CONFIG_OVERLAY_FS_DEBUG

#
# Caches
#
scripts/config --module CONFIG_NETFS_SUPPORT
scripts/config --enable CONFIG_NETFS_STATS
scripts/config --enable CONFIG_NETFS_DEBUG
scripts/config --enable CONFIG_FSCACHE
scripts/config --enable CONFIG_FSCACHE_STATS
scripts/config --module CONFIG_CACHEFILES
scripts/config --disable CONFIG_CACHEFILES_DEBUG
scripts/config --enable CONFIG_CACHEFILES_ERROR_INJECTION
scripts/config --disable CONFIG_CACHEFILES_ONDEMAND
# end of Caches

#
# CD-ROM/DVD Filesystems
#
scripts/config --module CONFIG_ISO9660_FS
scripts/config --enable CONFIG_JOLIET
scripts/config --enable CONFIG_ZISOFS
scripts/config --module CONFIG_UDF_FS
# end of CD-ROM/DVD Filesystems

#
# DOS/FAT/EXFAT/NT Filesystems
#
scripts/config --enable CONFIG_FAT_FS
scripts/config --module CONFIG_MSDOS_FS
scripts/config --enable CONFIG_VFAT_FS
scripts/config --set-val CONFIG_FAT_DEFAULT_CODEPAGE 437
scripts/config --set-val CONFIG_FAT_DEFAULT_IOCHARSET "iso8859-1"
scripts/config --disable CONFIG_FAT_DEFAULT_UTF8
scripts/config --module CONFIG_EXFAT_FS
scripts/config --set-val CONFIG_EXFAT_DEFAULT_IOCHARSET "utf8"
scripts/config --module CONFIG_NTFS3_FS
scripts/config --disable CONFIG_NTFS3_64BIT_CLUSTER
scripts/config --enable CONFIG_NTFS3_LZX_XPRESS
scripts/config --enable CONFIG_NTFS3_FS_POSIX_ACL
scripts/config --module CONFIG_NTFS_FS
# end of DOS/FAT/EXFAT/NT Filesystems

#
# Pseudo filesystems
#
scripts/config --enable CONFIG_PROC_FS
scripts/config --enable CONFIG_PROC_KCORE
scripts/config --enable CONFIG_PROC_SYSCTL
scripts/config --enable CONFIG_PROC_PAGE_MONITOR
scripts/config --enable CONFIG_PROC_CHILDREN
scripts/config --enable CONFIG_PROC_PID_ARCH_STATUS
scripts/config --enable CONFIG_PROC_CPU_RESCTRL
scripts/config --enable CONFIG_KERNFS
scripts/config --enable CONFIG_SYSFS
scripts/config --enable CONFIG_TMPFS
scripts/config --enable CONFIG_TMPFS_POSIX_ACL
scripts/config --enable CONFIG_TMPFS_XATTR
scripts/config --enable CONFIG_TMPFS_INODE64
scripts/config --enable CONFIG_TMPFS_QUOTA
scripts/config --enable CONFIG_HUGETLBFS
scripts/config --disable CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP_DEFAULT_ON
scripts/config --enable CONFIG_HUGETLB_PAGE
scripts/config --enable CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP
scripts/config --enable CONFIG_HUGETLB_PMD_PAGE_TABLE_SHARING
scripts/config --enable CONFIG_ARCH_HAS_GIGANTIC_PAGE
scripts/config --enable CONFIG_CONFIGFS_FS
scripts/config --enable CONFIG_EFIVAR_FS
# end of Pseudo filesystems

scripts/config --enable CONFIG_MISC_FILESYSTEMS
scripts/config --module CONFIG_ORANGEFS_FS
scripts/config --module CONFIG_ADFS_FS
scripts/config --disable CONFIG_ADFS_FS_RW
scripts/config --module CONFIG_AFFS_FS
scripts/config --enable CONFIG_ECRYPT_FS
scripts/config --enable CONFIG_ECRYPT_FS_MESSAGING
scripts/config --module CONFIG_HFS_FS
scripts/config --module CONFIG_HFSPLUS_FS
scripts/config --module CONFIG_BEFS_FS
scripts/config --disable CONFIG_BEFS_DEBUG
scripts/config --module CONFIG_BFS_FS
scripts/config --module CONFIG_EFS_FS
scripts/config --module CONFIG_JFFS2_FS
scripts/config --set-val CONFIG_JFFS2_FS_DEBUG 0
scripts/config --enable CONFIG_JFFS2_FS_WRITEBUFFER
scripts/config --disable CONFIG_JFFS2_FS_WBUF_VERIFY
scripts/config --disable CONFIG_JFFS2_SUMMARY
scripts/config --enable CONFIG_JFFS2_FS_XATTR
scripts/config --enable CONFIG_JFFS2_FS_POSIX_ACL
scripts/config --enable CONFIG_JFFS2_FS_SECURITY
scripts/config --enable CONFIG_JFFS2_COMPRESSION_OPTIONS
scripts/config --enable CONFIG_JFFS2_ZLIB
scripts/config --enable CONFIG_JFFS2_LZO
scripts/config --enable CONFIG_JFFS2_RTIME
scripts/config --disable CONFIG_JFFS2_RUBIN
scripts/config --disable CONFIG_JFFS2_CMODE_NONE
scripts/config --disable CONFIG_JFFS2_CMODE_PRIORITY
scripts/config --disable CONFIG_JFFS2_CMODE_SIZE
scripts/config --enable CONFIG_JFFS2_CMODE_FAVOURLZO
scripts/config --module CONFIG_UBIFS_FS
scripts/config --disable CONFIG_UBIFS_FS_ADVANCED_COMPR
scripts/config --enable CONFIG_UBIFS_FS_LZO
scripts/config --enable CONFIG_UBIFS_FS_ZLIB
scripts/config --enable CONFIG_UBIFS_FS_ZSTD
scripts/config --disable CONFIG_UBIFS_ATIME_SUPPORT
scripts/config --enable CONFIG_UBIFS_FS_XATTR
scripts/config --enable CONFIG_UBIFS_FS_SECURITY
scripts/config --enable CONFIG_UBIFS_FS_AUTHENTICATION
scripts/config --module CONFIG_CRAMFS
scripts/config --enable CONFIG_CRAMFS_BLOCKDEV
scripts/config --enable CONFIG_CRAMFS_MTD
scripts/config --enable CONFIG_SQUASHFS
scripts/config --disable CONFIG_SQUASHFS_FILE_CACHE
scripts/config --enable CONFIG_SQUASHFS_FILE_DIRECT
scripts/config --enable CONFIG_SQUASHFS_DECOMP_SINGLE
scripts/config --enable CONFIG_SQUASHFS_DECOMP_MULTI
scripts/config --enable CONFIG_SQUASHFS_DECOMP_MULTI_PERCPU
scripts/config --enable CONFIG_SQUASHFS_CHOICE_DECOMP_BY_MOUNT
scripts/config --enable CONFIG_SQUASHFS_MOUNT_DECOMP_THREADS
scripts/config --enable CONFIG_SQUASHFS_XATTR
scripts/config --enable CONFIG_SQUASHFS_ZLIB
scripts/config --enable CONFIG_SQUASHFS_LZ4
scripts/config --enable CONFIG_SQUASHFS_LZO
scripts/config --enable CONFIG_SQUASHFS_XZ
scripts/config --enable CONFIG_SQUASHFS_ZSTD
scripts/config --disable CONFIG_SQUASHFS_4K_DEVBLK_SIZE
scripts/config --disable CONFIG_SQUASHFS_EMBEDDED
scripts/config --set-val CONFIG_SQUASHFS_FRAGMENT_CACHE_SIZE 3
scripts/config --module CONFIG_VXFS_FS
scripts/config --module CONFIG_MINIX_FS
scripts/config --module CONFIG_OMFS_FS
scripts/config --module CONFIG_HPFS_FS
scripts/config --module CONFIG_QNX4FS_FS
scripts/config --module CONFIG_QNX6FS_FS
scripts/config --disable CONFIG_QNX6FS_DEBUG
scripts/config --module CONFIG_ROMFS_FS
scripts/config --enable CONFIG_ROMFS_BACKED_BY_BLOCK
scripts/config --disable CONFIG_ROMFS_BACKED_BY_MTD
scripts/config --disable CONFIG_ROMFS_BACKED_BY_BOTH
scripts/config --enable CONFIG_ROMFS_ON_BLOCK
scripts/config --enable CONFIG_PSTORE
scripts/config --set-val CONFIG_PSTORE_DEFAULT_KMSG_BYTES 10240
scripts/config --enable CONFIG_PSTORE_COMPRESS
scripts/config --disable CONFIG_PSTORE_CONSOLE
scripts/config --disable CONFIG_PSTORE_PMSG
scripts/config --disable CONFIG_PSTORE_FTRACE
scripts/config --module CONFIG_PSTORE_RAM
scripts/config --module CONFIG_PSTORE_ZONE
scripts/config --module CONFIG_PSTORE_BLK
scripts/config --set-val CONFIG_PSTORE_BLK_BLKDEV ""
scripts/config --set-val CONFIG_PSTORE_BLK_KMSG_SIZE 64
scripts/config --set-val CONFIG_PSTORE_BLK_MAX_REASON 2
scripts/config --module CONFIG_SYSV_FS
scripts/config --module CONFIG_UFS_FS
scripts/config --disable CONFIG_UFS_FS_WRITE
scripts/config --disable CONFIG_UFS_DEBUG
scripts/config --module CONFIG_EROFS_FS
scripts/config --disable CONFIG_EROFS_FS_DEBUG
scripts/config --enable CONFIG_EROFS_FS_XATTR
scripts/config --enable CONFIG_EROFS_FS_POSIX_ACL
scripts/config --enable CONFIG_EROFS_FS_SECURITY
scripts/config --enable CONFIG_EROFS_FS_BACKED_BY_FILE
scripts/config --enable CONFIG_EROFS_FS_ZIP
scripts/config --enable CONFIG_EROFS_FS_ZIP_LZMA
scripts/config --enable CONFIG_EROFS_FS_ZIP_DEFLATE
scripts/config --enable CONFIG_EROFS_FS_ZIP_ZSTD
scripts/config --disable CONFIG_EROFS_FS_ONDEMAND
scripts/config --enable CONFIG_EROFS_FS_PCPU_KTHREAD
scripts/config --disable CONFIG_EROFS_FS_PCPU_KTHREAD_HIPRI
scripts/config --module CONFIG_VBOXSF_FS
scripts/config --enable CONFIG_NETWORK_FILESYSTEMS
scripts/config --module CONFIG_NFS_FS
scripts/config --module CONFIG_NFS_V2
scripts/config --module CONFIG_NFS_V3
scripts/config --enable CONFIG_NFS_V3_ACL
scripts/config --module CONFIG_NFS_V4
scripts/config --enable CONFIG_NFS_SWAP
scripts/config --enable CONFIG_NFS_V4_1
scripts/config --enable CONFIG_NFS_V4_2
scripts/config --module CONFIG_PNFS_FILE_LAYOUT
scripts/config --module CONFIG_PNFS_BLOCK
scripts/config --module CONFIG_PNFS_FLEXFILE_LAYOUT
scripts/config --set-val CONFIG_NFS_V4_1_IMPLEMENTATION_ID_DOMAIN "kernel.org"
scripts/config --enable CONFIG_NFS_V4_1_MIGRATION
scripts/config --enable CONFIG_NFS_V4_SECURITY_LABEL
scripts/config --enable CONFIG_NFS_FSCACHE
scripts/config --disable CONFIG_NFS_USE_LEGACY_DNS
scripts/config --enable CONFIG_NFS_USE_KERNEL_DNS
scripts/config --enable CONFIG_NFS_DEBUG
scripts/config --enable CONFIG_NFS_DISABLE_UDP_SUPPORT
scripts/config --disable CONFIG_NFS_V4_2_READ_PLUS
scripts/config --module CONFIG_NFSD
scripts/config --disable CONFIG_NFSD_V2
scripts/config --enable CONFIG_NFSD_V3_ACL
scripts/config --enable CONFIG_NFSD_V4
scripts/config --enable CONFIG_NFSD_PNFS
scripts/config --enable CONFIG_NFSD_BLOCKLAYOUT
scripts/config --enable CONFIG_NFSD_SCSILAYOUT
scripts/config --enable CONFIG_NFSD_FLEXFILELAYOUT
scripts/config --enable CONFIG_NFSD_V4_2_INTER_SSC
scripts/config --enable CONFIG_NFSD_V4_SECURITY_LABEL
scripts/config --disable CONFIG_NFSD_LEGACY_CLIENT_TRACKING
scripts/config --module CONFIG_GRACE_PERIOD
scripts/config --module CONFIG_LOCKD
scripts/config --enable CONFIG_LOCKD_V4
scripts/config --module CONFIG_NFS_ACL_SUPPORT
scripts/config --enable CONFIG_NFS_COMMON
scripts/config --disable CONFIG_NFS_LOCALIO
scripts/config --enable CONFIG_NFS_V4_2_SSC_HELPER
scripts/config --module CONFIG_SUNRPC
scripts/config --module CONFIG_SUNRPC_GSS
scripts/config --enable CONFIG_SUNRPC_BACKCHANNEL
scripts/config --enable CONFIG_SUNRPC_SWAP
scripts/config --module CONFIG_RPCSEC_GSS_KRB5
scripts/config --enable CONFIG_RPCSEC_GSS_KRB5_ENCTYPES_AES_SHA1
scripts/config --enable CONFIG_RPCSEC_GSS_KRB5_ENCTYPES_CAMELLIA
scripts/config --enable CONFIG_RPCSEC_GSS_KRB5_ENCTYPES_AES_SHA2
scripts/config --enable CONFIG_SUNRPC_DEBUG
scripts/config --module CONFIG_SUNRPC_XPRT_RDMA
scripts/config --module CONFIG_CEPH_FS
scripts/config --enable CONFIG_CEPH_FSCACHE
scripts/config --enable CONFIG_CEPH_FS_POSIX_ACL
scripts/config --enable CONFIG_CEPH_FS_SECURITY_LABEL
scripts/config --module CONFIG_CIFS
scripts/config --disable CONFIG_CIFS_STATS2
scripts/config --enable CONFIG_CIFS_ALLOW_INSECURE_LEGACY
scripts/config --enable CONFIG_CIFS_UPCALL
scripts/config --enable CONFIG_CIFS_XATTR
scripts/config --enable CONFIG_CIFS_POSIX
scripts/config --enable CONFIG_CIFS_DEBUG
scripts/config --disable CONFIG_CIFS_DEBUG2
scripts/config --disable CONFIG_CIFS_DEBUG_DUMP_KEYS
scripts/config --enable CONFIG_CIFS_DFS_UPCALL
scripts/config --enable CONFIG_CIFS_SWN_UPCALL
scripts/config --disable CONFIG_CIFS_SMB_DIRECT
scripts/config --enable CONFIG_CIFS_FSCACHE
scripts/config --enable CONFIG_CIFS_COMPRESSION
scripts/config --module CONFIG_SMB_SERVER
scripts/config --enable CONFIG_SMB_SERVER_SMBDIRECT
scripts/config --enable CONFIG_SMB_SERVER_CHECK_CAP_NET_ADMIN
scripts/config --enable CONFIG_SMB_SERVER_KERBEROS5
scripts/config --module CONFIG_SMBFS
scripts/config --module CONFIG_CODA_FS
scripts/config --module CONFIG_AFS_FS
scripts/config --disable CONFIG_AFS_DEBUG
scripts/config --enable CONFIG_AFS_FSCACHE
scripts/config --disable CONFIG_AFS_DEBUG_CURSOR
scripts/config --module CONFIG_9P_FS
scripts/config --enable CONFIG_9P_FSCACHE
scripts/config --enable CONFIG_9P_FS_POSIX_ACL
scripts/config --enable CONFIG_9P_FS_SECURITY
scripts/config --enable CONFIG_NLS
scripts/config --set-val CONFIG_NLS_DEFAULT "utf8"
scripts/config --enable CONFIG_NLS_CODEPAGE_437
scripts/config --module CONFIG_NLS_CODEPAGE_737
scripts/config --module CONFIG_NLS_CODEPAGE_775
scripts/config --module CONFIG_NLS_CODEPAGE_850
scripts/config --module CONFIG_NLS_CODEPAGE_852
scripts/config --module CONFIG_NLS_CODEPAGE_855
scripts/config --module CONFIG_NLS_CODEPAGE_857
scripts/config --module CONFIG_NLS_CODEPAGE_860
scripts/config --module CONFIG_NLS_CODEPAGE_861
scripts/config --module CONFIG_NLS_CODEPAGE_862
scripts/config --module CONFIG_NLS_CODEPAGE_863
scripts/config --module CONFIG_NLS_CODEPAGE_864
scripts/config --module CONFIG_NLS_CODEPAGE_865
scripts/config --module CONFIG_NLS_CODEPAGE_866
scripts/config --module CONFIG_NLS_CODEPAGE_869
scripts/config --module CONFIG_NLS_CODEPAGE_936
scripts/config --module CONFIG_NLS_CODEPAGE_950
scripts/config --module CONFIG_NLS_CODEPAGE_932
scripts/config --module CONFIG_NLS_CODEPAGE_949
scripts/config --module CONFIG_NLS_CODEPAGE_874
scripts/config --module CONFIG_NLS_ISO8859_8
scripts/config --module CONFIG_NLS_CODEPAGE_1250
scripts/config --module CONFIG_NLS_CODEPAGE_1251
scripts/config --module CONFIG_NLS_ASCII
scripts/config --module CONFIG_NLS_ISO8859_1
scripts/config --module CONFIG_NLS_ISO8859_2
scripts/config --module CONFIG_NLS_ISO8859_3
scripts/config --module CONFIG_NLS_ISO8859_4
scripts/config --module CONFIG_NLS_ISO8859_5
scripts/config --module CONFIG_NLS_ISO8859_6
scripts/config --module CONFIG_NLS_ISO8859_7
scripts/config --module CONFIG_NLS_ISO8859_9
scripts/config --module CONFIG_NLS_ISO8859_13
scripts/config --module CONFIG_NLS_ISO8859_14
scripts/config --module CONFIG_NLS_ISO8859_15
scripts/config --module CONFIG_NLS_KOI8_R
scripts/config --module CONFIG_NLS_KOI8_U
scripts/config --module CONFIG_NLS_MAC_ROMAN
scripts/config --module CONFIG_NLS_MAC_CELTIC
scripts/config --module CONFIG_NLS_MAC_CENTEURO
scripts/config --module CONFIG_NLS_MAC_CROATIAN
scripts/config --module CONFIG_NLS_MAC_CYRILLIC
scripts/config --module CONFIG_NLS_MAC_GAELIC
scripts/config --module CONFIG_NLS_MAC_GREEK
scripts/config --module CONFIG_NLS_MAC_ICELAND
scripts/config --module CONFIG_NLS_MAC_INUIT
scripts/config --module CONFIG_NLS_MAC_ROMANIAN
scripts/config --module CONFIG_NLS_MAC_TURKISH
scripts/config --module CONFIG_NLS_UTF8
scripts/config --module CONFIG_NLS_UCS2_UTILS
scripts/config --module CONFIG_DLM
scripts/config --disable CONFIG_DLM_DEBUG
scripts/config --enable CONFIG_UNICODE
scripts/config --disable CONFIG_UNICODE_NORMALIZATION_SELFTEST
scripts/config --enable CONFIG_IO_WQ
# end of File systems

#
# Security options
#
scripts/config --enable CONFIG_KEYS
scripts/config --enable CONFIG_KEYS_REQUEST_CACHE
scripts/config --enable CONFIG_PERSISTENT_KEYRINGS
scripts/config --enable CONFIG_TRUSTED_KEYS
scripts/config --enable CONFIG_HAVE_TRUSTED_KEYS
scripts/config --enable CONFIG_TRUSTED_KEYS_TPM
scripts/config --enable CONFIG_ENCRYPTED_KEYS
scripts/config --enable CONFIG_USER_DECRYPTED_DATA
scripts/config --enable CONFIG_KEY_DH_OPERATIONS
scripts/config --enable CONFIG_KEY_NOTIFICATIONS
scripts/config --enable CONFIG_SECURITY_DMESG_RESTRICT
scripts/config --enable CONFIG_PROC_MEM_ALWAYS_FORCE
scripts/config --disable CONFIG_PROC_MEM_FORCE_PTRACE
scripts/config --disable CONFIG_PROC_MEM_NO_FORCE
scripts/config --enable CONFIG_SECURITY
scripts/config --enable CONFIG_SECURITYFS
scripts/config --enable CONFIG_SECURITY_NETWORK
scripts/config --enable CONFIG_SECURITY_INFINIBAND
scripts/config --enable CONFIG_SECURITY_NETWORK_XFRM
scripts/config --enable CONFIG_SECURITY_PATH
scripts/config --enable CONFIG_INTEL_TXT
scripts/config --set-val CONFIG_LSM_MMAP_MIN_ADDR 0
scripts/config --enable CONFIG_HARDENED_USERCOPY
scripts/config --enable CONFIG_FORTIFY_SOURCE
scripts/config --disable CONFIG_STATIC_USERMODEHELPER
scripts/config --enable CONFIG_SECURITY_SELINUX
scripts/config --enable CONFIG_SECURITY_SELINUX_BOOTPARAM
scripts/config --enable CONFIG_SECURITY_SELINUX_DEVELOP
scripts/config --enable CONFIG_SECURITY_SELINUX_AVC_STATS
scripts/config --set-val CONFIG_SECURITY_SELINUX_SIDTAB_HASH_BITS 9
scripts/config --set-val CONFIG_SECURITY_SELINUX_SID2STR_CACHE_SIZE 256
scripts/config --disable CONFIG_SECURITY_SELINUX_DEBUG
scripts/config --enable CONFIG_SECURITY_SMACK
scripts/config --disable CONFIG_SECURITY_SMACK_BRINGUP
scripts/config --enable CONFIG_SECURITY_SMACK_NETFILTER
scripts/config --enable CONFIG_SECURITY_SMACK_APPEND_SIGNALS
scripts/config --enable CONFIG_SECURITY_TOMOYO
scripts/config --set-val CONFIG_SECURITY_TOMOYO_MAX_ACCEPT_ENTRY 2048
scripts/config --set-val CONFIG_SECURITY_TOMOYO_MAX_AUDIT_LOG 1024
scripts/config --disable CONFIG_SECURITY_TOMOYO_OMIT_USERSPACE_LOADER
scripts/config --set-val CONFIG_SECURITY_TOMOYO_POLICY_LOADER "/sbin/tomoyo-init"
scripts/config --set-val CONFIG_SECURITY_TOMOYO_ACTIVATION_TRIGGER "/sbin/init"
scripts/config --disable CONFIG_SECURITY_TOMOYO_INSECURE_BUILTIN_SETTING
scripts/config --enable CONFIG_SECURITY_APPARMOR
scripts/config --disable CONFIG_SECURITY_APPARMOR_DEBUG
scripts/config --enable CONFIG_SECURITY_APPARMOR_INTROSPECT_POLICY
scripts/config --enable CONFIG_SECURITY_APPARMOR_HASH
scripts/config --enable CONFIG_SECURITY_APPARMOR_HASH_DEFAULT
scripts/config --enable CONFIG_SECURITY_APPARMOR_EXPORT_BINARY
scripts/config --enable CONFIG_SECURITY_APPARMOR_PARANOID_LOAD
scripts/config --disable CONFIG_SECURITY_LOADPIN
scripts/config --enable CONFIG_SECURITY_YAMA
scripts/config --enable CONFIG_SECURITY_SAFESETID
scripts/config --enable CONFIG_SECURITY_LOCKDOWN_LSM
scripts/config --enable CONFIG_SECURITY_LOCKDOWN_LSM_EARLY
scripts/config --enable CONFIG_LOCK_DOWN_KERNEL_FORCE_NONE
scripts/config --disable CONFIG_LOCK_DOWN_KERNEL_FORCE_INTEGRITY
scripts/config --disable CONFIG_LOCK_DOWN_KERNEL_FORCE_CONFIDENTIALITY
scripts/config --enable CONFIG_SECURITY_LANDLOCK
scripts/config --disable CONFIG_SECURITY_IPE
scripts/config --enable CONFIG_INTEGRITY
scripts/config --enable CONFIG_INTEGRITY_SIGNATURE
scripts/config --enable CONFIG_INTEGRITY_ASYMMETRIC_KEYS
scripts/config --enable CONFIG_INTEGRITY_TRUSTED_KEYRING
scripts/config --enable CONFIG_INTEGRITY_PLATFORM_KEYRING
scripts/config --enable CONFIG_INTEGRITY_MACHINE_KEYRING
scripts/config --disable CONFIG_INTEGRITY_CA_MACHINE_KEYRING
scripts/config --enable CONFIG_LOAD_UEFI_KEYS
scripts/config --enable CONFIG_INTEGRITY_AUDIT
scripts/config --enable CONFIG_IMA
scripts/config --set-val CONFIG_IMA_MEASURE_PCR_IDX 10
scripts/config --enable CONFIG_IMA_LSM_RULES
scripts/config --enable CONFIG_IMA_NG_TEMPLATE
scripts/config --disable CONFIG_IMA_SIG_TEMPLATE
scripts/config --set-val CONFIG_IMA_DEFAULT_TEMPLATE "ima-ng"
scripts/config --disable CONFIG_IMA_DEFAULT_HASH_SHA1
scripts/config --enable CONFIG_IMA_DEFAULT_HASH_SHA256
scripts/config --disable CONFIG_IMA_DEFAULT_HASH_SHA512
scripts/config --set-val CONFIG_IMA_DEFAULT_HASH "sha256"
scripts/config --disable CONFIG_IMA_WRITE_POLICY
scripts/config --disable CONFIG_IMA_READ_POLICY
scripts/config --enable CONFIG_IMA_APPRAISE
scripts/config --enable CONFIG_IMA_ARCH_POLICY
scripts/config --disable CONFIG_IMA_APPRAISE_BUILD_POLICY
scripts/config --enable CONFIG_IMA_APPRAISE_BOOTPARAM
scripts/config --enable CONFIG_IMA_APPRAISE_MODSIG
scripts/config --disable CONFIG_IMA_KEYRINGS_PERMIT_SIGNED_BY_BUILTIN_OR_SECONDARY
scripts/config --disable CONFIG_IMA_BLACKLIST_KEYRING
scripts/config --disable CONFIG_IMA_LOAD_X509
scripts/config --enable CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS
scripts/config --enable CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS
scripts/config --enable CONFIG_IMA_SECURE_AND_OR_TRUSTED_BOOT
scripts/config --disable CONFIG_IMA_DISABLE_HTABLE
scripts/config --enable CONFIG_EVM
scripts/config --enable CONFIG_EVM_ATTR_FSUUID
scripts/config --enable CONFIG_EVM_EXTRA_SMACK_XATTRS
scripts/config --enable CONFIG_EVM_ADD_XATTRS
scripts/config --disable CONFIG_EVM_LOAD_X509
scripts/config --disable CONFIG_DEFAULT_SECURITY_SELINUX
scripts/config --disable CONFIG_DEFAULT_SECURITY_SMACK
scripts/config --disable CONFIG_DEFAULT_SECURITY_TOMOYO
scripts/config --enable CONFIG_DEFAULT_SECURITY_APPARMOR
scripts/config --disable CONFIG_DEFAULT_SECURITY_DAC
scripts/config --set-val CONFIG_LSM "landlock,lockdown,yama,integrity,apparmor"

#
# Kernel hardening options
#

#
# Memory initialization
#
scripts/config --enable CONFIG_CC_HAS_AUTO_VAR_INIT_PATTERN
scripts/config --enable CONFIG_CC_HAS_AUTO_VAR_INIT_ZERO_BARE
scripts/config --enable CONFIG_CC_HAS_AUTO_VAR_INIT_ZERO
scripts/config --enable CONFIG_INIT_STACK_NONE
scripts/config --disable CONFIG_INIT_STACK_ALL_PATTERN
scripts/config --disable CONFIG_INIT_STACK_ALL_ZERO
scripts/config --enable CONFIG_INIT_ON_ALLOC_DEFAULT_ON
scripts/config --disable CONFIG_INIT_ON_FREE_DEFAULT_ON
scripts/config --enable CONFIG_CC_HAS_ZERO_CALL_USED_REGS
scripts/config --disable CONFIG_ZERO_CALL_USED_REGS
# end of Memory initialization

#
# Hardening of kernel data structures
#
scripts/config --disable CONFIG_LIST_HARDENED
scripts/config --disable CONFIG_BUG_ON_DATA_CORRUPTION
# end of Hardening of kernel data structures

scripts/config --enable CONFIG_CC_HAS_RANDSTRUCT
scripts/config --enable CONFIG_RANDSTRUCT_NONE
scripts/config --disable CONFIG_RANDSTRUCT_FULL
# end of Kernel hardening options
# end of Security options

scripts/config --module CONFIG_XOR_BLOCKS
scripts/config --module CONFIG_ASYNC_CORE
scripts/config --module CONFIG_ASYNC_MEMCPY
scripts/config --module CONFIG_ASYNC_XOR
scripts/config --module CONFIG_ASYNC_PQ
scripts/config --module CONFIG_ASYNC_RAID6_RECOV
scripts/config --enable CONFIG_CRYPTO

#
# Crypto core or helper
#
scripts/config --enable CONFIG_CRYPTO_ALGAPI
scripts/config --enable CONFIG_CRYPTO_ALGAPI2
scripts/config --enable CONFIG_CRYPTO_AEAD
scripts/config --enable CONFIG_CRYPTO_AEAD2
scripts/config --enable CONFIG_CRYPTO_SIG
scripts/config --enable CONFIG_CRYPTO_SIG2
scripts/config --enable CONFIG_CRYPTO_SKCIPHER
scripts/config --enable CONFIG_CRYPTO_SKCIPHER2
scripts/config --enable CONFIG_CRYPTO_HASH
scripts/config --enable CONFIG_CRYPTO_HASH2
scripts/config --enable CONFIG_CRYPTO_RNG
scripts/config --enable CONFIG_CRYPTO_RNG2
scripts/config --enable CONFIG_CRYPTO_RNG_DEFAULT
scripts/config --enable CONFIG_CRYPTO_AKCIPHER2
scripts/config --enable CONFIG_CRYPTO_AKCIPHER
scripts/config --enable CONFIG_CRYPTO_KPP2
scripts/config --enable CONFIG_CRYPTO_KPP
scripts/config --enable CONFIG_CRYPTO_ACOMP2
scripts/config --enable CONFIG_CRYPTO_MANAGER
scripts/config --enable CONFIG_CRYPTO_MANAGER2
scripts/config --module CONFIG_CRYPTO_USER
scripts/config --enable CONFIG_CRYPTO_MANAGER_DISABLE_TESTS
scripts/config --enable CONFIG_CRYPTO_NULL
scripts/config --enable CONFIG_CRYPTO_NULL2
scripts/config --module CONFIG_CRYPTO_PCRYPT
scripts/config --module CONFIG_CRYPTO_CRYPTD
scripts/config --module CONFIG_CRYPTO_AUTHENC
scripts/config --module CONFIG_CRYPTO_TEST
scripts/config --module CONFIG_CRYPTO_SIMD
scripts/config --module CONFIG_CRYPTO_ENGINE
# end of Crypto core or helper

#
# Public-key cryptography
#
scripts/config --enable CONFIG_CRYPTO_RSA
scripts/config --enable CONFIG_CRYPTO_DH
scripts/config --enable CONFIG_CRYPTO_DH_RFC7919_GROUPS
scripts/config --enable CONFIG_CRYPTO_ECC
scripts/config --enable CONFIG_CRYPTO_ECDH
scripts/config --module CONFIG_CRYPTO_ECDSA
scripts/config --module CONFIG_CRYPTO_ECRDSA
scripts/config --module CONFIG_CRYPTO_CURVE25519
# end of Public-key cryptography

#
# Block ciphers
#
scripts/config --enable CONFIG_CRYPTO_AES
scripts/config --module CONFIG_CRYPTO_AES_TI
scripts/config --module CONFIG_CRYPTO_ARIA
scripts/config --module CONFIG_CRYPTO_BLOWFISH
scripts/config --module CONFIG_CRYPTO_BLOWFISH_COMMON
scripts/config --module CONFIG_CRYPTO_CAMELLIA
scripts/config --module CONFIG_CRYPTO_CAST_COMMON
scripts/config --module CONFIG_CRYPTO_CAST5
scripts/config --module CONFIG_CRYPTO_CAST6
scripts/config --module CONFIG_CRYPTO_DES
scripts/config --module CONFIG_CRYPTO_FCRYPT
scripts/config --module CONFIG_CRYPTO_SERPENT
scripts/config --module CONFIG_CRYPTO_SM4
scripts/config --module CONFIG_CRYPTO_SM4_GENERIC
scripts/config --module CONFIG_CRYPTO_TWOFISH
scripts/config --module CONFIG_CRYPTO_TWOFISH_COMMON
# end of Block ciphers

#
# Length-preserving ciphers and modes
#
scripts/config --module CONFIG_CRYPTO_ADIANTUM
scripts/config --module CONFIG_CRYPTO_CHACHA20
scripts/config --enable CONFIG_CRYPTO_CBC
scripts/config --enable CONFIG_CRYPTO_CTR
scripts/config --enable CONFIG_CRYPTO_CTS
scripts/config --enable CONFIG_CRYPTO_ECB
scripts/config --module CONFIG_CRYPTO_HCTR2
scripts/config --module CONFIG_CRYPTO_KEYWRAP
scripts/config --module CONFIG_CRYPTO_LRW
scripts/config --module CONFIG_CRYPTO_PCBC
scripts/config --module CONFIG_CRYPTO_XCTR
scripts/config --enable CONFIG_CRYPTO_XTS
scripts/config --module CONFIG_CRYPTO_NHPOLY1305
# end of Length-preserving ciphers and modes

#
# AEAD (authenticated encryption with associated data) ciphers
#
scripts/config --module CONFIG_CRYPTO_AEGIS128
scripts/config --module CONFIG_CRYPTO_CHACHA20POLY1305
scripts/config --module CONFIG_CRYPTO_CCM
scripts/config --enable CONFIG_CRYPTO_GCM
scripts/config --enable CONFIG_CRYPTO_GENIV
scripts/config --enable CONFIG_CRYPTO_SEQIV
scripts/config --module CONFIG_CRYPTO_ECHAINIV
scripts/config --module CONFIG_CRYPTO_ESSIV
# end of AEAD (authenticated encryption with associated data) ciphers

#
# Hashes, digests, and MACs
#
scripts/config --module CONFIG_CRYPTO_BLAKE2B
scripts/config --module CONFIG_CRYPTO_CMAC
scripts/config --enable CONFIG_CRYPTO_GHASH
scripts/config --enable CONFIG_CRYPTO_HMAC
scripts/config --module CONFIG_CRYPTO_MD4
scripts/config --enable CONFIG_CRYPTO_MD5
scripts/config --module CONFIG_CRYPTO_MICHAEL_MIC
scripts/config --module CONFIG_CRYPTO_POLYVAL
scripts/config --module CONFIG_CRYPTO_POLY1305
scripts/config --module CONFIG_CRYPTO_RMD160
scripts/config --enable CONFIG_CRYPTO_SHA1
scripts/config --enable CONFIG_CRYPTO_SHA256
scripts/config --enable CONFIG_CRYPTO_SHA512
scripts/config --enable CONFIG_CRYPTO_SHA3
scripts/config --module CONFIG_CRYPTO_SM3
scripts/config --module CONFIG_CRYPTO_SM3_GENERIC
scripts/config --module CONFIG_CRYPTO_STREEBOG
scripts/config --module CONFIG_CRYPTO_VMAC
scripts/config --module CONFIG_CRYPTO_WP512
scripts/config --module CONFIG_CRYPTO_XCBC
scripts/config --module CONFIG_CRYPTO_XXHASH
# end of Hashes, digests, and MACs

#
# CRCs (cyclic redundancy checks)
#
scripts/config --enable CONFIG_CRYPTO_CRC32C
scripts/config --module CONFIG_CRYPTO_CRC32
scripts/config --enable CONFIG_CRYPTO_CRCT10DIF
scripts/config --enable CONFIG_CRYPTO_CRC64_ROCKSOFT
# end of CRCs (cyclic redundancy checks)

#
# Compression
#
scripts/config --enable CONFIG_CRYPTO_DEFLATE
scripts/config --enable CONFIG_CRYPTO_LZO
scripts/config --module CONFIG_CRYPTO_842
scripts/config --enable CONFIG_CRYPTO_LZ4
scripts/config --module CONFIG_CRYPTO_LZ4HC
scripts/config --enable CONFIG_CRYPTO_ZSTD
# end of Compression

#
# Random number generation
#
scripts/config --module CONFIG_CRYPTO_ANSI_CPRNG
scripts/config --enable CONFIG_CRYPTO_DRBG_MENU
scripts/config --enable CONFIG_CRYPTO_DRBG_HMAC
scripts/config --enable CONFIG_CRYPTO_DRBG_HASH
scripts/config --enable CONFIG_CRYPTO_DRBG_CTR
scripts/config --enable CONFIG_CRYPTO_DRBG
scripts/config --enable CONFIG_CRYPTO_JITTERENTROPY
scripts/config --set-val CONFIG_CRYPTO_JITTERENTROPY_MEMORY_BLOCKS 64
scripts/config --set-val CONFIG_CRYPTO_JITTERENTROPY_MEMORY_BLOCKSIZE 32
scripts/config --set-val CONFIG_CRYPTO_JITTERENTROPY_OSR 1
scripts/config --enable CONFIG_CRYPTO_KDF800108_CTR
# end of Random number generation

#
# Userspace interface
#
scripts/config --module CONFIG_CRYPTO_USER_API
scripts/config --module CONFIG_CRYPTO_USER_API_HASH
scripts/config --module CONFIG_CRYPTO_USER_API_SKCIPHER
scripts/config --module CONFIG_CRYPTO_USER_API_RNG
scripts/config --disable CONFIG_CRYPTO_USER_API_RNG_CAVP
scripts/config --module CONFIG_CRYPTO_USER_API_AEAD
scripts/config --disable CONFIG_CRYPTO_USER_API_ENABLE_OBSOLETE
# end of Userspace interface

scripts/config --enable CONFIG_CRYPTO_HASH_INFO

#
# Accelerated Cryptographic Algorithms for CPU (x86)
#
scripts/config --module CONFIG_CRYPTO_CURVE25519_X86
scripts/config --module CONFIG_CRYPTO_AES_NI_INTEL
scripts/config --module CONFIG_CRYPTO_BLOWFISH_X86_64
scripts/config --module CONFIG_CRYPTO_CAMELLIA_X86_64
scripts/config --module CONFIG_CRYPTO_CAMELLIA_AESNI_AVX_X86_64
scripts/config --module CONFIG_CRYPTO_CAMELLIA_AESNI_AVX2_X86_64
scripts/config --module CONFIG_CRYPTO_CAST5_AVX_X86_64
scripts/config --module CONFIG_CRYPTO_CAST6_AVX_X86_64
scripts/config --module CONFIG_CRYPTO_DES3_EDE_X86_64
scripts/config --module CONFIG_CRYPTO_SERPENT_SSE2_X86_64
scripts/config --module CONFIG_CRYPTO_SERPENT_AVX_X86_64
scripts/config --module CONFIG_CRYPTO_SERPENT_AVX2_X86_64
scripts/config --module CONFIG_CRYPTO_SM4_AESNI_AVX_X86_64
scripts/config --module CONFIG_CRYPTO_SM4_AESNI_AVX2_X86_64
scripts/config --module CONFIG_CRYPTO_TWOFISH_X86_64
scripts/config --module CONFIG_CRYPTO_TWOFISH_X86_64_3WAY
scripts/config --module CONFIG_CRYPTO_TWOFISH_AVX_X86_64
scripts/config --module CONFIG_CRYPTO_ARIA_AESNI_AVX_X86_64
scripts/config --module CONFIG_CRYPTO_ARIA_AESNI_AVX2_X86_64
scripts/config --module CONFIG_CRYPTO_ARIA_GFNI_AVX512_X86_64
scripts/config --module CONFIG_CRYPTO_CHACHA20_X86_64
scripts/config --module CONFIG_CRYPTO_AEGIS128_AESNI_SSE2
scripts/config --module CONFIG_CRYPTO_NHPOLY1305_SSE2
scripts/config --module CONFIG_CRYPTO_NHPOLY1305_AVX2
scripts/config --enable CONFIG_CRYPTO_BLAKE2S_X86
scripts/config --module CONFIG_CRYPTO_POLYVAL_CLMUL_NI
scripts/config --module CONFIG_CRYPTO_POLY1305_X86_64
scripts/config --module CONFIG_CRYPTO_SHA1_SSSE3
scripts/config --module CONFIG_CRYPTO_SHA256_SSSE3
scripts/config --enable CONFIG_CRYPTO_SHA512_SSSE3
scripts/config --module CONFIG_CRYPTO_SM3_AVX_X86_64
scripts/config --module CONFIG_CRYPTO_GHASH_CLMUL_NI_INTEL
scripts/config --enable CONFIG_CRYPTO_CRC32C_INTEL
scripts/config --module CONFIG_CRYPTO_CRC32_PCLMUL
scripts/config --module CONFIG_CRYPTO_CRCT10DIF_PCLMUL
# end of Accelerated Cryptographic Algorithms for CPU (x86)

scripts/config --enable CONFIG_CRYPTO_HW
scripts/config --enable CONFIG_CRYPTO_DEV_PADLOCK
scripts/config --module CONFIG_CRYPTO_DEV_PADLOCK_AES
scripts/config --module CONFIG_CRYPTO_DEV_PADLOCK_SHA
scripts/config --module CONFIG_CRYPTO_DEV_ATMEL_I2C
scripts/config --module CONFIG_CRYPTO_DEV_ATMEL_ECC
scripts/config --module CONFIG_CRYPTO_DEV_ATMEL_SHA204A
scripts/config --enable CONFIG_CRYPTO_DEV_CCP
scripts/config --module CONFIG_CRYPTO_DEV_CCP_DD
scripts/config --enable CONFIG_CRYPTO_DEV_SP_CCP
scripts/config --module CONFIG_CRYPTO_DEV_CCP_CRYPTO
scripts/config --enable CONFIG_CRYPTO_DEV_SP_PSP
scripts/config --disable CONFIG_CRYPTO_DEV_CCP_DEBUGFS
scripts/config --module CONFIG_CRYPTO_DEV_NITROX
scripts/config --module CONFIG_CRYPTO_DEV_NITROX_CNN55XX
scripts/config --module CONFIG_CRYPTO_DEV_QAT
scripts/config --module CONFIG_CRYPTO_DEV_QAT_DH895xCC
scripts/config --module CONFIG_CRYPTO_DEV_QAT_C3XXX
scripts/config --module CONFIG_CRYPTO_DEV_QAT_C62X
scripts/config --module CONFIG_CRYPTO_DEV_QAT_4XXX
scripts/config --module CONFIG_CRYPTO_DEV_QAT_420XX
scripts/config --module CONFIG_CRYPTO_DEV_QAT_DH895xCCVF
scripts/config --module CONFIG_CRYPTO_DEV_QAT_C3XXXVF
scripts/config --module CONFIG_CRYPTO_DEV_QAT_C62XVF
scripts/config --disable CONFIG_CRYPTO_DEV_QAT_ERROR_INJECTION
scripts/config --module CONFIG_CRYPTO_DEV_IAA_CRYPTO
scripts/config --disable CONFIG_CRYPTO_DEV_IAA_CRYPTO_STATS
scripts/config --module CONFIG_CRYPTO_DEV_CHELSIO
scripts/config --module CONFIG_CRYPTO_DEV_VIRTIO
scripts/config --module CONFIG_CRYPTO_DEV_SAFEXCEL
scripts/config --module CONFIG_CRYPTO_DEV_AMLOGIC_GXL
scripts/config --disable CONFIG_CRYPTO_DEV_AMLOGIC_GXL_DEBUG
scripts/config --enable CONFIG_ASYMMETRIC_KEY_TYPE
scripts/config --enable CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE
scripts/config --enable CONFIG_X509_CERTIFICATE_PARSER
scripts/config --module CONFIG_PKCS8_PRIVATE_KEY_PARSER
scripts/config --enable CONFIG_PKCS7_MESSAGE_PARSER
scripts/config --module CONFIG_PKCS7_TEST_KEY
scripts/config --enable CONFIG_SIGNED_PE_FILE_VERIFICATION
scripts/config --disable CONFIG_FIPS_SIGNATURE_SELFTEST

#
# Certificates for signature checking
#
scripts/config --set-val CONFIG_MODULE_SIG_KEY "certs/signing_key.pem"
scripts/config --enable CONFIG_MODULE_SIG_KEY_TYPE_RSA
scripts/config --disable CONFIG_MODULE_SIG_KEY_TYPE_ECDSA
scripts/config --enable CONFIG_SYSTEM_TRUSTED_KEYRING
scripts/config --set-val CONFIG_SYSTEM_TRUSTED_KEYS ""
scripts/config --enable CONFIG_SYSTEM_EXTRA_CERTIFICATE
scripts/config --set-val CONFIG_SYSTEM_EXTRA_CERTIFICATE_SIZE 4096
scripts/config --enable CONFIG_SECONDARY_TRUSTED_KEYRING
scripts/config --disable CONFIG_SECONDARY_TRUSTED_KEYRING_SIGNED_BY_BUILTIN
scripts/config --enable CONFIG_SYSTEM_BLACKLIST_KEYRING
scripts/config --set-val CONFIG_SYSTEM_BLACKLIST_HASH_LIST ""
scripts/config --enable CONFIG_SYSTEM_REVOCATION_LIST
scripts/config --set-val CONFIG_SYSTEM_REVOCATION_KEYS ""
scripts/config --disable CONFIG_SYSTEM_BLACKLIST_AUTH_UPDATE
# end of Certificates for signature checking

scripts/config --enable CONFIG_BINARY_PRINTF

#
# Library routines
#
scripts/config --module CONFIG_RAID6_PQ
scripts/config --enable CONFIG_RAID6_PQ_BENCHMARK
scripts/config --enable CONFIG_LINEAR_RANGES
scripts/config --enable CONFIG_PACKING
scripts/config --enable CONFIG_BITREVERSE
scripts/config --enable CONFIG_GENERIC_STRNCPY_FROM_USER
scripts/config --enable CONFIG_GENERIC_STRNLEN_USER
scripts/config --enable CONFIG_GENERIC_NET_UTILS
scripts/config --module CONFIG_CORDIC
scripts/config --disable CONFIG_PRIME_NUMBERS
scripts/config --enable CONFIG_RATIONAL
scripts/config --enable CONFIG_GENERIC_IOMAP
scripts/config --enable CONFIG_ARCH_USE_CMPXCHG_LOCKREF
scripts/config --enable CONFIG_ARCH_HAS_FAST_MULTIPLIER
scripts/config --enable CONFIG_ARCH_USE_SYM_ANNOTATIONS

#
# Crypto library routines
#
scripts/config --enable CONFIG_CRYPTO_LIB_UTILS
scripts/config --enable CONFIG_CRYPTO_LIB_AES
scripts/config --module CONFIG_CRYPTO_LIB_ARC4
scripts/config --enable CONFIG_CRYPTO_LIB_GF128MUL
scripts/config --enable CONFIG_CRYPTO_ARCH_HAVE_LIB_BLAKE2S
scripts/config --enable CONFIG_CRYPTO_LIB_BLAKE2S_GENERIC
scripts/config --enable CONFIG_CRYPTO_ARCH_HAVE_LIB_CHACHA
scripts/config --module CONFIG_CRYPTO_LIB_CHACHA_GENERIC
scripts/config --module CONFIG_CRYPTO_LIB_CHACHA_INTERNAL
scripts/config --module CONFIG_CRYPTO_LIB_CHACHA
scripts/config --enable CONFIG_CRYPTO_ARCH_HAVE_LIB_CURVE25519
scripts/config --module CONFIG_CRYPTO_LIB_CURVE25519_GENERIC
scripts/config --module CONFIG_CRYPTO_LIB_CURVE25519_INTERNAL
scripts/config --module CONFIG_CRYPTO_LIB_CURVE25519
scripts/config --module CONFIG_CRYPTO_LIB_DES
scripts/config --set-val CONFIG_CRYPTO_LIB_POLY1305_RSIZE 11
scripts/config --enable CONFIG_CRYPTO_ARCH_HAVE_LIB_POLY1305
scripts/config --module CONFIG_CRYPTO_LIB_POLY1305_GENERIC
scripts/config --module CONFIG_CRYPTO_LIB_POLY1305_INTERNAL
scripts/config --module CONFIG_CRYPTO_LIB_POLY1305
scripts/config --module CONFIG_CRYPTO_LIB_CHACHA20POLY1305
scripts/config --enable CONFIG_CRYPTO_LIB_SHA1
scripts/config --enable CONFIG_CRYPTO_LIB_SHA256
# end of Crypto library routines

scripts/config --enable CONFIG_CRC_CCITT
scripts/config --enable CONFIG_CRC16
scripts/config --enable CONFIG_CRC_T10DIF
scripts/config --enable CONFIG_CRC64_ROCKSOFT
scripts/config --module CONFIG_CRC_ITU_T
scripts/config --enable CONFIG_CRC32
scripts/config --disable CONFIG_CRC32_SELFTEST
scripts/config --enable CONFIG_CRC32_SLICEBY8
scripts/config --disable CONFIG_CRC32_SLICEBY4
scripts/config --disable CONFIG_CRC32_SARWATE
scripts/config --disable CONFIG_CRC32_BIT
scripts/config --enable CONFIG_CRC64
scripts/config --module CONFIG_CRC4
scripts/config --module CONFIG_CRC7
scripts/config --module CONFIG_LIBCRC32C
scripts/config --module CONFIG_CRC8
scripts/config --enable CONFIG_XXHASH
scripts/config --disable CONFIG_RANDOM32_SELFTEST
scripts/config --module CONFIG_842_COMPRESS
scripts/config --module CONFIG_842_DECOMPRESS
scripts/config --enable CONFIG_ZLIB_INFLATE
scripts/config --enable CONFIG_ZLIB_DEFLATE
scripts/config --enable CONFIG_LZO_COMPRESS
scripts/config --enable CONFIG_LZO_DECOMPRESS
scripts/config --enable CONFIG_LZ4_COMPRESS
scripts/config --module CONFIG_LZ4HC_COMPRESS
scripts/config --enable CONFIG_LZ4_DECOMPRESS
scripts/config --enable CONFIG_ZSTD_COMMON
scripts/config --enable CONFIG_ZSTD_COMPRESS
scripts/config --enable CONFIG_ZSTD_DECOMPRESS
scripts/config --enable CONFIG_XZ_DEC
scripts/config --enable CONFIG_XZ_DEC_X86
scripts/config --enable CONFIG_XZ_DEC_POWERPC
scripts/config --enable CONFIG_XZ_DEC_ARM
scripts/config --enable CONFIG_XZ_DEC_ARMTHUMB
scripts/config --enable CONFIG_XZ_DEC_ARM64
scripts/config --enable CONFIG_XZ_DEC_SPARC
scripts/config --enable CONFIG_XZ_DEC_RISCV
scripts/config --enable CONFIG_XZ_DEC_MICROLZMA
scripts/config --enable CONFIG_XZ_DEC_BCJ
scripts/config --module CONFIG_XZ_DEC_TEST
scripts/config --enable CONFIG_DECOMPRESS_LZ4
scripts/config --enable CONFIG_DECOMPRESS_ZSTD
scripts/config --enable CONFIG_GENERIC_ALLOCATOR
scripts/config --module CONFIG_REED_SOLOMON
scripts/config --enable CONFIG_REED_SOLOMON_ENC8
scripts/config --enable CONFIG_REED_SOLOMON_DEC8
scripts/config --enable CONFIG_REED_SOLOMON_DEC16
scripts/config --module CONFIG_BCH
scripts/config --enable CONFIG_TEXTSEARCH
scripts/config --module CONFIG_TEXTSEARCH_KMP
scripts/config --module CONFIG_TEXTSEARCH_BM
scripts/config --module CONFIG_TEXTSEARCH_FSM
scripts/config --enable CONFIG_BTREE
scripts/config --enable CONFIG_INTERVAL_TREE
scripts/config --enable CONFIG_INTERVAL_TREE_SPAN_ITER
scripts/config --enable CONFIG_XARRAY_MULTI
scripts/config --enable CONFIG_ASSOCIATIVE_ARRAY
scripts/config --enable CONFIG_CLOSURES
scripts/config --enable CONFIG_HAS_IOMEM
scripts/config --enable CONFIG_HAS_IOPORT
scripts/config --enable CONFIG_HAS_IOPORT_MAP
scripts/config --enable CONFIG_HAS_DMA
scripts/config --enable CONFIG_DMA_OPS_HELPERS
scripts/config --enable CONFIG_NEED_SG_DMA_FLAGS
scripts/config --enable CONFIG_NEED_SG_DMA_LENGTH
scripts/config --enable CONFIG_NEED_DMA_MAP_STATE
scripts/config --enable CONFIG_ARCH_DMA_ADDR_T_64BIT
scripts/config --enable CONFIG_SWIOTLB
scripts/config --enable CONFIG_SWIOTLB_DYNAMIC
scripts/config --enable CONFIG_DMA_NEED_SYNC
scripts/config --disable CONFIG_DMA_API_DEBUG
scripts/config --disable CONFIG_DMA_MAP_BENCHMARK
scripts/config --enable CONFIG_SGL_ALLOC
scripts/config --enable CONFIG_IOMMU_HELPER
scripts/config --enable CONFIG_CHECK_SIGNATURE
scripts/config --enable CONFIG_CPU_RMAP
scripts/config --enable CONFIG_DQL
scripts/config --enable CONFIG_GLOB
scripts/config --disable CONFIG_GLOB_SELFTEST
scripts/config --enable CONFIG_NLATTR
scripts/config --module CONFIG_LRU_CACHE
scripts/config --enable CONFIG_CLZ_TAB
scripts/config --enable CONFIG_IRQ_POLL
scripts/config --enable CONFIG_MPILIB
scripts/config --enable CONFIG_SIGNATURE
scripts/config --enable CONFIG_DIMLIB
scripts/config --enable CONFIG_OID_REGISTRY
scripts/config --enable CONFIG_UCS2_STRING
scripts/config --enable CONFIG_HAVE_GENERIC_VDSO
scripts/config --enable CONFIG_GENERIC_GETTIMEOFDAY
scripts/config --enable CONFIG_GENERIC_VDSO_TIME_NS
scripts/config --enable CONFIG_GENERIC_VDSO_OVERFLOW_PROTECT
scripts/config --enable CONFIG_VDSO_GETRANDOM
scripts/config --enable CONFIG_FONT_SUPPORT
scripts/config --enable CONFIG_FONT_8x16
scripts/config --enable CONFIG_FONT_AUTOSELECT
scripts/config --enable CONFIG_SG_POOL
scripts/config --enable CONFIG_ARCH_HAS_PMEM_API
scripts/config --enable CONFIG_MEMREGION
scripts/config --enable CONFIG_ARCH_HAS_CPU_CACHE_INVALIDATE_MEMREGION
scripts/config --enable CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE
scripts/config --enable CONFIG_ARCH_HAS_COPY_MC
scripts/config --enable CONFIG_ARCH_STACKWALK
scripts/config --enable CONFIG_STACKDEPOT
scripts/config --set-val CONFIG_STACKDEPOT_MAX_FRAMES 64
scripts/config --enable CONFIG_SBITMAP
scripts/config --module CONFIG_PARMAN
scripts/config --module CONFIG_OBJAGG
scripts/config --disable CONFIG_LWQ_TEST
# end of Library routines

scripts/config --enable CONFIG_PLDMFW
scripts/config --enable CONFIG_ASN1_ENCODER
scripts/config --enable CONFIG_FIRMWARE_TABLE

#
# Kernel hacking
#

#
# printk and dmesg options
#
scripts/config --enable CONFIG_PRINTK_TIME
scripts/config --disable CONFIG_PRINTK_CALLER
scripts/config --disable CONFIG_STACKTRACE_BUILD_ID
scripts/config --set-val CONFIG_CONSOLE_LOGLEVEL_DEFAULT 7
scripts/config --set-val CONFIG_CONSOLE_LOGLEVEL_QUIET 3
scripts/config --set-val CONFIG_MESSAGE_LOGLEVEL_DEFAULT 4
scripts/config --enable CONFIG_BOOT_PRINTK_DELAY
scripts/config --enable CONFIG_DYNAMIC_DEBUG
scripts/config --enable CONFIG_DYNAMIC_DEBUG_CORE
scripts/config --disable CONFIG_SYMBOLIC_ERRNAME
# end of printk and dmesg options

scripts/config --enable CONFIG_DEBUG_KERNEL
scripts/config --enable CONFIG_DEBUG_MISC

#
# Compile-time checks and compiler options
#
scripts/config --enable CONFIG_DEBUG_INFO
scripts/config --enable CONFIG_AS_HAS_NON_CONST_ULEB128
scripts/config --disable CONFIG_DEBUG_INFO_NONE
scripts/config --disable CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT
scripts/config --disable CONFIG_DEBUG_INFO_DWARF4
scripts/config --enable CONFIG_DEBUG_INFO_DWARF5
scripts/config --disable CONFIG_DEBUG_INFO_REDUCED
scripts/config --enable CONFIG_DEBUG_INFO_COMPRESSED_NONE
scripts/config --disable CONFIG_DEBUG_INFO_COMPRESSED_ZLIB
scripts/config --disable CONFIG_DEBUG_INFO_COMPRESSED_ZSTD
scripts/config --disable CONFIG_DEBUG_INFO_SPLIT
scripts/config --enable CONFIG_DEBUG_INFO_BTF
scripts/config --enable CONFIG_PAHOLE_HAS_SPLIT_BTF
scripts/config --enable CONFIG_PAHOLE_HAS_BTF_TAG
scripts/config --enable CONFIG_PAHOLE_HAS_LANG_EXCLUDE
scripts/config --enable CONFIG_DEBUG_INFO_BTF_MODULES
scripts/config --disable CONFIG_MODULE_ALLOW_BTF_MISMATCH
scripts/config --enable CONFIG_GDB_SCRIPTS
scripts/config --set-val CONFIG_FRAME_WARN 4096
scripts/config --disable CONFIG_STRIP_ASM_SYMS
scripts/config --disable CONFIG_HEADERS_INSTALL
scripts/config --enable CONFIG_SECTION_MISMATCH_WARN_ONLY
scripts/config --enable CONFIG_OBJTOOL
scripts/config --disable CONFIG_DEBUG_FORCE_WEAK_PER_CPU
# end of Compile-time checks and compiler options

#
# Generic Kernel Debugging Instruments
#
scripts/config --enable CONFIG_MAGIC_SYSRQ
scripts/config --set-val CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE 0x01b6
scripts/config --enable CONFIG_MAGIC_SYSRQ_SERIAL
scripts/config --set-val CONFIG_MAGIC_SYSRQ_SERIAL_SEQUENCE ""
scripts/config --enable CONFIG_DEBUG_FS
scripts/config --enable CONFIG_DEBUG_FS_ALLOW_ALL
scripts/config --disable CONFIG_DEBUG_FS_DISALLOW_MOUNT
scripts/config --disable CONFIG_DEBUG_FS_ALLOW_NONE
scripts/config --enable CONFIG_HAVE_ARCH_KGDB
scripts/config --disable CONFIG_KGDB
scripts/config --enable CONFIG_ARCH_HAS_UBSAN
scripts/config --disable CONFIG_UBSAN
scripts/config --enable CONFIG_HAVE_ARCH_KCSAN
scripts/config --enable CONFIG_HAVE_KCSAN_COMPILER
scripts/config --disable CONFIG_KCSAN
# end of Generic Kernel Debugging Instruments

#
# Networking Debugging
#
scripts/config --disable CONFIG_NET_DEV_REFCNT_TRACKER
scripts/config --disable CONFIG_NET_NS_REFCNT_TRACKER
scripts/config --disable CONFIG_DEBUG_NET
# end of Networking Debugging

#
# Memory Debugging
#
scripts/config --disable CONFIG_PAGE_EXTENSION
scripts/config --disable CONFIG_DEBUG_PAGEALLOC
scripts/config --enable CONFIG_SLUB_DEBUG
scripts/config --disable CONFIG_SLUB_DEBUG_ON
scripts/config --disable CONFIG_PAGE_OWNER
scripts/config --disable CONFIG_PAGE_TABLE_CHECK
scripts/config --enable CONFIG_PAGE_POISONING
scripts/config --disable CONFIG_DEBUG_PAGE_REF
scripts/config --disable CONFIG_DEBUG_RODATA_TEST
scripts/config --enable CONFIG_ARCH_HAS_DEBUG_WX
scripts/config --enable CONFIG_DEBUG_WX
scripts/config --enable CONFIG_GENERIC_PTDUMP
scripts/config --enable CONFIG_PTDUMP_CORE
scripts/config --disable CONFIG_PTDUMP_DEBUGFS
scripts/config --enable CONFIG_HAVE_DEBUG_KMEMLEAK
scripts/config --disable CONFIG_DEBUG_KMEMLEAK
scripts/config --disable CONFIG_PER_VMA_LOCK_STATS
scripts/config --disable CONFIG_DEBUG_OBJECTS
scripts/config --disable CONFIG_SHRINKER_DEBUG
scripts/config --disable CONFIG_DEBUG_STACK_USAGE
scripts/config --enable CONFIG_SCHED_STACK_END_CHECK
scripts/config --enable CONFIG_ARCH_HAS_DEBUG_VM_PGTABLE
scripts/config --disable CONFIG_DEBUG_VM
scripts/config --disable CONFIG_DEBUG_VM_PGTABLE
scripts/config --enable CONFIG_ARCH_HAS_DEBUG_VIRTUAL
scripts/config --disable CONFIG_DEBUG_VIRTUAL
scripts/config --enable CONFIG_DEBUG_MEMORY_INIT
scripts/config --module CONFIG_MEMORY_NOTIFIER_ERROR_INJECT
scripts/config --disable CONFIG_DEBUG_PER_CPU_MAPS
scripts/config --enable CONFIG_ARCH_SUPPORTS_KMAP_LOCAL_FORCE_MAP
scripts/config --disable CONFIG_DEBUG_KMAP_LOCAL_FORCE_MAP
scripts/config --disable CONFIG_MEM_ALLOC_PROFILING
scripts/config --enable CONFIG_HAVE_ARCH_KASAN
scripts/config --enable CONFIG_HAVE_ARCH_KASAN_VMALLOC
scripts/config --enable CONFIG_CC_HAS_KASAN_GENERIC
scripts/config --enable CONFIG_CC_HAS_KASAN_SW_TAGS
scripts/config --enable CONFIG_CC_HAS_WORKING_NOSANITIZE_ADDRESS
scripts/config --disable CONFIG_KASAN
scripts/config --enable CONFIG_HAVE_ARCH_KFENCE
scripts/config --enable CONFIG_KFENCE
scripts/config --set-val CONFIG_KFENCE_SAMPLE_INTERVAL 0
scripts/config --set-val CONFIG_KFENCE_NUM_OBJECTS 255
scripts/config --disable CONFIG_KFENCE_DEFERRABLE
scripts/config --set-val CONFIG_KFENCE_STRESS_TEST_FAULTS 0
scripts/config --enable CONFIG_HAVE_ARCH_KMSAN
scripts/config --enable CONFIG_HAVE_KMSAN_COMPILER
scripts/config --disable CONFIG_KMSAN
# end of Memory Debugging

scripts/config --disable CONFIG_DEBUG_SHIRQ

#
# Debug Oops, Lockups and Hangs
#
scripts/config --disable CONFIG_PANIC_ON_OOPS
scripts/config --set-val CONFIG_PANIC_ON_OOPS_VALUE 0
scripts/config --set-val CONFIG_PANIC_TIMEOUT 0
scripts/config --enable CONFIG_LOCKUP_DETECTOR
scripts/config --enable CONFIG_SOFTLOCKUP_DETECTOR
scripts/config --disable CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC
scripts/config --enable CONFIG_HAVE_HARDLOCKUP_DETECTOR_BUDDY
scripts/config --enable CONFIG_HARDLOCKUP_DETECTOR
scripts/config --disable CONFIG_HARDLOCKUP_DETECTOR_PREFER_BUDDY
scripts/config --enable CONFIG_HARDLOCKUP_DETECTOR_PERF
scripts/config --disable CONFIG_HARDLOCKUP_DETECTOR_BUDDY
scripts/config --disable CONFIG_HARDLOCKUP_DETECTOR_ARCH
scripts/config --enable CONFIG_HARDLOCKUP_DETECTOR_COUNTS_HRTIMER
scripts/config --enable CONFIG_HARDLOCKUP_CHECK_TIMESTAMP
scripts/config --disable CONFIG_BOOTPARAM_HARDLOCKUP_PANIC
scripts/config --enable CONFIG_DETECT_HUNG_TASK
scripts/config --set-val CONFIG_DEFAULT_HUNG_TASK_TIMEOUT 120
scripts/config --disable CONFIG_BOOTPARAM_HUNG_TASK_PANIC
scripts/config --disable CONFIG_WQ_WATCHDOG
scripts/config --disable CONFIG_WQ_CPU_INTENSIVE_REPORT
scripts/config --disable CONFIG_TEST_LOCKUP
# end of Debug Oops, Lockups and Hangs

#
# Scheduler Debugging
#
scripts/config --enable CONFIG_SCHED_DEBUG
scripts/config --enable CONFIG_SCHED_INFO
scripts/config --enable CONFIG_SCHEDSTATS
# end of Scheduler Debugging

scripts/config --disable CONFIG_DEBUG_PREEMPT

#
# Lock Debugging (spinlocks, mutexes, etc...)
#
scripts/config --enable CONFIG_LOCK_DEBUGGING_SUPPORT
scripts/config --disable CONFIG_PROVE_LOCKING
scripts/config --disable CONFIG_LOCK_STAT
scripts/config --disable CONFIG_DEBUG_RT_MUTEXES
scripts/config --disable CONFIG_DEBUG_SPINLOCK
scripts/config --disable CONFIG_DEBUG_MUTEXES
scripts/config --disable CONFIG_DEBUG_WW_MUTEX_SLOWPATH
scripts/config --disable CONFIG_DEBUG_RWSEMS
scripts/config --disable CONFIG_DEBUG_LOCK_ALLOC
scripts/config --disable CONFIG_DEBUG_ATOMIC_SLEEP
scripts/config --disable CONFIG_DEBUG_LOCKING_API_SELFTESTS
scripts/config --disable CONFIG_LOCK_TORTURE_TEST
scripts/config --disable CONFIG_WW_MUTEX_SELFTEST
scripts/config --disable CONFIG_SCF_TORTURE_TEST
scripts/config --disable CONFIG_CSD_LOCK_WAIT_DEBUG
# end of Lock Debugging (spinlocks, mutexes, etc...)

scripts/config --disable CONFIG_NMI_CHECK_CPU
scripts/config --disable CONFIG_DEBUG_IRQFLAGS
scripts/config --enable CONFIG_STACKTRACE
scripts/config --disable CONFIG_WARN_ALL_UNSEEDED_RANDOM
scripts/config --disable CONFIG_DEBUG_KOBJECT

#
# Debug kernel data structures
#
scripts/config --disable CONFIG_DEBUG_LIST
scripts/config --disable CONFIG_DEBUG_PLIST
scripts/config --disable CONFIG_DEBUG_SG
scripts/config --disable CONFIG_DEBUG_NOTIFIERS
scripts/config --disable CONFIG_DEBUG_CLOSURES
scripts/config --disable CONFIG_DEBUG_MAPLE_TREE
# end of Debug kernel data structures

#
# RCU Debugging
#
scripts/config --disable CONFIG_RCU_SCALE_TEST
scripts/config --disable CONFIG_RCU_TORTURE_TEST
scripts/config --disable CONFIG_RCU_REF_SCALE_TEST
scripts/config --set-val CONFIG_RCU_CPU_STALL_TIMEOUT 21
scripts/config --set-val CONFIG_RCU_EXP_CPU_STALL_TIMEOUT 0
scripts/config --disable CONFIG_RCU_CPU_STALL_CPUTIME
scripts/config --disable CONFIG_RCU_CPU_STALL_NOTIFIER
scripts/config --disable CONFIG_RCU_TRACE
scripts/config --disable CONFIG_RCU_EQS_DEBUG
# end of RCU Debugging

scripts/config --disable CONFIG_DEBUG_WQ_FORCE_RR_CPU
scripts/config --disable CONFIG_CPU_HOTPLUG_STATE_CONTROL
scripts/config --disable CONFIG_LATENCYTOP
scripts/config --enable CONFIG_USER_STACKTRACE_SUPPORT
scripts/config --enable CONFIG_NOP_TRACER
scripts/config --enable CONFIG_HAVE_RETHOOK
scripts/config --enable CONFIG_RETHOOK
scripts/config --enable CONFIG_HAVE_FUNCTION_TRACER
scripts/config --enable CONFIG_HAVE_FUNCTION_GRAPH_TRACER
scripts/config --enable CONFIG_HAVE_FUNCTION_GRAPH_RETVAL
scripts/config --enable CONFIG_HAVE_DYNAMIC_FTRACE
scripts/config --enable CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS
scripts/config --enable CONFIG_HAVE_DYNAMIC_FTRACE_WITH_DIRECT_CALLS
scripts/config --enable CONFIG_HAVE_DYNAMIC_FTRACE_WITH_ARGS
scripts/config --enable CONFIG_HAVE_DYNAMIC_FTRACE_NO_PATCHABLE
scripts/config --enable CONFIG_HAVE_FTRACE_MCOUNT_RECORD
scripts/config --enable CONFIG_HAVE_SYSCALL_TRACEPOINTS
scripts/config --enable CONFIG_HAVE_FENTRY
scripts/config --enable CONFIG_HAVE_OBJTOOL_MCOUNT
scripts/config --enable CONFIG_HAVE_OBJTOOL_NOP_MCOUNT
scripts/config --enable CONFIG_HAVE_C_RECORDMCOUNT
scripts/config --enable CONFIG_HAVE_BUILDTIME_MCOUNT_SORT
scripts/config --enable CONFIG_BUILDTIME_MCOUNT_SORT
scripts/config --enable CONFIG_TRACER_MAX_TRACE
scripts/config --enable CONFIG_TRACE_CLOCK
scripts/config --enable CONFIG_RING_BUFFER
scripts/config --enable CONFIG_EVENT_TRACING
scripts/config --enable CONFIG_CONTEXT_SWITCH_TRACER
scripts/config --enable CONFIG_TRACING
scripts/config --enable CONFIG_GENERIC_TRACER
scripts/config --enable CONFIG_TRACING_SUPPORT
scripts/config --enable CONFIG_FTRACE
scripts/config --disable CONFIG_BOOTTIME_TRACING
scripts/config --enable CONFIG_FUNCTION_TRACER
scripts/config --enable CONFIG_FUNCTION_GRAPH_TRACER
scripts/config --disable CONFIG_FUNCTION_GRAPH_RETVAL
scripts/config --enable CONFIG_DYNAMIC_FTRACE
scripts/config --enable CONFIG_DYNAMIC_FTRACE_WITH_REGS
scripts/config --enable CONFIG_DYNAMIC_FTRACE_WITH_DIRECT_CALLS
scripts/config --enable CONFIG_DYNAMIC_FTRACE_WITH_ARGS
scripts/config --enable CONFIG_FPROBE
scripts/config --disable CONFIG_FUNCTION_PROFILER
scripts/config --enable CONFIG_STACK_TRACER
scripts/config --disable CONFIG_IRQSOFF_TRACER
scripts/config --disable CONFIG_PREEMPT_TRACER
scripts/config --disable CONFIG_SCHED_TRACER
scripts/config --disable CONFIG_HWLAT_TRACER
scripts/config --disable CONFIG_OSNOISE_TRACER
scripts/config --disable CONFIG_TIMERLAT_TRACER
scripts/config --enable CONFIG_MMIOTRACE
scripts/config --enable CONFIG_FTRACE_SYSCALLS
scripts/config --enable CONFIG_TRACER_SNAPSHOT
scripts/config --disable CONFIG_TRACER_SNAPSHOT_PER_CPU_SWAP
scripts/config --enable CONFIG_BRANCH_PROFILE_NONE
scripts/config --disable CONFIG_PROFILE_ANNOTATED_BRANCHES
scripts/config --enable CONFIG_BLK_DEV_IO_TRACE
scripts/config --enable CONFIG_FPROBE_EVENTS
scripts/config --enable CONFIG_KPROBE_EVENTS
scripts/config --enable CONFIG_PROBE_EVENTS_BTF_ARGS
scripts/config --enable CONFIG_UPROBE_EVENTS
scripts/config --enable CONFIG_BPF_EVENTS
scripts/config --enable CONFIG_DYNAMIC_EVENTS
scripts/config --enable CONFIG_PROBE_EVENTS
scripts/config --enable CONFIG_FTRACE_MCOUNT_RECORD
scripts/config --enable CONFIG_FTRACE_MCOUNT_USE_OBJTOOL
scripts/config --enable CONFIG_TRACING_MAP
scripts/config --enable CONFIG_SYNTH_EVENTS
scripts/config --disable CONFIG_USER_EVENTS
scripts/config --enable CONFIG_HIST_TRIGGERS
scripts/config --disable CONFIG_TRACE_EVENT_INJECT
scripts/config --disable CONFIG_TRACEPOINT_BENCHMARK
scripts/config --disable CONFIG_RING_BUFFER_BENCHMARK
scripts/config --disable CONFIG_TRACE_EVAL_MAP_FILE
scripts/config --disable CONFIG_FTRACE_RECORD_RECURSION
scripts/config --disable CONFIG_FTRACE_VALIDATE_RCU_IS_WATCHING
scripts/config --disable CONFIG_FTRACE_STARTUP_TEST
scripts/config --disable CONFIG_FTRACE_SORT_STARTUP_TEST
scripts/config --disable CONFIG_RING_BUFFER_STARTUP_TEST
scripts/config --disable CONFIG_RING_BUFFER_VALIDATE_TIME_DELTAS
scripts/config --disable CONFIG_MMIOTRACE_TEST
scripts/config --disable CONFIG_PREEMPTIRQ_DELAY_TEST
scripts/config --disable CONFIG_SYNTH_EVENT_GEN_TEST
scripts/config --disable CONFIG_HIST_TRIGGERS_DEBUG
scripts/config --disable CONFIG_RV
scripts/config --disable CONFIG_PROVIDE_OHCI1394_DMA_INIT
scripts/config --disable CONFIG_SAMPLES
scripts/config --enable CONFIG_HAVE_SAMPLE_FTRACE_DIRECT
scripts/config --enable CONFIG_HAVE_SAMPLE_FTRACE_DIRECT_MULTI
scripts/config --enable CONFIG_ARCH_HAS_DEVMEM_IS_ALLOWED
scripts/config --enable CONFIG_STRICT_DEVMEM
scripts/config --disable CONFIG_IO_STRICT_DEVMEM

#
# x86 Debugging
#
scripts/config --disable CONFIG_X86_VERBOSE_BOOTUP
scripts/config --enable CONFIG_EARLY_PRINTK
scripts/config --disable CONFIG_EARLY_PRINTK_DBGP
scripts/config --disable CONFIG_EARLY_PRINTK_USB_XDBC
scripts/config --disable CONFIG_EFI_PGT_DUMP
scripts/config --disable CONFIG_DEBUG_TLBFLUSH
scripts/config --disable CONFIG_IOMMU_DEBUG
scripts/config --enable CONFIG_HAVE_MMIOTRACE_SUPPORT
scripts/config --disable CONFIG_X86_DECODER_SELFTEST
scripts/config --enable CONFIG_IO_DELAY_0X80
scripts/config --disable CONFIG_IO_DELAY_0XED
scripts/config --disable CONFIG_IO_DELAY_UDELAY
scripts/config --disable CONFIG_IO_DELAY_NONE
scripts/config --disable CONFIG_DEBUG_BOOT_PARAMS
scripts/config --disable CONFIG_CPA_DEBUG
scripts/config --disable CONFIG_DEBUG_ENTRY
scripts/config --disable CONFIG_DEBUG_NMI_SELFTEST
scripts/config --enable CONFIG_X86_DEBUG_FPU
scripts/config --disable CONFIG_PUNIT_ATOM_DEBUG
scripts/config --enable CONFIG_UNWINDER_ORC
scripts/config --disable CONFIG_UNWINDER_FRAME_POINTER
# end of x86 Debugging

#
# Kernel Testing and Coverage
#
scripts/config --disable CONFIG_KUNIT
scripts/config --module CONFIG_NOTIFIER_ERROR_INJECTION
scripts/config --module CONFIG_PM_NOTIFIER_ERROR_INJECT
scripts/config --disable CONFIG_NETDEV_NOTIFIER_ERROR_INJECT
scripts/config --disable CONFIG_FAULT_INJECTION
scripts/config --enable CONFIG_ARCH_HAS_KCOV
scripts/config --enable CONFIG_CC_HAS_SANCOV_TRACE_PC
scripts/config --disable CONFIG_KCOV
scripts/config --enable CONFIG_RUNTIME_TESTING_MENU
scripts/config --disable CONFIG_TEST_DHRY
scripts/config --disable CONFIG_LKDTM
scripts/config --disable CONFIG_TEST_MIN_HEAP
scripts/config --disable CONFIG_TEST_DIV64
scripts/config --module CONFIG_TEST_MULDIV64
scripts/config --disable CONFIG_BACKTRACE_SELF_TEST
scripts/config --disable CONFIG_TEST_REF_TRACKER
scripts/config --disable CONFIG_RBTREE_TEST
scripts/config --disable CONFIG_REED_SOLOMON_TEST
scripts/config --disable CONFIG_INTERVAL_TREE_TEST
scripts/config --disable CONFIG_PERCPU_TEST
scripts/config --disable CONFIG_ATOMIC64_SELFTEST
scripts/config --disable CONFIG_ASYNC_RAID6_TEST
scripts/config --disable CONFIG_TEST_HEXDUMP
scripts/config --disable CONFIG_TEST_KSTRTOX
scripts/config --disable CONFIG_TEST_PRINTF
scripts/config --disable CONFIG_TEST_SCANF
scripts/config --disable CONFIG_TEST_BITMAP
scripts/config --disable CONFIG_TEST_UUID
scripts/config --disable CONFIG_TEST_XARRAY
scripts/config --disable CONFIG_TEST_MAPLE_TREE
scripts/config --disable CONFIG_TEST_RHASHTABLE
scripts/config --disable CONFIG_TEST_IDA
scripts/config --disable CONFIG_TEST_PARMAN
scripts/config --disable CONFIG_TEST_LKM
scripts/config --disable CONFIG_TEST_BITOPS
scripts/config --disable CONFIG_TEST_VMALLOC
scripts/config --module CONFIG_TEST_BPF
scripts/config --module CONFIG_TEST_BLACKHOLE_DEV
scripts/config --disable CONFIG_FIND_BIT_BENCHMARK
scripts/config --module CONFIG_TEST_FIRMWARE
scripts/config --disable CONFIG_TEST_SYSCTL
scripts/config --disable CONFIG_TEST_UDELAY
scripts/config --module CONFIG_TEST_STATIC_KEYS
scripts/config --disable CONFIG_TEST_DYNAMIC_DEBUG
scripts/config --disable CONFIG_TEST_KMOD
scripts/config --disable CONFIG_TEST_MEMCAT_P
scripts/config --disable CONFIG_TEST_OBJAGG
scripts/config --disable CONFIG_TEST_MEMINIT
scripts/config --disable CONFIG_TEST_HMM
scripts/config --disable CONFIG_TEST_FREE_PAGES
scripts/config --disable CONFIG_TEST_FPU
scripts/config --disable CONFIG_TEST_CLOCKSOURCE_WATCHDOG
scripts/config --disable CONFIG_TEST_OBJPOOL
scripts/config --enable CONFIG_ARCH_USE_MEMTEST
scripts/config --enable CONFIG_MEMTEST
scripts/config --disable CONFIG_HYPERV_TESTING
# end of Kernel Testing and Coverage

#
# Rust hacking
#
# end of Rust hacking
# end of Kernel hacking
