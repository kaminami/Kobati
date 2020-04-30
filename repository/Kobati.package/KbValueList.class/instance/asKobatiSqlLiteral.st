printing
asKobatiSqlLiteral
	^ String
		streamContents: [ :stream | 
			stream nextPutAll: '('.
			self collection
				do: [ :each | 
					| val |
					val := each isNumber 
						ifTrue: [ each asString ]
						ifFalse: [ each asString asKobatiSqlLiteral  ].
					stream nextPutAll: val ]
				separatedBy: [ stream nextPutAll: ', ' ].
			stream nextPutAll: ')' ]