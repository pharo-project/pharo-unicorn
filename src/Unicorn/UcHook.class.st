Class {
	#name : #UcHook,
	#superclass : #Object,
	#instVars : [
		'handle',
		'callback',
		'type'
	],
	#category : #Unicorn
}

{ #category : #accessing }
UcHook >> callback: aFFICallback [ 
	callback := aFFICallback
]

{ #category : #accessing }
UcHook >> handle: aCollection [ 
	handle := aCollection
]

{ #category : #accessing }
UcHook >> type: anUcHookType [ 
	type := anUcHookType
]
