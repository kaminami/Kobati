query
execute
	| queryAnswer |
	
	self response: nil.
	
	self buildQuery.
	queryAnswer := connection execute: self query.
	
	self response: (KbResponse from: queryAnswer).
	self response logMessage.
	self response signalIfError.	
	
	^ self response