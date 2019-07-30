"
I represent the Unicorn library, and I'm in charge of fetching it from the disk for further loading.
"
Class {
	#name : #UnicornLibrary,
	#superclass : #FFILibrary,
	#pools : [
		'UnicornTypes'
	],
	#category : #Unicorn
}

{ #category : #'accessing platform' }
UnicornLibrary >> macModuleName [
	
	^ 'libunicorn.1.dylib'
]
