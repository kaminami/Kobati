printing
printOn: aStream
	super printOn: aStream.
	
	aStream nextPutAll: '('.
	
	self hasException 
		ifTrue: [aStream nextPutAll: (self exceptionResponse message convertFromEncoding: 'utf-8')].
	
	aStream nextPutAll: ')'.