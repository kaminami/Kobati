initialization-release
prepareFlagments: sqlStatement

	| separator1 separator2 padding replaced1 replaced2 |
	separator1 := '$$$?$$$'.


	replaced1 := sqlStatement 
					copyWithRegex: (self placeholderPrefix , '[\w_][\w\d.@#_]*', self placeholderSuffix) 
					matchesReplacedWith: separator1.

	separator2 := '$$$@$$$'.

	replaced2 := replaced1 
					copyWithRegex: (self rawPlaceholderPrefix , '[\w_][\w\d.@#_]*', self rawPlaceholderSuffix) 
					matchesReplacedWith: separator2.

	padding := '$$$'.
	^ padding split: replaced2