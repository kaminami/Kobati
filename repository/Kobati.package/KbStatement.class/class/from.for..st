instance creation
from: aNode for: aMapper

	^(self new)
		build: aNode using: aMapper;
		yourself