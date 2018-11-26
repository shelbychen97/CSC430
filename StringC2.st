Object subclass: StringC [
	| s |


	setS: newC [
	<category: 'accessing'>
	s := newC.
	]
	interp [
	<category: 'accessing'>
	^s
	]

]


an := StringC new.
an setS: 'hello'.
an interp = 'hello' ifFalse: [self error: 'Wrong value for stringC']

