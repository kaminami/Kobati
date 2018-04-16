initialization-release
extractStatementFrom: aNode

	| ws |
	ws := WriteStream on: String new.
	aNode stringNodes do: [:each | ws nextPutAll: each string].

	^ws contents trim
