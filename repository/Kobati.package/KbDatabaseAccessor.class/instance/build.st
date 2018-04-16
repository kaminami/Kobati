building
build

	| aDictionary |
	aDictionary := Dictionary new.
	self config resourceMappers 
		do: [:each |
			| newMapper storedMapper |
			newMapper := KbXmlMapper load: each.
			storedMapper := aDictionary at: newMapper namespace ifAbsentPut: [newMapper].
			(storedMapper == newMapper) ifFalse: [ storedMapper merge: newMapper ] ].

	self config evalMappers 
		do: [:each |
			| newMapper storedMapper |
			newMapper := KbXmlMapper from: (Compiler evaluate: each).
			storedMapper := aDictionary at: newMapper namespace ifAbsentPut: [newMapper].
			(storedMapper == newMapper) ifFalse: [ storedMapper merge: newMapper ] ].

	mappers := aDictionary