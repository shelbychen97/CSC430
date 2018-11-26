a := numC new.
a setNum: 5.
5 = a interp ifFalse: [self error: 'Wrong value for numC']


a := BoolC new.
a setBool: true.
true = a interp ifFalse: [self error: 'Wrong value for boolC']

a := StringC new.
a setS: 'hello'.
'hello' = a interp ifFalse: [self error: 'Wrong value for stringC']


