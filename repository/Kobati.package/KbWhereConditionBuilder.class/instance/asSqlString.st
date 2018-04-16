converting
asSqlString
	^ ' AND ' join: (self expressions collect: [:each | '({1})' format: { each }])