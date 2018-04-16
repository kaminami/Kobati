versions
version14: spec
	<version: '1.4' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '24 May 2017, 5:09:33.634267 pm'.

		spec package: 'Kobati' with: 'Kobati-kaminami.50'.
	]