defaults
defaultPoolArguments
	| args |
	args := PG3ConnectionPoolArguments new.
	args minConnections: config minConnections asInteger.
	args maxConnections: config maxConnections asInteger.
	args waitTimeout: config waitTimeout asInteger.
	args maxFreeConnections: config maxFreeConnections asInteger.
	^ args