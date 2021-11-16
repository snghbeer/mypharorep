Class {
	#name : #PhoneTest,
	#superclass : #TestCase,
	#instVars : [
		'modelName',
		'battery',
		'contacts'
	],
	#category : #PharoEx
}

{ #category : #tests }
PhoneTest >> testInitPhone [
	| tel |
	tel := Phone initPhone: 'iPhone'.
	self assert: ( (tel contacts size = 0) and: (tel model notNil ) )
]
