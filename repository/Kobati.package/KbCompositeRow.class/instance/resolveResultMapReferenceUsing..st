building
resolveResultMapReferenceUsing: aMapper

	resultMap ifNil: [^self].

	resultMap isReference
		ifTrue: 
			[| refId |
			refId := resultMap referenceId.
			resultMap becomeForward: (aMapper resultMaps at: refId)]
		ifFalse: [resultMap resolveResultMapReferenceUsing: aMapper]