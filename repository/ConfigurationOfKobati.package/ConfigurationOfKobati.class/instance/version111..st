versions
version111: spec
	<version: '1.11' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '7 September 2017, 3:48:27.068323 pm'.

		spec package: 'Kobati' with: 'Kobati-kaminami.75'.
	]