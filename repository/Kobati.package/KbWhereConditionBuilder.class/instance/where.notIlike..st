adding
where: expression notIlike: value
	self where: expression operator: 'NOT ILIKE' value: value 