instance creation
from: answer
	| inst |
	inst := self new.
	answer ifEmpty: [ ^ inst ].
	
	(answer first isKindOf: PG3ResultSet)
		ifTrue: [ inst resultSet: answer first ].

	(answer first isKindOf: PG3ExceptionResponse) 
		ifTrue: [ inst exceptionResponse: answer first ].

	^ inst