accessing
variableNamed: aVariableNameAsString
	"Return the function defined in the contract I represents. Raise an error if not found"
	^ variables detect: [ :f | f variableName = aVariableNameAsString ]