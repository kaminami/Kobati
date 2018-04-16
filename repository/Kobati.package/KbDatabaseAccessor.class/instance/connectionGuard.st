accessing
connectionGuard
	connectionGuard ifNil: [connectionGuard := Monitor new].
	^ connectionGuard