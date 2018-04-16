accessing
after

	| sk |
	sk := self selectKey ifNil: [^nil].
	^sk order = self afterKey ifTrue: [sk] ifFalse: [nil]