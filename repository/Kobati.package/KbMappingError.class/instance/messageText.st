accessing
messageText
	^ messageText ifNil: [ messageText := self buildMessageText ]