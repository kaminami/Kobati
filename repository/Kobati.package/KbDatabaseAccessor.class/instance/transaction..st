transactions
transaction: oneArgBlock
	^self connectionGuard critical: [self doTransaction: oneArgBlock]