building
buildReferencedStatements: xmlRoot
	(xmlRoot xpathLocate: './sql') do: [:eachNode | self buildReference: eachNode of: KbSql]