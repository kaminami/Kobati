building
buildMappedDictionaryFrom: dictionary to: toObject  using: aResultMap
	aResultMap ifNil: [ self raiseResultMapNotFoundError ].
	
	aResultMap rowsDo: [:eachRow |
		eachRow isCollectionRow ifTrue: [
			| tempObj collectionObj |
			tempObj := dictionary at: eachRow property.
			
			collectionObj := toObject 
									at: eachRow property
									ifAbsentPut: [(Smalltalk at: eachRow type asSymbol) new].
			self 
				buildObjectFrom: tempObj
				to: collectionObj
				using: eachRow resultMap.

			toObject 
				at: eachRow property
				put: (eachRow convert: collectionObj).
		].
	
		eachRow isAssociationRow  ifTrue: [
			| assocObj |
			assocObj := (Smalltalk at: eachRow resultMap type asSymbol) new.
			toObject
				at: eachRow property
				put: assocObj.
				
			self 
				buildAssociationObjectFrom: (dictionary at: eachRow property)
				to: assocObj
				using: eachRow resultMap
		].
	
		eachRow isPrimitiveRow ifTrue: [
			toObject 
				at: eachRow property
				put: (dictionary at: eachRow property)
		].
	].
