building
buildQueryStatements: xmlRoot

	(xmlRoot xpathLocate: './select') do: [:eachNode | self buildStatement: eachNode of: KbSelect].
	(xmlRoot xpathLocate: './selectOne') do: [:eachNode | self buildStatement: eachNode of: KbSelectOne].
	(xmlRoot xpathLocate: './insert') do: [:eachNode | self buildStatement: eachNode of: KbInsert].
	(xmlRoot xpathLocate: './update') do: [:eachNode | self buildStatement: eachNode of: KbUpdate].
	(xmlRoot xpathLocate: './delete') do: [:eachNode | self buildStatement: eachNode of: KbDelete].