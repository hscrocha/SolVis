generated
visitStateVariableDeclaration: aStateVariableDeclaration
	| v |	
	v := SVVariable new.
	v variableName: aStateVariableDeclaration identifier value value.
	
	"Not sure this is the best way"
	(aStateVariableDeclaration type class = SolMappingTypeNameNode)
		ifTrue: [ "We have a mapping" 
					v variableTypename: 'mapping' ]
		ifFalse: [ "We do not have a mapping"
						v variableTypename: aStateVariableDeclaration type type value ].
	contract addVariable: v.
	^ self visitRootSourceSol: aStateVariableDeclaration
	