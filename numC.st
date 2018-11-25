SetTestCase>>#testnumC1
	test := numC new init: 1.
	self should: [test interp: 1]

SetTestCase>>#testnumC2
	test := numC new init: 2.
	self should: [test interp: 2]

(TestSuite named: 'numC')
	add: (numCTestCase selector: #testnumC1);
	add: (numCTestCase selector: #testnumC2);
	run


Object subclass: #numC.
numC instanceVariableNames: 'num'.

numC class extend [
	new [
		| r |
		<category: 'instance creation'>
		r := super new.
		r init.
		^r
	]
]


numC extend [
	init: number [
		<category: 'initialize numC'>
		num := number
	]
]


numC extend [
	interp [
		<category: 'interp number'>
		^num
	]
]

