adding
whereIsNull: expression
	self expressions add: ('{1} IS NULL' format: {expression})