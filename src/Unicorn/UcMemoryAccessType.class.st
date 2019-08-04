Class {
	#name : #UcMemoryAccessType,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'UC_MEM_FETCH',
		'UC_MEM_FETCH_PROT',
		'UC_MEM_FETCH_UNMAPPED',
		'UC_MEM_READ',
		'UC_MEM_READ_AFTER',
		'UC_MEM_READ_PROT',
		'UC_MEM_READ_UNMAPPED',
		'UC_MEM_WRITE',
		'UC_MEM_WRITE_PROT',
		'UC_MEM_WRITE_UNMAPPED'
	],
	#category : #Unicorn
}

{ #category : #'enum declaration' }
UcMemoryAccessType class >> enumDecl [

	^ #(
		UC_MEM_READ           16 "Memory is read from"
		UC_MEM_WRITE          17 "Memory is written to"
		UC_MEM_FETCH          18 "Memory is fetched"
		UC_MEM_READ_UNMAPPED  19 "Unmapped memory is read from"
		UC_MEM_WRITE_UNMAPPED 20 "Unmapped memory is written to"
		UC_MEM_FETCH_UNMAPPED 21 "Unmapped memory is fetched"
		UC_MEM_WRITE_PROT     22 "Write to write protected, but mapped, memory"
		UC_MEM_READ_PROT      23 "Read from read protected, but mapped, memory"
		UC_MEM_FETCH_PROT     24 "Fetch from non-executable, but mapped, memory"
		UC_MEM_READ_AFTER     25 "Memory is read from (successful access)"
	)
]

{ #category : #'class initialization' }
UcMemoryAccessType class >> initialize [
	self initializeEnumeration
]
