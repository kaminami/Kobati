defaults
defaultConnectionArguments
	^ PG3ConnectionArguments new
		hostname: self config host;
		port: self config port asInteger;
		databaseName: self config database;
		username: self config username;
		password: self config password;
		yourself