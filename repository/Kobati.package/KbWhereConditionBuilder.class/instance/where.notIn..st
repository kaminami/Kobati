adding
where: expression notIn: values
	| valueList |
	valueList := values asInValueList asKobatiSqlLiteral.
	self expressions add: ('{1} NOT IN {2}' format: {expression. valueList})