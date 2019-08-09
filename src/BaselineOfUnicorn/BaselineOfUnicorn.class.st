Class {
	#name : #BaselineOfUnicorn,
	#superclass : #BaselineOf,
	#category : #BaselineOfUnicorn
}

{ #category : #baseline }
BaselineOfUnicorn >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec package: 'Unicorn' ]
]

{ #category : #accessing }
BaselineOfUnicorn >> project [

	^ super project
		loadType: #atomic;
		yourself
]
