query-insert
insertSampleAuthors: session

	| mapper |
	mapper := session getMapper: 'Example-xmlMapper'.
	self sampleAuthors
		do: [:each | mapper insertAuthor: each]