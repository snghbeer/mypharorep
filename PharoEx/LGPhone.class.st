Class {
	#name : #LGPhone,
	#superclass : #Phone,
	#category : #PharoEx
}

{ #category : #'as yet unclassified' }
LGPhone class >> initPhone [
	^ self initPhone: 'LG'.
]

{ #category : #accessing }
LGPhone >> calculateBatteryAfterCall: duration [
  battery :=  battery - 0.25.
]
