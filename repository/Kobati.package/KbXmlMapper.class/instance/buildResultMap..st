building
buildResultMap: aNode

	| rm |
	rm := KbResultMap from: aNode.
	self resultMaps at: rm id put: rm