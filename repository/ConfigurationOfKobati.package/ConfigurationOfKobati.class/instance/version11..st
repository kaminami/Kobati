versions
version11: spec
	<version: '1.1' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '24 April 2017, 4:00:43.639501 pm'.

		spec package: 'Kobati' with: 'Kobati-minami.47'.
	]