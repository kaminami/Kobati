initialization-release
build: aNode using: aMapper
	| resultType resultMapVal |
	
	id := aNode attributeAt: 'id'.
	statement := self extractStatementFrom: aNode.
	flagments := self prepareFlagments: statement.
	arguments := self extractArrayFrom: aNode at: '@arguments'.
	selector := aNode 
					attributeAt: 'selector' 
					ifAbsent: 
						[| ws |
						ws := WriteStream on: String new.
						ws nextPutAll: id.
						(1 to: arguments size) do: [:each | ws nextPut: $:] separatedBy: [ws nextPutAll: 'with'].
						ws contents].

	resultType := aNode attributeAt: 'resultType' ifAbsent: [].
	resultType ifNotNil: [ 
		resultMap := KbResultMap type: resultType.
		^ self
	].
	
	resultMapVal := aNode attributeAt: 'resultMap' ifAbsent: [^ self].
	resultMap := KbResultMapReference to: resultMapVal.
