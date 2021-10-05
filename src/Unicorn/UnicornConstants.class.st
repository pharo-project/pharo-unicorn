"
I define constants required for initializing and configuring an engine.
"
Class {
	#name : #UnicornConstants,
	#superclass : #SharedPool,
	#classVars : [
		'UC_ARCH_ARM',
		'UC_ARCH_ARM64',
		'UC_ARCH_M68K',
		'UC_ARCH_MIPS',
		'UC_ARCH_PPC',
		'UC_ARCH_RISCV',
		'UC_ARCH_SPARC',
		'UC_ARCH_X86',
		'UC_ERR_OK',
		'UC_MODE_16',
		'UC_MODE_32',
		'UC_MODE_64',
		'UC_MODE_ARM',
		'UC_MODE_BIG_ENDIAN',
		'UC_MODE_LITTLE_ENDIAN',
		'UC_MODE_MCLASS',
		'UC_MODE_PPC32',
		'UC_MODE_PPC64',
		'UC_MODE_QPX',
		'UC_MODE_RISCV32',
		'UC_MODE_RISCV64',
		'UC_MODE_SPARC32',
		'UC_MODE_SPARC64',
		'UC_MODE_THUMB',
		'UC_MODE_V8',
		'UC_MODE_V9',
		'UC_PROT_ALL',
		'UC_PROT_EXEC',
		'UC_PROT_NONE',
		'UC_PROT_READ',
		'UC_PROT_WRITE',
		'UC_QUERY_ARCH',
		'UC_QUERY_INSTR_COUNT',
		'UC_QUERY_LAST_INSTR_ADDRESS',
		'UC_QUERY_LAST_INSTR_SIZE',
		'UC_QUERY_MODE',
		'UC_QUERY_PAGE_SIZE',
		'UC_QUERY_TIMEOUT'
	],
	#pools : [
		'UnicornTypes'
	],
	#category : #Unicorn
}

{ #category : #'class initialization' }
UnicornConstants class >> initialize [

	"Supported architectures"
	UC_ARCH_ARM   := 1.  "ARM architecture (including Thumb, Thumb-2)"
	UC_ARCH_ARM64 := 2.  "ARM-64, also called AArch64"
	UC_ARCH_MIPS  := 3.  "Mips architecture"
	UC_ARCH_X86   := 4.	"X86 architecture (including x86 & x86-64)"
	UC_ARCH_PPC   := 5.  "Power PC architecture"
	UC_ARCH_SPARC := 6.  "Sparc architecture"
	UC_ARCH_M68K  := 7.  "M68K architecture"
	UC_ARCH_RISCV := 8.  "RISC-V architecture"

	"little / big endian"
	UC_MODE_LITTLE_ENDIAN := 0.	"little-endian mode (default mode)"
	UC_MODE_BIG_ENDIAN := 1 << 30.	"big-endian mode"

	"arm / arm64"
	UC_MODE_ARM    := 0.	      "ARM mode"
	UC_MODE_THUMB  := 1 << 4.	"THUMB mode (including Thumb-2)"
	UC_MODE_MCLASS := 1 << 5.	"ARM's Cortex-M series (currently unsupported)"
	UC_MODE_V8     := 1 << 6.	"ARMv8 A32 encodings for ARM (currently unsupported)"

	"x86 / x64"
	UC_MODE_16 := 1 << 1.	   "16-bit mode"
	UC_MODE_32 := 1 << 2.	   "32-bit mode"
	UC_MODE_64 := 1 << 3.	   "64-bit mode"
		
    "Power pc"
    UC_MODE_PPC32 := 1 << 2.       "32-bit mode"
    UC_MODE_PPC64 := 1 << 3.       "64-bit mode (currently unsupported)"
    UC_MODE_QPX   := 1 << 4.       "Quad Processing eXtensions mode (currently unsupported)"

    "Sparc"
    UC_MODE_SPARC32 := 1 << 2.     "32-bit mode"
    UC_MODE_SPARC64 := 1 << 3.     "64-bit mode"
    UC_MODE_V9      := 1 << 4.     "SparcV9 mode (currently unsupported)"

    "RISC-V"
    UC_MODE_RISCV32 := 1 << 2.     "32-bit mode"
    UC_MODE_RISCV64 := 1 << 3.     "64-bit mode"

	UC_ERR_OK := 0.

	"Memory Protection Modes"
	UC_PROT_NONE := 0.
	UC_PROT_READ := 1.
	UC_PROT_WRITE := 2.
	UC_PROT_EXEC := 4.
	UC_PROT_ALL := 7.
	
 	"All type of queries for uc_query() API."
   UC_QUERY_MODE := 1. "Dynamically query current hardware mode"
   UC_QUERY_PAGE_SIZE := 2. "query pagesize of engine"
   UC_QUERY_ARCH := 3.   "query architecture of engine (for ARM to query Thumb mode)"
   UC_QUERY_TIMEOUT := 4.  "query if emulation stops due to timeout (indicated if result = True)"
   UC_QUERY_INSTR_COUNT := 5.  "query the number of counted instructions in last execution"
   UC_QUERY_LAST_INSTR_ADDRESS := 6.  "query the number of counted instructions in last execution"   	
	UC_QUERY_LAST_INSTR_SIZE := 7.  "query the number of counted instructions in last execution"

]

{ #category : #api }
UnicornConstants class >> isOk: anInteger [ 

	^ anInteger = UC_ERR_OK
]

{ #category : #accessing }
UnicornConstants class >> permissionAll [

	^ UC_PROT_ALL
]

{ #category : #accessing }
UnicornConstants class >> permissionExecute [

	^ UC_PROT_EXEC
]

{ #category : #accessing }
UnicornConstants class >> permissionNone [

	^ UC_PROT_NONE
]

{ #category : #accessing }
UnicornConstants class >> permissionRead [

	^ UC_PROT_READ
]

{ #category : #accessing }
UnicornConstants class >> permissionWrite [

	^ UC_PROT_WRITE
]
