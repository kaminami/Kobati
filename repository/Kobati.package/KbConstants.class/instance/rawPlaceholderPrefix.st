accessing
rawPlaceholderPrefix
	"escape for regex"
	rawPlaceholderPrefix ifNil: [ rawPlaceholderPrefix := '\$\{' ].
	^ rawPlaceholderPrefix