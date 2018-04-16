query-insert
insertSampleTags: session

	| mapper |
	mapper := session getMapper: 'Example-xmlMapper'.
	self sampleTags
		do: [:each | mapper insertTag: each]