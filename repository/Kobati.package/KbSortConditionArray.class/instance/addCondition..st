adding
addCondition: sortCondition
	(self conditions includes: sortCondition) ifTrue: [ ^sortCondition ].
	^ self conditions add: sortCondition