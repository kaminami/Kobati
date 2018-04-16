initialization-release
extractArrayFrom: aNode at: xpath

	^ ((aNode xpathText: xpath ifNone: ['']) findTokens: ',')
		collect: [ :each | each trim]