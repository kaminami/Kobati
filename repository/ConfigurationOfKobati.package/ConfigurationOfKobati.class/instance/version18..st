versions
version18: spec
	<version: '1.8' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '2017-06-15T09:53:15.576303+09:00'.

		spec package: 'Kobati' with: 'Kobati-MasashiUmezawa.70'.
	]