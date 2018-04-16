actions
convert: aCollection
	self convertAs ifNotNil: [ :toClass | ^ aCollection as: toClass asClass ].
	self converter ifNotNil: [ :conv | ^ conv asClass new convert: aCollection ].
	
	^ aCollection