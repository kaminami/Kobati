accessing
withConnectionDo: aBlock
	"override"
	
	"aBlock shouldn't have side-effects because of retries"

	| retriesLeft |
	retriesLeft := 3.
	^[ 
		| connection |
		[ 
			connection := self getConnection.
			aBlock value: connection ]
				ensure: [
					connection ifNotNil: [
						 self releaseConnection: connection ] ] ]
		on: ConnectionClosed, ConnectionTimedOut 
		do: [ :err |
			retriesLeft > 0 ifTrue: [
				self log: [ 'Error ', (4 - retriesLeft) asString, ': ', err className, ' -> ', err messageText ].
				retriesLeft := retriesLeft - 1.
				err retry ].
			err pass ]