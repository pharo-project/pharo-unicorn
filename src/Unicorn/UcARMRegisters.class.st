"
I define ARM 32bits register constants.
"
Class {
	#name : #UcARMRegisters,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'UC_ARM_REG_APSR',
		'UC_ARM_REG_APSR_NZCV',
		'UC_ARM_REG_C13_C0_2',
		'UC_ARM_REG_C13_C0_3',
		'UC_ARM_REG_C1_C0_2',
		'UC_ARM_REG_CONTROL',
		'UC_ARM_REG_CPSR',
		'UC_ARM_REG_D0',
		'UC_ARM_REG_D1',
		'UC_ARM_REG_D10',
		'UC_ARM_REG_D11',
		'UC_ARM_REG_D12',
		'UC_ARM_REG_D13',
		'UC_ARM_REG_D14',
		'UC_ARM_REG_D15',
		'UC_ARM_REG_D16',
		'UC_ARM_REG_D17',
		'UC_ARM_REG_D18',
		'UC_ARM_REG_D19',
		'UC_ARM_REG_D2',
		'UC_ARM_REG_D20',
		'UC_ARM_REG_D21',
		'UC_ARM_REG_D22',
		'UC_ARM_REG_D23',
		'UC_ARM_REG_D24',
		'UC_ARM_REG_D25',
		'UC_ARM_REG_D26',
		'UC_ARM_REG_D27',
		'UC_ARM_REG_D28',
		'UC_ARM_REG_D29',
		'UC_ARM_REG_D3',
		'UC_ARM_REG_D30',
		'UC_ARM_REG_D31',
		'UC_ARM_REG_D4',
		'UC_ARM_REG_D5',
		'UC_ARM_REG_D6',
		'UC_ARM_REG_D7',
		'UC_ARM_REG_D8',
		'UC_ARM_REG_D9',
		'UC_ARM_REG_ENDING',
		'UC_ARM_REG_FP',
		'UC_ARM_REG_FPEXC',
		'UC_ARM_REG_FPINST',
		'UC_ARM_REG_FPINST2',
		'UC_ARM_REG_FPSCR',
		'UC_ARM_REG_FPSCR_NZCV',
		'UC_ARM_REG_FPSID',
		'UC_ARM_REG_INVALID',
		'UC_ARM_REG_IP',
		'UC_ARM_REG_IPSR',
		'UC_ARM_REG_ITSTATE',
		'UC_ARM_REG_LR',
		'UC_ARM_REG_MSP',
		'UC_ARM_REG_MVFR0',
		'UC_ARM_REG_MVFR1',
		'UC_ARM_REG_MVFR2',
		'UC_ARM_REG_PC',
		'UC_ARM_REG_PSP',
		'UC_ARM_REG_Q0',
		'UC_ARM_REG_Q1',
		'UC_ARM_REG_Q10',
		'UC_ARM_REG_Q11',
		'UC_ARM_REG_Q12',
		'UC_ARM_REG_Q13',
		'UC_ARM_REG_Q14',
		'UC_ARM_REG_Q15',
		'UC_ARM_REG_Q2',
		'UC_ARM_REG_Q3',
		'UC_ARM_REG_Q4',
		'UC_ARM_REG_Q5',
		'UC_ARM_REG_Q6',
		'UC_ARM_REG_Q7',
		'UC_ARM_REG_Q8',
		'UC_ARM_REG_Q9',
		'UC_ARM_REG_R0',
		'UC_ARM_REG_R1',
		'UC_ARM_REG_R10',
		'UC_ARM_REG_R11',
		'UC_ARM_REG_R12',
		'UC_ARM_REG_R13',
		'UC_ARM_REG_R14',
		'UC_ARM_REG_R15',
		'UC_ARM_REG_R2',
		'UC_ARM_REG_R3',
		'UC_ARM_REG_R4',
		'UC_ARM_REG_R5',
		'UC_ARM_REG_R6',
		'UC_ARM_REG_R7',
		'UC_ARM_REG_R8',
		'UC_ARM_REG_R9',
		'UC_ARM_REG_S0',
		'UC_ARM_REG_S1',
		'UC_ARM_REG_S10',
		'UC_ARM_REG_S11',
		'UC_ARM_REG_S12',
		'UC_ARM_REG_S13',
		'UC_ARM_REG_S14',
		'UC_ARM_REG_S15',
		'UC_ARM_REG_S16',
		'UC_ARM_REG_S17',
		'UC_ARM_REG_S18',
		'UC_ARM_REG_S19',
		'UC_ARM_REG_S2',
		'UC_ARM_REG_S20',
		'UC_ARM_REG_S21',
		'UC_ARM_REG_S22',
		'UC_ARM_REG_S23',
		'UC_ARM_REG_S24',
		'UC_ARM_REG_S25',
		'UC_ARM_REG_S26',
		'UC_ARM_REG_S27',
		'UC_ARM_REG_S28',
		'UC_ARM_REG_S29',
		'UC_ARM_REG_S3',
		'UC_ARM_REG_S30',
		'UC_ARM_REG_S31',
		'UC_ARM_REG_S4',
		'UC_ARM_REG_S5',
		'UC_ARM_REG_S6',
		'UC_ARM_REG_S7',
		'UC_ARM_REG_S8',
		'UC_ARM_REG_S9',
		'UC_ARM_REG_SB',
		'UC_ARM_REG_SL',
		'UC_ARM_REG_SP',
		'UC_ARM_REG_SPSR'
	],
	#category : #Unicorn
}

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d0 [
	^ UC_ARM_REG_D0
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d1 [
	^ UC_ARM_REG_D1
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d10 [
	^ UC_ARM_REG_D10
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d11 [
	^ UC_ARM_REG_D11
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d12 [
	^ UC_ARM_REG_D12
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d13 [
	^ UC_ARM_REG_D13
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d14 [
	^ UC_ARM_REG_D14
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d15 [
	^ UC_ARM_REG_D15
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d2 [
	^ UC_ARM_REG_D2
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d3 [
	^ UC_ARM_REG_D3
]

{ #category : #accessing }
UcARMRegisters class >> d4 [
	^ UC_ARM_REG_D4
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d5 [
	^ UC_ARM_REG_D5
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d6 [
	^ UC_ARM_REG_D6
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d7 [
	^ UC_ARM_REG_D7
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d8 [
	^ UC_ARM_REG_D8
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> d9 [
	^ UC_ARM_REG_D9
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> eflags [
	^ UC_ARM_REG_EFLAGS
]

{ #category : #'enum declaration' }
UcARMRegisters class >> enumDecl [

	^ #(
	UC_ARM_REG_INVALID 0
	UC_ARM_REG_APSR 1
	UC_ARM_REG_APSR_NZCV 2
	UC_ARM_REG_CPSR 3
	UC_ARM_REG_FPEXC 4
	UC_ARM_REG_FPINST 5
	UC_ARM_REG_FPSCR 6
	UC_ARM_REG_FPSCR_NZCV 7
	UC_ARM_REG_FPSID 8
	UC_ARM_REG_ITSTATE 9
	UC_ARM_REG_LR 10
	UC_ARM_REG_PC 11
	UC_ARM_REG_SP 12
	UC_ARM_REG_SPSR 13
	UC_ARM_REG_D0 14
	UC_ARM_REG_D1 15
	UC_ARM_REG_D2 16
	UC_ARM_REG_D3 17
	UC_ARM_REG_D4 18
	UC_ARM_REG_D5 19
	UC_ARM_REG_D6 20
	UC_ARM_REG_D7 21
	UC_ARM_REG_D8 22
	UC_ARM_REG_D9 23
	UC_ARM_REG_D10 24
	UC_ARM_REG_D11 25
	UC_ARM_REG_D12 26
	UC_ARM_REG_D13 27
	UC_ARM_REG_D14 28
	UC_ARM_REG_D15 29
	UC_ARM_REG_D16 30
	UC_ARM_REG_D17 31
	UC_ARM_REG_D18 32
	UC_ARM_REG_D19 33
	UC_ARM_REG_D20 34
	UC_ARM_REG_D21 35
	UC_ARM_REG_D22 36
	UC_ARM_REG_D23 37
	UC_ARM_REG_D24 38
	UC_ARM_REG_D25 39
	UC_ARM_REG_D26 40
	UC_ARM_REG_D27 41
	UC_ARM_REG_D28 42
	UC_ARM_REG_D29 43
	UC_ARM_REG_D30 44
	UC_ARM_REG_D31 45
	UC_ARM_REG_FPINST2 46
	UC_ARM_REG_MVFR0 47
	UC_ARM_REG_MVFR1 48
	UC_ARM_REG_MVFR2 49
	UC_ARM_REG_Q0 50
	UC_ARM_REG_Q1 51
	UC_ARM_REG_Q2 52
	UC_ARM_REG_Q3 53
	UC_ARM_REG_Q4 54
	UC_ARM_REG_Q5 55
	UC_ARM_REG_Q6 56
	UC_ARM_REG_Q7 57
	UC_ARM_REG_Q8 58
	UC_ARM_REG_Q9 59
	UC_ARM_REG_Q10 60
	UC_ARM_REG_Q11 61
	UC_ARM_REG_Q12 62
	UC_ARM_REG_Q13 63
	UC_ARM_REG_Q14 64
	UC_ARM_REG_Q15 65
	UC_ARM_REG_R0 66
	UC_ARM_REG_R1 67
	UC_ARM_REG_R2 68
	UC_ARM_REG_R3 69
	UC_ARM_REG_R4 70
	UC_ARM_REG_R5 71
	UC_ARM_REG_R6 72
	UC_ARM_REG_R7 73
	UC_ARM_REG_R8 74
	UC_ARM_REG_R9 75
	UC_ARM_REG_R10 76
	UC_ARM_REG_R11 77
	UC_ARM_REG_R12 78
	UC_ARM_REG_S0 79
	UC_ARM_REG_S1 80
	UC_ARM_REG_S2 81
	UC_ARM_REG_S3 82
	UC_ARM_REG_S4 83
	UC_ARM_REG_S5 84
	UC_ARM_REG_S6 85
	UC_ARM_REG_S7 86
	UC_ARM_REG_S8 87
	UC_ARM_REG_S9 88
	UC_ARM_REG_S10 89
	UC_ARM_REG_S11 90
	UC_ARM_REG_S12 91
	UC_ARM_REG_S13 92
	UC_ARM_REG_S14 93
	UC_ARM_REG_S15 94
	UC_ARM_REG_S16 95
	UC_ARM_REG_S17 96
	UC_ARM_REG_S18 97
	UC_ARM_REG_S19 98
	UC_ARM_REG_S20 99
	UC_ARM_REG_S21 100
	UC_ARM_REG_S22 101
	UC_ARM_REG_S23 102
	UC_ARM_REG_S24 103
	UC_ARM_REG_S25 104
	UC_ARM_REG_S26 105
	UC_ARM_REG_S27 106
	UC_ARM_REG_S28 107
	UC_ARM_REG_S29 108
	UC_ARM_REG_S30 109
	UC_ARM_REG_S31 110
	UC_ARM_REG_C1_C0_2 111
	UC_ARM_REG_C13_C0_2 112
	UC_ARM_REG_C13_C0_3 113
	UC_ARM_REG_IPSR 114
	UC_ARM_REG_MSP 115
	UC_ARM_REG_PSP 116
	UC_ARM_REG_CONTROL 117
	UC_ARM_REG_ENDING 118
	UC_ARM_REG_R13 12
	UC_ARM_REG_R14 10
	UC_ARM_REG_R15 11
	UC_ARM_REG_SB 75
	UC_ARM_REG_SL 76
	UC_ARM_REG_FP 77
	UC_ARM_REG_IP 78
	)
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> fp [
	^ UC_ARM_REG_FP
]

{ #category : #'class initialization' }
UcARMRegisters class >> initialize [
	self initializeEnumeration
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> lr [
	^ UC_ARM_REG_LR
]

{ #category : #accessing }
UcARMRegisters class >> pc [
	^ UC_ARM_REG_PC
]

{ #category : #accessing }
UcARMRegisters class >> r0 [
	^ UC_ARM_REG_R0
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> r1 [
	^ UC_ARM_REG_R1
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> r12 [
	^ UC_ARM_REG_R12
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> r2 [
	^ UC_ARM_REG_R2
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> r3 [
	^ UC_ARM_REG_R3
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> r4 [
	^ UC_ARM_REG_R4
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> r5 [
	^ UC_ARM_REG_R5
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> r6 [
	^ UC_ARM_REG_R6
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> r7 [
	^ UC_ARM_REG_R7
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> r8 [
	^ UC_ARM_REG_R8
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> r9 [
	^ UC_ARM_REG_R9
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> sl [
	^ UC_ARM_REG_SL
]

{ #category : #'as yet unclassified' }
UcARMRegisters class >> sp [
	^ UC_ARM_REG_SP
]
