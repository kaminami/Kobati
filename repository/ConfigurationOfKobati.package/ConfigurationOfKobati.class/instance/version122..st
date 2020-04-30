versions
version122: spec
	<version: '1.22' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'a SQL mapper inspired by MyBatis'.
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '8 January 2020, 11:39:05.725467 am'.

		spec package: 'Kobati' with: 'Kobati-kaminami.89'.
	]