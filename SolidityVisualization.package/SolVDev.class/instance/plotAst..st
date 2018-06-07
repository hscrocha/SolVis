processing
plotAst: anSolAst
	"comment stating purpose of message"

	| b |
	b := RTMondrian new.
	b
		nodes: (anSolAst sourceunits)
		forEach: [ :aContract | 
			(self class isSolPragmaNode: aContract)
				ifFalse: [ b shape box color: Color blue.
					b nodes: (aContract contract_sources select: [ :source | self class isSolStateVariableDeclarationNode: source] ).
					b shape box color: Color white.
					b nodes: (aContract contract_sources select: [ :source | self class isSolEventDefinitionNode: source] ).
					b shape box color: Color green.
					b nodes: (aContract contract_sources select: [ :source | self class isSolModifierDefinitionNode: source] ).
					
					b shape box
						color: Color gray;
						"if: #hasReturn fillColor: Color darkGray;"
						size: [ :f | f source lines size * 3 ].
					b nodes: (aContract contract_sources select: [ :source | self class isSolFunctionDefinitionNode: source]).

					b layout flow ] ].
	^ b