printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: '('.
	aStream nextPutAll: (self id -> self title) printString.
	aStream nextPutAll: ')'.