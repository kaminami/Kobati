versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '24 April 2017, 2:45:27.928477 pm'.

		spec package: 'Kobati' with: 'Kobati-kaminami.46'.
	]