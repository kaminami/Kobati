private
extractValuesFrom: resultSet
	| rows col |
	rows := resultSet rowsWithColumnNameDictionary.
	col := OrderedCollection new: rows size.
	rows do: [ :eachRow |
		| dic |
		dic := Dictionary new.
		eachRow keysAndValuesDo: [ :key :value |
			dic 
				at: key asString 
				put: value.
		].

		col add: dic.
	].

	^ col