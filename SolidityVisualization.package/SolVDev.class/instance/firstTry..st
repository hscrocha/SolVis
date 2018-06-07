processing
firstTry: aSolContractDefinitionNode
	"comment stating purpose of message"
	| b |
	b := RTMondrian new.
	b
		nodes: aSolContractDefinitionNode 
		forEach: [ :aContract | 
			b shape box color: Color blue.
			b nodes: (aContract contract_sources select: #isVariable).
			b shape box
				color: Color gray;
				if: #hasReturn fillColor: Color green;
				size: [ :f | f source lines size * 3 ].
			b nodes: (aContract contract_sources select: #isFunctionDefinition).
			b shape box color: Color red.
			b nodes: (aContract contract_sources select: #isEvent).
			b layout flow ].
	^ b