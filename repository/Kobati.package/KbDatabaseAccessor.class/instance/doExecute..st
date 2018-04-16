executing
doExecute: oneArgBlock
	^ KbConnectionPool default execute: [:conn |
		oneArgBlock value: (KbSession connection: conn db: self)	
	]
	