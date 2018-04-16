building
addResultRow: aNode of: rowClass

	| property |
	property := aNode attributeAt: 'property'.
	self at: property ifAbsentPut: [rowClass from: aNode]