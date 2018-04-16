query-delete
buildObjectFromQueryResultUsing: resultMap
	| res  rawResults builder |
	
	res := self session response.
	res hasException ifTrue: [
		Transcript 
			cr; show: '>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>';
			cr; show: res exceptionResponse message;
			cr; show: self session query;
			cr; show: '<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'.
		^ res exceptionResponse 
	].

	res hasResult ifFalse: [ ^ nil ].
	
	rawResults := res resultSet.
	resultMap ifNil: [ ^ self extractValuesFrom: rawResults ].	

	builder := (KbObjectBuilder mapper: self)
					resultMap: resultMap;
					queryResults: rawResults;
					columns: (rawResults rowDescription columnsDescriptions collect: [ :each | each name ]);
					yourself.
	builder buildObjects.
	^ builder rootObject