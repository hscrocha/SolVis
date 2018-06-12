public - visualization
createVisualization
	| v b |
	b := RTMondrian new.
	b nodes: self smartContracts forEach: [ :smartContract |
		b shape box color: Color blue.
		b nodes: smartContract variables.
		
		b shape box 
			size: [ :f | f numberOfStatements * 3 ];
			color: Color gray.
		b nodes: smartContract functions.
		
		b layout grid.
	].
	b edges connectFromAll: #parents.
	b layout tree.	
	b build.
	
	v := b view.
	v addMenu: 'model' callback: [ self inspect ].
	^ v