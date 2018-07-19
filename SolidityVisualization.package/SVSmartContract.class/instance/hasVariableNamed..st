accessing
hasVariableNamed: aVariableNameAsString
	"Answer whether a variable is defined in the contract (not as a local variable)"
	^ variables anySatisfy: [ :f | f variableName = aVariableNameAsString ]