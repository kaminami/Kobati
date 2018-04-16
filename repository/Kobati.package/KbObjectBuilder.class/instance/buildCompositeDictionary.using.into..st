building
buildCompositeDictionary: aRow using: aResultMap into: dictionary
	| key objctDic |
	aResultMap ifNil: [ self raiseResultMapNotFoundError ].
	
	key := aResultMap idRows collect: [:eachRow |
				| idx |
				idx := self indexOfColumn: eachRow column.
				idx = 0 ifTrue: [ self raiseMappingErrorAt: eachRow ].
				aRow at: idx].
	(key includes: nil) ifTrue: [^ self].

	objctDic := dictionary at: key ifAbsentPut: [Dictionary new].

	aResultMap rowsDo: [:eachRow |
		eachRow isPrimitiveRow ifTrue: [
			| idx val |
			idx := self indexOfColumn: eachRow column.
			idx = 0 ifTrue: [ self raiseMappingErrorAt: eachRow ].
			val := aRow at: idx.
			objctDic at: eachRow property put: val.
		].
	
		eachRow isCollectionRow ifTrue: [
			| collectionDict |
			collectionDict := objctDic at: eachRow property ifAbsentPut: [OrderPreservingDictionary new].
			self buildDictionaryFrom: aRow using: eachRow resultMap into: collectionDict
		].
	
		eachRow isAssociationRow  ifTrue: [
			| assocObjDic dic |
			assocObjDic := Dictionary new.
			self buildDictionaryFrom: aRow using: eachRow resultMap into: assocObjDic.
			dic := objctDic at: eachRow property ifAbsentPut: [Dictionary new].
			dic kbMerge: assocObjDic anyOne
		].
	]