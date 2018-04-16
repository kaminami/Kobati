building
build: aNode

	super build: aNode.

	type := aNode attributeAt: 'type' ifAbsent: ['OrderedCollection'].
	ofType := aNode attributeAt: 'ofType' ifAbsent: [].
	convertAs := aNode attributeAt: 'convertAs' ifAbsent: [].
	converter := aNode attributeAt: 'converter' ifAbsent: [].
