query-private
exequteQuery: aStatement params: params rawArgs: rawArgs

	| queryType |
	queryType := aStatement queryType.

	queryType = self selectOneType ifTrue: [^ self selectOne: aStatement params: params rawArgs: rawArgs].
	queryType = self selectManyType ifTrue: [^ self selectMany: aStatement params: params rawArgs: rawArgs].
	queryType = self insertType ifTrue: [^ self insert: aStatement params: params rawArgs: rawArgs].
	queryType = self updateType ifTrue: [^ self update: aStatement params: params rawArgs: rawArgs].
	queryType = self deleteType ifTrue: [^ self delete: aStatement params: params rawArgs: rawArgs].

	self error: 'No such query type'