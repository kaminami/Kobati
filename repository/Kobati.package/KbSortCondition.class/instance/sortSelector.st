accessing
sortSelector
	^ self isAsc
		ifTrue: [ #< ]
		ifFalse: [ #> ]