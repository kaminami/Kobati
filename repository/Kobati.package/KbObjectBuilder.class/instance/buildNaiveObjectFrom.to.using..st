building
buildNaiveObjectFrom: dictionary to: toObject using: aResultMap
	aResultMap ifNil: [ self raiseResultMapNotFoundError ].
	
	dictionary keysAndValuesDo: 
			[:key :value |
			toObject
				perform: key asSymbol asMutator
				with: value].
				