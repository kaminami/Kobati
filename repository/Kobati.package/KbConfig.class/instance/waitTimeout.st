accessing
waitTimeout
	waitTimeout ifNil: [ waitTimeout := 8000 ].
	^ waitTimeout