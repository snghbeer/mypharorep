Class {
	#name : #Phone,
	#superclass : #Object,
	#instVars : [
		'modelName',
		'battery',
		'contacts',
		'callDuration'
	],
	#category : #PharoEx
}

{ #category : #'as yet unclassified' }
Phone class >> initPhone: aModel [
	^self new
	modelname: aModel;
	battery: 5;
	contacts: Set new;
	
	yourself
]

{ #category : #adding }
Phone >> addContact: aUser [
	contacts add: aUser
]

{ #category : #accessing }
Phone >> battery [
	^battery
]

{ #category : #accessing }
Phone >> battery: aInt [
	battery := aInt
]

{ #category : #accessing }
Phone >> calculateBatteryAfterCall: duration [
	(self model = 'iPhone') ifTrue: [ self battery: (0.1 * duration) ].
	(self model = 'LG') ifTrue: [ self battery: (0.25 * duration) ].
	
]

{ #category : #adding }
Phone >> call: aUser [
	aUser inCall: true.
]

{ #category : #adding }
Phone >> call: aUser duration: aInt [
	aUser inCall: true.
	self calculateBatteryAfterCall: aInt.
]

{ #category : #accessing }
Phone >> callDuration [
	^callDuration 
]

{ #category : #accessing }
Phone >> callDuration: aInt [
	callDuration := aInt
]

{ #category : #accessing }
Phone >> contacts [
	^contacts 
]

{ #category : #accessing }
Phone >> contacts: aList [
	contacts := aList
]

{ #category : #adding }
Phone >> endCall: aUser [
	aUser inCall: false.
]

{ #category : #adding }
Phone >> find: aUsername [
	| result |
	contacts do:[:each | aUsername = each ifTrue: [ 
			result := User initializeUser: each.
			 ] 
		].
	^result
]

{ #category : #accessing }
Phone >> model [ 
	^modelName 
]

{ #category : #accessing }
Phone >> modelname: aString [
	modelName := aString
]
