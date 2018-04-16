query-insert
insertSampleEntry2Authors: session

	| mapper |
	mapper := session getMapper: 'Example-xmlMapper'.
	mapper insertSampleEntry2Authors