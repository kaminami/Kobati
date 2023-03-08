instance creation
load: filename
	| file xmlString |
	file := filename asFileReference.
	xmlString := file readStreamDo:[:strm | strm contents].
	^self from: xmlString