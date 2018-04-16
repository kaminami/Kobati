*Kobati-utility
kbMerge: other
	other keysAndValuesDo: [:otherKey :otherValue |
		(self includesKey: otherKey)
			ifFalse: [self at: otherKey put: otherValue]
			ifTrue: [
				| myValue |
				myValue := self at: otherKey.
				(myValue isDictionary and: [otherValue isDictionary])
					ifTrue: [myValue kbMerge: otherValue]]		
	]