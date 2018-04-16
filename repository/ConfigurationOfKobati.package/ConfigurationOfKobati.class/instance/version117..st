versions
version117: spec
	<version: '1.17' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '28 March 2018, 8:12:56.909573 pm'.

		spec package: 'Kobati' with: 'Kobati-kaminami.84'.
	]