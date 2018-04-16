copying
, sortConditionArray
	| copied |
	copied := self copy.
	sortConditionArray conditions do: [ :each | copied addCondition: each ].
	^ copied