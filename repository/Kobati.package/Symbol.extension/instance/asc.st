*Kobati-utility
asc
	| condition |
	condition := KbSortCondition sortKey: self isAsc: true.
	^ KbSortConditionArray with: condition