Object subclass: #BoolC.
BoolC instanceVariableNames: 'bool'.

BoolC class extend [
        new [
        | instance |
        <category: 'instance creation'>
        instance := super new.
        instance init.
        ^instance
        ]
]

BoolC extend [
        initWith: value [
                <category: 'initialization with value'>
                bool := value
        ]
]

BoolC extend [
        getBool [
                <category: 'getter'>
                ^bool
        ]
]

BoolC extend [
        printOn: stream [
                <category: 'printing'>
                super printOn: stream.
                stream nextPutAll: ' with bool: '.
                bool printOn: stream
        ]
]

