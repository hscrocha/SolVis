private - dependencies
resolveModifiersAndFunctionLinks
	"A contract define functions and modifiers. This methods hooks the functions to the modifiers, and the modifer to the function"
	self smartContracts do: [ :c |
		c functions do: [ :f |
			f modifierNames do: [ :mm |
				| modifier |
				modifier := c getModifierForName: mm.
				modifier ifNotNil: [
					f addModifier: modifier.
					modifier addAppliedFunction: f ] ] ] ]