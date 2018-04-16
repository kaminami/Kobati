accessing
minConnections
	minConnections ifNil: [ minConnections := 10 ].
	^ minConnections