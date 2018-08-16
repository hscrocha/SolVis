public - visualization
contractsCloud

	| b |
	b := RTNameCloud new.
	b addObjects: programs description: [ :p | ' ' join: (p model smartContracts collect: #contractName) ].
	^ b