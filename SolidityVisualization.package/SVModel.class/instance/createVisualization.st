public - visualization
createVisualization
	| b unnconnectedFunctions connectedFonctions |
	b := RTMondrian new.
	b view @ RTZoomableView.
	
	"WE VISUALIZE CONTRACTS"
	b shape box color: Color veryVeryLightGray.
	b nodes: self smartContracts forEach: [ :smartContract |
		unnconnectedFunctions := smartContract functions reject: #useModifierOrVariable.
		connectedFonctions := smartContract functions select: #useModifierOrVariable.
		"WE VISUALIZE FUNCTION THAT HAVE NO CONNECTIONS"
		b shape box color: Color veryVeryLightGray.
		b node: 'unconnected function' forIt: [
			b shape box 
				size: [ :f | f numberOfStatements * 3 ];
				color: Color gray.
			b interaction popupText: [ :f | f functionName, '()' ] backgroundColor: Color white.
			b nodes: unnconnectedFunctions.
			b layout grid ].

		
		b shape box color: Color veryVeryLightGray.
		b node: 'connected function' forIt: [
			"WE VISUALIZE MODIFERS"
			b shape box color: Color red; size: [ :m | m numberOfAppliedFunctions * 3 ].
			b interaction popupText: [ :m | smartContract contractName, '.', m modifierName ] backgroundColor: Color white.
			b nodes: smartContract modifiers.

			"WE VISUALIZE VARIABLES"
			b shape box color: Color blue.
			b interaction popupText: [ :f | smartContract contractName, '.', f variableName ] backgroundColor: Color white.
			b nodes: smartContract variables.

			"WE VISUALIZE FUNCTION THAT HAVE CONNECTIONS"
			b shape box 
				size: [ :f | f numberOfStatements * 3 ];
				color: Color gray.
			b interaction popupText: [ :f | f functionName, '()' ] backgroundColor: Color white.
			b nodes: connectedFonctions.
						
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
	].

	"WE CONNECT EACH CONTRACT TO ITS PARENTS"
	b edges connectFromAll: #parents.
	b layout tree.	
	b build.
	
	"Make name of the class apparent"
	(b view elementsFromModels: self smartContracts) do: [ :el | el @ (RTLabeled new setAsHighlightable) ].
	
	"We return the view"
	^ b view