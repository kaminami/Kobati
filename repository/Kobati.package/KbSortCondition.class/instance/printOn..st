printing
printOn: aStream
	aStream nextPutAll: {sortKey. (isAsc ifTrue: [#asc] ifFalse: [#desc])} printString