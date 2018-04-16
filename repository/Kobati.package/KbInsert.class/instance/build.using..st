building
build: aNode using: aMapper

	| selectKeyNode |
	super build: aNode using: aMapper.

	selectKeyNode := aNode xpathAny: './selectKey' ifNone: [^ self].

	selectKey := KbSelectKey new
						keyProperty: (selectKeyNode attributeAt: 'keyProperty');
						order: (selectKeyNode attributeAt: 'order');
						statement: (self extractStatementFrom: selectKeyNode);
						yourself.