baselines
baseline: spec

	<baseline>
	spec for: #common do: [
		spec package: 'PostgresV3-Core' with: [
			spec
				file: 'PostgresV3-Core-FrancoisStephany.9';
				repository: 'https://squeaksource.blueplane.jp/AsLegacyLibs' ].

		spec package: 'PostgresV3-Pool' with: [
			spec
				file: 'PostgresV3-Pool-FrancoisStephany.3';
				repository: 'https://squeaksource.blueplane.jp/AsLegacyLibs' ].
		spec baseline: 'XPath' with: [
			spec
				repository: 'github://pharo-contributions/XML-XPath:2.2.0/src';
				loads: 'Core' ].
		spec package: 'Kobati' ]