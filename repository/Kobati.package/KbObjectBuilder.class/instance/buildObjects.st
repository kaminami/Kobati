building
buildObjects

	self queryResults rowsWithColumnNameDictionary do: 
			[:row |
			self
				buildDictionaryFrom: row
				using: self realResultMap
				into: self rootDictionary].

	self 
		buildObjectFrom: self rootDictionary 
		to: self rootObject
		using: self realResultMap