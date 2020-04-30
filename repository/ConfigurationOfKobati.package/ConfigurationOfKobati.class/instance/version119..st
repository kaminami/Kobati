versions
version119: spec
	<version: '1.19' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '22 May 2019, 5:42:21.835724 pm'.

		spec package: 'Kobati' with: 'Kobati-kaminami.86'.
	]