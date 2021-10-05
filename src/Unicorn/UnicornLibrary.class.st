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
	
	^ FFIMacLibraryFinder findLibrary: 'libunicorn.1.dylib'
]

{ #category : #'accessing platform' }
UnicornLibrary >> unixModuleName [

	"Replace with your own Unicorn2 shared library (libunicorn.so.2), or suppress the breakpoint"
	1halt.
	^ FFIUnix64LibraryFinder findLibrary: 'libunicorn.so'
]
