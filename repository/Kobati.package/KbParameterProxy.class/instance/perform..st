message handling
perform: aSymbol
	"Send the receiver the unary message indicated by the argument. The argument is
	 the selector of the message.
	 Invoke messageNotUnderstood: if the selector is not understood by the receiver.
	 Fail the primitive if the looked-up method does not expect zero arguments."

	<reflective: #object:performMessageWith:>
	<primitive: 83>
	^self perform: aSymbol withArguments: (Array new: 0)