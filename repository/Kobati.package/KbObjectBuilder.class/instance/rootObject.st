accessing
rootObject
	rootObject ifNil: [ rootObject := OrderedCollection new ].
	^ rootObject