building
buildObjectFrom: dictionary to: toObject using: aResultMap
	aResultMap ifNil: [ self raiseResultMapNotFoundError ].
	
	aResultMap rows isEmpty
		ifTrue: [ 
			dictionary
				valuesDo: [ :eachDict | 
					| type |
					type := aResultMap type asSymbol.
					(type == #raw)
						ifTrue: [ toObject add: (self buildNaiveObjectFrom: eachDict) ]
						ifFalse:
							[ | inst |
							inst := (Smalltalk at: type) new.
							self buildNaiveObjectFrom: eachDict to: inst using: aResultMap.
							toObject add: inst ] ] ]
		ifFalse: [ 
			dictionary
				valuesDo: [ :eachDict | 
					| inst |
					inst := (Smalltalk at: aResultMap type asSymbol) new.
					self buildMappedObjectFrom: eachDict to: inst using: aResultMap.
					toObject add: inst ] ]