"
I am the main entry point for Unicorn users.
Once an engine is created, users can use me to read/write memory and registers, and execute code.

# Basic Example

The following example shows the basic usage of the Unicorn binding, based on the original example from Unicorn's site in https://www.unicorn-engine.org/docs/tutorial.html. The example first creates an emulator and sets up 2MB of memory. It then writes two instructions on it that increase register ECX and decrease register EDX, and it initializes registers ECX and EDX with two values. Finally, it runs the programs and retrieves the modified values from the registers.

unicorn := Unicorn x86.
address := 16r1000000.
errorCode := unicorn mapMemoryOfSize: 2 * 1024 * 1024 atAddress: address withPermissions: UnicornConstants permissionAll.

x86_CODE32 := #[ 16r41 16r4a ]. ""INC ecx; DEC edx"".
errorCode := unicorn memoryAt: address write: x86_CODE32 size: x86_CODE32 size.

ecx := UcX86Registers ecx.
edx := UcX86Registers edx.

ecxValue := #[ 16r34 16r12 ].
edxValue := #[ 16r90 16r78 ].
unicorn register: ecx value write: ecxValue.
unicorn register: edx value write: edxValue.

errorCode := unicorn startAt: address until: address + x86_CODE32 size timeout: 0 count: 0.

unicorn register: ecx value readInto: ecxValue.
unicorn register: edx value readInto: edxValue.

# Creating a Unicorn engine

Creating an engine requires providing an architecture and a mode to #architecture:mode: using the constants defined in UnicornConstants. Unicorn's class side defines some predefined constructors for common configurations:

engine := Unicorn arm.
engine := Unicorn arm64.

engine := Unicorn x86.
engine := Unicorn x8664

# Manipulating Memory

## Mapping memory 

To setup a memory in the emulator, two different ways are supported: either to map a new chunk of memory of a certain size to an address: 

unicorn mapMemoryOfSize: 2 * 1024 * 1024 atAddress: address withPermissions: UnicornConstants permissionAll

Or to map an existing piece of memory (typically a pharo byte array).

unicorn mapHostMemory: aByteArray atAddress: address withPermissions: UnicornConstants permissionAll

Permissions set what is doable with that chunk of mapped memory and are combinable by simple aritmethic (they are a bit mask).

## Reading / Writing

Methods #memoryAt:write: and #memoryAt:readNext: allow to write a byte array or read into a byte array to/from the memory at an address.

## Registers

Two main methods allow reading and writing from/to registers: #register:readInto: and #register:write:.
Registers are represented by ids in the different *Registers enumerations (see for example UcX86Registers).

# Emulation

A single method (#startAt:until:timeout:count:) allows to start the execution of a memory at a location. Three different stop conditions can be set: a final address, a timeout in microseconds or a number of instructions to execute.
"
Class {
	#name : #Unicorn,
	#superclass : #FFIExternalObject,
	#pools : [
		'UnicornConstants',
		'UnicornTypes'
	],
	#category : #Unicorn
}

