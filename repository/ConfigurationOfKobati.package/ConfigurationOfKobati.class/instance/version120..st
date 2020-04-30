versions
version120: spec
	<version: '1.20' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '11 July 2019, 5:52:43.333125 pm'.

		spec package: 'Kobati' with: 'Kobati-kaminami.87'.
	]