create table
createTables
"
	self createTables
"
	| acc |
	acc := KbDatabaseAccessor for: (KbConfig from: self config).
	acc transaction: 
			[:session |
				session prepare: self entryTableSchema; execute.
				session prepare: self tagTableSchema; execute.
				session prepare: self authorTableSchema; execute.
				session prepare: self entry2TagTableSchema; execute.
				session prepare: self entry2AuthorTableSchema; execute.
			] 