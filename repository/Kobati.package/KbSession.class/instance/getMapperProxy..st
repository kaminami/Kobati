mapper accessing
getMapperProxy: nameOrClass
	^KbDataMapperProxy on: (self getMapper: nameOrClass)