query-private
parameterProxyFrom: args statement: aStatement

	| argDict expressions argArray rawStatement |
	argDict := Dictionary new.
	aStatement arguments 
		with: args 
		do: [:key :value | argDict at: key put: value].
	rawStatement := aStatement statement.

	expressions := rawStatement 
							regex: ('[#$]\{([\w_][\w\d.@#_]*)\}') 
							matchesCollect: [:e | e copyFrom: 3 to: e size - 1].
	argArray := (expressions collect: [:eachExp | self evaluate: eachExp withArgs: argDict])
					asArray.
	^KbParameterProxy on: argArray