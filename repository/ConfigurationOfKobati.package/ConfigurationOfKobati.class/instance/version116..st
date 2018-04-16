versions
version116: spec
	<version: '1.16' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '26 December 2017, 6:40:28.624854 pm'.

		spec package: 'Kobati' with: 'Kobati-kaminami.82'.
	]