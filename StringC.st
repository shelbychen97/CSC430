Object subclass: #StringC.
StringC instanceVariableNames: 's'.
		
StringC class extend [
	new [
	| instance |
	instance := super new.
	instance init.
	^instance
	]
]


StringC extend [
	initWith: value [
		s := value
	]
]

StringC extend [
	set: value [
		s := value
	]
]

StringC extend [
	interp [
		^s
	]
]

StringC extend [
	printOn: stream [
		<category: 'printing'>
		super printOn: stream.
		stream nextPutAll: ' with string: '.
		s printOn: stream
	]
]
