accessing
contractNamed: aName
	^ self smartContracts detect: [ :sm | sm contractName = aName ]