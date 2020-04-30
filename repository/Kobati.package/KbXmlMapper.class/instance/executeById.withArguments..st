query
executeById: queryId withArguments: args

	| aStatement params rawArgs |
	aStatement := self statements 
					at: queryId asString 
					ifAbsent: [^self error: 'No such statement'].

	self debugLog: queryId tag: #query.

	params := self 
					parameterProxyFrom: args 
					statement: aStatement.

	rawArgs := self 
					rawArgDictionaryFrom: args 
					statement: aStatement.

	^self
		exequteQuery: aStatement
		params: params
		rawArgs: rawArgs