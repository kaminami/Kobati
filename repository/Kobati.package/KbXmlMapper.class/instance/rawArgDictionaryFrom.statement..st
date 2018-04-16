query-private
rawArgDictionaryFrom: args statement: aStatement

	| argDict |
	argDict := Dictionary new.
	aStatement arguments 
		with: args 
		do: [:key :value | argDict at: key put: value].
	^argDict