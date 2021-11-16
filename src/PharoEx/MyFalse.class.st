Class {
	#name : #MyFalse,
	#superclass : #MyBoolean,
	#category : #PharoEx
}

{ #category : #accessing }
MyFalse >> and: aBoolean [
	^false
]

{ #category : #accessing }
MyFalse >> initialize [ 
	| bool |
	bool := super initialize.
	bool state: false.
	^bool
]

{ #category : #'as yet unclassified' }
MyFalse >> myIfFalse: aInt [
	(aInt = 2) ifTrue: [ ^2 ].
	(aInt <= 1) ifTrue: [ ^1 ]
]

{ #category : #'as yet unclassified' }
MyFalse >> myIfTrue: aInt [
	(aInt = 2) ifTrue: [ ^2 ].
	(aInt <= 1) ifTrue: [ ^1 ]
]

{ #category : #accessing }
MyFalse >> not [
	^true
]

{ #category : #accessing }
MyFalse >> or: aBoolean [
	(aBoolean state ) = true ifTrue: [ ^true ].
	(aBoolean state ) = false ifTrue: [ ^false ]
]

{ #category : #accessing }
MyFalse >> state [
	^state
]

{ #category : #accessing }
MyFalse >> state: aState [
	state := aState 
]
