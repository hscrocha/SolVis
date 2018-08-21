public - testing
useModifierOrVariable
	"Return true if the function uses at least a modifier or a variable"
	^ self numberOfAccessedVariables > 0 or: [ self numberOfModifiers > 0 ]