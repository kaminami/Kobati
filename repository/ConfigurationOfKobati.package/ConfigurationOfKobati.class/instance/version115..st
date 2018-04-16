versions
version115: spec
	<version: '1.15' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '22 December 2017, 6:06:44.990209 pm'.

		spec package: 'Kobati' with: 'Kobati-kaminami.81'.
	]