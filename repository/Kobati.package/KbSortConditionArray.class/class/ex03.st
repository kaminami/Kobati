examples
ex03
"
	KbSortConditionArray ex03
	==> { [ :arg1 | arg1 even descending ]. [ :arg1 | arg1 value ascending ] }

"
	^ (#even desc, #value asc) asOrderByBlocks