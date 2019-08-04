Class {
	#name : #UcHookType,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'UC_HOOK_BLOCK',
		'UC_HOOK_CODE',
		'UC_HOOK_INSN',
		'UC_HOOK_INTR',
		'UC_HOOK_MEM_FETCH',
		'UC_HOOK_MEM_FETCH_PROT',
		'UC_HOOK_MEM_FETCH_UNMAPPED',
		'UC_HOOK_MEM_READ',
		'UC_HOOK_MEM_READ_AFTER',
		'UC_HOOK_MEM_READ_PROT',
		'UC_HOOK_MEM_READ_UNMAPPED',
		'UC_HOOK_MEM_WRITE',
		'UC_HOOK_MEM_WRITE_PROT',
		'UC_HOOK_MEM_WRITE_UNMAPPED'
	],
	#category : #Unicorn
}

{ #category : #'enum declaration' }
UcHookType class >> enumDecl [

	^ #(
	UC_HOOK_INTR                1    "Hook all interrupt/syscall events"
	UC_HOOK_INSN                2    "Hook a particular instruction - only a very small subset of instructions supported here"
	UC_HOOK_CODE                4    "Hook a range of code"
	UC_HOOK_BLOCK               8    "Hook basic blocks"
	UC_HOOK_MEM_READ_UNMAPPED   16   "Hook for memory read on unmapped memory"
	UC_HOOK_MEM_WRITE_UNMAPPED  32   "Hook for invalid memory write events"
	UC_HOOK_MEM_FETCH_UNMAPPED  64   "Hook for invalid memory fetch for execution events"
	UC_HOOK_MEM_READ_PROT       128  "Hook for memory read on read-protected memory"
	UC_HOOK_MEM_WRITE_PROT      256  "Hook for memory write on write-protected memory"
	UC_HOOK_MEM_FETCH_PROT      512  "Hook for memory fetch on non-executable memory"
	UC_HOOK_MEM_READ            1024 "Hook memory read events."
	UC_HOOK_MEM_WRITE           2048 "Hook memory write events."
	UC_HOOK_MEM_FETCH           4096 "Hook memory fetch for execution events"
	UC_HOOK_MEM_READ_AFTER      8192 "Hook memory read events but only successful access. The callback will be triggered after successful read."
	)
]

{ #category : #'as yet unclassified' }
UcHookType class >> illegalProtectedMemoryAccess [

	"Hook type for all events of illegal protected memory access"
	^ UC_HOOK_MEM_READ_PROT + UC_HOOK_MEM_WRITE_PROT + UC_HOOK_MEM_FETCH_PROT
]

{ #category : #'enum declaration' }
UcHookType class >> initialize [
	self initializeEnumeration
]

{ #category : #'enum declaration' }
UcHookType class >> invalidMemoryAccess [

	^ self unmappedMemoryAccess + self illegalProtectedMemoryAccess
]

{ #category : #'as yet unclassified' }
UcHookType class >> unmappedMemoryAccess [

	"Hook type for all events of unmapped memory access"
	^ UC_HOOK_MEM_READ_UNMAPPED + UC_HOOK_MEM_WRITE_UNMAPPED + UC_HOOK_MEM_FETCH_UNMAPPED
]

{ #category : #arithmetic }
UcHookType >> + aHookType [

	^ self class basicNew
		value: (self value + aHookType value);
		yourself
]
