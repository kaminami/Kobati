query-private
execute: aStatement params: params rawArgs: rawArgs
	self session prepare: aStatement flagments.
	self session bindInput: params.
	^ self session execute.
