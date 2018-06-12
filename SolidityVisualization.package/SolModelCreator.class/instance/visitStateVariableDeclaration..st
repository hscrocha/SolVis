generated
visitStateVariableDeclaration: aStateVariableDeclaration
	| v |	
	v := SVVariable new.
	v variableName: aStateVariableDeclaration identifier value value.
	
	"Not sure this is the best way"
	(aStateVariableDeclaration type class = SolElementaryTypeNameNode)
		ifTrue: [ "We have a regular type"
					v variableTypename: aStateVariableDeclaration type type value ]
		ifFalse: [ "We have a non-regular type" 
					v variableTypename: 'mapping' ].
	contract addVariable: v.
	^ self visitRootSourceSol: aStateVariableDeclaration
	