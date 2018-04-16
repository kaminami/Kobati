query
executeBySelector: selector withArguments: args

	| aStatement params rawArgs |
	aStatement := self methods 
					at: selector asString 
					ifAbsent: [^self error: 'No such method'].

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