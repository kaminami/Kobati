query-private
parameterProxyFrom: args parentStatement: parentStatement chileStatement: childStatement
	"quick hack!! for KbSelectKey"
	| argDict expressions argArray rawStatement |
	argDict := Dictionary new.
	parentStatement arguments do: [ :each |
		argDict at: 	each put: (args at: each)
	].

	rawStatement := childStatement statement.

	expressions := rawStatement 
							regex: ('[#$]\{([\w_][\w\d.@#_]*)\}') 
							matchesCollect: [:e | e copyFrom: 3 to: e size - 1].
	argArray := (expressions collect: [:eachExp | self evaluate: eachExp withArgs: argDict])
					asArray.
	^KbParameterProxy on: argArray