generated
visitFunctionDefinition: aFunctionDefinition
	| f source |
	f := SVFunction new.
	f functionName: (aFunctionDefinition identifier value value).	
	source := aFunctionDefinition source.
	source ifNotNil: [ f numberOfLinesOfCode: source lines ].
	
	aFunctionDefinition block ifNotNil: [ 
		f numberOfStatements: (aFunctionDefinition block statements size)
	].
	contract addFunction: f.
	^ self visitRootSourceSol: aFunctionDefinition