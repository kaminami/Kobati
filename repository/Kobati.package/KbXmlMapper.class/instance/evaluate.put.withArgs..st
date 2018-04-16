query-private
evaluate: expression put: value withArgs: argDict
	| parts receiver middles lastPart |
	parts := expression findTokens: '.'.
	receiver := argDict at: parts first.
	middles := parts copyFrom: 2 to: parts size - 1.

	(middles allButFirst: 1) do: [:eachPart |
		receiver := (#($@ $#) includes: eachPart first)
			ifTrue: 
				[| argPart arg |
				argPart := eachPart allButFirst: 1.
				arg := (argPart = $@)
							ifTrue: [argPart asNumber]
							ifFalse: [argPart asString].
				receiver perform: #at: with: arg]
			ifFalse: [receiver perform: eachPart asSymbol]
	].

	lastPart := parts last.
	(#($@ $#) includes: lastPart first)
		ifTrue: 
			[ receiver 
				at: lastPart allButFirst
				put: value ]
		ifFalse: 
			[ receiver 
				perform: (lastPart copyWith: $:) asSymbol 
				with: value ].

	^ receiver