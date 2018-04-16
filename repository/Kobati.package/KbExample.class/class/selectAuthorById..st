query-select
selectAuthorById: id
"
	self selectAuthorById: (self selectAllAuthors last id)
"
	| acc result |
	acc := KbDatabaseAccessor for: (KbConfig from: self config).
	acc transaction: 
			[:session |
			result := (session getMapper: 'Example-xmlMapper') selectAuthorById: id].
	^ result