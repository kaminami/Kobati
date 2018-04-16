query-insert
insertAllSamples
	"
	self insertAllSamples
"

	| acc |
	acc := KbDatabaseAccessor for: (KbConfig from: self config).
	acc transaction: 
			[:session |
			self insertSampleAuthors: session.
			self insertSampleTags: session.
			self insertSampleEntries: session.
			self insertSampleEntry2Authors: session.
			self insertSampleEntry2Tags: session]