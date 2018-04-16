printing
printOn: aStream
	super printOn: aStream.
	
	aStream nextPutAll: '('.
	aStream nextPutAll: self property.
	aStream nextPutAll: ', '.
	aStream nextPutAll: self column.
	aStream nextPutAll: ')'