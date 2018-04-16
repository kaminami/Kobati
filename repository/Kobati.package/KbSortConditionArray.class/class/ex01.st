examples
ex01
"
	KbSortConditionArray ex01
	  ==> a SortedCollection('x' 'xx' 'xyz' 'abc' '123' 'aabbc' 'zzzzzzzzzz')
"
	^ #(
'123'
'abc'
'aabbc'
'xyz'
'x'
'xx'
'zzzzzzzzzz'
) asSortedCollection: (#size asc, #value desc) asSortBlock