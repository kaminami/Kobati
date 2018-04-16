comparing
= other
	self class = other class ifFalse: [ ^false ].
	^self sortKey = other sortKey and: [ self isAsc = other isAsc ]