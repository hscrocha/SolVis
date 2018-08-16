public - visualization
visualizeDependenciesBetweenPrograms
	| ps b |
	ps := programs first: 1500.
	
	b := RTMondrian new.
	b shape circle.
	b nodes: ps.
	b normalizer normalizeSize: #numberOfLinesOfCode; normalizeColor: #numberOfLinesOfCode; alphaColor: 0.5.
	
	b shape line color: Color gray trans.
	b edges
		objects: ps;
		noBidirectional; noRepetition;
		connectToAll: [ :prog | self allProgramsHavingAtLeast: 5 keywordsFrom: prog relevantKeywords ].
	b layout force; ifNotConnectedThen: RTGridLayout new.
	^ b