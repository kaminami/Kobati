accessing
rootDictionary
	rootDictionary ifNil: [ rootDictionary := OrderPreservingDictionary new ].
	^ rootDictionary