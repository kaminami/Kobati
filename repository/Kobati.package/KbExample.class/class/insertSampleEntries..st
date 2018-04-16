query-insert
insertSampleEntries: session

	| mapper |
	mapper := session getMapper: 'Example-xmlMapper'.
	self sampleEntries
		do: [:each | mapper insertEntryTitle: each first contents: each last]