Class {
	#name : #MyTrue,
	#superclass : #MyBoolean,
	#category : #PharoEx
}

{ #category : #'logical operations' }
MyTrue >> and: aBoolean [
	(aBoolean state ) = true ifTrue: [ ^true ].
	(aBoolean state ) = false ifTrue: [ ^false ]
]

{ #category : #initialization }
MyTrue >> initialize [ 
	| bool |
	bool := super initialize.
	bool state: true.
	^bool
]

{ #category : #'as yet unclassified' }
MyTrue >> myIfFalse: aInt [
	(aInt = 1) ifTrue: [ ^2 ].
	(aInt <= 2) ifTrue: [ ^1 ]
]

{ #category : #'as yet unclassified' }
MyTrue >> myIfTrue: aInt [
	(aInt = 1) ifTrue: [ ^1 ].
	(aInt > 1) ifTrue: [ ^2 ]
]

{ #category : #'logical operations' }
MyTrue >> not [
	^false
]

{ #category : #'logical operations' }
MyTrue >> or: aBoolean [
	^true
]

{ #category : #'logical operations' }
MyTrue >> state [ 
	^state
]

{ #category : #accessing }
MyTrue >> state: aState [
	state:= aState
]
