converting
asSortBlock
	| composites leaf blockString |
	composites := self conditions allButLast.
	leaf := self conditions last.

	blockString := '[ :a :b | %NEXT% ]'.
	composites do: [ :each |
		blockString := blockString copyReplaceAll: '%NEXT%' with: each asPartialCompositeSortBlockString.
	].

	blockString :=  blockString copyReplaceAll: '%NEXT%' with: leaf asPartialLeafSortBlockString.

	^ Compiler evaluate: blockString