generated
visitFunctionDefinition: aFunctionDefinition
	| f source |
	f := SVFunction new.
	f functionName: (aFunctionDefinition identifier value value).
	source := aFunctionDefinition source.
	source ifNotNil: [ f numberOfLinesOfCode: source lines ].
	contract addFunction: f.
	^ self visitRootSourceSol: aFunctionDefinition