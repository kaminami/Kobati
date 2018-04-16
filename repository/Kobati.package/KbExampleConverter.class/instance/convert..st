converting
convert: aCollection
	^ ((aCollection collect: [ :e | e identityHash ]) select: [ :e | e even ]) 
			asSortedCollection 