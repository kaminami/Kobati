adding
where: expression in: values
	| valueList |
	valueList := values asInValueList asKobatiSqlLiteral.
	self expressions add: ('{1} IN {2}' format: {expression. valueList})