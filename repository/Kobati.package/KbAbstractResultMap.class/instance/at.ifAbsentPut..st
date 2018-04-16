accessing
at: rowId ifAbsentPut: aBlock

	^self rows at: rowId ifAbsentPut: aBlock