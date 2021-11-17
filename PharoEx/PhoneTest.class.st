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
PhoneTest >> testCall [
	| phone1 phone2 batteryLevel p1 p2 |
	phone1 := LGPhone initPhone.
	phone2 := IPhone initPhone.
	p1 := User new phone: phone1 ; yourself.
	p2 := User new phone: phone2 ; yourself.
	batteryLevel := phone1 battery.
	p1 call: p2 duration: 10.
	self assert: phone1 battery > 0.
	self assert: phone1 battery < batteryLevel.
]

{ #category : #tests }
PhoneTest >> testCallDecreasesCalleeBattery [
	| phone1 phone2 batteryLevel p1 p2 |
	phone1 := LGPhone initPhone.
	phone2 := IPhone initPhone.
	p1 := User new phone: phone1 ; yourself.
	p2 := User new phone: phone2 ; yourself.
	batteryLevel := phone2 battery.
	p1 call: p2 duration: 10.
	self assert: phone2 battery > 0.
	self assert: phone2 battery < batteryLevel.
]

{ #category : #tests }
PhoneTest >> testCallDecreasesCalleeBatteryByRightAmount [
	| phone1 phone2  p1 p2 |
	phone1 := LGPhone initPhone.
	phone2 := IPhone initPhone.
	p1 := User new phone: phone1 ; yourself.
	p2 := User new phone: phone2 ; yourself.
	p1 call: p2 duration: 10.
	self assert: phone2 battery equals: 4.9
]

{ #category : #tests }
PhoneTest >> testCallDecreasesCallerBattery [
	| phone1 phone2 batteryLevel p1 p2 |
	phone1 := LGPhone initPhone.
	phone2 := IPhone initPhone.
	p1 := User new phone: phone1 ; yourself.
	p2 := User new phone: phone2 ; yourself.
	batteryLevel := phone1 battery.
	p1 call: p2 duration: 10.
	self assert: phone1 battery > 0.
	self assert: phone1 battery < batteryLevel.
]

{ #category : #tests }
PhoneTest >> testCallDecreasesCallerBatteryByRightAmount [
	| phone1 phone2  p1 p2 |
	phone1 := LGPhone initPhone.
	phone2 := IPhone initPhone.
	p1 := User new phone: phone1 ; yourself.
	p2 := User new phone: phone2 ; yourself.
	p1 call: p2 duration: 10.
	self assert: phone1 battery equals: 4.75
]

{ #category : #tests }
PhoneTest >> testInitPhone [
	| tel |
	tel := Phone initPhone: 'iPhone'.
	self assert: ( (tel contacts size = 0) and: (tel model notNil ) )
]
