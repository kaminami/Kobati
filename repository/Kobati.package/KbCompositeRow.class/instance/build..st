building
build: aNode

	| resultMapVal |
	property := aNode attributeAt: 'property'.

	resultMapVal := aNode attributeAt:  'resultMap' ifAbsent: [].
	resultMap := resultMapVal isNil
		ifTrue: [KbInnerResultMap from: aNode]
		ifFalse: [KbResultMapReference to: resultMapVal]