instance-creation
load: filename

	| xmlString rs |
	rs := (FileStream readOnlyFileNamed: filename)
			converter: UTF8TextConverter new;
			yourself.
	xmlString := [rs contents] ensure: [rs close].
	^self from: xmlString