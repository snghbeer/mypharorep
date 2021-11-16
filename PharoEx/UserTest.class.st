Class {
	#name : #UserTest,
	#superclass : #TestCase,
	#instVars : [
		'username',
		'phone'
	],
	#category : #PharoEx
}

{ #category : #tests }
UserTest >> testInitUser [
	| jean |
	jean := User initializeUser: 'Jean' .
	self assert: ((jean username = 'Jean') and: ((jean phone notNil) ) )
]
