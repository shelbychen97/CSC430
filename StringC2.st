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
an setS: 'Minnosh'.
an interp printNl.

an interp = 'Minnosh' ifFalse: [self error: 'Wrong value for stringC']

