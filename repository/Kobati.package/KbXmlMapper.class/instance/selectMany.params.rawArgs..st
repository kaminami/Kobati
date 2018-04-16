query-select
selectMany: aStatement params: params rawArgs: rawArgs
	self execute: aStatement params: params rawArgs: rawArgs.
	
	^ self buildObjectFromQueryResultUsing: aStatement resultMap