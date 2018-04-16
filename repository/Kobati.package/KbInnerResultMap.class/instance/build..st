building
build: aNode

	type := aNode name = 'collection'
				ifTrue: [aNode attributeAt: 'ofType']
				ifFalse: [aNode attributeAt: 'type'].

	aNode elementsAt: 'id' do: [:eachNode | self addResultRow: eachNode of: KbIdRow].
	aNode elementsAt: 'result' do: [:eachNode | self addResultRow: eachNode of: KbResultRow].
	aNode elementsAt: 'collection' do: [:eachNode | self addResultRow: eachNode of: KbCollectionRow].
	aNode elementsAt: 'association' do: [:eachNode | self addResultRow: eachNode of: KbAssociationRow].
