accessing
placeholderSuffix
	"escape for regex"
	placeholderSuffix ifNil: [ placeholderSuffix := '\}' ].
	^ placeholderSuffix