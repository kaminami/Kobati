adding
where: expression operator: operator value: value
	self expressions add: ('{1} {2} {3}' format: {expression. operator. value asKobatiSqlLiteral})