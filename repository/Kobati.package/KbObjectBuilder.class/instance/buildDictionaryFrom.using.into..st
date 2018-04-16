building
buildDictionaryFrom: aRow using: aResultMap into: dictionary
	aResultMap ifNil: [ self raiseResultMapNotFoundError ].

	aResultMap rows isEmpty
		ifFalse: [ self buildCompositeDictionary: aRow using: aResultMap into: dictionary ]
		ifTrue: [ self buildFlatDictionary: aRow columns: self columns into: dictionary ]