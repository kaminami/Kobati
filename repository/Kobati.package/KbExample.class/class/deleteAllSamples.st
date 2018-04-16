query-delete
deleteAllSamples
"
	self deleteAllSamples
"
	| acc |
	acc := KbDatabaseAccessor for: (KbConfig from: self config).
	acc transaction: 
			[:session |
			(session getMapper: 'Example-xmlMapper') deleteAll]