query-select
selectEntryById: id
"
	self selectEntryById: (self selectAllEntries first id)
"
	| acc result |
	acc := KbDatabaseAccessor for: (KbConfig from: self config).
	acc transaction: 
			[:session |
			result := (session getMapper: 'Example-xmlMapper') selectEntryById: id].
	^ result