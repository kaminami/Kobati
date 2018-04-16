query-private
evaluate: expression withArgs: argDict
	| parts receiver |

	parts := '.' split: expression.
	receiver := argDict at: parts first.

	(parts allButFirst: 1) do: [:eachPart |
		receiver := (#($@ $#) includes: eachPart first)
			ifTrue: 
				[| argPart arg |
				argPart := eachPart allButFirst: 1.
				arg := (eachPart first = $@)
							ifTrue: [argPart asNumber]
							ifFalse: [argPart asString].
				receiver perform: #at: with: arg]
			ifFalse: [receiver perform: eachPart asSymbol]
	].
	^ receiver