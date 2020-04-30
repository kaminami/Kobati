converting
asOrderByBlocks
	^ self conditions collect: [ :e | Smalltalk compiler evaluate: e asOrderByBlockString ]