building
buildReference: aNode of: statementClass

	| statement |
	statement := statementClass from: aNode for: self.
	self references at: statement id put: statement