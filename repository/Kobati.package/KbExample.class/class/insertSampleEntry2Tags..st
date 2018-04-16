query-insert
insertSampleEntry2Tags: session

	| mapper |
	mapper := session getMapper: 'Example-xmlMapper'.
	mapper insertSampleEntry2Tags