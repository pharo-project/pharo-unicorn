"
Shared pool containing type definitions and aliases for the Unicorn library
"
Class {
	#name : #UnicornTypes,
	#superclass : #SharedPool,
	#classVars : [
		'UC_arch',
		'UC_err',
		'UC_mode'
	],
	#category : #Unicorn
}

{ #category : #'class initialization' }
UnicornTypes class >> initialize [

	UC_err := #int.
	UC_arch := #int.
	UC_mode := #int.
]
