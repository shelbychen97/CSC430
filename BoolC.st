Object subclass: BoolC [
       | bool |
       <comment: 'A class for defining booleans.'>
       setBool: newBool [
               <category: 'accessing'>
               bool := newBool.
	]
       interp [
               "An instance method to get the bool."
               <category: 'accessing'>
		^bool
	]
  ]

a := BoolC new.
a setBool: true.
true = a interp ifFalse: [self error: 'Wrong answer']
