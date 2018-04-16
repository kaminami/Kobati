accessing
idRows
	^ ((self rows values select: [:each | each isIdRow])
		asSortedCollection: [ :a :b | a column < b column ]) asArray