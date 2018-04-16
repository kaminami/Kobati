query-select
selectOne: aStatement params: params rawArgs: rawArgs

	| objects |
	objects := self selectMany: aStatement params: params rawArgs: rawArgs.
	objects isEmptyOrNil ifTrue: [^nil].
	
	^ objects first
