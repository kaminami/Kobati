examples
ex02
"
	KbSortConditionArray ex02 
	  ==> a SortedCollection(2 4 6 8 10 1 3 5 7 9)

"
	^ (1 to: 10) asSortedCollection: (#even desc, #value asc) asSortBlock