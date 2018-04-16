merging
merge: other
	other statements keysAndValuesDo: [ :k :v | 
		self statements at: k ifPresent: [ self error: ('same statement exists: {1}' format: {k}) ].
		self statements at: k put: v.
	].

	other references keysAndValuesDo: [ :k :v | 
		self references at: k ifPresent: [ self error: ('same reference exists: {1}' format: {k}) ].
		self references at: k put: v.
	].

	other resultMaps keysAndValuesDo: [ :k :v | 
		self resultMaps at: k ifPresent: [ self error: ('same resultMap exists: {1}' format: {k}) ].
		self resultMaps at: k put: v.
	].

	other methods keysAndValuesDo: [ :k :v | 
		self methods at: k ifPresent: [ self error: ('same methods exists: {1}' format: {k}) ].
		self methods at: k put: v.
	].