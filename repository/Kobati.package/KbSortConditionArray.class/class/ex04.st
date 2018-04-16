examples
ex04
"
	KbSortConditionArray ex04
	==> 'even DESC NULLS FIRST, value ASC NULLS FIRST'

"
	^ (#even desc, #value asc) asOrderByString