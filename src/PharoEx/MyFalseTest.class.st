Class {
	#name : #MyFalseTest,
	#superclass : #TestCase,
	#instVars : [
		'state'
	],
	#category : #PharoEx
}

{ #category : #tests }
MyFalseTest >> testInitMyFalse [
	| aBool |
	aBool := MyFalse new .
	self assert: (aBool state notNil )
]
