*Kobati-utility
xpathAny: anXPathOrString ifNone: aBlock

	| nodeCol |
	nodeCol := self xpathLocate: anXPathOrString.
	nodeCol isEmpty ifTrue: [^aBlock value].
	^ nodeCol first