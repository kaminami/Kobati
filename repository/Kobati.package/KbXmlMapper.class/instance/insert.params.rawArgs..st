query-insert
insert: aStatement params: params rawArgs: rawArgs
	self execute: aStatement params: params rawArgs: rawArgs.

	aStatement after ifNotNil: [:afterStatement | 
		| key |
		key := self selectKey: afterStatement rawArgs: rawArgs.
		^ key].

	^ self buildObjectFromQueryResultUsing: aStatement resultMap