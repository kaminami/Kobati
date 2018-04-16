printing
printOn: aStream
	aStream nextPutAll: self className.
	aStream nextPut: $[.
	self conditions asArray printOn: aStream.
	aStream nextPut: $].
	