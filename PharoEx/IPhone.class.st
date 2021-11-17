Class {
	#name : #IPhone,
	#superclass : #Phone,
	#category : #PharoEx
}

{ #category : #'as yet unclassified' }
IPhone class >> initPhone [
	^ self initPhone: 'IPhone'.
]

{ #category : #accessing }
IPhone >> calculateBatteryAfterCall: duration [
	 self battery: battery - (0.01 * duration) 
	
]
