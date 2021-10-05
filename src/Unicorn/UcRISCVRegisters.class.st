Class {
	#name : #UcRISCVRegisters,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'UC_RISCV_REG_F0',
		'UC_RISCV_REG_F1',
		'UC_RISCV_REG_F10',
		'UC_RISCV_REG_F11',
		'UC_RISCV_REG_F12',
		'UC_RISCV_REG_F13',
		'UC_RISCV_REG_F14',
		'UC_RISCV_REG_F15',
		'UC_RISCV_REG_F16',
		'UC_RISCV_REG_F17',
		'UC_RISCV_REG_F18',
		'UC_RISCV_REG_F19',
		'UC_RISCV_REG_F2',
		'UC_RISCV_REG_F20',
		'UC_RISCV_REG_F21',
		'UC_RISCV_REG_F22',
		'UC_RISCV_REG_F23',
		'UC_RISCV_REG_F24',
		'UC_RISCV_REG_F25',
		'UC_RISCV_REG_F26',
		'UC_RISCV_REG_F27',
		'UC_RISCV_REG_F28',
		'UC_RISCV_REG_F29',
		'UC_RISCV_REG_F3',
		'UC_RISCV_REG_F30',
		'UC_RISCV_REG_F31',
		'UC_RISCV_REG_F4',
		'UC_RISCV_REG_F5',
		'UC_RISCV_REG_F6',
		'UC_RISCV_REG_F7',
		'UC_RISCV_REG_F8',
		'UC_RISCV_REG_F9',
		'UC_RISCV_REG_INVALID',
		'UC_RISCV_REG_PC',
		'UC_RISCV_REG_X0',
		'UC_RISCV_REG_X1',
		'UC_RISCV_REG_X10',
		'UC_RISCV_REG_X11',
		'UC_RISCV_REG_X12',
		'UC_RISCV_REG_X13',
		'UC_RISCV_REG_X14',
		'UC_RISCV_REG_X15',
		'UC_RISCV_REG_X16',
		'UC_RISCV_REG_X17',
		'UC_RISCV_REG_X18',
		'UC_RISCV_REG_X19',
		'UC_RISCV_REG_X2',
		'UC_RISCV_REG_X20',
		'UC_RISCV_REG_X21',
		'UC_RISCV_REG_X22',
		'UC_RISCV_REG_X23',
		'UC_RISCV_REG_X24',
		'UC_RISCV_REG_X25',
		'UC_RISCV_REG_X26',
		'UC_RISCV_REG_X27',
		'UC_RISCV_REG_X28',
		'UC_RISCV_REG_X29',
		'UC_RISCV_REG_X3',
		'UC_RISCV_REG_X30',
		'UC_RISCV_REG_X31',
		'UC_RISCV_REG_X4',
		'UC_RISCV_REG_X5',
		'UC_RISCV_REG_X6',
		'UC_RISCV_REG_X7',
		'UC_RISCV_REG_X8',
		'UC_RISCV_REG_X9'
	],
	#category : #Unicorn
}

{ #category : #initialization }
UcRISCVRegisters class >> enumDecl [ 

	"self initialize to make the changes effective"
	^ #(
	UC_RISCV_REG_INVALID 0
	UC_RISCV_REG_X0  1
   UC_RISCV_REG_X1  2 
	UC_RISCV_REG_X2  3
	UC_RISCV_REG_X3  4 
	UC_RISCV_REG_X4  5
	UC_RISCV_REG_X5  6
	UC_RISCV_REG_X6  7
	UC_RISCV_REG_X7  8 
	UC_RISCV_REG_X8  9
	UC_RISCV_REG_X9  10
	UC_RISCV_REG_X10 11
	UC_RISCV_REG_X11 12
	UC_RISCV_REG_X12 13
	UC_RISCV_REG_X13 14
	UC_RISCV_REG_X14 15 
	UC_RISCV_REG_X15 16 
	UC_RISCV_REG_X16 17
	UC_RISCV_REG_X17 18
	UC_RISCV_REG_X18 19
	UC_RISCV_REG_X19 20 
	UC_RISCV_REG_X20 21
	UC_RISCV_REG_X21 22
	UC_RISCV_REG_X22 23
	UC_RISCV_REG_X23 24
	UC_RISCV_REG_X24 25
	UC_RISCV_REG_X25 26
	UC_RISCV_REG_X26 27
	UC_RISCV_REG_X27 28
	UC_RISCV_REG_X28 29
	UC_RISCV_REG_X29 30
	UC_RISCV_REG_X30 31 
	UC_RISCV_REG_X31 32
	
	UC_RISCV_REG_F0  33
	UC_RISCV_REG_F1  34
	UC_RISCV_REG_F2  35  
	UC_RISCV_REG_F3  36
	UC_RISCV_REG_F4  37
	UC_RISCV_REG_F5  38
	UC_RISCV_REG_F6  39
	UC_RISCV_REG_F7  40
	UC_RISCV_REG_F8  41
	UC_RISCV_REG_F9  42
	UC_RISCV_REG_F10 43
	UC_RISCV_REG_F11 44
	UC_RISCV_REG_F12 45
	UC_RISCV_REG_F13 46
	UC_RISCV_REG_F14 47
	UC_RISCV_REG_F15 48
	UC_RISCV_REG_F16 49
	UC_RISCV_REG_F17 50
	UC_RISCV_REG_F18 51
	UC_RISCV_REG_F19 52
	UC_RISCV_REG_F20 53
	UC_RISCV_REG_F21 54
	UC_RISCV_REG_F22 55
	UC_RISCV_REG_F23 56
	UC_RISCV_REG_F24 57
	UC_RISCV_REG_F25 58
	UC_RISCV_REG_F26 59
	UC_RISCV_REG_F27 60
	UC_RISCV_REG_F28 61
	UC_RISCV_REG_F29 62
	UC_RISCV_REG_F30 63
	UC_RISCV_REG_F31 64
	UC_RISCV_REG_PC 65
	)
]

