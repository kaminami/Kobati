accessing
mapperForName: aString
	| originalMapper |
	originalMapper :=  self mappers 
					at: aString 
					ifAbsent: [ self error: 'No such mapper' ].
	^ originalMapper copyWithoutSession