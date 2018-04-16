building
buildAssociationObjectFrom: dictionary to: toObject using: aResultMap
	aResultMap ifNil: [ self raiseResultMapNotFoundError ].
	
	aResultMap rows isEmpty
		ifTrue: [ self buildNaiveObjectFrom: dictionary to: toObject using: aResultMap ]
		ifFalse: [ self buildMappedObjectFrom: dictionary to: toObject using: aResultMap ]