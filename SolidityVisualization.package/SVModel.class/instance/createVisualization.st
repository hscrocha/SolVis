public - visualization
createVisualization
	| v b |
	b := RTMondrian new.
	b nodes: self smartContracts forEach: [ :smartContract |
		b shape box color: Color blue.
		b interaction popupText: [ :f | smartContract contractName, '.', f variableName ] backgroundColor: Color white.
		b nodes: smartContract variables.
		
		b shape box 
			size: [ :f | f numberOfStatements * 3 ];
			color: Color gray.
		b interaction popupText: [ :f | f functionName, '()' ] backgroundColor: Color white.
		b nodes: smartContract functions.
		
		b shape line color: Color red trans.
		b edges 
			fromObjects: smartContract variables;
			toObjects: smartContract functions;
			connectToAll: #functionsWriting. 
			
		b shape line color: Color green trans.
		b edges 
			fromObjects: smartContract variables;
			toObjects: smartContract functions;
			connectToAll: #functionsReading. 
		
		b layout grid.
	].
	b edges connectFromAll: #parents.
	b layout tree.	
	b build.
	
	"Make name of the class apparent"
	(b view elementsFromModels: self smartContracts) do: [ :el | el @ (RTLabeled new setAsHighlightable) ].
	
	v := b view.
"	v addMenu: 'model' callback: [ self inspect ]."
	^ v