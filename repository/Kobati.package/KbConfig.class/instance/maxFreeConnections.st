accessing
maxFreeConnections
	maxFreeConnections ifNil: [ maxFreeConnections := 120 ].
	^ maxFreeConnections