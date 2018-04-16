building
buildResultMaps: xmlRoot

	(xmlRoot xpathLocate: './resultMap')
		do: [:eachNode | self buildResultMap: eachNode].

	self replaceResultMapReferences.