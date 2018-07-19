*SolidityVisualization
gtInspectorSolListOfContractIn: composite
	<gtInspectorPresentationOrder: 0>
	(self isFile and: [ self extension = 'sol' ])
		ifFalse: [ ^ self ].
	^ self solidityModel gtInspectorSolListOfContractIn: composite