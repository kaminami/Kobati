query
prepare: flagments
	| array |
	array := flagments isString 
		ifTrue: [Array with: flagments]
		ifFalse: [flagments].

	 sqlFlagments := array