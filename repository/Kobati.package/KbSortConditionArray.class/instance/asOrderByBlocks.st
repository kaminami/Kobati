converting
asOrderByBlocks
	^ self conditions collect: [ :e | Compiler evaluate: e asOrderByBlockString ]