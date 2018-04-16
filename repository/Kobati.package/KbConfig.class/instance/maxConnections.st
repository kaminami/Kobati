accessing
maxConnections
	maxConnections ifNil: [ maxConnections := 120 ].
	^ maxConnections