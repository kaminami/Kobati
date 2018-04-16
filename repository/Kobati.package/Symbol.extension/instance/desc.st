*Kobati-utility
desc
	| condition |
	condition := KbSortCondition sortKey: self isAsc: false.
	^ KbSortConditionArray with: condition