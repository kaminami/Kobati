copying
copyWithoutSession
	| inst |
	inst := self class new.

	(self class allInstVarNames copyWithout: 'session') do: [ :each |
		inst
			instVarNamed: each asSymbol
			put: (self instVarNamed: each asSymbol)
	 ].

	^ inst
