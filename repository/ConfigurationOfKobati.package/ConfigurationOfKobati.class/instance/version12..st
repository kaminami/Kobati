versions
version12: spec
	<version: '1.2' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '15 May 2017, 7:02:55.866107 pm'.

		spec package: 'Kobati' with: 'Kobati-minami.48'.
	]