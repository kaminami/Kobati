building-sort block
asPartialCompositeSortBlockString
	^ '(a {1} toValueForSort = b {1} toValueForSort)
	ifFalse: [ a {1} toValueForSort {2} b {1} toValueForSort ]
	ifTrue: [ %NEXT% ]' format: { self sortKey. self sortSelector }