query-select
selectAllEntries2
"
	self selectAllEntries2
"
	| acc result |
	acc := KbDatabaseAccessor for: (KbConfig from: self config).
	acc transaction: 
			[:session |
			result := (session getMapper: 'Example-xmlMapper') selectAllEntries2].
	^ result