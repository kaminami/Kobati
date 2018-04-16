building-sort block
asPartialLeafSortBlockString
	^ ' a {1} toValueForSort {2} b {1} toValueForSort' format: { self sortKey. self sortSelector }