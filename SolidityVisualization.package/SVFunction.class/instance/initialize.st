initialization
initialize
	super initialize.
	
	"We need to obtained the name"
	functionName := 'UNKNOWN'.
	source := ''.
	
	"We need to compute it actually. -1 indicates that we have not yet computed it"
	numberOfLinesOfCode := -1.
	
	numberOfStatements := 0.
	
	variablesWritten := OrderedCollection new.
	variablesRead := OrderedCollection new.
	modifiers := OrderedCollection new.
	modifierNames := OrderedCollection new.