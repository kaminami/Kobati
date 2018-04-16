signaling
signalIfError
	self hasException ifFalse: [^self].
	self exceptionResponse severity asLowercase = 'error' ifFalse: [^self].

	(KbQueryError response: self exceptionResponse) signal.