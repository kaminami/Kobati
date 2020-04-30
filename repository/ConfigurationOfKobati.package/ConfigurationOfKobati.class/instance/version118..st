versions
version118: spec
	<version: '1.18' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '26 April 2018, 5:27:52.090945 pm'.

		spec package: 'Kobati' with: 'Kobati-kaminami.85'.
	]