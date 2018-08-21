visualizations
model
	| importer |
	importer := SVImporter new.
	self allSolidityFiles
		do: [ :fr | 
			importer importFromFileRerence: fr ].
	importer model resolveDependencies.
	^ importer model