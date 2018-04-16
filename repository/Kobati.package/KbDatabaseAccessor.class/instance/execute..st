executing
execute: oneArgBlock
	^self connectionGuard critical: [self doExecute: oneArgBlock]
