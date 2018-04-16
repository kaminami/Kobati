*Kobati-utility
xpathText: anXPathOrString ifNone: aBlock

	| nodeCol |
	nodeCol := self xpathLocate: anXPathOrString.
	nodeCol isEmpty ifTrue: [^aBlock value].
	nodeCol do: 
			[:each |
			| data |
self flag: #Hack.
			data := each value.
			data isEmpty ifFalse: [^data]].
	^''