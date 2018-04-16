logging
logMessage
	self hasException ifTrue: [ 
		| res |
		res := self exceptionResponse.
		Transcript cr; 
			show: DateAndTime now asString; space; 
			show: res severity; show: ': '; 
			show: (res message convertFromEncoding: 'utf-8'); show: ' ['; 
			show: (res detail  asString convertFromEncoding: 'utf-8'); show: ']'.
	]