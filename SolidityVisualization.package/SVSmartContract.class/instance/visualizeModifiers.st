public - visualization
visualizeModifiers
	| b |
	b := RTMondrian new.
	b shape box color: Color gray trans.
	b nodes: self modifiers.
	b nodes: (self modifiers flatCollect: #appliedFunctions).
	b edges
		moveBehind;
		fromObjects: self modifiers;
		toObjects: (self modifiers flatCollect: #appliedFunctions);
		connectToAll: #appliedFunctions.
	b layout force.
	b normalizer
		objects: self modifiers;
		distinctColorUsing: #yourself.
	^ b