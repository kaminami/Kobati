instance creation
connection: aConnection db: dbAccessor
	^ self new
		connection: aConnection;
		dbAccessor: dbAccessor;
		yourself