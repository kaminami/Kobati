*Kobati-utility
xpathText: anXPathOrString
	^ self 
		xpathText: anXPathOrString
		ifNone: [NotFound signal: ('Path not found: ' , anXPathOrString)]