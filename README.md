# pharo-unicorn
Pharo bindings to the Unicorn library (https://www.unicorn-engine.org)

## Basic Example

The following example shows the basic usage of the Unicorn binding, based on the original example from Unicorn's site in https://www.unicorn-engine.org/docs/tutorial.html. The example first creates an emulator and sets up 2MB of memory. It then writes two instructions on it that increase register ECX and decrease register EDX, and it initializes registers ECX and EDX with two values. Finally, it runs the programs and retrieves the modified values from the registers.

```smalltalk
unicorn := Unicorn x86.
address := 16r1000000.
errorCode := unicorn mapMemoryOfSize: 2 * 1024 * 1024 atAddress: address withPermissions: UnicornConstants permissionAll.

x86_CODE32 := #[ 16r41 16r4a ]. "INC ecx; DEC edx".
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
```

## Creating a Unicorn engine

Creating an engine requires providing an architecture and a mode to #architecture:mode: using the constants defined in UnicornConstants. Unicorn's class side defines some predefined constructors for common configurations:
```smalltalk
engine := Unicorn arm.
engine := Unicorn arm64.

engine := Unicorn x86.
engine := Unicorn x8664
```
## Manipulating Memory

### Mapping memory 

To setup a memory in the emulator, two different ways are supported: either to map a new chunk of memory of a certain size to an address: 
```smalltalk
unicorn mapMemoryOfSize: 2 * 1024 * 1024 atAddress: address withPermissions: UnicornConstants permissionAll
```
Or to map an existing piece of memory (typically a pharo byte array).
```smalltalk
unicorn mapHostMemory: aByteArray atAddress: address withPermissions: UnicornConstants permissionAll
```
Permissions set what is doable with that chunk of mapped memory and are combinable by simple aritmethic (they are a bit mask).

### Reading / Writing

Methods #memoryAt:write: and #memoryAt:readNext: allow to write a byte array or read into a byte array to/from the memory at an address.

## Registers

Two main methods allow reading and writing from/to registers: #register:readInto: and #register:write:.
Registers are represented by ids in the different *Registers enumerations (see for example UcX86Registers).

## Emulation

A single method (#startAt:until:timeout:count:) allows to start the execution of a memory at a location. Three different stop conditions can be set: a final address, a timeout in microseconds or a number of instructions to execute.
