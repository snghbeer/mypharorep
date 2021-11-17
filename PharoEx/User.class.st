Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'username',
		'phone',
		'inCall'
	],
	#category : #PharoEx
}

{ #category : #initialization }
User class >> initializeUser: username [
	^self new
	username: username;
	phone: Phone new;
	yourself
]

{ #category : #initialization }
User class >> initializeUser: username phone: aString [
	^self new
	username: username;
	phone: (Phone initPhone: aString);
	yourself
]

{ #category : #'ffi-calls' }
User >> call: aUser [
	phone call: aUser . 
	self inCall: true .
]

{ #category : #'ffi-calls' }
User >> call: aUser duration: aInt [
	aUser phone call: aInt .
	phone calculateBatteryAfterCall: aInt.
	self inCall: true .
]

{ #category : #'ffi-calls' }
User >> endCallWith: aUser [
	phone endCall: aUser . 
	self inCall: false .
]

{ #category : #accessing }
User >> inCall [
	^false
]

{ #category : #accessing }
User >> inCall: aBool [
	inCall := aBool
]

{ #category : #accessing }
User >> phone [ 
	^phone
]

{ #category : #accessing }
User >> phone: aPhone [ 
	phone := aPhone 
]

{ #category : #accessing }
User >> username [
	^username 
]

{ #category : #accessing }
User >> username: aString [
	username := aString
]
