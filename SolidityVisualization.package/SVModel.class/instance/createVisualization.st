public - visualization
createVisualization
	| b |
	b := RTMondrian new.
	
	"WE VISUALIZE CONTRACTS"
	b nodes: self smartContracts forEach: [ :smartContract |
		"WE VISUALIZE MODIFERS"
		b shape box color: Color red; size: #numberOfAppliedFunctions.
		b interaction popupText: [ :m | smartContract contractName, '.', m modifierName ] backgroundColor: Color white.
		b nodes: smartContract modifiers.

		"WE VISUALIZE VARIABLES"
		b shape box color: Color blue.
		b interaction popupText: [ :f | smartContract contractName, '.', f variableName ] backgroundColor: Color white.
		b nodes: smartContract variables.
		
		"WE VISUALIZE FUNCTIONS"
		b shape box 
			size: [ :f | f numberOfStatements * 3 ];
			color: Color gray.
		b interaction popupText: [ :f | f functionName, '()' ] backgroundColor: Color white.
		b nodes: smartContract functions.
		
		"WE DEFINE EDGES BETWEEN FUNCTIONS AND VARIABLES"
		b shape line color: Color red trans; withShorterDistanceAttachPoint.
		b edges 
			fromObjects: smartContract modifiers;
			toObjects: smartContract functions;
			connectToAll: #appliedFunctions. 
			
		b shape line color: Color blue trans; withShorterDistanceAttachPoint.
		b edges 
			fromObjects: smartContract variables;
			toObjects: smartContract functions;
			connectToAll: #functionsWriting. 
			
		b shape line color: Color green trans; withShorterDistanceAttachPoint.
		b edges 
			fromObjects: smartContract variables;
			toObjects: smartContract functions;
			connectToAll: #functionsReading. 
		
		b layout grid.
	].

	"WE CONNECT EACH CONTRACT TO ITS PARENTS"
	b edges connectFromAll: #parents.
	b layout tree.	
	b build.
	
	"Make name of the class apparent"
	(b view elementsFromModels: self smartContracts) do: [ :el | el @ (RTLabeled new setAsHighlightable) ].
	
	"We return the view"
	^ b view