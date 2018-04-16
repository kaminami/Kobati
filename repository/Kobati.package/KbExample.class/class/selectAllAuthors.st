query-select
selectAllAuthors
"
	self selectAllAuthors
"
	| acc result |
	acc := KbDatabaseAccessor for: (KbConfig from: self config).
	acc transaction: 
			[:session |
			result := (session getMapper: 'Example-xmlMapper') selectAllAuthors].
	^ result