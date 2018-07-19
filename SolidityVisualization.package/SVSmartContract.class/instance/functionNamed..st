accessing
functionNamed: aFunctionNameAsString
	"Return the function defined in the contract I represents. Raise an error if not found"
	^ functions detect: [ :f | f functionName = aFunctionNameAsString ]