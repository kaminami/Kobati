baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec package: 'PostgresV3-Core' with: [
				spec 
					repository: 'http://www.squeaksource.com/PostgresV3' ].

			spec package: 'PostgresV3-Pool' with: [
				spec 
					repository: 'http://www.squeaksource.com/PostgresV3' ].

			spec
				project: 'XPath'
				with: [ spec
						className: 'ConfigurationOfXPath';
						file: 'ConfigurationOfXPath';
						repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XPath/main' ].
					
			spec
				package: 'Kobati' ].