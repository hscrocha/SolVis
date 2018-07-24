accessing
getModifierForName: aNameAsString
	"Return a modifier for a given name. Return nil if not found"
	^ modifiers detect: [ :m | m modifierName = aNameAsString ] ifNone: [ nil ]