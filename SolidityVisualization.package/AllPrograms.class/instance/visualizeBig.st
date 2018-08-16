public - visualization
visualizeBig

	| ps b |
	ps := programs first: 3000.
	b := RTMondrian new.
	b shape box
		height: [ :p | p numberOfLinesOfCode sqrt * 20 ];
		width: [ :p | p model numberOfContracts * 5 ].
	b nodes: (ps sortedAs: #numberOfLinesOfCode).
	b layout flow.
	^ b