private
buildMessageText

	| place |
	place := self resultMap isReference
				ifTrue: [ self resultMap referenceId ]
				ifFalse: [ self resultMap type ].

	^ String streamContents: [ :ws |
		ws nextPutAll: 'at: '.
		ws nextPutAll: place.
		ws nextPutAll: ', '.
		ws nextPutAll: self resultRow column.
		ws nextPutAll: ' => '.
		ws nextPutAll: self resultRow property.
	 ]