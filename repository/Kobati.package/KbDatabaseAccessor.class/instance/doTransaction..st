transactions
doTransaction: oneArgBlock
	^ KbConnectionPool default executeTransaction: [:conn |
		oneArgBlock value: (KbSession connection: conn db: self)	
	]