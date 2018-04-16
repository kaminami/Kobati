building-order by block
asOrderByBlockString
	^ '[ :item | item {1} {2} ]' format: { self sortKey. self sortOrder } 