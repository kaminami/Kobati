query-select
selectAllEntries
"
	self selectAllEntries
"
	| acc result |
	acc := KbDatabaseAccessor for: (KbConfig from: self config).
	acc transaction: 
			[:session |
			result := (session getMapper: 'Example-xmlMapper') selectAllEntries].
	^ result