*Kobati-query execution
execute: aBlock
	| currentConnection |
	currentConnection := PG3CurrentConnection signalFor: self.
	^ currentConnection
		ifNil: [ self withConnectionDo: [ :conn | aBlock cull: conn ] ]
		ifNotNil: [ aBlock cull: currentConnection ]