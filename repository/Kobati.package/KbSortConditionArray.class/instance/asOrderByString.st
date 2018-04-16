converting
asOrderByString
	^ String streamContents: [ :stream |
		self conditions 
			do: [ :each | 
				stream nextPutAll: (self prefix , each sortKey).
				stream space.
				stream nextPutAll: (each isAsc ifTrue: ['ASC'] ifFalse: ['DESC']).
				stream space.
				stream nextPutAll: (each isNullsFirst ifTrue: ['NULLS FIRST'] ifFalse: ['NULLS LAST']) ]
			separatedBy: [ stream nextPutAll: ', ' ]
	]
	