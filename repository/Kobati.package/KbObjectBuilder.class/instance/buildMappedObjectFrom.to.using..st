building
buildMappedObjectFrom: dictionary to: toObject using: aResultMap
	aResultMap ifNil: [ self raiseResultMapNotFoundError ].
	
	^ toObject isDictionary
		ifTrue: [ self buildMappedDictionaryFrom: dictionary to: toObject using: aResultMap ]
		ifFalse: [ self buildMappedTypeFrom: dictionary to: toObject using: aResultMap ]