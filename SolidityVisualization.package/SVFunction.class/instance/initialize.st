initialization
initialize
	super initialize.
	
	"We need to obtained the name"
	functionName := 'UNKNOWN'.
	
	"We need to compute it actually. -1 indicates that we have not yet computed it"
	numberOfLinesOfCode := -1.
	
	numberOfStatements := 0