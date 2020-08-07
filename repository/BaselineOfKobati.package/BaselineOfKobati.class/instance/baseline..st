baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec package: 'PostgresV3-Core' with: [
				spec 
					file: 'PostgresV3-Core-FrancoisStephany.9';
					repository: 'https://squeaksource.blueplane.jp/AsLegacyLibs' ].

			spec package: 'PostgresV3-Pool' with: [
				spec 
					file: 'PostgresV3-Pool-FrancoisStephany.3';
					repository: 'https://squeaksource.blueplane.jp/AsLegacyLibs' ].

			spec
				project: 'XPath'
				with: [ spec
						className: 'ConfigurationOfXPath';
						file: 'ConfigurationOfXPath';
						repository: 'github://pharo-contributions/XML-XPath/src' ].
					
			spec
				package: 'Kobati' ].