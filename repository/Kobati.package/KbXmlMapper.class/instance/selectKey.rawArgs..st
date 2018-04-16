query-select
selectKey: aStatement rawArgs: rawArgs

	| res rawResults key |

	self session prepare: aStatement statement.
	self session bindInput: #().
	self session execute.

	res := self session response.
	res hasException ifTrue: [
		Transcript 
			cr; show: '>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>';
			cr; show: res exceptionResponse message;
			cr; show: self session query;
			cr; show: '<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'.
		^ res exceptionResponse 
	].
	
	
	rawResults := res resultSet.
	rawResults rows isEmpty ifTrue: [^ nil].
	
	key := rawResults rows first at: 1.

	aStatement keyProperty isEmptyOrNil ifFalse: [
		self evaluate: aStatement keyProperty put: key withArgs: rawArgs
	].

	^ key