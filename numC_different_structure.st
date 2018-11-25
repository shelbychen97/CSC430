"
SetTestCase>>#testnumC1
	test := numC new.
	test setNum: 1.
	self should: [test interp: 1]

SetTestCase>>#testnumC2
	test := numC new.
	test setNum: 2.
	self should: [test interp: 2]

(TestSuite named: 'numC')
	add: (numCTestCase selector: #testnumC1);
	add: (numCTestCase selector: #testnumC2);
	run
"

Object subclass: numC [
	| num |
	
	setNum: number [
		<category: 'accessing'>
		num := number.
	]

	interp [
		<category: 'accesing'>
		^num
	]	
]	

a := numC new.
a setNum: 5.
5 = a interp ifFalse: [self error: 'Wrong answer']

