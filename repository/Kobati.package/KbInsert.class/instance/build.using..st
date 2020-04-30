building
build: aNode using: aMapper

	| selectKeyNode |
	super build: aNode using: aMapper.

	selectKeyNode := aNode xpathAny: './selectKey' ifNone: [^ self].

	selectKey := (KbSelectKey new build: selectKeyNode using: aMapper)
					keyProperty: (selectKeyNode attributeAt: 'keyProperty');
					order: (selectKeyNode attributeAt: 'order');
					yourself