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
MyTrue >> myIfTrue: aInt myIfFalse: bInt [
	^bInt value
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
