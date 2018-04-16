enumerating
rowsDo: aBlock
	self rows valuesDo: [ :each | aBlock value: each ]