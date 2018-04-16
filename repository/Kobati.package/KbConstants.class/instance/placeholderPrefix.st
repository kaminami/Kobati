accessing
placeholderPrefix
	"escape for regex"
	placeholderPrefix ifNil: [ placeholderPrefix := '\#\{' ].
	^ placeholderPrefix