accessing
sortOrder
	^ self isAsc
		ifTrue: [ '' ]
		ifFalse: [ 'descending' ]