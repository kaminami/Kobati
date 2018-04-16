building
buildStatements: xmlRoot

	self buildReferencedStatements: xmlRoot.
	self buildQueryStatements: xmlRoot.