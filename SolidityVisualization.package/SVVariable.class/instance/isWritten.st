public - testing
isWritten
	"Return true if the variable is written (i.e., the expression 'var = ...' appears in the code)"
	^ functionsWriting notEmpty