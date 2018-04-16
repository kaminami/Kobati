accessing
rawPlaceholderSuffix
	"escape for regex"
	rawPlaceholderSuffix ifNil: [ rawPlaceholderSuffix := '\}' ].
	^ rawPlaceholderSuffix