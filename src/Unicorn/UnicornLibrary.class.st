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

{ #category : #accessing }
UnicornLibrary >> knownMacPaths [
	"Answer a <Collection> of <String> each one representing known libLLVM locations (not necessarily present in the current system"
	
	^ { 
		'/opt/homebrew/lib/' .
		'/usr/local/lib/' .
		'/opt/homebrew/Cellar/unicorn/2.0.1/lib/'
		}

]

{ #category : #'accessing platform' }
UnicornLibrary >> macModuleName [
	"Answer a <String> with the full path to the LibUnicorn library"
	
	^ FFIMacLibraryFinder new
		userPaths: self knownMacPaths;
		findLibrary: 'libunicorn.2.dylib'

]

{ #category : #'accessing platform' }
UnicornLibrary >> unixModuleName [

	"Replace with your own Unicorn2 shared library (libunicorn.so.2), or suppress the breakpoint"
	1halt.
	^ FFIUnix64LibraryFinder findLibrary: 'libunicorn.so'
]
