Class {
	#name : #MyTrueTest,
	#superclass : #TestCase,
	#instVars : [
		'state'
	],
	#category : #PharoEx
}

{ #category : #tests }
MyTrueTest >> testInitMyFalse [
	| aBool |
	aBool := MyTrue new .
	self assert: (aBool state notNil )
]
