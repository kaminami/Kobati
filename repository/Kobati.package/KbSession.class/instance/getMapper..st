mapper accessing
getMapper: nameOrClass
	| mapper |
	mapper := nameOrClass isString
				ifFalse: [nameOrClass new]
				ifTrue: [dbAccessor mapperForName: nameOrClass].
	mapper session: self.
	^mapper