versions
version19: spec
	<version: '1.9' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '15 June 2017, 3:31:12.756726 pm'.

		spec package: 'Kobati' with: 'Kobati-kaminami.71'.
	]