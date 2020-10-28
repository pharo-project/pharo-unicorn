"
I define constants required for initializing and configuring an engine.
"
Class {
	#name : #UnicornConstants,
	#superclass : #SharedPool,
	#classVars : [
		'UC_ARCH_ARM',
		'UC_ARCH_ARM64',
		'UC_ARCH_X86',
		'UC_ERR_OK',
		'UC_MODE_16',
		'UC_MODE_32',
		'UC_MODE_64',
		'UC_MODE_ARM',
		'UC_MODE_BIG_ENDIAN',
		'UC_MODE_LITTLE_ENDIAN',
		'UC_MODE_MCLASS',
		'UC_MODE_THUMB',
		'UC_MODE_V8',
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
	UC_ARCH_ARM := 1.	"ARM architecture (including Thumb, Thumb-2)"
	UC_ARCH_ARM64 := 2.    "ARM-64, also called AArch64"
	"UC_ARCH_MIPS,       // Mips architecture"
	UC_ARCH_X86 := 4.	"  // X86 architecture (including x86 & x86-64)"
	"
	UC_ARCH_PPC,        // PowerPC architecture (currently unsupported)
	UC_ARCH_SPARC,      // Sparc architecture
	UC_ARCH_M68K,       // M68K architecture"

	"little / big endian"
	UC_MODE_LITTLE_ENDIAN := 0.	"little-endian mode (default mode)"
	UC_MODE_BIG_ENDIAN := 1 << 30.	"big-endian mode"

	"arm / arm64"
	UC_MODE_ARM := 0.	"ARM mode"
	UC_MODE_THUMB := 1 << 4.	"THUMB mode (including Thumb-2)"
	UC_MODE_MCLASS := 1 << 5.	"ARM's Cortex-M series (currently unsupported)"
	UC_MODE_V8 := 1 << 6.	"ARMv8 A32 encodings for ARM (currently unsupported)"

	"x86 / x64"
	UC_MODE_16 := 1 << 1.	"16-bit mode"
	UC_MODE_32 := 1 << 2.	"32-bit mode"
	UC_MODE_64 := 1 << 3.	"64-bit mode"

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
   UC_QUERY_LAST_INSTR_ADDRESS := 6.  "query the number of counted instructions in last execution"   	UC_QUERY_LAST_INSTR_SIZE := 7.  "query the number of counted instructions in last execution"

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
