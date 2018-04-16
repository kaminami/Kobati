instance-creation
from: xmlString

	| inst parser root mappers mapperNodes |

	inst := self new.
	parser := (XMLDOMParser on: xmlString)
					isValidating: false;
					yourself.

	root := parser parseDocument.
	
	(root xpathLocate: '/configuration/environment/property') do: [:eachElem |
		| nm value |
		nm := eachElem attributeAt: 'name'.
		value := eachElem attributeAt: 'value'.
		inst 
			perform: (nm copyWith: $:) asSymbol
			with: value.
	].

	mappers := Dictionary new.
	mapperNodes := root xpathLocate: '/configuration/mappers/mapper'.
	mappers 
		at: #resource
		put: ((mapperNodes collect: [:eachElem | eachElem attributeAt: 'resource' ifAbsent: []]) select: [:each | each notNil]).

	mappers 
		at: #eval
		put: ((mapperNodes collect: [:eachElem | eachElem attributeAt: 'eval' ifAbsent: []]) select: [:each | each notNil]).

	inst mappers: mappers.
	^ inst
