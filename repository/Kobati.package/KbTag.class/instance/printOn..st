printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: '('.
	aStream nextPutAll: (self id -> self tag) printString.
	aStream nextPutAll: ')'.