building
buildFlatDictionary: aRow columns: columnList into: dictionary

	| inst |
	inst := Dictionary new.
	columnList
		doWithIndex: [:eachColumn :idx | inst at: eachColumn put: (aRow at: idx)].
	dictionary at: inst identityHash put: inst