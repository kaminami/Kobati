instance creation
on: aMapper
	| inst |
	inst := self new.
	inst kbDataMapper: aMapper.
	^ inst