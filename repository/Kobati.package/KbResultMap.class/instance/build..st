building
build: aNode

	id := aNode attributeAt: 'id'.
	type := aNode attributeAt: 'type' ifAbsent: 'Dictionary'.

	(aNode xpathLocate: './id') do: [:eachNode | self addResultRow: eachNode of: KbIdRow].
	(aNode xpathLocate: './result') do: [:eachNode | self addResultRow: eachNode of: KbResultRow].
	(aNode xpathLocate: './collection') do: [:eachNode | self addResultRow: eachNode of: KbCollectionRow].
	(aNode xpathLocate: './association') do: [:eachNode | self addResultRow: eachNode of: KbAssociationRow].
