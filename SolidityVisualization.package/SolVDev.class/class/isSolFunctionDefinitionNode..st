testing
isSolFunctionDefinitionNode: anObject
	^ (anObject class name = 'SolFunctionDefinitionNode') | (anObject class name = 'SolFallbackFunctionDefinitionNode')