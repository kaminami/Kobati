instance creation
for: aConfig

	KbConnectionPool config: aConfig.
	
	^(self new)
		config: aConfig;
		build;
		yourself