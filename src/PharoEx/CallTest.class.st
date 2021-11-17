Class {
	#name : #CallTest,
	#superclass : #TestCase,
	#instVars : [
		'elisa',
		'matteo'
	],
	#category : #PharoEx
}

{ #category : #running }
CallTest >> setUp [
	elisa := User initializeUser: 'Elisa' phone:'iPhone' .
	matteo := User initializeUser: 'Matteo' phone:'LG' .

]

{ #category : #tests }
CallTest >> testCallMoc [
	elisa phone addContact: matteo .
	matteo phone addContact: elisa .
	matteo call: elisa duration:10.
	elisa call: matteo duration:2.
	self assert: ((((matteo phone battery) = 0) not) and: (((elisa phone battery) = 0) not)).
]
