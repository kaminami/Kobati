query-update
updateEntry: aEntry
	"
	| entry |
	entry := self selectAllEntries last.
	entry contents: Timestamp now printString.
	self updateEntry: entry.
	^ self selectEntryById: entry id
"

	| acc |
	acc := KbDatabaseAccessor for: (KbConfig from: self config).
	acc transaction: 
			[:session |
			(session getMapper: 'Example-xmlMapper') updateEntry: aEntry]