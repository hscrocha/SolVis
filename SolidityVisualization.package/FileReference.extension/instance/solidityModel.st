*SolidityVisualization
solidityModel
	"Return a solidity model initialized with the content of the file"
	| importer |
	importer := SVImporter new.
	importer importFrom: self readStream.
	importer model resolveDependencies.
	^ importer model