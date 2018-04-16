building
buildMethods
	(self statements reject: [:each | each queryType = self sqlType])
		do: [:each | 
			(self methods includesKey: each selector)
				ifTrue: [ self error: ('seme selector exists: {1}' format: { each selector }) ].
				
			self methods at: each selector put: each]