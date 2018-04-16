private
realResultMap
	self resultMap isReference ifTrue: [ 
		^ self mapper resultMaps at: self resultMap referenceId ifAbsent: [ ]	
	].

	^ self resultMap
	
