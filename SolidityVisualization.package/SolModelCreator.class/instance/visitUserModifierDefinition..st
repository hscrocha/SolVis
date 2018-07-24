generated
visitUserModifierDefinition: anUserModifierDefinition
	
	| modifier |
	modifier := SVModifier new.
	modifier modifierName: anUserModifierDefinition identifier value value.
	contract addModifier: modifier.
	^ super visitUserModifierDefinition: anUserModifierDefinition