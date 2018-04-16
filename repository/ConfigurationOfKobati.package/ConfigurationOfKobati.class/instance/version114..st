versions
version114: spec
	<version: '1.14' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '22 December 2017, 5:48:46.963488'.

		spec package: 'Kobati' with: 'Kobati-kaminami.80'.
	]