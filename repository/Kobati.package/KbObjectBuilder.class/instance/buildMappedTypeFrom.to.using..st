building
buildMappedTypeFrom: dictionary to: toObject  using: aResultMap
	aResultMap ifNil: [ self raiseResultMapNotFoundError ].
	
	aResultMap rowsDo: [:eachRow |
		eachRow isCollectionRow ifTrue: [
			| tempObj collectionObj |
			tempObj := dictionary at: eachRow property.
			
			collectionObj := (toObject perform: eachRow propertyAccessor)
									ifNotNil: [:col | col]
									ifNil: [(Smalltalk at: eachRow type asSymbol) new].
			self 
				buildObjectFrom: tempObj
				to: collectionObj
				using: eachRow resultMap.

			toObject 
				perform: eachRow propertyMutator
				with: (eachRow convert: collectionObj).
		].
	
		eachRow isAssociationRow  ifTrue: [
			| assocObj |
			assocObj := (Smalltalk at: eachRow resultMap type asSymbol) new.
			self 
				buildAssociationObjectFrom: (dictionary at: eachRow property)
				to: assocObj
				using: eachRow resultMap.
			toObject
				perform: eachRow propertyMutator
				with: assocObj.
		].
	
		eachRow isPrimitiveRow ifTrue: [
			toObject
				perform: eachRow propertyMutator
				with: (dictionary at: eachRow property)
		].
	].
