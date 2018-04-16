query-insert
insertAuthors
"
	self insertAuthors
"

	| acc |
	acc := KbDatabaseAccessor for: (KbConfig from: self config).
	acc execute: 
			[:session |
			self insertSampleAuthors: session]