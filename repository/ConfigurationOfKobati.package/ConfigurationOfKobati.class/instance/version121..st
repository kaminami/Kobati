versions
version121: spec
	<version: '1.21' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '12 July 2019, 10:23:35.328828 am'.

		spec package: 'Kobati' with: 'Kobati-kaminami.88'.
	]