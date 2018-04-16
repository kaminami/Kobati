query-select
selectTagById: id
"
	self selectTagById: (self selectAllTags last id)
"
	| acc result |
	acc := KbDatabaseAccessor for: (KbConfig from: self config).
	acc transaction: 
			[:session |
			result := (session getMapper: 'Example-xmlMapper') selectTagById: id].
	^ result