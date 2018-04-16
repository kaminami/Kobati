versions
version15: spec
	<version: '1.5' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '24 May 2017, 6:57:09.286224 pm'.

		spec package: 'Kobati' with: 'Kobati-kaminami.51'.
	]