{ #category : #'as yet unclassified' }
Unicorn class >> architecture: architecture mode: mode [

	| return enginePointer |
	enginePointer := ExternalAddress new.
	return := self
		uc_open: architecture
		mode: mode
		enginePointer: enginePointer.
	(UnicornConstants isOk: return)
		ifFalse: [ ^ self error: 'Failed to open simulator with error: ', return asString ].
	^ self fromHandle: enginePointer
]

{ #category : #'instance-creation' }
Unicorn class >> arm [

	^ self architecture: UC_ARCH_ARM mode: UC_MODE_ARM
]

{ #category : #'instance-creation' }
Unicorn class >> arm64 [

	^ self architecture: UC_ARCH_ARM64 mode: UC_MODE_ARM
]

{ #category : #resources }
Unicorn class >> ffiLibrary [

	^ UnicornLibrary
]

{ #category : #private }
Unicorn class >> uc_open: architecture mode: mode enginePointer: enginePointer [
	
	self ffiCall: #(UC_err uc_open(UC_arch architecture,UC_mode mode,void** enginePointer))
]

{ #category : #'instance-creation' }
Unicorn class >> x86 [

	^ self architecture: UC_ARCH_X86 mode: UC_MODE_32
]

{ #category : #'instance-creation' }
Unicorn class >> x8664 [

	^ self architecture: UC_ARCH_X86 mode: UC_MODE_64
]

{ #category : #private }
Unicorn >> doMapHostMemory: aMemory ofSize: size atAddress: address withPermissions: permissions [

	self ffiCall: #(UC_err uc_mem_map_ptr(self, uint64 address, size_t size, uint32 permissions, void *aMemory))
]

{ #category : #private }
Unicorn >> doMapMemoryOfSize: size atAddress: address withPermissions: perms [

	self ffiCall: #(UC_err uc_mem_map(self, uint64 address, size_t size, uint32 perms)) module: UnicornLibrary
]

{ #category : #private }
Unicorn >> doMemoryAt: address write: bytes size: size [

	^ self ffiCall: #(UC_err uc_mem_write(self, uint64 address, const void *bytes, size_t size)) module: UnicornLibrary
]

{ #category : #private }
Unicorn >> doMemoryReadBytes: size atAddress: address inBuffer: bytes [

	self ffiCall: #(UC_err uc_mem_read(self, uint64 address, void *bytes, size_t size))
]

{ #category : #private }
Unicorn >> doMemorySetFrom: address to: size with: bytes [ 

	self ffiCall: #(UC_err uc_mem_write(self, uint64 address, const void *bytes, size_t size))
]

{ #category : #private }
Unicorn >> doStartAt: begin until: until timeout: timeout count: count [ 

	self ffiCall: #(UC_err uc_emu_start(self, uint64 begin, uint64 until, uint64 timeout, size_t count))
]

{ #category : #private }
Unicorn >> doUnmapMemoryAtAddress: address ofSize: size [

	self ffiCall: #(UC_err uc_mem_unmap(self, uint64 address, size_t size))
]

{ #category : #resources }
Unicorn >> ffiLibrary [

	^ UnicornLibrary
]

{ #category : #'memory-mapping' }
Unicorn >> mapHostMemory: aMemory atAddress: address withPermissions: permissions [

	aMemory pinInMemory.
	^ self
		doMapHostMemory: aMemory
		ofSize: aMemory size
		atAddress: address
		withPermissions: permissions
]

{ #category : #'memory-mapping' }
Unicorn >> mapMemoryOfSize: size atAddress: address withPermissions: perms [

	| result |
	result := self doMapMemoryOfSize: size atAddress: address withPermissions: perms.
	self verifyErrorCode: result.
	^ result
]

{ #category : #'memory-read/write' }
Unicorn >> memoryAt: address readNext: byteSize [
	
	| buffer result |
	buffer := ByteArray new: byteSize.
	result := self doMemoryReadBytes: byteSize atAddress: address inBuffer: buffer.
	self verifyErrorCode: result.
	^ buffer.
]

{ #category : #'memory-read/write' }
Unicorn >> memoryAt: address until: size setTo: bytes [ 

	| result |
	result := self doMemorySetFrom: address to: size with: bytes.
	self verifyErrorCode: result.
	^ result
]

{ #category : #'memory-read/write' }
Unicorn >> memoryAt: address write: bytes [

	^ self memoryAt: address write: bytes size: bytes size
]

{ #category : #'memory-read/write' }
Unicorn >> memoryAt: address write: bytes size: size [

	| result |
	result := self doMemoryAt: address write: bytes size: size.
	self verifyErrorCode: result.
	^ result
]

{ #category : #'register-read/write' }
Unicorn >> register: regid readInto: value [

	self ffiCall: #(UC_err uc_reg_read(self, int regid, void *value))
]

{ #category : #'register-read/write' }
Unicorn >> register: regid write: value [

	self ffiCall: #(UC_err uc_reg_write(self, int regid, void *value))
]

{ #category : #running }
Unicorn >> startAt: begin until: until timeout: timeout count: count [ 

	| result |
	result := self doStartAt: begin until: until timeout: timeout count: count.
	self verifyErrorCode: result.
	^ result
]

{ #category : #errors }
Unicorn >> stringOfErrorCode: code [

	^ self ffiCall: #(const char *uc_strerror(int code))
]

{ #category : #'memory-mapping' }
Unicorn >> unmapMemoryAtAddress: address ofSize: size [

	| result |
	result := self doUnmapMemoryAtAddress: address ofSize: size.
	self verifyErrorCode: result.
	^ result
]

{ #category : #errors }
Unicorn >> verifyErrorCode: anInteger [ 

	(UnicornConstants isOk: anInteger) ifTrue: [ ^ self ].
	self error: (self stringOfErrorCode: anInteger)
]
