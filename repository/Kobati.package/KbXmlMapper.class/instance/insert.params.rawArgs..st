query-insert
insert: aStatement params: params rawArgs: rawArgs
	self execute: aStatement params: params rawArgs: rawArgs.

	aStatement after ifNotNil: [:afterStatement | 
		| selectKeyParams key |
		selectKeyParams := self 
								parameterProxyFrom: rawArgs 
								parentStatement: aStatement 
								chileStatement: afterStatement.
		key := self 
				selectKey: afterStatement 
				params: selectKeyParams 
				rawArgs: rawArgs.
		^ key].

	^ self buildObjectFromQueryResultUsing: aStatement resultMap