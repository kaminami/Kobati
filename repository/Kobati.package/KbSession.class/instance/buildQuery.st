private
buildQuery
	| ws bindIndex |
	ws := WriteStream on: String new.

	bindIndex := 1.
	sqlFlagments do: [ :each |
		({'?'. '@'} includes:  each)
			ifFalse: [ws nextPutAll: each]
			ifTrue: 
				[| value sqlValue |
				value := bindInput at: bindIndex.
				sqlValue := (each = '?')
							ifTrue: [value asKobatiSqlLiteral] "#{}"
							ifFalse: [value asKobatiSqlStatement]. "${}"
				ws nextPutAll: sqlValue.
				bindIndex := bindIndex + 1]
	 ].

	query := ws contents