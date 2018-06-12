*SolidityVisualization
gtInspectorSolModelIn: composite
	<gtInspectorPresentationOrder: 0>
	(self isFile and: [ self extension = 'sol' ])
		ifFalse: [ ^ self ].
	^ self solidityModel gtInspectorRawIn: composite