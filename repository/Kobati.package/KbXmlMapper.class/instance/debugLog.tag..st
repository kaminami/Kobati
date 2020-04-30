debugging
debugLog: anObject tag: tag
	| connectionId dateAntTime |
	self class isDebugging ifFalse: [ ^self ].
	 
	connectionId := self session connection identityHash asString.
	dateAntTime := DateAndTime now asString.
	
	self traceCr: (connectionId, ':', tag asString, '/', anObject asString, '@', dateAntTime).