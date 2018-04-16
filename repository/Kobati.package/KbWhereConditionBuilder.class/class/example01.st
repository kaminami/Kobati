examples
example01
	"
	KbWhereConditionBuilder example01
"

	| builder |
	builder := KbWhereConditionBuilder new.
	builder where: true.
	builder where: 'user.id > 10'.
	builder where: 'user.from' in: #('TOKYO' 'NAGOYA').
	builder where: 'user.to' notIn: #('OSAKA' 'KYOTO').
	builder whereIsNull: 'foo'.
	builder whereIsNotNull: 'bar'.
	builder where: 'num' equals: 123.456.
	builder where: 'str' operator: '<=' value: 'abcde'.

	builder where: 'a < 0 OR a > 100'.
	
	Transcript cr; show: builder asSqlString.
	^ builder asSqlString