{ #category : #register }
UcRISCVRegisters class >> f0 [

	^ UC_RISCV_REG_F0
]

{ #category : #register }
UcRISCVRegisters class >> f1 [

	^ UC_RISCV_REG_F1
]

{ #category : #register }
UcRISCVRegisters class >> f10 [

	^ UC_RISCV_REG_F10
]

{ #category : #register }
UcRISCVRegisters class >> f11 [

	^ UC_RISCV_REG_F11
]

{ #category : #register }
UcRISCVRegisters class >> f12 [

	^ UC_RISCV_REG_F12
]

{ #category : #register }
UcRISCVRegisters class >> f13 [

	^ UC_RISCV_REG_F13
]

{ #category : #register }
UcRISCVRegisters class >> f14 [

	^ UC_RISCV_REG_F14
]

{ #category : #register }
UcRISCVRegisters class >> f15 [

	^ UC_RISCV_REG_F15
]

{ #category : #register }
UcRISCVRegisters class >> f16 [

	^ UC_RISCV_REG_F16
]

{ #category : #register }
UcRISCVRegisters class >> f17 [

	^ UC_RISCV_REG_F17
]

{ #category : #register }
UcRISCVRegisters class >> f18 [

	^ UC_RISCV_REG_F18
]

{ #category : #register }
UcRISCVRegisters class >> f19 [

	^ UC_RISCV_REG_F19
]

{ #category : #register }
UcRISCVRegisters class >> f2 [

	^ UC_RISCV_REG_F2
]

{ #category : #register }
UcRISCVRegisters class >> f20 [

	^ UC_RISCV_REG_F20
]

{ #category : #register }
UcRISCVRegisters class >> f21 [

	^ UC_RISCV_REG_F21
]

{ #category : #register }
UcRISCVRegisters class >> f22 [

	^ UC_RISCV_REG_F22
]

{ #category : #register }
UcRISCVRegisters class >> f23 [

	^ UC_RISCV_REG_F23
]

{ #category : #register }
UcRISCVRegisters class >> f24 [

	^ UC_RISCV_REG_F24
]

{ #category : #register }
UcRISCVRegisters class >> f25 [

	^ UC_RISCV_REG_F25
]

{ #category : #register }
UcRISCVRegisters class >> f26 [

	^ UC_RISCV_REG_F26
]

{ #category : #register }
UcRISCVRegisters class >> f27 [

	^ UC_RISCV_REG_F27
]

{ #category : #register }
UcRISCVRegisters class >> f28 [

	^ UC_RISCV_REG_F28
]

{ #category : #register }
UcRISCVRegisters class >> f29 [

	^ UC_RISCV_REG_F29
]

{ #category : #register }
UcRISCVRegisters class >> f3 [

	^ UC_RISCV_REG_F3
]

{ #category : #register }
UcRISCVRegisters class >> f30 [

	^ UC_RISCV_REG_F30
]

{ #category : #register }
UcRISCVRegisters class >> f31 [

	^ UC_RISCV_REG_F31
]

{ #category : #register }
UcRISCVRegisters class >> f4 [

	^ UC_RISCV_REG_F4
]

{ #category : #register }
UcRISCVRegisters class >> f5 [

	^ UC_RISCV_REG_F5
]

{ #category : #register }
UcRISCVRegisters class >> f6 [

	^ UC_RISCV_REG_F6
]

{ #category : #register }
UcRISCVRegisters class >> f7 [

	^ UC_RISCV_REG_F7
]

{ #category : #register }
UcRISCVRegisters class >> f8 [

	^ UC_RISCV_REG_F8
]

{ #category : #register }
UcRISCVRegisters class >> f9 [

	^ UC_RISCV_REG_F9
]

{ #category : #initialization }
UcRISCVRegisters class >> initialize [ 

	self initializeEnumeration
]

{ #category : #register }
UcRISCVRegisters class >> pc [

	^ UC_RISCV_REG_PC
]

{ #category : #register }
UcRISCVRegisters class >> x0 [

	^ UC_RISCV_REG_X0
]

{ #category : #register }
UcRISCVRegisters class >> x1 [

	^ UC_RISCV_REG_X1
]

{ #category : #register }
UcRISCVRegisters class >> x10 [

	^ UC_RISCV_REG_X10
]

{ #category : #register }
UcRISCVRegisters class >> x11 [

	^ UC_RISCV_REG_X11
]

{ #category : #register }
UcRISCVRegisters class >> x12 [

	^ UC_RISCV_REG_X12
]

{ #category : #register }
UcRISCVRegisters class >> x13 [

	^ UC_RISCV_REG_X13
]

{ #category : #register }
UcRISCVRegisters class >> x14 [

	^ UC_RISCV_REG_X14
]

{ #category : #register }
UcRISCVRegisters class >> x15 [

	^ UC_RISCV_REG_X15
]

{ #category : #register }
UcRISCVRegisters class >> x16 [

	^ UC_RISCV_REG_X16
]

{ #category : #register }
UcRISCVRegisters class >> x17 [

	^ UC_RISCV_REG_X17
]

{ #category : #register }
UcRISCVRegisters class >> x18 [

	^ UC_RISCV_REG_X18
]

{ #category : #register }
UcRISCVRegisters class >> x19 [

	^ UC_RISCV_REG_X19
]

{ #category : #register }
UcRISCVRegisters class >> x2 [

	^ UC_RISCV_REG_X2
]

{ #category : #register }
UcRISCVRegisters class >> x20 [

	^ UC_RISCV_REG_X20
]

{ #category : #register }
UcRISCVRegisters class >> x21 [

	^ UC_RISCV_REG_X21
]

{ #category : #register }
UcRISCVRegisters class >> x22 [

	^ UC_RISCV_REG_X22
]

{ #category : #register }
UcRISCVRegisters class >> x23 [

	^ UC_RISCV_REG_X23
]

{ #category : #register }
UcRISCVRegisters class >> x24 [

	^ UC_RISCV_REG_X24
]

{ #category : #register }
UcRISCVRegisters class >> x25 [

	^ UC_RISCV_REG_X25
]

{ #category : #register }
UcRISCVRegisters class >> x26 [

	^ UC_RISCV_REG_X26
]

{ #category : #register }
UcRISCVRegisters class >> x27 [

	^ UC_RISCV_REG_X27
]

{ #category : #register }
UcRISCVRegisters class >> x28 [

	^ UC_RISCV_REG_X28
]

{ #category : #register }
UcRISCVRegisters class >> x29 [

	^ UC_RISCV_REG_X29
]

{ #category : #register }
UcRISCVRegisters class >> x3 [

	^ UC_RISCV_REG_X3
]

{ #category : #register }
UcRISCVRegisters class >> x30 [

	^ UC_RISCV_REG_X30
]

{ #category : #register }
UcRISCVRegisters class >> x31 [

	^ UC_RISCV_REG_X31
]

{ #category : #register }
UcRISCVRegisters class >> x4 [

	^ UC_RISCV_REG_X4
]

{ #category : #register }
UcRISCVRegisters class >> x5 [

	^ UC_RISCV_REG_X5
]

{ #category : #register }
UcRISCVRegisters class >> x6 [

	^ UC_RISCV_REG_X6
]

{ #category : #register }
UcRISCVRegisters class >> x7 [

	^ UC_RISCV_REG_X7
]

{ #category : #register }
UcRISCVRegisters class >> x8 [

	^ UC_RISCV_REG_X8
]

{ #category : #register }
UcRISCVRegisters class >> x9 [

	^ UC_RISCV_REG_X9
]
