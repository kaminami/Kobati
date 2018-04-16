building
buildStatement: aNode of: statementClass

	| includes statement |
	includes := aNode xpathLocate: './include'.
	includes do: 
			[:each |
			| ref xmlText |
			ref := self references
						at: (each xpathAny: './@refid') value.
			xmlText := XMLString string: ref statement.
			xmlText parent: each parent.
			each becomeForward: xmlText].

	statement := statementClass from: aNode for: self.
	
	(self statements includesKey: statement id)
		ifTrue: [ self error: ('same statement exists: {1}' format: { statement id }) ].
		
	self statements at: statement id put: statement
