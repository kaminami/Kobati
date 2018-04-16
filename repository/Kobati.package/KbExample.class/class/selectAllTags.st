query-select
selectAllTags
"
	self selectAllTags
"
	| acc result |
	acc := KbDatabaseAccessor for: (KbConfig from: self config).
	acc transaction: 
			[:session |
			result := (session getMapper: 'Example-xmlMapper') selectAllTags].
	^ result