building
replaceResultMapReferences

	self resultMaps valuesDo: [:eachResultMap | eachResultMap resolveResultMapReferenceUsing: self]