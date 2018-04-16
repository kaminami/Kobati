versions
version110: spec
	<version: '1.10' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '29 June 2017, 2:47:32.856085 pm'.

		spec package: 'Kobati' with: 'Kobati-kaminami.74'.
	]