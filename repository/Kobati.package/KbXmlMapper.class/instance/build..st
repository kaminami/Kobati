building
build: xmlString

	| parser root mapRoot |
	parser := (self xmlParserClass on: xmlString)
				isValidating: false;
				yourself.
	root := parser parseDocument.

	namespace := root xpathText: '/mapper/@namespace'.

	mapRoot := (root xpathLocate: 'mapper') first.
	self buildResultMaps: mapRoot.
	self buildStatements: mapRoot.
	self buildMethods.