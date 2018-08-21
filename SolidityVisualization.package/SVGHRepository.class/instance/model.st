visualizations
model
	| importer |
	importer := SVImporter new.
	self allSolidityFiles
		do: [ :fr | 
			| str |
			str := fr readStream.
			[ importer importFrom: str ]
				ensure: [ str close ] ].
	importer model resolveDependencies.
	^ importer model