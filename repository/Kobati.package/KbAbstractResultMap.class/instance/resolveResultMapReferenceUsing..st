building
resolveResultMapReferenceUsing: aMapper

	self rows do: [:each | each resolveResultMapReferenceUsing: aMapper]