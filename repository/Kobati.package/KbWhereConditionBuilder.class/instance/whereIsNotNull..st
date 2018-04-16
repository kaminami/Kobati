adding
whereIsNotNull: expression
	self expressions add: ('{1} IS NOT NULL' format: {expression})