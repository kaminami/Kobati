instance creation
default

	^instance ifNil: [
		instance := self new
			connectionArguments: self defaultConnectionArguments;
			poolArguments: self defaultPoolArguments;
			yourself ]